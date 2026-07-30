package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import defpackage.C3947wv;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* renamed from: iz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2957iz {

    /* renamed from: case, reason: not valid java name */
    public static boolean f13605case = false;

    /* renamed from: do, reason: not valid java name */
    public static int f13606do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0155Cs f13607do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3947wv f13608do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f13609do = false;

    /* renamed from: else, reason: not valid java name */
    public static boolean f13610else = false;

    /* renamed from: for, reason: not valid java name */
    public static boolean f13611for = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f13612if = false;

    /* renamed from: new, reason: not valid java name */
    public static boolean f13613new = false;

    /* renamed from: try, reason: not valid java name */
    public static boolean f13614try = false;

    /* renamed from: iz$do, reason: invalid class name */
    public static class Cdo extends AsyncTask<String, Void, String> {

        /* renamed from: do, reason: not valid java name */
        public final long f13615do = 86400;

        /* renamed from: do, reason: not valid java name */
        public static void m6987do(String str, boolean z) {
            if (C0830cn.m4941do(str)) {
                C2957iz.f13613new = z;
                return;
            }
            if (C0830cn.m4947new(str)) {
                C2957iz.f13614try = z;
            } else if (C0830cn.m4944for(str)) {
                C2957iz.f13605case = z;
            } else if (C0830cn.m4946if(str)) {
                C2957iz.f13610else = z;
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(10:10|(1:12)(2:33|(1:35)(2:36|(1:38)(2:39|(1:41)(2:42|(1:44)(2:45|(1:47)(2:48|(1:50)(8:51|14|15|16|17|(2:19|(1:29)(4:21|22|23|24))|30|(0)(0))))))))|13|14|15|16|17|(0)|30|(0)(0)) */
        /* JADX WARN: Removed duplicated region for block: B:19:0x016e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0175 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String doInBackground(java.lang.String[] r20) {
            /*
                Method dump skipped, instructions count: 413
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C2957iz.Cdo.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(String str) {
            String str2 = str;
            if (str2.isEmpty()) {
                return;
            }
            m6987do(str2, false);
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(String str) {
            String str2 = str;
            if (str2.isEmpty()) {
                return;
            }
            m6987do(str2, false);
        }
    }

    /* renamed from: iz$if, reason: invalid class name */
    public static class Cif extends AsyncTask<Boolean, Void, Void> {

        /* renamed from: do, reason: not valid java name */
        public final long f13616do = 604800000;

        @Override // android.os.AsyncTask
        public final Void doInBackground(Boolean[] boolArr) {
            Boolean[] boolArr2 = boolArr;
            try {
                if (C0420Ou.f2680do == null) {
                    return null;
                }
                boolean z = true;
                C2957iz.f13606do++;
                if (C0420Ou.f2680do.getApplicationContext().getSharedPreferences("PrefFile", 0).getString(VJ.m2558case("hashOfDataSentToServerJSON"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty()) {
                    C2957iz.f13609do = true;
                } else {
                    C2957iz.f13611for = true;
                }
                if (C2957iz.f13609do) {
                    if (C2957iz.f13612if || C2957iz.f13611for) {
                        return null;
                    }
                    C2957iz.f13612if = true;
                    C2957iz.m6986if(C0420Ou.f2680do, VJ.m2560class(), C3772tx.m8337if(C0420Ou.f2680do.getApplicationContext()), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    return null;
                }
                if (boolArr2 == null || !boolArr2[0].booleanValue()) {
                    if (boolArr2 == null || boolArr2[0].booleanValue()) {
                        return null;
                    }
                    C2957iz.m6986if(C0420Ou.f2680do, VJ.m2560class(), C3772tx.m8337if(C0420Ou.f2680do.getApplicationContext()), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    return null;
                }
                if (C2957iz.f13606do > 3) {
                    return null;
                }
                Context applicationContext = C0420Ou.f2680do.getApplicationContext();
                if (!(!VJ.m2558case(C2957iz.m6985do(applicationContext, C3772tx.m8337if(C0420Ou.f2680do.getApplicationContext()), false)).equalsIgnoreCase(applicationContext.getSharedPreferences("PrefFile", 0).getString(VJ.m2558case("hashOfDataSentToServerJSON"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)))) {
                    if (C3772tx.m8324case(C0420Ou.f2680do) + this.f13616do >= new Date().getTime()) {
                        z = false;
                    }
                    if (!z && !C3772tx.m8352try(C0420Ou.f2680do).isEmpty()) {
                        return null;
                    }
                }
                C2957iz.m6986if(C0420Ou.f2680do, VJ.m2560class(), C3772tx.m8337if(C0420Ou.f2680do.getApplicationContext()), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                return null;
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(Void r1) {
            C2957iz.f13606do--;
            if (C2957iz.f13609do && C2957iz.f13612if && !C2957iz.f13611for) {
                C2957iz.f13609do = false;
                C2957iz.f13612if = false;
                C2957iz.f13611for = true;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Void r1) {
            C2957iz.f13606do--;
            if (C2957iz.f13609do && C2957iz.f13612if && !C2957iz.f13611for) {
                C2957iz.f13609do = false;
                C2957iz.f13612if = false;
                C2957iz.f13611for = true;
            }
            AppCompatActivity appCompatActivity = C0420Ou.f2680do;
            if (appCompatActivity == null || C3772tx.m8352try(appCompatActivity).isEmpty()) {
                return;
            }
            C0420Ou.m1690class(C3772tx.f15823do);
            if (MainActivity.f12238goto) {
                C3289ll.m7374import(C0420Ou.f2680do);
            }
        }
    }

    static {
        C0155Cs c0155Cs;
        try {
            c0155Cs = C0155Cs.m307do("application/json; charset=utf-8");
        } catch (IllegalArgumentException unused) {
            c0155Cs = null;
        }
        f13607do = c0155Cs;
        C3947wv.Cif cif = new C3947wv.Cif(new C3947wv());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        cif.f16478if = SJ.m2142new(20L, timeUnit);
        cif.f16483new = SJ.m2142new(20L, timeUnit);
        cif.f16476for = SJ.m2142new(20L, timeUnit);
        f13608do = new C3947wv(cif);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m6985do(Context context, String str, boolean z) {
        String str2;
        StringBuilder sb = new StringBuilder("\"app_uuid\":\"");
        sb.append(C3772tx.m8336goto(context));
        sb.append("\",\"app_ver_code\":\"");
        Trace trace = VJ.f4080do;
        if (MainActivity.f12234do == 0) {
            VJ.m2580protected(context);
        }
        sb.append(MainActivity.f12234do);
        sb.append("\",\"app_api_ver_code\":\"3\",\"device_manufacturer\":\"");
        String str3 = Build.MANUFACTURER;
        String str4 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        if (str3 == null) {
            str3 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
        sb.append(str3);
        sb.append("\",\"device_build_model\":\"");
        String str5 = Build.MODEL;
        if (str5 != null) {
            str4 = str5;
        }
        sb.append(str4);
        sb.append("\",\"device_locale\":\"");
        Locale locale = context.getResources().getConfiguration().locale;
        sb.append(Locale.getDefault().toString());
        sb.append("\",\"device_timezone\":\"");
        sb.append(TimeUnit.MILLISECONDS.toHours(TimeZone.getDefault().getRawOffset()));
        sb.append("\",\"device_android_version_code\":\"");
        sb.append(String.valueOf(VJ.m2583static()));
        sb.append("\"");
        boolean isEmpty = str.isEmpty();
        String str6 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        sb.append(!isEmpty ? defpackage.Cif.m6908case(",\"gcm_token_id\":\"", str, "\"") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(MainActivity.f12240new > 0 ? C4122zt.m8818case(new StringBuilder(",\"install_days\":\""), MainActivity.f12240new, "\"") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(",\"run_counter\":\"");
        sb.append(C3772tx.m8339native());
        sb.append("\"");
        if (MainActivity.f12238goto) {
            str2 = Creturn.m7984try(new StringBuilder(",\"root_result\":\""), MainActivity.f12241this ? AppEventsConstants.EVENT_PARAM_VALUE_YES : "2", "\"");
        } else {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        sb.append(str2);
        boolean z2 = true;
        if (!C0420Ou.m1693else() && !C0420Ou.m1688case()) {
            int i = C0420Ou.f2678do;
            if (!(i == 5 || i == 4)) {
                z2 = false;
            }
        }
        if (z2) {
            str6 = ",\"purchased\":\"1\"";
        }
        sb.append(str6);
        String sb2 = sb.toString();
        if (z) {
            context.getSharedPreferences("PrefFile", 0).edit().putString(VJ.m2558case("hashOfDataSentToServerJSON"), VJ.m2558case(sb2)).apply();
        }
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x046b  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m6986if(android.content.Context r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 1443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2957iz.m6986if(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }
}
