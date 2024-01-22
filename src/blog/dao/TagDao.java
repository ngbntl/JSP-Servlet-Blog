package blog.dao;

import java.util.List;

public interface TagDao {

	int DEFAULT_ID = 0;
	String DEFAULT_TAG = "LEMONREDS2017";

	/**
	 * 
	 * @param id
	 * @param tag
	 * @return
	 */
	boolean addTag(int id, String tag);

	/**
	 * 
	 * @param id
	 * @param tag
	 * @return
	 */
	boolean deleteTag(int id, String tag);

	/**
	 * 
	 * @return
	 */
	List getAllTag();

	/**
	 * 
	 * @param old_tag
	 * @param new_tag
	 * @return
	 */
	boolean updateTag(String old_tag, String new_tag);

	/**
	 * 
	 * @param column
	 * @param value
	 * @return
	 */
	List getTagByColumn(String column, String value);

}