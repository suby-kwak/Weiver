package weiver.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import weiver.entity.Subscribe;

import java.util.List;

@Repository
public interface SubscribeRepository extends JpaRepository<Subscribe, Long>{
	/*
	 * 인기 뮤지컬 조회
	 * 찜, 봤어요 중 원하는 타입이 가장 많은 뮤지컬 3개 가져오기
	 */
//	@Query("SELECT s.musicalId FROM Subscribe s WHERE s.type IN ('찜', '봤어요') GROUP BY s.musicalId ORDER BY COUNT(s) DESC LIMIT 3")
//	List<String> findTop3MusicalIdsByDesiredType();

	//유저의 봤어요, 찜 목록 조회
    List<String> findMusicalIdByUserIdAndType(String userId, String type);

	//유저의 봤어요, 찜 목록 카운팅
	int countByUserIdAndType(String userId, String type);
}
