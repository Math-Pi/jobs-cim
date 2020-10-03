package com.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.utils.Page;
import com.dao.CompanyDao;
import com.bean.Company;
import com.service.CompanyService;
/**
 * 客户管理
 */
@Service("CompanyService")
@Transactional
public class CompanyServiceImpl implements CompanyService {
	// 声明DAO属性并注入
	@Autowired
	private CompanyDao companyDao;
	// 招聘信息列表
	public Page<Company> findCompanyList(Integer page, Integer rows, 
			String comName,  String comSource,String comIndustry,String comPeople,
                                                          String comMoney) {
		// 创建公司招聘对象
         Company company = new Company();
		// 判断公司名称
		if(StringUtils.isNotBlank(comName)){
			company.setCom_name(comName);
		}
		// 判断招聘信息来源
		if(StringUtils.isNotBlank(comSource)){
			company.setCom_source(comSource);
		}
		// 判断所属行业
		if(StringUtils.isNotBlank(comIndustry)){
			company.setCom_industry(comIndustry);
		}
		// 判断公司人数
		if(StringUtils.isNotBlank(comPeople)){
			company.setCom_people(comPeople);
		}
		// 判断招聘薪酬
		if(StringUtils.isNotBlank(comMoney)){
			company.setCom_money(comMoney);
		}
		// 当前页
		company.setStart((page-1) * rows) ;
		// 每页数
		company.setRows(rows);
		// 查询招聘列表
		List<Company> companys = 
                            companyDao.selectCompanyList(company);
		// 查询招聘列表总记录数
		Integer count = companyDao.selectCompanyListCount(company);
		// 创建Page返回对象
		Page<Company> result = new Page<>();
		result.setPage(page);
		result.setRows(companys);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建公司招聘
	 */
	@Override
	public int createCompany(Company company) {
	    return companyDao.createCompany(company);
	}
	/**
	 * 通过id查询招聘信息
	 */
	@Override
	public Company getCompanyById(Integer id) {	
	    Company company = companyDao.getCompanyById(id);
	    return company;		
	}
	/**
	 * 更新招聘信息
	 */
	@Override
	public int updateCompany(Company company) {
	    return companyDao.updateCompany(company);
	}
	/**
	 * 删除招聘信息
	 */
	@Override
	public int deleteCompany(Integer id) {
	    return companyDao.deleteCompany(id);	
	}

	
}
