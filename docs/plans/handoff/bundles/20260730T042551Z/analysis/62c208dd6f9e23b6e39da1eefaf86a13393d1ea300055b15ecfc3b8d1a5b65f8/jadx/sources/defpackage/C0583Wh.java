package defpackage;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import com.facebook.internal.AnalyticsEvents;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.joeykrim.rootcheck.MainActivity;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* renamed from: Wh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0583Wh {

    /* renamed from: do, reason: not valid java name */
    public static FirebaseAnalytics f4395do;

    /* renamed from: do, reason: not valid java name */
    public static void m2746do() {
        try {
            f4395do.m6074if("device_manufacturer", m2749new(36, Build.MANUFACTURER));
            f4395do.m6074if("device_model", m2749new(36, Build.MODEL));
            f4395do.m6074if("device_product", m2749new(36, Build.PRODUCT));
            f4395do.m6074if("android_version", m2749new(36, Build.VERSION.RELEASE));
            f4395do.m6074if("sdk_version", String.valueOf(VJ.m2583static()));
            f4395do.m6074if("app_version", m2749new(36, MainActivity.f12230break));
        } catch (Exception unused) {
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2747for(String str, boolean z) {
        if (f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean("success", z);
            bundle.putString("device_model", m2749new(100, str));
            f4395do.m6073do("root_check_result", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2748if(Activity activity) {
        FirebaseAnalytics firebaseAnalytics = f4395do;
        firebaseAnalytics.f11869do.zzd(C3772tx.m8336goto(activity.getApplicationContext()));
        Bundle bundle = new Bundle();
        bundle.putLong("run_counter", C3772tx.m8339native());
        bundle.putString("install_date", new SimpleDateFormat("MM/dd/yyyy", Locale.US).format(Long.valueOf(C3772tx.m8331else())));
        bundle.putLong("root_results_count", C3772tx.m8353while());
        f4395do.m6073do("app_session_start", bundle);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m2749new(int i, String str) {
        return str == null ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : str.length() > i ? str.substring(0, i) : str;
    }
}
