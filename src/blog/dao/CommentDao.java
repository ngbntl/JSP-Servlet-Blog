package blog.dao;

import java.util.List;

import blog.model.Comment;

public interface CommentDao {

	/**
	 * 
	 * @param comment_id
	 * @return
	 */
	boolean deleteComment(int comment_id);

	/**
	 * 
	 * @param comment
	 * @return
	 */
	boolean addComment(Comment comment);

	/**
	 * 
	 * @param article_id
	 * @return
	 */
	List getComment(int article_id);

	/**
	 * 
	 * @param id
	 * @param star_or_diss
	 * @return
	 */
	int star_diss(int id, int star_or_diss);

}