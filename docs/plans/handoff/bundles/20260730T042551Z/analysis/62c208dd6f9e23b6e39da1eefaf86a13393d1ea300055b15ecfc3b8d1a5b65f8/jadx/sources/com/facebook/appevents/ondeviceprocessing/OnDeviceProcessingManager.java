package com.facebook.appevents.ondeviceprocessing;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.Cabstract;
import defpackage.O4;
import defpackage.RunnableC0443Pv;
import java.util.Set;

/* loaded from: classes.dex */
public final class OnDeviceProcessingManager {
    public static final OnDeviceProcessingManager INSTANCE = new OnDeviceProcessingManager();
    private static final Set<String> ALLOWED_IMPLICIT_EVENTS = O4.m1630transient(AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_START_TRIAL, AppEventsConstants.EVENT_NAME_SUBSCRIBE);

    private OnDeviceProcessingManager() {
    }

    private final boolean isEventEligibleForOnDeviceProcessing(AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return (appEvent.isImplicit() ^ true) || (appEvent.isImplicit() && ALLOWED_IMPLICIT_EVENTS.contains(appEvent.getName()));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public static final boolean isOnDeviceProcessingEnabled() {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return false;
        }
        try {
            if ((C3756th.m8300else(C3756th.m8299do()) || Utility.isDataProcessingRestricted()) ? false : true) {
                return RemoteServiceWrapper.isServiceAvailable();
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
            return false;
        }
    }

    public static final void sendCustomEventAsync(String str, AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "applicationId");
            C0173Do.m401try(appEvent, "event");
            if (INSTANCE.isEventEligibleForOnDeviceProcessing(appEvent)) {
                C3756th.m8304new().execute(new Cabstract(5, str, appEvent));
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendCustomEventAsync$lambda-1, reason: not valid java name */
    public static final void m5391sendCustomEventAsync$lambda1(String str, AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "$applicationId");
            C0173Do.m401try(appEvent, "$event");
            RemoteServiceWrapper remoteServiceWrapper = RemoteServiceWrapper.INSTANCE;
            RemoteServiceWrapper.sendCustomEvents(str, O4.m1617package(appEvent));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }

    public static final void sendInstallEventAsync(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            Context m8299do = C3756th.m8299do();
            if (str == null || str2 == null) {
                return;
            }
            C3756th.m8304new().execute(new RunnableC0443Pv(m8299do, str2, str, 0));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendInstallEventAsync$lambda-0, reason: not valid java name */
    public static final void m5392sendInstallEventAsync$lambda0(Context context, String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(context, "$context");
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            String m397goto = C0173Do.m397goto("pingForOnDevice", str2);
            if (sharedPreferences.getLong(m397goto, 0L) == 0) {
                RemoteServiceWrapper.sendInstallEvent(str2);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(m397goto, System.currentTimeMillis());
                edit.apply();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }
}
