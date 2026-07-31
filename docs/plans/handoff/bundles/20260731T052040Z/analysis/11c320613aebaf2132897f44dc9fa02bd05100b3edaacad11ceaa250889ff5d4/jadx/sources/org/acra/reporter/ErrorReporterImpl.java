package org.acra.reporter;

import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import coil3.ComponentRegistry;
import com.grack.nanojson.JsonBuilder;
import java.lang.Thread;
import java.util.Calendar;
import java.util.HashMap;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.builder.LastActivityManager;
import org.acra.builder.ReportBuilder;
import org.acra.builder.ReportExecutor;
import org.acra.collector.ApplicationStartupCollector;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportDataFactory;
import org.acra.startup.StartupProcessorExecutor$$ExternalSyntheticLambda0;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorReporterImpl implements Thread.UncaughtExceptionHandler, SharedPreferences.OnSharedPreferenceChangeListener, ErrorReporter {
    public final App context;
    public final HashMap customData = new HashMap();
    public final Thread.UncaughtExceptionHandler defaultExceptionHandler;
    public final ReportExecutor reportExecutor;

    public ErrorReporterImpl(App app, CoreConfiguration coreConfiguration, boolean z) {
        this.context = app;
        CrashReportDataFactory crashReportDataFactory = new CrashReportDataFactory(app, coreConfiguration);
        for (Collector collector : crashReportDataFactory.collectors) {
            if (collector instanceof ApplicationStartupCollector) {
                try {
                    ((ApplicationStartupCollector) collector).collectApplicationStartUp(crashReportDataFactory.context, crashReportDataFactory.config);
                } catch (Throwable th) {
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    Log.w("ACRA", collector.getClass().getSimpleName().concat(" failed to collect its startup data"), th);
                }
            }
        }
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        this.defaultExceptionHandler = defaultUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(this);
        LastActivityManager lastActivityManager = new LastActivityManager(this.context);
        App app2 = this.context;
        ProcessFinisher processFinisher = new ProcessFinisher(0, app2, coreConfiguration, lastActivityManager);
        JsonBuilder jsonBuilder = new JsonBuilder(app2, coreConfiguration);
        ReportExecutor reportExecutor = new ReportExecutor(this.context, coreConfiguration, crashReportDataFactory, defaultUncaughtExceptionHandler, processFinisher, jsonBuilder, lastActivityManager);
        this.reportExecutor = reportExecutor;
        reportExecutor.isEnabled = z;
        App app3 = this.context;
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(app3, coreConfiguration, jsonBuilder);
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, -1);
        new Handler(app3.getMainLooper()).post(new StartupProcessorExecutor$$ExternalSyntheticLambda0(builder, calendar, z, 0));
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.getClass();
        if ("acra.disable".equals(str) || "acra.enable".equals(str)) {
            boolean z = true;
            try {
                z = sharedPreferences.getBoolean("acra.enable", !sharedPreferences.getBoolean("acra.disable", false));
            } catch (Exception unused) {
            }
            ErrorReporter errorReporter = ACRA.errorReporter;
            String str2 = z ? "enabled" : "disabled";
            Log.i("ACRA", "ACRA is " + str2 + " for " + this.context.getPackageName());
            this.reportExecutor.isEnabled = z;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        thread.getClass();
        th.getClass();
        ReportExecutor reportExecutor = this.reportExecutor;
        if (!reportExecutor.isEnabled) {
            reportExecutor.handReportToDefaultExceptionHandler(thread, th);
            return;
        }
        try {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.e("ACRA", "ACRA caught a " + th.getClass().getSimpleName() + " for " + this.context.getPackageName(), th);
            ReportBuilder reportBuilder = new ReportBuilder();
            reportBuilder.uncaughtExceptionThread = thread;
            reportBuilder.exception = th;
            HashMap hashMap = this.customData;
            hashMap.getClass();
            reportBuilder.customData.putAll(hashMap);
            reportBuilder.isEndApplication = true;
            reportBuilder.build(reportExecutor);
        } catch (Exception e) {
            ErrorReporter errorReporter2 = ACRA.errorReporter;
            Log.e("ACRA", "ACRA failed to capture the error - handing off to native error reporter", e);
            reportExecutor.handReportToDefaultExceptionHandler(thread, th);
        }
    }
}
