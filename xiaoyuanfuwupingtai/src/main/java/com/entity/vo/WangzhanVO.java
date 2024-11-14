package com.entity.vo;

import com.entity.WangzhanEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 网站管理员
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-05-04
 */
@TableName("wangzhan")
public class WangzhanVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账户
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 网站管理员姓名
     */

    @TableField(value = "wangzhan_name")
    private String wangzhanName;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 身份证号
     */

    @TableField(value = "wangzhan_id_number")
    private String wangzhanIdNumber;


    /**
     * 手机号
     */

    @TableField(value = "wangzhan_phone")
    private String wangzhanPhone;


    /**
     * 照片
     */

    @TableField(value = "wangzhan_photo")
    private String wangzhanPhoto;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：网站管理员姓名
	 */
    public String getWangzhanName() {
        return wangzhanName;
    }


    /**
	 * 获取：网站管理员姓名
	 */

    public void setWangzhanName(String wangzhanName) {
        this.wangzhanName = wangzhanName;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：身份证号
	 */
    public String getWangzhanIdNumber() {
        return wangzhanIdNumber;
    }


    /**
	 * 获取：身份证号
	 */

    public void setWangzhanIdNumber(String wangzhanIdNumber) {
        this.wangzhanIdNumber = wangzhanIdNumber;
    }
    /**
	 * 设置：手机号
	 */
    public String getWangzhanPhone() {
        return wangzhanPhone;
    }


    /**
	 * 获取：手机号
	 */

    public void setWangzhanPhone(String wangzhanPhone) {
        this.wangzhanPhone = wangzhanPhone;
    }
    /**
	 * 设置：照片
	 */
    public String getWangzhanPhoto() {
        return wangzhanPhoto;
    }


    /**
	 * 获取：照片
	 */

    public void setWangzhanPhoto(String wangzhanPhoto) {
        this.wangzhanPhoto = wangzhanPhoto;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}