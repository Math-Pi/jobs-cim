package com.service;
import com.utils.Page;
import com.bean.Company;
public interface CompanyService {
	// 查询招聘列表
	public Page<Company> findCompanyList(Integer page, Integer rows, 
                                        String comName,String comSource,
                                        String comIndustry,String comPeople,String comMoney);
	
	public int createCompany(Company company);
	
	// 通过id公司招聘
	public Company getCompanyById(Integer id);
	// 更新公司招聘信息
	public int updateCompany(Company company);
	// 删除公司招聘
	public int deleteCompany(Integer id);

}
