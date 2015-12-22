package fss.webportal.lo.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.classes.UserPrincipal;
import fss.webportal.lo.domain.CategoryClass;
import fss.webportal.lo.domain.ChapterCategory;
import fss.webportal.lo.domain.CourseCategory;
import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.SubjectCategory;
import fss.webportal.lo.domain.TopicCategory;
import fss.webportal.lo.formWrapper.FormCategory;
import fss.webportal.lo.repository.TopicRepository;
import fss.webportal.lo.service.EditorService;

@Controller
@RequestMapping(value="/betaVersion/020011/")
public class EditorController {

	private EditorService editorService;
	
	@Autowired
	public EditorController(EditorService editorService) {
		super();
		this.editorService = editorService;
		
	}

	@RequestMapping(value="/addCategory")
	public ModelAndView addCategory(){
		return new ModelAndView("020011/addCategory","formCategory", new FormCategory());
	}	
	@RequestMapping(value="/dashboard")
	public String dashboard(){
		return "020011/dashboard";
	}
	
	@RequestMapping(value="/editorPanel")
	public String editorPanel(){
		return "020011/editorPanel";
	}
	
	@RequestMapping(value="/questionFeed")
	public String questionFeed(){
		return "020011/questionFeed";
	}
	
	@RequestMapping(value="/questionRevisionPenal")
	public String questionRevisionPenal(){
		return "020011/questionRevisionPenal";
	}
	
	@RequestMapping(value="categoryText", method= RequestMethod.GET)
	public @ResponseBody JSONResponse addCategoryText(@ModelAttribute("formCategory")final FormCategory formCategory, @RequestParam("action") int action, @RequestParam(value="requestedData",required=false) final String  requestedData){
		JSONResponse response=new JSONResponse(); 
		response.setStatus("SUCCESS");
		switch (action) {
			case 1:
				{
					CourseCategory courseCategory=formCategory.getCourseCategory();
					System.out.println("Action : "+action);
					System.out.println("title : "+courseCategory.getCourseTitle());
					
					courseCategory.setCustomValue(new Date(), "New Category is added by "+UserPrincipal.getCurrentUser(), 1);
					if(editorService.addCategoryText(courseCategory)!=1){
							response.setStatus("ERROR");
							response.setMessage("There is an error occour while processing your request");
					}else{
							response.setMessage("Your request successfully completed");
					}	
					break;
				}
			case 2:{
					 SubjectCategory subjectCategory = formCategory.getSubjectCategory(); 
					 subjectCategory.setCustomValue(new Date(),"New Subject is added by "+UserPrincipal.getCurrentUser(), 1);
					 if(editorService.addCategoryText(subjectCategory)!=1){
							response.setStatus("ERROR");
							response.setMessage("There is an error occour while processing your request");
						}else{
							response.setMessage("Your request successfully completed");
						}
					 break;
			}
			case 3:{
					ChapterCategory chapterCategory = formCategory.getChapterCategory(); 
					 
					chapterCategory.setCustomValue(new Date(),"New chapter is added by "+UserPrincipal.getCurrentUser(), 1);
					 if(editorService.addCategoryText(chapterCategory)!=1){
							response.setStatus("ERROR");
							response.setMessage("There is an error occour while processing your request");
						}else{
							response.setMessage("Your request successfully completed");
						}
					 break;
			}
			case 4:{
					if(requestedData!=null){
						TopicCategory topicCategory = formCategory.getTopicCategory(); 		 
						topicCategory.setCustomValue(new Date(),"New chapter is added by "+UserPrincipal.getCurrentUser(), 1);
						MemberInfo memberInfo=new MemberInfo();
						memberInfo.setMemberId(UserPrincipal.getCurrentUserId());
						topicCategory.setMemberInfo(memberInfo);
						TopicCategory responseTopicCategory=editorService.persistTopicAndCategoryClass(topicCategory);
						if(responseTopicCategory!=null){
							String categoryIds[]=requestedData.split(",");
							CategoryClass categoryClass=new CategoryClass(new CourseCategory(Integer.parseInt(categoryIds[0])), new SubjectCategory(Integer.parseInt(categoryIds[1])), new  ChapterCategory(Integer.parseInt(categoryIds[2])),responseTopicCategory);
							if(editorService.addCategoryText(categoryClass)!=1){
								response.setStatus("ERROR");
								response.setMessage("There is an error occour while processing your request");
							 }else{
									response.setMessage("Your request successfully completed"); 
									response.setResponseId(categoryClass.getCategoryClassId());

							}
						}else{	
							response.setStatus("ERROR");
							response.setMessage("There is an error occour while processing your request");
						}
					}else{	
						response.setStatus("ERROR");
						response.setMessage("There is an error occour while processing your request");
					}
					break;		
			}		
			default:{break;}
		}	
	return response;
	}	
	@RequestMapping(value="categoryClass", method= RequestMethod.GET)
	public @ResponseBody JSONResponse categoryClass(@RequestParam("key") int key,@RequestParam("whereId")int whereId){
		JSONResponse response=new JSONResponse(); 
		response.setStatus("SUCCESS");
		switch (key) {
		case 5:{
			response.setResult(editorService.listOfAllCategoryEntry());
			break;
		}
		}
		return response;
	}
	@RequestMapping(value="requestAllCategory", method= RequestMethod.GET)
	public @ResponseBody JSONResponse requestAllCategory(@RequestParam("whereId") int whereId, @RequestParam("key") int key){
		JSONResponse response=new JSONResponse(); 
		response.setStatus("SUCCESS");
		switch (key) {
			case 1:{
					List<JSONResponse> list=editorService.requestCourseCategory(CourseCategory.class, "courseId", "courseTitle");
					response.setResult(list);
					break;
			}
			case 2:{
					List<JSONResponse> list=editorService.requestAllCategory(SubjectCategory.class,"courseCategory","subjectId","subjectTitle","courseCategory.courseId",whereId);
					response.setResult(list);
					break;
			}
			case 3:{
				List<JSONResponse> list=editorService.requestAllCategory(ChapterCategory.class,"subjectCategory","chapterId","chapterTitle","subjectCategory.subjectId",whereId);
				response.setResult(list);
				break;
		}
			case 4:{
				List<JSONResponse> list=editorService.requestAllCategory(TopicCategory.class,"chapterCategory","topicId","topicTitle","chapterCategory.chapterId",whereId);
				response.setResult(list);
				break;
		}
			default:
				break;
			}
		
		return response;
	}

}
