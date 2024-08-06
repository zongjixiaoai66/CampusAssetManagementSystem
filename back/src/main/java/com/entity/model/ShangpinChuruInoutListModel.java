package com.entity.model;

import com.entity.ShangpinChuruInoutListEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 入库详情
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class ShangpinChuruInoutListModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 入库
     */
    private Integer shangpinChuruInoutId;


    /**
     * 校园资产
     */
    private Integer shangpinId;


    /**
     * 入库数量
     */
    private Integer shangpinChuruInoutListNumber;


    /**
     * 操作时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：入库
	 */
    public Integer getShangpinChuruInoutId() {
        return shangpinChuruInoutId;
    }


    /**
	 * 设置：入库
	 */
    public void setShangpinChuruInoutId(Integer shangpinChuruInoutId) {
        this.shangpinChuruInoutId = shangpinChuruInoutId;
    }
    /**
	 * 获取：校园资产
	 */
    public Integer getShangpinId() {
        return shangpinId;
    }


    /**
	 * 设置：校园资产
	 */
    public void setShangpinId(Integer shangpinId) {
        this.shangpinId = shangpinId;
    }
    /**
	 * 获取：入库数量
	 */
    public Integer getShangpinChuruInoutListNumber() {
        return shangpinChuruInoutListNumber;
    }


    /**
	 * 设置：入库数量
	 */
    public void setShangpinChuruInoutListNumber(Integer shangpinChuruInoutListNumber) {
        this.shangpinChuruInoutListNumber = shangpinChuruInoutListNumber;
    }
    /**
	 * 获取：操作时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：操作时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
