package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;

/* renamed from: Us, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0550Us {
    /* renamed from: do, reason: not valid java name */
    public static boolean m2475do() {
        Context context;
        SharedPreferences sharedPreferences;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            C0706ai.m3146for();
            C0706ai m3146for = C0706ai.m3146for();
            m3146for.m3147do();
            context = m3146for.f4985do;
            sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
        } catch (PackageManager.NameNotFoundException | IllegalStateException unused) {
        }
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
            return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2476for(Bundle bundle, String str) {
        try {
            C0706ai.m3146for();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("google.c.a.c_id");
            if (string != null) {
                bundle2.putString("_nmid", string);
            }
            String string2 = bundle.getString("google.c.a.c_l");
            if (string2 != null) {
                bundle2.putString("_nmn", string2);
            }
            String string3 = bundle.getString("google.c.a.m_l");
            if (!TextUtils.isEmpty(string3)) {
                bundle2.putString("label", string3);
            }
            String string4 = bundle.getString("google.c.a.m_c");
            if (!TextUtils.isEmpty(string4)) {
                bundle2.putString("message_channel", string4);
            }
            String string5 = bundle.getString("from");
            if (string5 == null || !string5.startsWith("/topics/")) {
                string5 = null;
            }
            if (string5 != null) {
                bundle2.putString("_nt", string5);
            }
            String string6 = bundle.getString("google.c.a.ts");
            if (string6 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(string6));
                } catch (NumberFormatException unused) {
                }
            }
            String string7 = bundle.containsKey("google.c.a.udt") ? bundle.getString("google.c.a.udt") : null;
            if (string7 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(string7));
                } catch (NumberFormatException unused2) {
                }
            }
            String str2 = C3240kv.m7288case(bundle) ? ServerProtocol.DIALOG_PARAM_DISPLAY : "data";
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", str2);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                bundle2.toString();
            }
            A0 a0 = (A0) C0706ai.m3146for().m3149if(A0.class);
            if (a0 != null) {
                a0.mo8if(bundle2, "fcm", str);
            }
        } catch (IllegalStateException unused3) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:23|(1:25)|26|(1:28)(38:117|(2:120|121)|119|30|(2:111|112)|32|33|(1:35)(1:110)|36|(28:38|(1:40)|41|(1:43)(1:(1:102)(1:103))|44|(1:46)|47|(1:49)|50|(1:100)(1:54)|(1:56)(1:99)|57|(1:59)(1:98)|60|(1:62)(1:97)|63|(1:65)(1:96)|66|(5:92|93|75|(1:77)(1:79)|78)|68|(5:88|89|75|(0)(0)|78)|70|71|(1:73)(6:81|(2:83|(1:85))|86|75|(0)(0)|78)|74|75|(0)(0)|78)|104|(1:106)(3:107|(1:109)|41)|(0)(0)|44|(0)|47|(0)|50|(1:52)|100|(0)(0)|57|(0)(0)|60|(0)(0)|63|(0)(0)|66|(0)|68|(0)|70|71|(0)(0)|74|75|(0)(0)|78)|29|30|(0)|32|33|(0)(0)|36|(0)|104|(0)(0)|(0)(0)|44|(0)|47|(0)|50|(0)|100|(0)(0)|57|(0)(0)|60|(0)(0)|63|(0)(0)|66|(0)|68|(0)|70|71|(0)(0)|74|75|(0)(0)|78) */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0175 A[Catch: NumberFormatException -> 0x017a, TRY_ENTER, TRY_LEAVE, TryCatch #6 {NumberFormatException -> 0x017a, blocks: (B:73:0x0175, B:85:0x018f), top: B:71:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0162 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x014b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0119  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2477if(android.content.Intent r21) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0550Us.m2477if(android.content.Intent):void");
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2478new(Intent intent) {
        Bundle extras;
        if (intent == null || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return false;
        }
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(extras.getString("google.c.a.e"));
    }
}
