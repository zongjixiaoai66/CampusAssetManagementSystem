package com.dao;

import com.entity.BaofeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.BaofeiView;

/**
 * 资产报废 Dao 接口
 *
 * @author 
 */
public interface BaofeiDao extends BaseMapper<BaofeiEntity> {

   List<BaofeiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
