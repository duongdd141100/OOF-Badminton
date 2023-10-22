package com.example.oof_badminton.custom_repository;

import com.example.oof_badminton.entity.Product;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

@Repository
public class ProductCustomRepository {

    @Autowired
    private EntityManager entityManager;

    private String SQL_QUERY = "select p.id as id," +
            " p.name as productName," +
            " p.price as price," +
            " case when p.status = 1 then \"Active\" else \"Inactive\" end as status," +
            " p.description as description," +
            " c.name as categoryName," +
            " s.name as supplierName" +
            " from products p" +
            " inner join categories c" +
            " on p.category_id = c.id" +
            " inner join suppliers s" +
            " on p.supplier_id = s.id";

    public List<Product> findAll(Integer categoryId, Integer supplierId) {
        String conditionQuery = createCondition(categoryId, supplierId);
        Query query = entityManager.createNativeQuery(SQL_QUERY + conditionQuery, "ProductDto");
        if (categoryId != null) {
            query.setParameter("categoryId", categoryId);
        }
        if (supplierId != null) {
            query.setParameter("supplierId", supplierId);
        }
        return query.getResultList();
    }

    private String createCondition(Integer categoryId, Integer supplierId) {
        String conditionQuery = "";
        if (categoryId != null) {
            conditionQuery += " and c.id = :categoryId";
        }
        if (supplierId != null) {
            conditionQuery += " and s.id = :supplierId";
        }
        return StringUtils.hasText(conditionQuery)
                ? " where" + conditionQuery.substring(4)
                : conditionQuery;
    }

}
