package com.facebook.appevents.ondeviceprocessing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FacebookSignatureValidator;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C0471Rf;
import defpackage.C3756th;
import defpackage.InterfaceC0500Sm;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class RemoteServiceWrapper {
    public static final String RECEIVER_SERVICE_ACTION = "ReceiverService";
    public static final String RECEIVER_SERVICE_PACKAGE = "com.facebook.katana";
    public static final String RECEIVER_SERVICE_PACKAGE_WAKIZASHI = "com.facebook.wakizashi";
    private static Boolean isServiceAvailable;
    public static final RemoteServiceWrapper INSTANCE = new RemoteServiceWrapper();
    private static final String TAG = "RemoteServiceWrapper";

    public enum EventType {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");

        private final String eventType;

        EventType(String str) {
            this.eventType = str;
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static EventType[] valuesCustom() {
            EventType[] valuesCustom = values();
            return (EventType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.eventType;
        }
    }

    public static final class RemoteServiceConnection implements ServiceConnection {
        private IBinder binder;
        private final CountDownLatch latch = new CountDownLatch(1);

        public final IBinder getBinder() {
            this.latch.await(5L, TimeUnit.SECONDS);
            return this.binder;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
            this.latch.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
            C0173Do.m401try(iBinder, "serviceBinder");
            this.binder = iBinder;
            this.latch.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
        }
    }

    public enum ServiceResult {
        OPERATION_SUCCESS,
        SERVICE_NOT_AVAILABLE,
        SERVICE_ERROR;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static ServiceResult[] valuesCustom() {
            ServiceResult[] valuesCustom = values();
            return (ServiceResult[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    private RemoteServiceWrapper() {
    }

    private final Intent getVerifiedServiceIntent(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                Intent intent = new Intent(RECEIVER_SERVICE_ACTION);
                intent.setPackage("com.facebook.katana");
                if (packageManager.resolveService(intent, 0) != null && FacebookSignatureValidator.validateSignature(context, "com.facebook.katana")) {
                    return intent;
                }
                Intent intent2 = new Intent(RECEIVER_SERVICE_ACTION);
                intent2.setPackage("com.facebook.wakizashi");
                if (packageManager.resolveService(intent2, 0) != null) {
                    if (FacebookSignatureValidator.validateSignature(context, "com.facebook.wakizashi")) {
                        return intent2;
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final boolean isServiceAvailable() {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceWrapper.class)) {
            return false;
        }
        try {
            if (isServiceAvailable == null) {
                isServiceAvailable = Boolean.valueOf(INSTANCE.getVerifiedServiceIntent(C3756th.m8299do()) != null);
            }
            Boolean bool = isServiceAvailable;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceWrapper.class);
            return false;
        }
    }

    public static final ServiceResult sendCustomEvents(String str, List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "applicationId");
            C0173Do.m401try(list, "appEvents");
            return INSTANCE.sendEvents(EventType.CUSTOM_APP_EVENTS, str, list);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceWrapper.class);
            return null;
        }
    }

    private final ServiceResult sendEvents(EventType eventType, String str, List<AppEvent> list) {
        ServiceResult serviceResult;
        String str2;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            ServiceResult serviceResult2 = ServiceResult.SERVICE_NOT_AVAILABLE;
            AppEventUtility.assertIsNotMainThread();
            Context m8299do = C3756th.m8299do();
            Intent verifiedServiceIntent = getVerifiedServiceIntent(m8299do);
            if (verifiedServiceIntent == null) {
                return serviceResult2;
            }
            RemoteServiceConnection remoteServiceConnection = new RemoteServiceConnection();
            try {
                if (!m8299do.bindService(verifiedServiceIntent, remoteServiceConnection, 1)) {
                    return ServiceResult.SERVICE_ERROR;
                }
                try {
                    IBinder binder = remoteServiceConnection.getBinder();
                    if (binder != null) {
                        InterfaceC0500Sm n = InterfaceC0500Sm.Cdo.n(binder);
                        Bundle buildEventsBundle = RemoteServiceParametersHelper.buildEventsBundle(eventType, str, list);
                        if (buildEventsBundle != null) {
                            n.g(buildEventsBundle);
                            Utility utility = Utility.INSTANCE;
                            Utility.logd(TAG, C0173Do.m397goto(buildEventsBundle, "Successfully sent events to the remote service: "));
                        }
                        serviceResult2 = ServiceResult.OPERATION_SUCCESS;
                    }
                    return serviceResult2;
                } catch (RemoteException e) {
                    serviceResult = ServiceResult.SERVICE_ERROR;
                    Utility utility2 = Utility.INSTANCE;
                    str2 = TAG;
                    Utility.logd(str2, e);
                    m8299do.unbindService(remoteServiceConnection);
                    Utility.logd(str2, "Unbound from the remote service");
                    return serviceResult;
                } catch (InterruptedException e2) {
                    serviceResult = ServiceResult.SERVICE_ERROR;
                    Utility utility3 = Utility.INSTANCE;
                    str2 = TAG;
                    Utility.logd(str2, e2);
                    m8299do.unbindService(remoteServiceConnection);
                    Utility.logd(str2, "Unbound from the remote service");
                    return serviceResult;
                }
            } finally {
                m8299do.unbindService(remoteServiceConnection);
                Utility utility4 = Utility.INSTANCE;
                Utility.logd(TAG, "Unbound from the remote service");
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final ServiceResult sendInstallEvent(String str) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "applicationId");
            return INSTANCE.sendEvents(EventType.MOBILE_APP_INSTALL, str, C0471Rf.f3217do);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceWrapper.class);
            return null;
        }
    }
}
