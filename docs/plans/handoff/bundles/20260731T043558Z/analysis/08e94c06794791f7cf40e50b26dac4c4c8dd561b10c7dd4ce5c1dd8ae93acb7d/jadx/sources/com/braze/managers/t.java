package com.braze.managers;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import androidx.core.content.pm.PackageInfoCompat;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.support.BrazeLogger;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes2.dex */
public final class t implements d0 {
    public static final s f = new s();

    /* renamed from: a, reason: collision with root package name */
    public final Context f134a;
    public final BrazeConfigurationProvider b;
    public final String c;
    public final SharedPreferences d;
    public PackageInfo e;

    public t(Context context, BrazeConfigurationProvider configurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        this.f134a = context;
        this.b = configurationProvider;
        PackageInfo h = h();
        this.c = h != null ? h.versionName : null;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.managers.device_data_provider", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.d = sharedPreferences;
    }

    public static final String a(String str) {
        return com.braze.b.a("Unable to inspect package [", str, AbstractJsonLexerKt.END_LIST);
    }

    public static final String e() {
        return "Failed to collect background restriction information from Activity Manager";
    }

    public static final String g() {
        return "Caught exception while reading the phone carrier name.";
    }

    public final com.braze.models.outgoing.h b() {
        BrazeConfigurationProvider configurationProvider = this.b;
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        String valueOf = String.valueOf(Build.VERSION.SDK_INT);
        String f2 = f();
        String str = Build.BRAND;
        String str2 = (str == null || StringsKt.isBlank(str)) ? null : str;
        String str3 = Build.MODEL;
        s sVar = f;
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String locale2 = locale.toString();
        Intrinsics.checkNotNullExpressionValue(locale2, "toString(...)");
        TimeZone timeZone = TimeZone.getDefault();
        Intrinsics.checkNotNullExpressionValue(timeZone, "getDefault(...)");
        String id = timeZone.getID();
        Context context = this.f134a;
        String a2 = sVar.a(context, context.getResources().getConfiguration().orientation == 2);
        Object systemService = this.f134a.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return new com.braze.models.outgoing.h(configurationProvider, valueOf, f2, str2, str3, locale2, id, a2, Boolean.valueOf(((NotificationManager) systemService).areNotificationsEnabled()), Boolean.valueOf(d()), this.d.getString("google_ad_id", null), !this.d.contains("ad_tracking_enabled") ? null : Boolean.valueOf(this.d.getBoolean("ad_tracking_enabled", true)));
    }

    public final String c() {
        PackageInfo h = h();
        if (h != null) {
            return (Build.VERSION.SDK_INT >= 28 ? h.getLongVersionCode() : PackageInfoCompat.getLongVersionCode(h)) + ".0.0.0";
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return t.a();
            }
        }, 7, (Object) null);
        return null;
    }

    public final boolean d() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            Object systemService = this.f134a.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return ((ActivityManager) systemService).isBackgroundRestricted();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.e();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final String f() {
        try {
            Object systemService = this.f134a.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
            if (networkOperatorName != null) {
                return StringsKt.trim((CharSequence) networkOperatorName).toString();
            }
            return null;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.g();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final PackageInfo h() {
        PackageInfo packageInfo = this.e;
        if (packageInfo != null) {
            return packageInfo;
        }
        final String packageName = this.f134a.getPackageName();
        try {
            PackageInfo packageInfo2 = Build.VERSION.SDK_INT >= 33 ? this.f134a.getPackageManager().getPackageInfo(packageName, PackageManager.PackageInfoFlags.of(0L)) : this.f134a.getPackageManager().getPackageInfo(packageName, 0);
            this.e = packageInfo2;
            return packageInfo2;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.t$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return t.a(packageName);
                }
            }, 4, (Object) null);
            ApplicationInfo applicationInfo = this.f134a.getApplicationInfo();
            PackageInfo packageArchiveInfo = Build.VERSION.SDK_INT >= 33 ? this.f134a.getPackageManager().getPackageArchiveInfo(applicationInfo.sourceDir, PackageManager.PackageInfoFlags.of(0L)) : this.f134a.getPackageManager().getPackageArchiveInfo(applicationInfo.sourceDir, 0);
            this.e = packageArchiveInfo;
            return packageArchiveInfo;
        }
    }

    public static final String a() {
        return "App version code could not be read. Returning null";
    }

    public final void a(boolean z) {
        this.d.edit().putBoolean("ad_tracking_enabled", !z).apply();
    }

    public final void b(String googleAdvertisingId) {
        Intrinsics.checkNotNullParameter(googleAdvertisingId, "googleAdvertisingId");
        this.d.edit().putString("google_ad_id", googleAdvertisingId).apply();
    }
}
