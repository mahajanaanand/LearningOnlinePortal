package fss.webportal.lo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fss.webportal.lo.domain.TopicCategory;

public interface TopicRepository extends JpaRepository<TopicCategory, Integer>{

}
