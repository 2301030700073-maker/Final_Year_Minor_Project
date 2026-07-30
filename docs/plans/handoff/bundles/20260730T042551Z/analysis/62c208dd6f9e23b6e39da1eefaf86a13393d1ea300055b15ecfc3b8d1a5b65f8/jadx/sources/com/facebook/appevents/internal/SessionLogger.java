package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.security.CertificateUtil;
import defpackage.C0173Do;
import defpackage.EnumC0658Zq;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class SessionLogger {
    private static final String PACKAGE_CHECKSUM = "PCKGCHKSUM";
    public static final SessionLogger INSTANCE = new SessionLogger();
    private static final String TAG = SessionLogger.class.getCanonicalName();
    private static final long[] INACTIVE_SECONDS_QUANTA = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    private SessionLogger() {
    }

    private final String computePackageChecksum(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String m397goto = C0173Do.m397goto(packageManager.getPackageInfo(context.getPackageName(), 0).versionName, "PCKGCHKSUM;");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            String string = sharedPreferences.getString(m397goto, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            String computeChecksumWithPackageManager = HashUtils.computeChecksumWithPackageManager(context, null);
            if (computeChecksumWithPackageManager == null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                C0173Do.m399new(applicationInfo, "pm.getApplicationInfo(context.packageName, 0)");
                computeChecksumWithPackageManager = HashUtils.computeChecksum(applicationInfo.sourceDir);
            }
            sharedPreferences.edit().putString(m397goto, computeChecksumWithPackageManager).apply();
            return computeChecksumWithPackageManager;
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final int getQuantaIndex(long j) {
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return 0;
        }
        int i = 0;
        while (true) {
            try {
                long[] jArr = INACTIVE_SECONDS_QUANTA;
                if (i >= jArr.length || jArr[i] >= j) {
                    break;
                }
                i++;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SessionLogger.class);
                return 0;
            }
        }
        return i;
    }

    public static final void logActivateApp(String str, SourceApplicationInfo sourceApplicationInfo, String str2, Context context) {
        String sourceApplicationInfo2;
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "activityName");
            C0173Do.m401try(context, "context");
            String str3 = "Unclassified";
            if (sourceApplicationInfo != null && (sourceApplicationInfo2 = sourceApplicationInfo.toString()) != null) {
                str3 = sourceApplicationInfo2;
            }
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, str3);
            bundle.putString(AppEventsConstants.EVENT_PARAM_PACKAGE_FP, INSTANCE.computePackageChecksum(context));
            bundle.putString(AppEventsConstants.EVENT_PARAM_APP_CERT_HASH, CertificateUtil.getCertificateHash(context));
            InternalAppEventsLogger.Companion companion = InternalAppEventsLogger.Companion;
            InternalAppEventsLogger createInstance = companion.createInstance(str, str2, null);
            createInstance.logEvent(AppEventsConstants.EVENT_NAME_ACTIVATED_APP, bundle);
            if (companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                createInstance.flush();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
        }
    }

    private final void logClockSkewEvent() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Logger.Companion companion = Logger.Companion;
            EnumC0658Zq enumC0658Zq = EnumC0658Zq.APP_EVENTS;
            String str = TAG;
            C0173Do.m398if(str);
            companion.log(enumC0658Zq, str, "Clock skew detected");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void logDeactivateApp(String str, SessionInfo sessionInfo, String str2) {
        long longValue;
        String sourceApplicationInfo;
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "activityName");
            if (sessionInfo == null) {
                return;
            }
            Long diskRestoreTime = sessionInfo.getDiskRestoreTime();
            long j = 0;
            if (diskRestoreTime == null) {
                Long sessionLastEventTime = sessionInfo.getSessionLastEventTime();
                longValue = 0 - (sessionLastEventTime == null ? 0L : sessionLastEventTime.longValue());
            } else {
                longValue = diskRestoreTime.longValue();
            }
            if (longValue < 0) {
                INSTANCE.logClockSkewEvent();
                longValue = 0;
            }
            long sessionLength = sessionInfo.getSessionLength();
            if (sessionLength < 0) {
                INSTANCE.logClockSkewEvent();
                sessionLength = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt(AppEventsConstants.EVENT_NAME_SESSION_INTERRUPTIONS, sessionInfo.getInterruptionCount());
            String format = String.format(Locale.ROOT, "session_quanta_%d", Arrays.copyOf(new Object[]{Integer.valueOf(getQuantaIndex(longValue))}, 1));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            bundle.putString(AppEventsConstants.EVENT_NAME_TIME_BETWEEN_SESSIONS, format);
            SourceApplicationInfo sourceApplicationInfo2 = sessionInfo.getSourceApplicationInfo();
            String str3 = "Unclassified";
            if (sourceApplicationInfo2 != null && (sourceApplicationInfo = sourceApplicationInfo2.toString()) != null) {
                str3 = sourceApplicationInfo;
            }
            bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, str3);
            Long sessionLastEventTime2 = sessionInfo.getSessionLastEventTime();
            if (sessionLastEventTime2 != null) {
                j = sessionLastEventTime2.longValue();
            }
            bundle.putLong(Constants.LOG_TIME_APP_EVENT_KEY, j / 1000);
            InternalAppEventsLogger.Companion.createInstance(str, str2, null).logEvent(AppEventsConstants.EVENT_NAME_DEACTIVATED_APP, sessionLength / 1000, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
        }
    }
}
