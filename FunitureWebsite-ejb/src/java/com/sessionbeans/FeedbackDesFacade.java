/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.sessionbeans;

import com.entitybeans.AbstractFacade;
import com.entitybeans.FeedbackDes;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84338
 */
@Stateless
public class FeedbackDesFacade extends AbstractFacade<FeedbackDes> implements FeedbackDesFacadeLocal {

    @PersistenceContext(unitName = "FunitureWebsite-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FeedbackDesFacade() {
        super(FeedbackDes.class);
    }

   @Override
public List<FeedbackDes> getFeedbackByDesigner(int designerId) {
    return em.createQuery("SELECT f FROM FeedbackDes f WHERE f.designerID.designerID = :designerID", FeedbackDes.class)
            .setParameter("designerID", designerId)
            .getResultList();
}


    @Override
    public List<FeedbackDes> findByDesignerID(int designerID) {
        return em.createQuery("SELECT f FROM FeedbackDes f WHERE f.designerID.designerID = :designerID", FeedbackDes.class)
                .setParameter("designerID", designerID)
                .getResultList();
    }

}
