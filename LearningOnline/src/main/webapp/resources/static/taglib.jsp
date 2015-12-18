<%@taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<spring:eval expression="@environment.getRequiredProperty('cdn.static')" var="cdnStatic" />
<spring:eval expression="@environment.getRequiredProperty('cdn.applicationRoot')" var="cdnAppRoot" />
<%-- <spring:eval expression="@environment.getRequiredProperty('cdn.dynamicData')" var="cdnDynamicData" />

<spring:eval expression="@environment.getRequiredProperty('cdn.secure')" var="cdnSecure" />
<c:url var="rootURL" value="/"/>
<c:url var="appRootURL" value="http://localhost:8080/seller/"/> --%>


