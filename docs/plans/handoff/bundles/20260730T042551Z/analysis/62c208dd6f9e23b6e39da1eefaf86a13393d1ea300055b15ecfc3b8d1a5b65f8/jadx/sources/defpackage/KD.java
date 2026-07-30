package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheckp.MainActivity;

/* loaded from: classes3.dex */
public final class KD {

    /* renamed from: do, reason: not valid java name */
    public static final String f1777do = System.getProperty("line.separator");

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e A[Catch: StringIndexOutOfBoundsException -> 0x0079, TRY_ENTER, TryCatch #2 {StringIndexOutOfBoundsException -> 0x0079, blocks: (B:3:0x0002, B:6:0x000e, B:9:0x0017, B:18:0x004e, B:19:0x0071, B:23:0x0060, B:24:0x0040, B:32:0x0013, B:33:0x000a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: StringIndexOutOfBoundsException -> 0x0079, TryCatch #2 {StringIndexOutOfBoundsException -> 0x0079, blocks: (B:3:0x0002, B:6:0x000e, B:9:0x0017, B:18:0x004e, B:19:0x0071, B:23:0x0060, B:24:0x0040, B:32:0x0013, B:33:0x000a), top: B:2:0x0002 }] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1127do(android.app.Activity r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "line.separator"
            java.lang.String r1 = android.os.Build.MODEL     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r2 = 2131820671(0x7f11007f, float:1.9274064E38)
            if (r1 == 0) goto La
            goto Le
        La:
            java.lang.String r1 = r8.getString(r2)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
        Le:
            java.lang.String r3 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            if (r3 == 0) goto L13
            goto L17
        L13:
            java.lang.String r3 = r8.getString(r2)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
        L17:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r2.<init>()     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r2.append(r9)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r4 = java.lang.System.getProperty(r0)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r2.append(r4)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r0 = java.lang.System.getProperty(r0)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r2.append(r0)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r0 = 0
            r4 = 1
            android.content.pm.PackageManager r5 = r8.getPackageManager()     // Catch: java.lang.Exception -> L3a
            java.lang.String r6 = "com.android.vending"
            r5.getInstallerPackageName(r6)     // Catch: java.lang.Exception -> L3a
            r5 = 1
            goto L3c
        L3a:
            r5 = 0
        L3c:
            if (r5 == 0) goto L40
        L3e:
            r5 = 0
            goto L4a
        L40:
            android.content.pm.PackageManager r5 = r8.getPackageManager()     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r6 = "com.amazon.venezia"
            r5.getInstallerPackageName(r6)     // Catch: java.lang.Exception -> L3e
            r5 = 1
        L4a:
            r6 = 2
            r7 = 3
            if (r5 == 0) goto L60
            java.lang.Object[] r5 = new java.lang.Object[r7]     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r0] = r1     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r4] = r3     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r0 = com.joeykrim.rootcheck.MainActivity.f12230break     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r6] = r0     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r0 = 2131820669(0x7f11007d, float:1.927406E38)
            java.lang.String r8 = r8.getString(r0, r5)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            goto L71
        L60:
            java.lang.Object[] r5 = new java.lang.Object[r7]     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r0] = r1     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r4] = r3     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r0 = com.joeykrim.rootcheck.MainActivity.f12230break     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r5[r6] = r0     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            r0 = 2131820668(0x7f11007c, float:1.9274057E38)
            java.lang.String r8 = r8.getString(r0, r5)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
        L71:
            r2.append(r8)     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            java.lang.String r8 = r2.toString()     // Catch: java.lang.StringIndexOutOfBoundsException -> L79
            return r8
        L79:
            r8 = move-exception
            bi r0 = defpackage.C0766bi.m4854do()
            r0.m4855for(r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.KD.m1127do(android.app.Activity, java.lang.String):java.lang.String");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1128for(Activity activity, String str, String str2, TextView... textViewArr) {
        try {
            C0766bi m4854do = C0766bi.m4854do();
            C0445Qb c0445Qb = m4854do.f8440do;
            m4854do.m4856if(str2);
            int i = 0;
            for (TextView textView : textViewArr) {
                if (textView == null) {
                    i++;
                }
            }
            c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, str + ".null_view_count", Integer.toString(i), 1));
            c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, str + ".fragment_mode", Integer.toString(C0420Ou.f2678do), 1));
            c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, str + ".activity", activity != null ? activity.getClass().getSimpleName() : "null", 1));
            m4854do.m4855for(new IllegalStateException(str2));
        } catch (Throwable unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m1129if(String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        StringBuilder sb = new StringBuilder("Root Checker Pro");
        boolean z = MainActivity.f12316case;
        sb.append(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(" Results");
        intent.putExtra("android.intent.extra.SUBJECT", sb.toString());
        return intent;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1130new(TextView textView) {
        return textView.getText() == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : textView.getText().toString();
    }
}
