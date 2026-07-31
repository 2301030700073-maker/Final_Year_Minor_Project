package org.acra.builder;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.os.Debug;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import androidx.compose.ui.node.Owner;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import org.acra.ACRA;
import org.acra.ACRAConstants;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.collections.WeakStack;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.config.ReportingAdministrator;
import org.acra.data.CrashReportData;
import org.acra.data.CrashReportDataFactory;
import org.acra.data.StringFormat;
import org.acra.util.ProcessFinisher;
import org.acra.util.ProcessFinisher$$ExternalSyntheticLambda0;
import org.acra.util.SystemServices$ServiceNotReachedException;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReportBuilder {
    public final HashMap customData = new HashMap();
    public Throwable exception;
    public boolean isEndApplication;
    public String message;
    public Thread uncaughtExceptionThread;

    public final void build(ReportExecutor reportExecutor) {
        ArrayList arrayList;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        Collector.Order order;
        Iterator it;
        reportExecutor.getClass();
        if (this.message == null && this.exception == null) {
            this.message = "Report requested by developer";
        }
        ProcessFinisher processFinisher = reportExecutor.processFinisher;
        ArrayList arrayList2 = reportExecutor.reportingAdministrators;
        CoreConfiguration coreConfiguration = reportExecutor.config;
        App app = reportExecutor.context;
        if (!reportExecutor.isEnabled) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "ACRA is disabled. Report not sent.");
            return;
        }
        Iterator it2 = arrayList2.iterator();
        CrashReportData crashReportData = null;
        ReportingAdministrator reportingAdministrator = null;
        while (it2.hasNext()) {
            ReportingAdministrator reportingAdministrator2 = (ReportingAdministrator) it2.next();
            try {
                if (!reportingAdministrator2.shouldStartCollecting(app, coreConfiguration, this)) {
                    reportingAdministrator = reportingAdministrator2;
                }
            } catch (Exception e) {
                ErrorReporter errorReporter2 = ACRA.errorReporter;
                Log.w("ACRA", "ReportingAdministrator " + reportingAdministrator2.getClass().getName() + " threw exception", e);
            }
        }
        if (reportingAdministrator == null) {
            CrashReportDataFactory crashReportDataFactory = reportExecutor.crashReportDataFactory;
            ExecutorService newCachedThreadPool = crashReportDataFactory.config.getParallel() ? Executors.newCachedThreadPool() : Executors.newSingleThreadExecutor();
            CrashReportData crashReportData2 = new CrashReportData();
            List list = crashReportDataFactory.collectors;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                Object next = it3.next();
                try {
                    order = ((Collector) next).getOrder();
                } catch (Exception unused) {
                    order = Collector.Order.NORMAL;
                }
                ExecutorService executorService = newCachedThreadPool;
                Collector.Order order2 = order;
                Object obj = linkedHashMap.get(order2);
                if (obj == null) {
                    it = it3;
                    ArrayList arrayList3 = new ArrayList();
                    linkedHashMap.put(order2, arrayList3);
                    obj = arrayList3;
                } else {
                    it = it3;
                }
                ((List) obj).add(next);
                newCachedThreadPool = executorService;
                it3 = it;
            }
            ExecutorService executorService2 = newCachedThreadPool;
            for (Map.Entry entry : new TreeMap(linkedHashMap).entrySet()) {
                List list2 = (List) entry.getValue();
                ErrorReporter errorReporter3 = ACRA.errorReporter;
                list2.getClass();
                executorService2.getClass();
                CrashReportDataFactory crashReportDataFactory2 = crashReportDataFactory;
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    ArrayList arrayList5 = arrayList4;
                    CrashReportDataFactory crashReportDataFactory3 = crashReportDataFactory2;
                    arrayList5.add(executorService2.submit(new Schedulers$$ExternalSyntheticLambda1((Collector) it4.next(), crashReportDataFactory3, this, crashReportData2, 2)));
                    arrayList4 = arrayList5;
                    reportingAdministrator = reportingAdministrator;
                    arrayList2 = arrayList2;
                    crashReportDataFactory2 = crashReportDataFactory3;
                }
                ArrayList arrayList6 = arrayList2;
                crashReportDataFactory = crashReportDataFactory2;
                ExecutorService executorService3 = executorService2;
                ReportingAdministrator reportingAdministrator3 = reportingAdministrator;
                Iterator it5 = arrayList4.iterator();
                while (it5.hasNext()) {
                    Future future = (Future) it5.next();
                    while (!future.isDone()) {
                        try {
                            future.get();
                        } catch (InterruptedException unused2) {
                        } catch (ExecutionException unused3) {
                        }
                    }
                }
                ErrorReporter errorReporter4 = ACRA.errorReporter;
                executorService2 = executorService3;
                reportingAdministrator = reportingAdministrator3;
                arrayList2 = arrayList6;
            }
            arrayList = arrayList2;
            Iterator it6 = arrayList.iterator();
            while (it6.hasNext()) {
                ReportingAdministrator reportingAdministrator4 = (ReportingAdministrator) it6.next();
                try {
                    if (!reportingAdministrator4.shouldSendReport(app, coreConfiguration, crashReportData2)) {
                        reportingAdministrator = reportingAdministrator4;
                    }
                } catch (Exception e2) {
                    ErrorReporter errorReporter5 = ACRA.errorReporter;
                    Log.w("ACRA", "ReportingAdministrator " + reportingAdministrator4.getClass().getName() + " threw exception", e2);
                }
            }
            crashReportData = crashReportData2;
        } else {
            arrayList = arrayList2;
            ErrorReporter errorReporter6 = ACRA.errorReporter;
        }
        int i = 0;
        if (this.isEndApplication) {
            Iterator it7 = arrayList.iterator();
            boolean z = true;
            while (it7.hasNext()) {
                ReportingAdministrator reportingAdministrator5 = (ReportingAdministrator) it7.next();
                try {
                    if (!reportingAdministrator5.shouldFinishActivity(app, coreConfiguration, reportExecutor.lastActivityManager)) {
                        z = false;
                    }
                } catch (Exception e3) {
                    ErrorReporter errorReporter7 = ACRA.errorReporter;
                    Log.w("ACRA", "ReportingAdministrator " + reportingAdministrator5.getClass().getName() + " threw exception", e3);
                }
            }
            if (z) {
                Thread thread = this.uncaughtExceptionThread;
                ErrorReporter errorReporter8 = ACRA.errorReporter;
                LastActivityManager lastActivityManager = (LastActivityManager) processFinisher.lastActivityManager;
                WeakStack weakStack = lastActivityManager.activityStack;
                Iterator it8 = new ArrayList(weakStack).iterator();
                boolean z2 = false;
                while (it8.hasNext()) {
                    WeakStack weakStack2 = weakStack;
                    Activity activity = (Activity) it8.next();
                    Iterator it9 = it8;
                    ProcessFinisher$$ExternalSyntheticLambda0 processFinisher$$ExternalSyntheticLambda0 = new ProcessFinisher$$ExternalSyntheticLambda0(activity, i);
                    if (thread == activity.getMainLooper().getThread()) {
                        processFinisher$$ExternalSyntheticLambda0.run();
                        it8 = it9;
                        weakStack = weakStack2;
                        i = 0;
                    } else {
                        activity.runOnUiThread(processFinisher$$ExternalSyntheticLambda0);
                        it8 = it9;
                        weakStack = weakStack2;
                        i = 0;
                        z2 = true;
                    }
                }
                WeakStack weakStack3 = weakStack;
                if (z2) {
                    ReentrantLock reentrantLock = lastActivityManager.lock;
                    reentrantLock.lock();
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = currentTimeMillis;
                        while (!weakStack3.isEmpty() && currentTimeMillis + 100 > j) {
                            LastActivityManager lastActivityManager2 = lastActivityManager;
                            lastActivityManager.destroyedCondition.await((currentTimeMillis - j) + 100, TimeUnit.MILLISECONDS);
                            j = System.currentTimeMillis();
                            lastActivityManager = lastActivityManager2;
                        }
                    } finally {
                        reentrantLock.unlock();
                    }
                }
                weakStack3.clear();
            }
        }
        if (reportingAdministrator == null) {
            StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
            crashReportData.getClass();
            JSONObject jSONObject = crashReportData.content;
            ReportField reportField = ReportField.USER_CRASH_DATE;
            reportField.getClass();
            String optString = jSONObject.optString(reportField.toString());
            ReportField reportField2 = ReportField.IS_SILENT;
            reportField2.getClass();
            String optString2 = jSONObject.optString(reportField2.toString());
            String m = Owner.CC.m(optString, (optString2 == null || !Boolean.parseBoolean(optString2)) ? "" : ACRAConstants.SILENT_SUFFIX, ".stacktrace");
            File dir = app.getDir("ACRA-unapproved", 0);
            dir.getClass();
            File file = new File(dir, m);
            try {
                ErrorReporter errorReporter9 = ACRA.errorReporter;
                try {
                } catch (JSONException e4) {
                    throw e4;
                } catch (Exception e5) {
                    e = e5;
                }
            } catch (Exception e6) {
                ErrorReporter errorReporter10 = ACRA.errorReporter;
                Log.e("ACRA", "An error occurred while writing the report file...", e6);
            }
            try {
                Cookie.Companion.writeText$default(file, StringFormat.JSON.toFormattedString(crashReportData, EmptyList.INSTANCE, "", "", false));
                if (new ProcessFinisher(app, coreConfiguration).performInteractions(file)) {
                    if (reportExecutor.isEnabled) {
                        reportExecutor.schedulerStarter.scheduleReports(file);
                    } else {
                        Log.w("ACRA", "Would be sending reports, but ACRA is disabled");
                    }
                }
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
            } catch (JSONException e7) {
                throw e7;
            } catch (Exception e8) {
                e = e8;
                throw new JSONException(e.getMessage());
            }
        } else {
            ErrorReporter errorReporter11 = ACRA.errorReporter;
            try {
                reportingAdministrator.notifyReportDropped(app, coreConfiguration);
            } catch (Exception e9) {
                ErrorReporter errorReporter12 = ACRA.errorReporter;
                Log.w("ACRA", "ReportingAdministrator " + reportingAdministrator.getClass().getName() + " threw exeption", e9);
            }
        }
        if (this.isEndApplication) {
            Iterator it10 = arrayList.iterator();
            boolean z3 = true;
            while (it10.hasNext()) {
                ReportingAdministrator reportingAdministrator6 = (ReportingAdministrator) it10.next();
                try {
                    if (!reportingAdministrator6.shouldKillApplication(app, coreConfiguration, this, crashReportData)) {
                        z3 = false;
                    }
                } catch (Exception e10) {
                    ErrorReporter errorReporter13 = ACRA.errorReporter;
                    Log.w("ACRA", "ReportingAdministrator " + reportingAdministrator6.getClass().getName() + " threw exception", e10);
                }
            }
            if (z3) {
                if (Debug.isDebuggerConnected()) {
                    new Thread(new ReportExecutor$$ExternalSyntheticLambda0(reportExecutor, 0)).start();
                    ErrorReporter errorReporter14 = ACRA.errorReporter;
                    Log.w("ACRA", "Warning: Acra may behave differently with a debugger attached");
                    return;
                }
                Thread thread2 = this.uncaughtExceptionThread;
                Throwable th = this.exception;
                if (th == null) {
                    th = new RuntimeException();
                }
                boolean alsoReportToAndroidFramework = coreConfiguration.getAlsoReportToAndroidFramework();
                if (thread2 != null && alsoReportToAndroidFramework && (uncaughtExceptionHandler = reportExecutor.defaultExceptionHandler) != null) {
                    ErrorReporter errorReporter15 = ACRA.errorReporter;
                    uncaughtExceptionHandler.uncaughtException(thread2, th);
                    return;
                }
                App app2 = (App) processFinisher.context;
                if (((CoreConfiguration) processFinisher.config).getStopServicesOnCrash()) {
                    try {
                        Object systemService = app2.getSystemService("activity");
                        if (systemService == null) {
                            throw new SystemServices$ServiceNotReachedException("Unable to load SystemService activity");
                        }
                        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) systemService).getRunningServices(com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF);
                        int myPid = Process.myPid();
                        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                            if (runningServiceInfo.pid == myPid) {
                                String className = runningServiceInfo.service.getClassName();
                                className.getClass();
                                if (!StringsKt__StringsJVMKt.startsWith(className, "org.acra", false)) {
                                    try {
                                        Intent intent = new Intent();
                                        intent.setComponent(runningServiceInfo.service);
                                        app2.stopService(intent);
                                    } catch (SecurityException unused4) {
                                        ErrorReporter errorReporter16 = ACRA.errorReporter;
                                    }
                                }
                            }
                        }
                    } catch (SystemServices$ServiceNotReachedException e11) {
                        ErrorReporter errorReporter17 = ACRA.errorReporter;
                        Log.e("ACRA", "Unable to stop services", e11);
                    }
                }
                Process.killProcess(Process.myPid());
                System.exit(10);
                Node$$ExternalSyntheticBUOutline0.m811m("System.exit returned normally, while it was supposed to halt JVM.");
            }
        }
    }
}
