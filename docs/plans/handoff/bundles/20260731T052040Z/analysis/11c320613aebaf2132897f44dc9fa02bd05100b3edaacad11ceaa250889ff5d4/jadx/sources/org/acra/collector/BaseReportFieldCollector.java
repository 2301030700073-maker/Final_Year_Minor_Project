package org.acra.collector;

import android.content.Context;
import androidx.compose.ui.node.Owner;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseReportFieldCollector implements Collector {
    private final ReportField[] reportFields;

    public BaseReportFieldCollector(ReportField... reportFieldArr) {
        reportFieldArr.getClass();
        this.reportFields = reportFieldArr;
    }

    @Override // org.acra.collector.Collector
    public void collect(Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        CrashReportData crashReportData2;
        BaseReportFieldCollector baseReportFieldCollector;
        Context context2;
        CoreConfiguration coreConfiguration2;
        ReportBuilder reportBuilder2;
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        ReportField[] reportFieldArr = this.reportFields;
        int length = reportFieldArr.length;
        int i = 0;
        while (i < length) {
            ReportField reportField = reportFieldArr[i];
            try {
                if (this.shouldCollect(context, coreConfiguration, reportField, reportBuilder)) {
                    baseReportFieldCollector = this;
                    context2 = context;
                    coreConfiguration2 = coreConfiguration;
                    reportBuilder2 = reportBuilder;
                    crashReportData2 = crashReportData;
                    try {
                        baseReportFieldCollector.collect(reportField, context2, coreConfiguration2, reportBuilder2, crashReportData2);
                    } catch (Exception e) {
                        e = e;
                        Exception exc = e;
                        crashReportData2.put(reportField, (String) null);
                        throw new CollectorException(Owner.CC.m("Error while retrieving ", reportField.name(), " data:", exc.getMessage()), exc);
                    }
                } else {
                    baseReportFieldCollector = this;
                    context2 = context;
                    coreConfiguration2 = coreConfiguration;
                    reportBuilder2 = reportBuilder;
                    crashReportData2 = crashReportData;
                }
                i++;
                this = baseReportFieldCollector;
                context = context2;
                coreConfiguration = coreConfiguration2;
                reportBuilder = reportBuilder2;
                crashReportData = crashReportData2;
            } catch (Exception e2) {
                e = e2;
                crashReportData2 = crashReportData;
            }
        }
    }

    public abstract void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData);

    @Override // org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.Collector
    public Collector.Order getOrder() {
        return Collector.Order.NORMAL;
    }

    public boolean shouldCollect(Context context, CoreConfiguration coreConfiguration, ReportField reportField, ReportBuilder reportBuilder) {
        context.getClass();
        coreConfiguration.getClass();
        reportField.getClass();
        reportBuilder.getClass();
        return coreConfiguration.getReportContent().contains(reportField);
    }
}
