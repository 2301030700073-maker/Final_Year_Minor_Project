package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class ZO extends C3393nT {

    /* renamed from: do, reason: not valid java name */
    public InterfaceC2691eP f4818do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f4819do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f4820do;

    /* renamed from: if, reason: not valid java name */
    public Boolean f4821if;

    public ZO(TS ts) {
        super(ts);
        this.f4818do = new InterfaceC2691eP() { // from class: WO
            @Override // defpackage.InterfaceC2691eP
            /* renamed from: if */
            public final String mo941if(String str, String str2) {
                return null;
            }
        };
    }

    /* renamed from: extends, reason: not valid java name */
    public static long m2995extends() {
        return C3684sQ.f15457continue.m2158do(null).longValue();
    }

    /* renamed from: class, reason: not valid java name */
    public final double m2996class(String str, SR<Double> sr) {
        if (TextUtils.isEmpty(str)) {
            return sr.m2158do(null).doubleValue();
        }
        String mo941if = this.f4818do.mo941if(str, sr.f3512do);
        if (TextUtils.isEmpty(mo941if)) {
            return sr.m2158do(null).doubleValue();
        }
        try {
            return sr.m2158do(Double.valueOf(Double.parseDouble(mo941if))).doubleValue();
        } catch (NumberFormatException unused) {
            return sr.m2158do(null).doubleValue();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final int m2997const(String str, SR<Integer> sr, int i, int i2) {
        return Math.max(Math.min(m3013while(str, sr), i2), i);
    }

    /* renamed from: default, reason: not valid java name */
    public final boolean m2998default(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(this.f4818do.mo941if(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: final, reason: not valid java name */
    public final int m2999final(String str, boolean z) {
        if (z) {
            return m2997const(str, C3684sQ.g, 100, 500);
        }
        return 500;
    }

    /* renamed from: finally, reason: not valid java name */
    public final boolean m3000finally() {
        Boolean m3008static = m3008static("google_analytics_automatic_screen_reporting_enabled");
        return m3008static == null || m3008static.booleanValue();
    }

    /* renamed from: if, reason: not valid java name */
    public final String m3001if(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            mo2249case().f13717do.m7368for("Could not find SystemProperties class", e);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (IllegalAccessException e2) {
            mo2249case().f13717do.m7368for("Could not access SystemProperties.get()", e2);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (NoSuchMethodException e3) {
            mo2249case().f13717do.m7368for("Could not find SystemProperties.get() method", e3);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (InvocationTargetException e4) {
            mo2249case().f13717do.m7368for("SystemProperties.get() threw an exception", e4);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final int m3002import(String str, boolean z) {
        return Math.max(m2999final(str, z), 256);
    }

    /* renamed from: native, reason: not valid java name */
    public final long m3003native(String str, SR<Long> sr) {
        if (TextUtils.isEmpty(str)) {
            return sr.m2158do(null).longValue();
        }
        String mo941if = this.f4818do.mo941if(str, sr.f3512do);
        if (TextUtils.isEmpty(mo941if)) {
            return sr.m2158do(null).longValue();
        }
        try {
            return sr.m2158do(Long.valueOf(Long.parseLong(mo941if))).longValue();
        } catch (NumberFormatException unused) {
            return sr.m2158do(null).longValue();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final boolean m3004package() {
        Boolean m3008static = m3008static("firebase_analytics_collection_deactivated");
        return m3008static != null && m3008static.booleanValue();
    }

    /* renamed from: private, reason: not valid java name */
    public final boolean m3005private() {
        if (this.f4819do == null) {
            Boolean m3008static = m3008static("app_measurement_lite");
            this.f4819do = m3008static;
            if (m3008static == null) {
                this.f4819do = Boolean.FALSE;
            }
        }
        return this.f4819do.booleanValue() || !((TS) ((C3393nT) this).f14527do).f3703do;
    }

    /* renamed from: public, reason: not valid java name */
    public final EnumC3746tT m3006public(String str, boolean z) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        Bundle m3011throw = m3011throw();
        if (m3011throw == null) {
            mo2249case().f13717do.m7369if("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = m3011throw.get(str);
        }
        EnumC3746tT enumC3746tT = EnumC3746tT.UNINITIALIZED;
        if (obj == null) {
            return enumC3746tT;
        }
        if (Boolean.TRUE.equals(obj)) {
            return EnumC3746tT.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return EnumC3746tT.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return EnumC3746tT.POLICY;
        }
        mo2249case().f13722new.m7368for("Invalid manifest metadata for", str);
        return enumC3746tT;
    }

    /* renamed from: return, reason: not valid java name */
    public final String m3007return(String str, SR<String> sr) {
        return TextUtils.isEmpty(str) ? sr.m2158do(null) : sr.m2158do(this.f4818do.mo941if(str, sr.f3512do));
    }

    /* renamed from: static, reason: not valid java name */
    public final Boolean m3008static(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle m3011throw = m3011throw();
        if (m3011throw == null) {
            mo2249case().f13717do.m7369if("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (m3011throw.containsKey(str)) {
            return Boolean.valueOf(m3011throw.getBoolean(str));
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public final boolean m3009super(SR<Boolean> sr) {
        return m3012throws(null, sr);
    }

    /* renamed from: switch, reason: not valid java name */
    public final boolean m3010switch(String str, SR<Boolean> sr) {
        return m3012throws(str, sr);
    }

    /* renamed from: throw, reason: not valid java name */
    public final Bundle m3011throw() {
        try {
            if (mo2255for().getPackageManager() == null) {
                mo2249case().f13717do.m7369if("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(mo2255for()).getApplicationInfo(mo2255for().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            mo2249case().f13717do.m7369if("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            mo2249case().f13717do.m7368for("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m3012throws(String str, SR<Boolean> sr) {
        if (TextUtils.isEmpty(str)) {
            return sr.m2158do(null).booleanValue();
        }
        String mo941if = this.f4818do.mo941if(str, sr.f3512do);
        return TextUtils.isEmpty(mo941if) ? sr.m2158do(null).booleanValue() : sr.m2158do(Boolean.valueOf(AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(mo941if))).booleanValue();
    }

    /* renamed from: while, reason: not valid java name */
    public final int m3013while(String str, SR<Integer> sr) {
        if (TextUtils.isEmpty(str)) {
            return sr.m2158do(null).intValue();
        }
        String mo941if = this.f4818do.mo941if(str, sr.f3512do);
        if (TextUtils.isEmpty(mo941if)) {
            return sr.m2158do(null).intValue();
        }
        try {
            return sr.m2158do(Integer.valueOf(Integer.parseInt(mo941if))).intValue();
        } catch (NumberFormatException unused) {
            return sr.m2158do(null).intValue();
        }
    }
}
