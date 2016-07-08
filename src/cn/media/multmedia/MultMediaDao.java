package cn.media.multmedia;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.media.utils.PageHibernateCallback;

public class MultMediaDao extends HibernateDaoSupport{

	
	// 统计某个一级分类下的媒体的总数:
	public Integer findCountByCid(Integer cid) {
		//String sql = "SELECT COUNT(*) FROM multmedia m ,categorythird ct,categorysecond cs,category c WHERE m.ctid = ct.ctid AND ct.csid = cs.csid AND cs.cid = c.cid AND c.cid=?;";
		String hql = "select count(*) from MultMedia m join m.categoryThird ct join ct.cstegorySecond cs join cs.category c where c.cid = ?";
		//String hql = "select count(*) from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
		
		List<Long> list = this.getHibernateTemplate().find(hql,cid);
		System.out.println("list:====某一级分类下所有的媒体========="+list.get(0).intValue());
		return list.get(0).intValue();
	}

	public List<MultMedia> findByPage(Integer cid, int begin, int limit) {
		// String sql = "select m.* from multmedia m join m.categoryThird ct join ct.cstegorySecond cs join cs.category c where c.cid = ?";
		String hql = "select m from MultMedia m join m.categoryThird ct join ct.cstegorySecond cs join cs.category c where c.cid = ?";
		List<MultMedia> list = this.getHibernateTemplate().executeFind(new PageHibernateCallback<MultMedia>(hql, new Object[]{cid}, begin, limit));
		List<MultMedia> newList=new ArrayList<MultMedia>();
		Iterator<MultMedia>it =list.listIterator();
		while (it.hasNext()){
			MultMedia media=it.next();
			if(!newList.contains(media)){
			newList.add(media);
			}
		}
		return newList;
	}

	//Dao层查询热门媒体只显示10个
	public List<MultMedia> findHot() {
		// DetachedCriteria criteria =
		// DetachedCriteria.forClass(MultMedia.class);
		// criteria.add(Restrictions.eq("is_hot", 1));
		// List<MultMedia> list =
		// this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		
		List<MultMedia> list = this.getHibernateTemplate().executeFind(new PageHibernateCallback<MultMedia>("from MultMedia where is_hot=?", new Object[]{1}, 0, 10));
		return list;
	}

	//Dao层的查询最新媒体
	public List<MultMedia> findNew() {
		List<MultMedia> list = this.getHibernateTemplate().executeFind(new PageHibernateCallback<MultMedia>("from MultMedia order by mdate desc", null , 0, 10));
		return list;
	}

}
