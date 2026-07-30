package com.facebook.internal.instrument.anrreport;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.OF;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ANRDetector {
    private static final int DETECTION_INTERVAL_IN_MS = 500;
    public static final ANRDetector INSTANCE = new ANRDetector();
    private static final int myUid = Process.myUid();
    private static final ScheduledExecutorService scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    private static String previousStackTrace = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private static final Runnable anrDetectorRunnable = new OF(2);

    private ANRDetector() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: anrDetectorRunnable$lambda-0, reason: not valid java name */
    public static final void m5464anrDetectorRunnable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class)) {
            return;
        }
        try {
            Object systemService = C3756th.m8299do().getSystemService("activity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            }
            checkProcessError((ActivityManager) systemService);
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }

    public static final void checkProcessError(ActivityManager activityManager) {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class) || activityManager == null) {
            return;
        }
        try {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState == null) {
                return;
            }
            for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == myUid) {
                    Thread thread = Looper.getMainLooper().getThread();
                    C0173Do.m399new(thread, "getMainLooper().thread");
                    String stackTrace = InstrumentUtility.getStackTrace(thread);
                    if (!C0173Do.m394do(stackTrace, previousStackTrace) && InstrumentUtility.isSDKRelatedThread(thread)) {
                        previousStackTrace = stackTrace;
                        InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                        InstrumentData.Builder.build(processErrorStateInfo.shortMsg, stackTrace).save();
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }

    public static final void start() {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class)) {
            return;
        }
        try {
            scheduledExecutorService.scheduleAtFixedRate(anrDetectorRunnable, 0L, DETECTION_INTERVAL_IN_MS, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }
}
