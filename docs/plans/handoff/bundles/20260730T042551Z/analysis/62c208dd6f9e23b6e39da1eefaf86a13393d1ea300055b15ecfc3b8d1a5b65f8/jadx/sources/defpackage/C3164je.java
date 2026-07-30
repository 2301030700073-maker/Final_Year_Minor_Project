package defpackage;

import android.annotation.TargetApi;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;

/* renamed from: je, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3164je {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3164je f13740do = new C3164je();

    /* renamed from: do, reason: not valid java name */
    public static final String f13738do = C3164je.class.getCanonicalName();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap<String, NsdManager.RegistrationListener> f13739do = new HashMap<>();

    /* renamed from: je$do, reason: invalid class name */
    public static final class Cdo implements NsdManager.RegistrationListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f13741do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f13742if;

        public Cdo(String str, String str2) {
            this.f13741do = str;
            this.f13742if = str2;
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public final void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
            C0173Do.m401try(nsdServiceInfo, "serviceInfo");
            C3164je c3164je = C3164je.f13740do;
            C3164je.m7146do(this.f13742if);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public final void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
            C0173Do.m401try(nsdServiceInfo, "NsdServiceInfo");
            if (C0173Do.m394do(this.f13741do, nsdServiceInfo.getServiceName())) {
                return;
            }
            C3164je c3164je = C3164je.f13740do;
            C3164je.m7146do(this.f13742if);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public final void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
            C0173Do.m401try(nsdServiceInfo, "serviceInfo");
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public final void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
            C0173Do.m401try(nsdServiceInfo, "serviceInfo");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m7146do(String str) {
        if (CrashShieldHandler.isObjectCrashing(C3164je.class)) {
            return;
        }
        try {
            f13740do.m7148if(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, C3164je.class);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static final boolean m7147for() {
        if (CrashShieldHandler.isObjectCrashing(C3164je.class)) {
            return false;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(C3756th.m8303if());
            if (appSettingsWithoutQuery != null) {
                return appSettingsWithoutQuery.getSmartLoginOptions().contains(SmartLoginOption.Enabled);
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, C3164je.class);
            return false;
        }
    }

    @TargetApi(16)
    /* renamed from: if, reason: not valid java name */
    public final void m7148if(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        HashMap<String, NsdManager.RegistrationListener> hashMap = f13739do;
        try {
            NsdManager.RegistrationListener registrationListener = hashMap.get(str);
            if (registrationListener != null) {
                Object systemService = C3756th.m8299do().getSystemService("servicediscovery");
                if (systemService == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
                }
                try {
                    ((NsdManager) systemService).unregisterService(registrationListener);
                } catch (IllegalArgumentException e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(f13738do, e);
                }
                hashMap.remove(str);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @TargetApi(16)
    /* renamed from: new, reason: not valid java name */
    public final boolean m7149new(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            HashMap<String, NsdManager.RegistrationListener> hashMap = f13739do;
            if (hashMap.containsKey(str)) {
                return true;
            }
            C3756th c3756th = C3756th.f15751do;
            String str2 = "fbsdk_" + C0173Do.m397goto(BF.h(), "android-") + '_' + ((Object) str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = C3756th.m8299do().getSystemService("servicediscovery");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
            }
            Cdo cdo = new Cdo(str2, str);
            hashMap.put(str, cdo);
            ((NsdManager) systemService).registerService(nsdServiceInfo, 1, cdo);
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
