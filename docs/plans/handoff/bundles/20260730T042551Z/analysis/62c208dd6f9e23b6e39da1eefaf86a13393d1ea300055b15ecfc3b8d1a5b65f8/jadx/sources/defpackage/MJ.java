package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.MJ;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class MJ {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static SharedPreferences f2164do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final MJ f2163do = new MJ();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String f2165do = MJ.class.getName();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicBoolean f2166do = new AtomicBoolean(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final AtomicBoolean f2169if = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f2162do = new Cdo("com.facebook.sdk.AutoInitEnabled", true);

    /* renamed from: if, reason: not valid java name */
    public static final Cdo f2168if = new Cdo("com.facebook.sdk.AutoLogAppEventsEnabled", true);

    /* renamed from: for, reason: not valid java name */
    public static final Cdo f2167for = new Cdo("com.facebook.sdk.AdvertiserIDCollectionEnabled", true);

    /* renamed from: new, reason: not valid java name */
    public static final Cdo f2170new = new Cdo("auto_event_setup_enabled", false);

    /* renamed from: try, reason: not valid java name */
    public static final Cdo f2171try = new Cdo("com.facebook.sdk.MonitorEnabled", true);

    /* renamed from: MJ$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public long f2172do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Boolean f2173do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f2174do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f2175do;

        public Cdo(String str, boolean z) {
            this.f2175do = z;
            this.f2174do = str;
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m1420do() {
            Boolean bool = this.f2173do;
            return bool == null ? this.f2175do : bool.booleanValue();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final boolean m1410do() {
        if (CrashShieldHandler.isObjectCrashing(MJ.class)) {
            return false;
        }
        try {
            f2163do.m1417new();
            return f2167for.m1420do();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MJ.class);
            return false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static final boolean m1411if() {
        if (CrashShieldHandler.isObjectCrashing(MJ.class)) {
            return false;
        }
        try {
            f2163do.m1417new();
            return f2168if.m1420do();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MJ.class);
            return false;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m1412break(Cdo cdo) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m1418this();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("value", cdo.f2173do);
                jSONObject.put("last_timestamp", cdo.f2172do);
                SharedPreferences sharedPreferences = f2164do;
                if (sharedPreferences == null) {
                    C0173Do.m400this("userSettingPref");
                    throw null;
                }
                sharedPreferences.edit().putString(cdo.f2174do, jSONObject.toString()).apply();
                m1413case();
            } catch (Exception e) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(f2165do, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1413case() {
        int i;
        int i2;
        ApplicationInfo applicationInfo;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (f2166do.get() && C3756th.m8305this()) {
                Context m8299do = C3756th.m8299do();
                int i3 = 0;
                int i4 = ((f2162do.m1420do() ? 1 : 0) << 0) | 0 | ((f2168if.m1420do() ? 1 : 0) << 1) | ((f2167for.m1420do() ? 1 : 0) << 2) | ((f2171try.m1420do() ? 1 : 0) << 3);
                SharedPreferences sharedPreferences = f2164do;
                if (sharedPreferences == null) {
                    C0173Do.m400this("userSettingPref");
                    throw null;
                }
                int i5 = sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
                if (i5 != i4) {
                    SharedPreferences sharedPreferences2 = f2164do;
                    if (sharedPreferences2 == null) {
                        C0173Do.m400this("userSettingPref");
                        throw null;
                    }
                    sharedPreferences2.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i4).apply();
                    try {
                        applicationInfo = m8299do.getPackageManager().getApplicationInfo(m8299do.getPackageName(), 128);
                        C0173Do.m399new(applicationInfo, "ctx.packageManager.getApplicationInfo(ctx.packageName, PackageManager.GET_META_DATA)");
                    } catch (PackageManager.NameNotFoundException unused) {
                        i = 0;
                    }
                    if (applicationInfo.metaData == null) {
                        i2 = 0;
                        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(m8299do);
                        Bundle bundle = new Bundle();
                        bundle.putInt("usage", i3);
                        bundle.putInt("initial", i2);
                        bundle.putInt("previous", i5);
                        bundle.putInt("current", i4);
                        internalAppEventsLogger.logChangedSettingsEvent(bundle);
                    }
                    String[] strArr = {"com.facebook.sdk.AutoInitEnabled", "com.facebook.sdk.AutoLogAppEventsEnabled", "com.facebook.sdk.AdvertiserIDCollectionEnabled", "com.facebook.sdk.MonitorEnabled"};
                    boolean[] zArr = {true, true, true, true};
                    int i6 = 0;
                    i = 0;
                    i2 = 0;
                    while (true) {
                        int i7 = i6 + 1;
                        try {
                            i |= (applicationInfo.metaData.containsKey(strArr[i6]) ? 1 : 0) << i6;
                            i2 |= (applicationInfo.metaData.getBoolean(strArr[i6], zArr[i6]) ? 1 : 0) << i6;
                            if (i7 > 3) {
                                break;
                            } else {
                                i6 = i7;
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                            i3 = i2;
                            i2 = i3;
                            i3 = i;
                            InternalAppEventsLogger internalAppEventsLogger2 = new InternalAppEventsLogger(m8299do);
                            Bundle bundle2 = new Bundle();
                            bundle2.putInt("usage", i3);
                            bundle2.putInt("initial", i2);
                            bundle2.putInt("previous", i5);
                            bundle2.putInt("current", i4);
                            internalAppEventsLogger2.logChangedSettingsEvent(bundle2);
                        }
                    }
                    i3 = i;
                    InternalAppEventsLogger internalAppEventsLogger22 = new InternalAppEventsLogger(m8299do);
                    Bundle bundle22 = new Bundle();
                    bundle22.putInt("usage", i3);
                    bundle22.putInt("initial", i2);
                    bundle22.putInt("previous", i5);
                    bundle22.putInt("current", i4);
                    internalAppEventsLogger22.logChangedSettingsEvent(bundle22);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1414else() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Context m8299do = C3756th.m8299do();
            ApplicationInfo applicationInfo = m8299do.getPackageManager().getApplicationInfo(m8299do.getPackageName(), 128);
            C0173Do.m399new(applicationInfo, "ctx.packageManager.getApplicationInfo(ctx.packageName, PackageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                bundle.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled");
                applicationInfo.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled");
                m1410do();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1415for() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Cdo cdo = f2170new;
            m1416goto(cdo);
            final long currentTimeMillis = System.currentTimeMillis();
            if (cdo.f2173do == null || currentTimeMillis - cdo.f2172do >= 604800000) {
                cdo.f2173do = null;
                cdo.f2172do = 0L;
                if (f2169if.compareAndSet(false, true)) {
                    C3756th.m8304new().execute(new Runnable() { // from class: LJ
                        @Override // java.lang.Runnable
                        public final void run() {
                            long j = currentTimeMillis;
                            if (CrashShieldHandler.isObjectCrashing(MJ.class)) {
                                return;
                            }
                            try {
                                if (MJ.f2167for.m1420do()) {
                                    FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                                    FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
                                    if (queryAppSettings != null && queryAppSettings.getCodelessEventsEnabled()) {
                                        AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.Companion.getAttributionIdentifiers(C3756th.m8299do());
                                        String androidAdvertiserId = (attributionIdentifiers == null || attributionIdentifiers.getAndroidAdvertiserId() == null) ? null : attributionIdentifiers.getAndroidAdvertiserId();
                                        if (androidAdvertiserId != null) {
                                            Bundle bundle = new Bundle();
                                            bundle.putString("advertiser_id", androidAdvertiserId);
                                            bundle.putString("fields", "auto_event_setup_enabled");
                                            String str = GraphRequest.f9271for;
                                            GraphRequest m5286else = GraphRequest.Cfor.m5286else(null, "app", null);
                                            m5286else.f9274do = bundle;
                                            JSONObject jSONObject = m5286else.m5267for().f1997do;
                                            if (jSONObject != null) {
                                                MJ.Cdo cdo2 = MJ.f2170new;
                                                cdo2.f2173do = Boolean.valueOf(jSONObject.optBoolean("auto_event_setup_enabled", false));
                                                cdo2.f2172do = j;
                                                MJ.f2163do.m1412break(cdo2);
                                            }
                                        }
                                    }
                                }
                                MJ.f2169if.set(false);
                            } catch (Throwable th) {
                                CrashShieldHandler.handleThrowable(th, MJ.class);
                            }
                        }
                    });
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m1416goto(Cdo cdo) {
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m1418this();
            try {
                SharedPreferences sharedPreferences = f2164do;
                if (sharedPreferences == null) {
                    C0173Do.m400this("userSettingPref");
                    throw null;
                }
                String string = sharedPreferences.getString(cdo.f2174do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                if (string != null) {
                    str = string;
                }
                if (str.length() > 0) {
                    JSONObject jSONObject = new JSONObject(str);
                    cdo.f2173do = Boolean.valueOf(jSONObject.getBoolean("value"));
                    cdo.f2172do = jSONObject.getLong("last_timestamp");
                }
            } catch (JSONException e) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(f2165do, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1417new() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (C3756th.m8305this()) {
                int i = 0;
                if (f2166do.compareAndSet(false, true)) {
                    SharedPreferences sharedPreferences = C3756th.m8299do().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
                    C0173Do.m399new(sharedPreferences, "FacebookSdk.getApplicationContext()\n            .getSharedPreferences(USER_SETTINGS, Context.MODE_PRIVATE)");
                    f2164do = sharedPreferences;
                    Cdo[] cdoArr = {f2168if, f2167for, f2162do};
                    if (!CrashShieldHandler.isObjectCrashing(this)) {
                        while (i < 3) {
                            try {
                                Cdo cdo = cdoArr[i];
                                i++;
                                if (cdo == f2170new) {
                                    m1415for();
                                } else if (cdo.f2173do == null) {
                                    m1416goto(cdo);
                                    if (cdo.f2173do == null) {
                                        m1419try(cdo);
                                    }
                                } else {
                                    m1412break(cdo);
                                }
                            } catch (Throwable th) {
                                CrashShieldHandler.handleThrowable(th, this);
                            }
                        }
                    }
                    m1415for();
                    m1414else();
                    m1413case();
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m1418this() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (f2166do.get()) {
            } else {
                throw new C3815uh("The UserSettingManager has not been initialized successfully");
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1419try(Cdo cdo) {
        String str = cdo.f2174do;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m1418this();
            try {
                Context m8299do = C3756th.m8299do();
                ApplicationInfo applicationInfo = m8299do.getPackageManager().getApplicationInfo(m8299do.getPackageName(), 128);
                C0173Do.m399new(applicationInfo, "ctx.packageManager.getApplicationInfo(ctx.packageName, PackageManager.GET_META_DATA)");
                Bundle bundle = applicationInfo.metaData;
                if (bundle == null || !bundle.containsKey(str)) {
                    return;
                }
                cdo.f2173do = Boolean.valueOf(applicationInfo.metaData.getBoolean(str, cdo.f2175do));
            } catch (PackageManager.NameNotFoundException e) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(f2165do, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
