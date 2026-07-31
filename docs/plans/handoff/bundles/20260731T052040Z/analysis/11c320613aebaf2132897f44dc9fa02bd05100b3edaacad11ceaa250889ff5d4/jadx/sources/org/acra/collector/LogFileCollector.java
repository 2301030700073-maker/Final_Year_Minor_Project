package org.acra.collector;

import android.content.Context;
import android.util.Log;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.StreamReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LogFileCollector extends BaseReportFieldCollector {
    public LogFileCollector() {
        super(ReportField.APPLICATION_LOG);
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        if (coreConfiguration.getApplicationLogFile() != null) {
            ReportField reportField2 = ReportField.APPLICATION_LOG;
            StreamReader streamReader = new StreamReader(coreConfiguration.getApplicationLogFileDir().getFile(context, coreConfiguration.getApplicationLogFile()));
            streamReader.limit = coreConfiguration.getApplicationLogFileLines();
            crashReportData.put(reportField2, streamReader.read());
            return;
        }
        ErrorReporter errorReporter = ACRA.errorReporter;
        Log.w("ACRA", ReportField.APPLICATION_LOG + " was enabled but applicationLogFile was not set. No application log will be recorded.");
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector
    public Collector.Order getOrder() {
        return Collector.Order.LATE;
    }
}
