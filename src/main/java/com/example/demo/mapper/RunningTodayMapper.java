package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.example.demo.domain.RunningToday;

@Mapper
public interface RunningTodayMapper {

	
	
	@Insert("""
			INSERT INTO RunningToday (title, body, writer)
			VALUES (#{title}, #{body}, #{writer})
			""")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	Integer insertRunningToday(RunningToday runningToday);

	
	
	
	@Insert("""
			insert into RunningFileName (boardId, fileName)
			values (#{boardId}, #{fileName})
			""")
	void insertFileName(Integer boardId, String fileName);



	@Select("""
			select * from RunningToday;
			""")
	List<RunningToday> selectList();



	@Select("""
			select * from RunningToday where id = #{id};
			""")
	RunningToday selectById(Integer id);


	@Select("""
			SELECT
			    r.id,
			    r.title,
			    r.body,
			    r.inserted,
			    r.writer,
			    f.fileName
			FROM
			    RunningToday r
			    LEFT JOIN RunningFileName f ON r.id = f.boardId
			WHERE
			    r.id = #{id}
						""")
	@ResultMap("boardResultMap")
	RunningToday selectFileNameById(Integer id);

	
	
	

}
