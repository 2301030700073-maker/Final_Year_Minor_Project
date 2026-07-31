package org.acra.config;

import android.content.Context;
import org.acra.builder.LastActivityManager;
import org.acra.builder.ReportBuilder;
import org.acra.data.CrashReportData;
import org.acra.plugins.Plugin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ReportingAdministrator extends Plugin {
    @Override // org.acra.plugins.Plugin
    /* bridge */ /* synthetic */ boolean enabled(CoreConfiguration coreConfiguration);

    void notifyReportDropped(Context context, CoreConfiguration coreConfiguration);

    boolean shouldFinishActivity(Context context, CoreConfiguration coreConfiguration, LastActivityManager lastActivityManager);

    boolean shouldKillApplication(Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData);

    boolean shouldSendReport(Context context, CoreConfiguration coreConfiguration, CrashReportData crashReportData);

    boolean shouldStartCollecting(Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder);
}
