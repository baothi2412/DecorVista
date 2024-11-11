/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.sessionbeans;

import com.entitybeans.Consultations;
import com.entitybeans.Designer;
import com.entitybeans.Users;
import java.util.Date;
import java.util.List;
import javax.ejb.Local;
import javax.persistence.EntityManager;

/**
 *
 * @author BAOTHI
 */
@Local
public interface ConsultationsFacadeLocal {

    void create(Consultations consultations);

    void edit(Consultations consultations);

    void remove(Consultations consultations);

    Consultations find(Object id);

    List<Consultations> findAll();

    List<Consultations> findRange(int[] range);

    int count();

    public List<Consultations> findByUser(Integer userId);

    public List<Consultations> findByDesignerID(Designer loggedInDesigner);

    public List<Consultations> findByDesignerID(int designerID);

    public List<Consultations> findByDesignerID(Integer designerID);

    public List<Consultations> findByDay(Date day);

    public List<Consultations> findByMonthAndYear(int month, int year);

    public List<Consultations> findConsultationsByDesignerID(int designerID);

 
    public List<Object[]> getConsultationStats();
}
