package com.ejie.x38.log;

import java.util.Hashtable;

import org.apache.log4j.Level;
import org.aspectj.lang.ProceedingJoinPoint;

import com.ejie.x38.util.TableManager;

public class DaoLoggingAdviceImpl extends LoggingAdviceImpl {

	@Override
	public void preLogging(ProceedingJoinPoint call) throws Throwable {
		Hashtable<String, String> table = TableManager.initTable();
		table.put(LogConstants.CRITICALITY, Level.TRACE.toString());
		table.put(LogConstants.FUNCTIONALSUBSYSTEM, LogConstants.DATASUBSYSTEM);
		preComponentLogCall(call, table);		
	}

	@Override
	public void postLogging(ProceedingJoinPoint call, Object ret) throws Throwable {
		Hashtable<String, String> table = TableManager.initTable();
		table.put(LogConstants.CRITICALITY, Level.TRACE.toString());
		table.put(LogConstants.FUNCTIONALSUBSYSTEM, LogConstants.DATASUBSYSTEM);
		postComponentLogCall(call, ret, table);
	}
}