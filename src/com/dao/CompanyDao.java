package com.dao;
import java.util.List;
import com.bean.Company;
/**
 * Company接口
 */
public interface CompanyDao {
    // 公司招聘列表
	public List<Company> selectCompanyList(Company company);
	// 公司招聘数
	public Integer selectCompanyListCount(Company company);
	
	// 创建公司招聘
	public int createCompany(Company company);
	// 通过id查询公司招聘
	public Company getCompanyById(Integer id);
	// 更新公司招聘信息
	public int updateCompany(Company company);
	// 删除公司招聘
	int deleteCompany (Integer id);

}
