package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;
import defpackage.C3717t0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* renamed from: tx, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3772tx {

    /* renamed from: do, reason: not valid java name */
    public static volatile Context f15820do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile SharedPreferences.Editor f15821do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile SharedPreferences f15822do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f15823do = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f15824if;

    /* renamed from: tx$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f15825break;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f15826do;

        public Cdo(Context context, String str) {
            this.f15826do = context;
            this.f15825break = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = !C3772tx.m8352try(this.f15826do).equalsIgnoreCase(this.f15825break);
            C3772tx.f15823do = z;
            C0420Ou.m1690class(z);
            if (MainActivity.f12238goto) {
                C3289ll.m7374import(C0420Ou.f2680do);
            }
        }
    }

    /* renamed from: tx$if, reason: invalid class name */
    public static class Cif extends AsyncTask<Void, Void, Long[]> {
        @Override // android.os.AsyncTask
        public final Long[] doInBackground(Void[] voidArr) {
            Long[] lArr = new Long[3];
            lArr[0] = Long.valueOf(VJ.m2565else(C3772tx.m8343public() == null ? 0L : C3772tx.m8343public().getLong("interstitial_displayed_time", 0L)));
            lArr[1] = Long.valueOf(VJ.m2565else(C3772tx.m8343public() != null ? C3772tx.m8343public().getLong("rate_dialog_displayed_time", 0L) : 0L));
            lArr[2] = Long.valueOf(VJ.m2565else(C3772tx.m8331else()));
            return lArr;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Long[] lArr) {
            AppCompatActivity appCompatActivity;
            Long[] lArr2 = lArr;
            C0301Jk.f1674do = lArr2[0].longValue();
            Ny.f2451do = lArr2[1].longValue();
            long longValue = lArr2[2].longValue();
            MainActivity.f12240new = longValue;
            try {
                if (!C4012y0.f16659do) {
                    Double valueOf = Double.valueOf(longValue);
                    MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
                    if (mobileAnalyticsManager != null) {
                        try {
                            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                            EventConstraintDecorator m5101for = defaultEventClient.m5101for("DaysSinceInstall");
                            m5101for.mo5059break("DaysFromInstall", valueOf);
                            defaultEventClient.m5099case(m5101for.f8929do);
                        } catch (Exception unused) {
                        }
                    }
                    C4012y0.f16659do = true;
                }
                if (C0301Jk.m1050do() && C0301Jk.f1677do == null && (appCompatActivity = C0420Ou.f2680do) != null) {
                    C0301Jk.m1052for(appCompatActivity);
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m8322abstract(int i) {
        if (m8330do() == null) {
            return;
        }
        m8330do().putInt("recommend_mode", i);
        m8330do().apply();
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m8323break() {
        if (m8343public() == null) {
            return false;
        }
        return m8343public().getBoolean("aa_pm", false);
    }

    /* renamed from: case, reason: not valid java name */
    public static long m8324case(Context context) {
        if (PreferenceManager.getDefaultSharedPreferences(context).contains("globalRootStatsLastUpdated") && context.getSharedPreferences("PrefFile", 0).edit().putLong("globalRootStatsLastUpdated", PreferenceManager.getDefaultSharedPreferences(context).getLong("globalRootStatsLastUpdated", 0L)).commit()) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove("globalRootStatsLastUpdated").apply();
        }
        return context.getSharedPreferences("PrefFile", 0).getLong("globalRootStatsLastUpdated", 0L);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m8325catch() {
        if (m8343public() == null) {
            return false;
        }
        return m8343public().getBoolean("rb_how_root_liked", false);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m8326class() {
        if (m8343public() == null) {
            return false;
        }
        return m8343public().getBoolean("rb_what_is_root_liked", false);
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m8327const() {
        if (m8343public() == null) {
            return false;
        }
        return m8343public().getBoolean("rb_why_root_liked", false);
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m8328continue(Context context, boolean z, String str, long j, int i, String str2, String str3) {
        TextView textView;
        if (m8330do() == null) {
            return;
        }
        long m8353while = m8353while() + 1;
        m8330do().putLong("root_results_count", m8353while);
        m8330do().putLong(Cpublic.m7828try("root_results_datetime_", m8353while), j);
        m8330do().putBoolean("root_results_value_" + m8353while, z);
        m8330do().putString(Cpublic.m7828try("root_results_details_", m8353while), str.replaceAll(System.getProperty("line.separator") + System.getProperty("line.separator"), ", "));
        m8330do().putInt("root_results_duration_" + m8353while, i);
        SharedPreferences.Editor m8330do = m8330do();
        String m7828try = Cpublic.m7828try("root_results_device_type_", m8353while);
        if (str2 == null) {
            str2 = context.getString(R.string.errorUnknown);
        }
        m8330do.putString(m7828try, str2);
        SharedPreferences.Editor m8330do2 = m8330do();
        String m7828try2 = Cpublic.m7828try("root_results_android_version_", m8353while);
        if (str3 == null) {
            str3 = context.getString(R.string.errorUnknown);
        }
        m8330do2.putString(m7828try2, str3);
        m8330do().apply();
        JA ja = MA.f2131do;
        if (ja != null) {
            List<C0735bA> list = ja.f1601do;
            list.clear();
            list.addAll(m8350throw());
            ja.m4462case();
            if (!(MA.f2131do.f1601do.size() == 0) && (textView = MA.f2132do) != null && textView.getVisibility() == 0) {
                MA.f2132do.setVisibility(8);
            }
        }
        if (m8353while() <= 2 || "RESULTS".equalsIgnoreCase(C0420Ou.m1697new())) {
            return;
        }
        C0420Ou.m1687break("RESULTS");
    }

    /* renamed from: default, reason: not valid java name */
    public static void m8329default(String str) {
        if (m8330do() == null) {
            return;
        }
        m8330do().putInt(VJ.m2564do("aa_bp_c_".concat(str)), (m8343public() != null ? m8343public().getInt(VJ.m2564do("aa_bp_c_".concat(str)), 0) : 0) + 1);
        m8330do().apply();
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized SharedPreferences.Editor m8330do() {
        SharedPreferences.Editor editor;
        synchronized (C3772tx.class) {
            if (f15821do == null) {
                m8343public();
            }
            editor = f15821do;
        }
        return editor;
    }

    /* renamed from: else, reason: not valid java name */
    public static long m8331else() {
        if (m8343public() == null) {
            return 0L;
        }
        return m8343public().getLong("first_run_time", 0L);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m8332extends(String str) {
        if (m8330do() == null) {
            return;
        }
        SharedPreferences.Editor m8330do = m8330do();
        String m2564do = VJ.m2564do("aa_fs_c_" + str);
        int i = 0;
        if (m8343public() != null) {
            i = m8343public().getInt(VJ.m2564do("aa_fs_c_" + str), 0);
        }
        m8330do.putInt(m2564do, i + 1);
        m8330do().apply();
    }

    /* renamed from: final, reason: not valid java name */
    public static int m8333final() {
        if (m8343public() != null) {
            return m8343public().getInt("rate_dialog_displayed_count", 0);
        }
        return 0;
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m8334finally(Context context, String str, boolean z) {
        context.getSharedPreferences("PrefFile", 0).edit().putString(VJ.m2579private("globalRootStats"), VJ.m2579private(str)).apply();
        context.getSharedPreferences("PrefFile", 0).edit().putLong("globalRootStatsLastUpdated", new Date().getTime()).apply();
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity == null || z) {
            return;
        }
        appCompatActivity.runOnUiThread(new Cdo(context, str));
    }

    /* renamed from: for, reason: not valid java name */
    public static String m8335for(Context context) {
        m8348switch(context, "globalRootAndVerStats");
        return context.getSharedPreferences("PrefFile", 0).getString("globalRootAndVerStats", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m8336goto(Context context) {
        m8348switch(context, "install_uuid");
        if (context.getSharedPreferences("PrefFile", 0).getString("install_uuid", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            context.getSharedPreferences("PrefFile", 0).edit().putString("install_uuid", UUID.randomUUID().toString()).apply();
        }
        return context.getSharedPreferences("PrefFile", 0).getString("install_uuid", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m8337if(Context context) {
        m8348switch(context, "rc_s_gcm_t");
        return context.getSharedPreferences("PrefFile", 0).getString("rc_s_gcm_t", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m8338import() {
        ArrayList arrayList;
        int i = 0;
        if (m8343public() == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < m8353while()) {
                SharedPreferences m8343public = m8343public();
                StringBuilder sb = new StringBuilder("root_results_value_");
                i2++;
                sb.append(i2);
                arrayList.add(Boolean.valueOf(m8343public.getBoolean(sb.toString(), false)));
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((Boolean) it.next()).booleanValue()) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: native, reason: not valid java name */
    public static long m8339native() {
        if (m8343public() != null) {
            return m8343public().getLong("run_counter", 0L);
        }
        return 0L;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m8340new(Context context) {
        m8348switch(context, "globalRootManufStats");
        return context.getSharedPreferences("PrefFile", 0).getString("globalRootManufStats", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: package, reason: not valid java name */
    public static void m8341package(String str) {
        if (m8330do() == null) {
            return;
        }
        m8330do().putInt(VJ.m2564do("aa_mip_c_".concat(str)), (m8343public() != null ? m8343public().getInt(VJ.m2564do("aa_mip_c_".concat(str)), 0) : 0) + 1);
        m8330do().apply();
    }

    /* renamed from: private, reason: not valid java name */
    public static void m8342private(boolean z) {
        if (m8330do() == null) {
            return;
        }
        m8330do().putBoolean("rate_dialog_response_" + m8333final(), z);
        m8330do().putInt("rate_dialog_displayed_count", m8333final() + 1);
        m8330do().apply();
        if (m8330do() == null) {
            return;
        }
        if ((m8343public() == null ? 0L : m8343public().getLong("rate_dialog_displayed_time", 0L)) == 0) {
            m8330do().putLong("rate_dialog_displayed_time", new Date().getTime());
            m8330do().apply();
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static synchronized SharedPreferences m8343public() {
        SharedPreferences sharedPreferences;
        synchronized (C3772tx.class) {
            if (f15822do == null && f15820do != null) {
                f15822do = f15820do.getSharedPreferences("PrefFile", 0);
                f15821do = f15822do.edit();
            }
            sharedPreferences = f15822do;
        }
        return sharedPreferences;
    }

    /* renamed from: return, reason: not valid java name */
    public static synchronized void m8344return(Context context) {
        synchronized (C3772tx.class) {
            if (context == null) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (f15820do != applicationContext) {
                f15820do = applicationContext;
                f15822do = null;
                f15821do = null;
            }
            m8330do();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m8345static() {
        return m8343public() != null && m8343public().getBoolean("settingsDarkThemePaid", false) && C0420Ou.m1693else();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m8346strictfp(String str) {
        if (m8330do() == null) {
            return;
        }
        SharedPreferences.Editor m8330do = m8330do();
        String m2564do = VJ.m2564do("aa_sv_c_" + str);
        int i = 0;
        if (m8343public() != null) {
            i = m8343public().getInt(VJ.m2564do("aa_sv_c_" + str), 0);
        }
        m8330do.putInt(m2564do, i + 1);
        m8330do().apply();
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m8347super() {
        return m8343public() == null || m8343public().getInt("recommend_mode", 1) == 1;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m8348switch(Context context, String str) {
        if (PreferenceManager.getDefaultSharedPreferences(context).contains(str) && context.getSharedPreferences("PrefFile", 0).edit().putString(str, PreferenceManager.getDefaultSharedPreferences(context).getString(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)).commit()) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).apply();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m8349this(Context context) {
        if (PreferenceManager.getDefaultSharedPreferences(context).contains("notificationsPromo") && context.getSharedPreferences("PrefFile", 0).edit().putBoolean("notificationsPromo", PreferenceManager.getDefaultSharedPreferences(context).getBoolean("notificationsPromo", true)).commit()) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove("notificationsPromo").apply();
        }
        return context.getSharedPreferences("PrefFile", 0).getBoolean("notificationsPromo", true);
    }

    /* renamed from: throw, reason: not valid java name */
    public static ArrayList m8350throw() {
        if (m8343public() == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        long m8353while = m8353while();
        for (int i = 1; i <= m8353while; i++) {
            arrayList.add(new C0735bA(Long.valueOf(m8343public().getLong("root_results_datetime_" + i, 0L)), m8343public().getBoolean("root_results_value_" + i, false), m8343public().getString("root_results_details_" + i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), m8343public().getInt("root_results_duration_" + i, 0), m8343public().getString("root_results_device_type_" + i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), m8343public().getString("root_results_android_version_" + i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)));
        }
        Collections.sort(arrayList, Collections.reverseOrder());
        return arrayList;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m8351throws(String str) {
        if (m8330do() == null) {
            return;
        }
        m8330do().putInt(VJ.m2564do("aa_ap_c_".concat(str)), (m8343public() != null ? m8343public().getInt(VJ.m2564do("aa_ap_c_".concat(str)), 0) : 0) + 1);
        m8330do().apply();
    }

    /* renamed from: try, reason: not valid java name */
    public static String m8352try(Context context) {
        C3717t0.Cif cif;
        m8348switch(context, "globalRootStats");
        String string = context.getSharedPreferences("PrefFile", 0).getString("globalRootStats", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (!string.isEmpty()) {
            m8334finally(context, string, true);
        }
        context.getSharedPreferences("PrefFile", 0).edit().remove("globalRootStats");
        String string2 = context.getSharedPreferences("PrefFile", 0).getString(VJ.m2579private("globalRootStats"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (string2 == null || string2.isEmpty()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str = null;
        try {
            cif = C3717t0.m8191for("|4nP4GEAYTM9sVxewvPfDpg==:s9rME3x2Z2bQ+DiRPZIX7RN+QH7bSnbTAPW9Pes07CQ=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str = C3717t0.m8190do(new C3717t0.Cdo(string2), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str != null ? str : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: while, reason: not valid java name */
    public static long m8353while() {
        if (m8343public() == null) {
            return 0L;
        }
        return m8343public().getLong("root_results_count", 0L);
    }
}
