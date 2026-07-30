package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Process;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class BC {

    /* renamed from: do, reason: not valid java name */
    public static final BC f214do = new BC();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3293lp f215do;

    static {
        C3352mp c3352mp = new C3352mp();
        c3352mp.mo3144do(AC.class, C3190k3.f13864do);
        c3352mp.mo3144do(HC.class, C3249l3.f14072do);
        c3352mp.mo3144do(C0358Mc.class, C2905i3.f13422do);
        c3352mp.mo3144do(C3543q2.class, C2846h3.f13241do);
        c3352mp.mo3144do(M0.class, C2787g3.f13035do);
        c3352mp.mo3144do(Hx.class, C3131j3.f13632do);
        c3352mp.f14399do = true;
        f215do = new C3293lp(c3352mp);
    }

    /* renamed from: do, reason: not valid java name */
    public static C3543q2 m156do(C0706ai c0706ai) {
        String valueOf;
        Object obj;
        long longVersionCode;
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        C0173Do.m399new(context, "firebaseApp.applicationContext");
        String packageName = context.getPackageName();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            valueOf = String.valueOf(longVersionCode);
        } else {
            valueOf = String.valueOf(packageInfo.versionCode);
        }
        String str = valueOf;
        c0706ai.m3147do();
        String str2 = c0706ai.f4989do.f14828if;
        C0173Do.m399new(str2, "firebaseApp.options.applicationId");
        String str3 = Build.MODEL;
        C0173Do.m399new(str3, "MODEL");
        String str4 = Build.VERSION.RELEASE;
        C0173Do.m399new(str4, "RELEASE");
        C0173Do.m399new(packageName, "packageName");
        String str5 = packageInfo.versionName;
        String str6 = str5 == null ? str : str5;
        String str7 = Build.MANUFACTURER;
        C0173Do.m399new(str7, "MANUFACTURER");
        c0706ai.m3147do();
        int myPid = Process.myPid();
        Iterator it = Ix.m992do(context).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Hx) obj).f1410do == myPid) {
                break;
            }
        }
        Hx hx = (Hx) obj;
        if (hx == null) {
            hx = new Hx(false, Ix.m993if(), myPid, 0);
        }
        c0706ai.m3147do();
        return new C3543q2(str2, str3, str4, new M0(packageName, str6, str, str7, hx, Ix.m992do(context)));
    }
}
