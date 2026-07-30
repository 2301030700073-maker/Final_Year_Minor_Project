package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* renamed from: Cl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0148Cl {

    /* renamed from: do, reason: not valid java name */
    public final TA f410do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0660Zs f411do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f412do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f413do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<FJ> f414do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3655ry<InterfaceC0653Zl> f415if;

    public C0148Cl(C0706ai c0706ai, C0660Zs c0660Zs, InterfaceC3655ry<FJ> interfaceC3655ry, InterfaceC3655ry<InterfaceC0653Zl> interfaceC3655ry2, InterfaceC3227ki interfaceC3227ki) {
        c0706ai.m3147do();
        TA ta = new TA(c0706ai.f4985do);
        this.f412do = c0706ai;
        this.f411do = c0660Zs;
        this.f410do = ta;
        this.f414do = interfaceC3655ry;
        this.f415if = interfaceC3655ry2;
        this.f413do = interfaceC3227ki;
    }

    /* renamed from: do, reason: not valid java name */
    public final FG<String> m289do(FG<Bundle> fg) {
        return fg.mo598goto(new ExecutorC2951is(2), new TK(this));
    }

    /* renamed from: for, reason: not valid java name */
    public final FG m290for(Bundle bundle, String str, String str2) {
        int i;
        try {
            m291if(bundle, str, str2);
            TA ta = this.f410do;
            YV yv = ta.f3607do;
            int m2939do = yv.m2939do();
            ExecutorC0697aW executorC0697aW = ExecutorC0697aW.f4962do;
            if (m2939do < 12000000) {
                return yv.m2940if() != 0 ? ta.m2225do(bundle).mo589break(executorC0697aW, new C3450oR(ta, bundle)) : LG.m1319new(new IOException("MISSING_INSTANCEID_SERVICE"));
            }
            VV m2648do = VV.m2648do(ta.f3608do);
            synchronized (m2648do) {
                i = m2648do.f4135do;
                m2648do.f4135do = i + 1;
            }
            return m2648do.m2649for(new TV(i, 1, bundle)).mo598goto(executorC0697aW, C3850vF.f16049if);
        } catch (InterruptedException | ExecutionException e) {
            return LG.m1319new(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m291if(Bundle bundle, String str, String str2) {
        int i;
        String str3;
        int mo3065if;
        PackageInfo packageInfo;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        C0706ai c0706ai = this.f412do;
        c0706ai.m3147do();
        bundle.putString("gmp_app_id", c0706ai.f4989do.f14828if);
        C0660Zs c0660Zs = this.f411do;
        synchronized (c0660Zs) {
            if (c0660Zs.f4911do == 0) {
                try {
                    packageInfo = c0660Zs.f4912do.getPackageManager().getPackageInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e) {
                    e.toString();
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    c0660Zs.f4911do = packageInfo.versionCode;
                }
            }
            i = c0660Zs.f4911do;
        }
        bundle.putString("gmsv", Integer.toString(i));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f411do.m3075do());
        bundle.putString("app_ver_name", this.f411do.m3076if());
        C0706ai c0706ai2 = this.f412do;
        c0706ai2.m3147do();
        try {
            str3 = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(c0706ai2.f4986do.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            str3 = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", str3);
        try {
            String mo6509do = ((AbstractC2771fo) LG.m1314do(this.f413do.mo7155do())).mo6509do();
            if (!TextUtils.isEmpty(mo6509do)) {
                bundle.putString("Goog-Firebase-Installations-Auth", mo6509do);
            }
        } catch (InterruptedException | ExecutionException unused2) {
        }
        bundle.putString("appid", (String) LG.m1314do(this.f413do.mo7159if()));
        bundle.putString("cliv", "fcm-24.1.0");
        InterfaceC0653Zl interfaceC0653Zl = this.f415if.get();
        FJ fj = this.f414do.get();
        if (interfaceC0653Zl == null || fj == null || (mo3065if = interfaceC0653Zl.mo3065if()) == 1) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(C4122zt.m8819catch(mo3065if)));
        bundle.putString("Firebase-Client", fj.mo81do());
    }
}
