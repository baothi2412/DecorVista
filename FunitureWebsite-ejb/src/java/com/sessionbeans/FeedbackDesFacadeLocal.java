/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.sessionbeans;

import com.entitybeans.FeedbackDes;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author BAOTHI
 */
@Local
public interface FeedbackDesFacadeLocal {

    void create(FeedbackDes feedbackDes);

    void edit(FeedbackDes feedbackDes);

    void remove(FeedbackDes feedbackDes);

    FeedbackDes find(Object id);

    List<FeedbackDes> findAll();

    List<FeedbackDes> findRange(int[] range);

    int count();

    public List<FeedbackDes> getFeedbackByDesigner(int designerId);

    public List<FeedbackDes> findByDesignerID(int designerID);
    
}
