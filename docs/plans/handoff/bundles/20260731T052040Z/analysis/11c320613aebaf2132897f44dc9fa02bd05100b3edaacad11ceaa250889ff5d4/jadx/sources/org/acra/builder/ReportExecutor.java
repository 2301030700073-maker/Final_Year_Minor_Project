package org.acra.builder;

import android.util.Log;
import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonBuilder;
import java.lang.Thread;
import java.util.ArrayList;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.acra.config.ReportingAdministrator;
import org.acra.data.CrashReportDataFactory;
import org.acra.plugins.ServicePluginLoader;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReportExecutor {
    public final CoreConfiguration config;
    public final App context;
    public final CrashReportDataFactory crashReportDataFactory;
    public final Thread.UncaughtExceptionHandler defaultExceptionHandler;
    public boolean isEnabled;
    public final LastActivityManager lastActivityManager;
    public final ProcessFinisher processFinisher;
    public final ArrayList reportingAdministrators;
    public final JsonBuilder schedulerStarter;

    public ReportExecutor(App app, CoreConfiguration coreConfiguration, CrashReportDataFactory crashReportDataFactory, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, ProcessFinisher processFinisher, JsonBuilder jsonBuilder, LastActivityManager lastActivityManager) {
        this.context = app;
        this.config = coreConfiguration;
        this.crashReportDataFactory = crashReportDataFactory;
        this.defaultExceptionHandler = uncaughtExceptionHandler;
        this.processFinisher = processFinisher;
        this.schedulerStarter = jsonBuilder;
        this.lastActivityManager = lastActivityManager;
        this.reportingAdministrators = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, ReportingAdministrator.class);
    }

    public final void handReportToDefaultExceptionHandler(Thread thread, Throwable th) {
        App app = this.context;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.defaultExceptionHandler;
        if (uncaughtExceptionHandler != null) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.i("ACRA", "ACRA is disabled for " + app.getPackageName() + " - forwarding uncaught Exception on to default ExceptionHandler");
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        ErrorReporter errorReporter2 = ACRA.errorReporter;
        Log.e("ACRA", "ACRA is disabled for " + app.getPackageName() + " - no default ExceptionHandler");
        Log.e("ACRA", Owner.CC.m("ACRA caught a ", th.getClass().getSimpleName(), " for ", app.getPackageName()), th);
    }
}
