package dao.impl;

import dao.intf.ISpecialityDao;
import domain.Speciality;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.JDBCUtils;

import java.sql.SQLException;
import java.util.List;

public class SpecialityDao implements ISpecialityDao {
    @Override
    public List<Speciality> findAll() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        List<Speciality> result = queryRunner.query("select * from speciality", new BeanListHandler<Speciality>(Speciality.class));
        return result;
    }

    @Override
    public Speciality findById(int id) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        Object[] param = {id};
        Speciality result = queryRunner.query("select * from speciality where id=?", new BeanHandler<>(Speciality.class), param);
        return result;
    }

    @Override
    public void deleteById(int id) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        Object[] param = {id};
        queryRunner.update("delete from speciality where id=?",param);
    }

    @Override
    public void updateById(int id, Speciality speciality) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        Object[] param = {speciality.getName(),speciality.getFaculty(),speciality.getType(),id};
        queryRunner.update("update speciality set name=?,faculty=?,type=? where id=?",param);
    }

    @Override
    public void insert(Speciality speciality) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        Object[] param = {speciality.getName(),speciality.getFaculty(),speciality.getType()};
        queryRunner.update("insert into speciality(name,faculty,type) values(?,?,?)",param);
    }
}
