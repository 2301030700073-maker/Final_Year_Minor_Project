package org.acra.collector;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ThreadCollector extends BaseReportFieldCollector {
    public ThreadCollector() {
        super(ReportField.THREAD_DETAILS);
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        Thread thread = reportBuilder.uncaughtExceptionThread;
        if (thread == null) {
            crashReportData.put(ReportField.THREAD_DETAILS, (String) null);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TtmlNode.ATTR_ID, thread.getId());
        jSONObject.put("name", thread.getName());
        jSONObject.put("priority", thread.getPriority());
        ThreadGroup threadGroup = thread.getThreadGroup();
        if (threadGroup != null) {
            jSONObject.put("groupName", threadGroup);
        }
        crashReportData.put(ReportField.THREAD_DETAILS, jSONObject);
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
