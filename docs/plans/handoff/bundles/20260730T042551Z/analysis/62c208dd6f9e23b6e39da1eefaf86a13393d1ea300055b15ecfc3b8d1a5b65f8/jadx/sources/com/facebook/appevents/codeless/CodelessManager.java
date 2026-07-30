package com.facebook.appevents.codeless;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.C3784u8;
import defpackage.EH;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class CodelessManager {
    private static String deviceSessionID;
    private static volatile boolean isCheckingSession;
    private static SensorManager sensorManager;
    private static ViewIndexer viewIndexer;
    public static final CodelessManager INSTANCE = new CodelessManager();
    private static final ViewIndexingTrigger viewIndexingTrigger = new ViewIndexingTrigger();
    private static final AtomicBoolean isCodelessEnabled = new AtomicBoolean(true);
    private static final AtomicBoolean isAppIndexingEnabled = new AtomicBoolean(false);

    private CodelessManager() {
    }

    private final void checkCodelessSession(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (isCheckingSession) {
                return;
            }
            isCheckingSession = true;
            C3756th.m8304new().execute(new EH(str, 2));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkCodelessSession$lambda-1, reason: not valid java name */
    public static final void m5347checkCodelessSession$lambda1(String str) {
        String str2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.Companion.getAttributionIdentifiers(C3756th.m8299do());
            JSONArray jSONArray = new JSONArray();
            String str3 = Build.MODEL;
            if (str3 == null) {
                str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            jSONArray.put(str3);
            if ((attributionIdentifiers == null ? null : attributionIdentifiers.getAndroidAdvertiserId()) != null) {
                jSONArray.put(attributionIdentifiers.getAndroidAdvertiserId());
            } else {
                jSONArray.put(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            jSONArray.put(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            if (AppEventUtility.isEmulator()) {
                str2 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            jSONArray.put(str2);
            Locale currentLocale = Utility.getCurrentLocale();
            jSONArray.put(currentLocale.getLanguage() + '_' + ((Object) currentLocale.getCountry()));
            String jSONArray2 = jSONArray.toString();
            C0173Do.m399new(jSONArray2, "extInfoArray.toString()");
            bundle.putString(Constants.DEVICE_SESSION_ID, getCurrentDeviceSessionID$facebook_core_release());
            bundle.putString(Constants.EXTINFO, jSONArray2);
            String str4 = GraphRequest.f9271for;
            boolean z = true;
            String format = String.format(Locale.US, "%s/app_indexing_session", Arrays.copyOf(new Object[]{str}, 1));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            JSONObject jSONObject = GraphRequest.Cfor.m5293this(format, bundle, null).m5267for().f1997do;
            AtomicBoolean atomicBoolean = isAppIndexingEnabled;
            if (jSONObject == null || !jSONObject.optBoolean(Constants.APP_INDEXING_ENABLED, false)) {
                z = false;
            }
            atomicBoolean.set(z);
            if (atomicBoolean.get()) {
                ViewIndexer viewIndexer2 = viewIndexer;
                if (viewIndexer2 != null) {
                    viewIndexer2.schedule();
                }
            } else {
                deviceSessionID = null;
            }
            isCheckingSession = false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    public static final void disable() {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            isCodelessEnabled.set(false);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            isCodelessEnabled.set(true);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    public static final String getCurrentDeviceSessionID$facebook_core_release() {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return null;
        }
        try {
            if (deviceSessionID == null) {
                deviceSessionID = UUID.randomUUID().toString();
            }
            String str = deviceSessionID;
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
            return null;
        }
    }

    public static final boolean getIsAppIndexingEnabled$facebook_core_release() {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return false;
        }
        try {
            return isAppIndexingEnabled.get();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
            return false;
        }
    }

    private final boolean isDebugOnEmulator() {
        CrashShieldHandler.isObjectCrashing(this);
        return false;
    }

    public static final void onActivityDestroyed(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            CodelessMatcher.Companion.getInstance().destroy(activity);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    public static final void onActivityPaused(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            if (isCodelessEnabled.get()) {
                CodelessMatcher.Companion.getInstance().remove(activity);
                ViewIndexer viewIndexer2 = viewIndexer;
                if (viewIndexer2 != null) {
                    viewIndexer2.unschedule();
                }
                SensorManager sensorManager2 = sensorManager;
                if (sensorManager2 == null) {
                    return;
                }
                sensorManager2.unregisterListener(viewIndexingTrigger);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    public static final void onActivityResumed(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            if (isCodelessEnabled.get()) {
                CodelessMatcher.Companion.getInstance().add(activity);
                Context applicationContext = activity.getApplicationContext();
                String m8303if = C3756th.m8303if();
                FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(m8303if);
                if (C0173Do.m394do(appSettingsWithoutQuery == null ? null : Boolean.valueOf(appSettingsWithoutQuery.getCodelessEventsEnabled()), Boolean.TRUE) || INSTANCE.isDebugOnEmulator()) {
                    SensorManager sensorManager2 = (SensorManager) applicationContext.getSystemService("sensor");
                    if (sensorManager2 == null) {
                        return;
                    }
                    sensorManager = sensorManager2;
                    Sensor defaultSensor = sensorManager2.getDefaultSensor(1);
                    ViewIndexer viewIndexer2 = new ViewIndexer(activity);
                    viewIndexer = viewIndexer2;
                    ViewIndexingTrigger viewIndexingTrigger2 = viewIndexingTrigger;
                    viewIndexingTrigger2.setOnShakeListener(new C3784u8(appSettingsWithoutQuery, m8303if));
                    sensorManager2.registerListener(viewIndexingTrigger2, defaultSensor, 2);
                    if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                        viewIndexer2.schedule();
                    }
                }
                CodelessManager codelessManager = INSTANCE;
                if (!codelessManager.isDebugOnEmulator() || isAppIndexingEnabled.get()) {
                    return;
                }
                codelessManager.checkCodelessSession(m8303if);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /* renamed from: onActivityResumed$lambda-0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m5350onActivityResumed$lambda0(com.facebook.internal.FetchedAppSettings r5, java.lang.String r6) {
        /*
            java.lang.Class<com.facebook.appevents.codeless.CodelessManager> r0 = com.facebook.appevents.codeless.CodelessManager.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            if (r1 == 0) goto L9
            return
        L9:
            java.lang.String r1 = "$appId"
            defpackage.C0173Do.m401try(r6, r1)     // Catch: java.lang.Throwable -> L46
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L1a
            boolean r5 = r5.getCodelessEventsEnabled()     // Catch: java.lang.Throwable -> L46
            if (r5 == 0) goto L1a
            r5 = 1
            goto L1b
        L1a:
            r5 = 0
        L1b:
            th r3 = defpackage.C3756th.f15751do     // Catch: java.lang.Throwable -> L46
            MJ r3 = defpackage.MJ.f2163do     // Catch: java.lang.Throwable -> L46
            java.lang.Class<MJ> r3 = defpackage.MJ.class
            boolean r4 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r3)     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L28
            goto L38
        L28:
            MJ r4 = defpackage.MJ.f2163do     // Catch: java.lang.Throwable -> L34
            r4.m1417new()     // Catch: java.lang.Throwable -> L34
            MJ$do r4 = defpackage.MJ.f2170new     // Catch: java.lang.Throwable -> L34
            boolean r3 = r4.m1420do()     // Catch: java.lang.Throwable -> L34
            goto L39
        L34:
            r4 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r4, r3)     // Catch: java.lang.Throwable -> L46
        L38:
            r3 = 0
        L39:
            if (r3 != 0) goto L3c
            r1 = 0
        L3c:
            if (r5 == 0) goto L45
            if (r1 == 0) goto L45
            com.facebook.appevents.codeless.CodelessManager r5 = com.facebook.appevents.codeless.CodelessManager.INSTANCE     // Catch: java.lang.Throwable -> L46
            r5.checkCodelessSession(r6)     // Catch: java.lang.Throwable -> L46
        L45:
            return
        L46:
            r5 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessManager.m5350onActivityResumed$lambda0(com.facebook.internal.FetchedAppSettings, java.lang.String):void");
    }

    public static final void updateAppIndexing$facebook_core_release(boolean z) {
        if (CrashShieldHandler.isObjectCrashing(CodelessManager.class)) {
            return;
        }
        try {
            isAppIndexingEnabled.set(z);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessManager.class);
        }
    }
}
