package c.b.a.c.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import c.b.a.c.d.j.E;
import c.b.a.c.f.C0430d;
import c.b.a.c.f.C0431e;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Iterator;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f2873a;

    static {
        int i = e.f2874a;
        f2873a = e.f2874a;
    }

    public Intent a(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            return E.b("com.google.android.gms");
        }
        if (context != null && c.b.a.c.b.a.E0(context)) {
            return E.a();
        }
        StringBuilder f = c.a.c.a.a.f("gcore_");
        f.append(f2873a);
        f.append("-");
        if (!TextUtils.isEmpty(str)) {
            f.append(str);
        }
        f.append("-");
        if (context != null) {
            f.append(context.getPackageName());
        }
        f.append("-");
        if (context != null) {
            try {
                C0430d a2 = C0431e.a(context);
                f.append(a2.f3038a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return E.c("com.google.android.gms", f.toString());
    }

    public PendingIntent b(Context context, int i, int i2, String str) {
        Intent a2 = a(context, i, str);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a2, 134217728);
    }

    public int c(Context context, int i) {
        int b2 = e.b(context, i);
        boolean z = true;
        if (b2 != 18) {
            if (b2 == 1) {
                try {
                    Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = context.getPackageManager().getApplicationInfo("com.google.android.gms", QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED).enabled;
                            break;
                        }
                        if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                            break;
                        }
                    }
                } catch (PackageManager.NameNotFoundException | Exception unused) {
                }
            }
            z = false;
        }
        if (z) {
            return 18;
        }
        return b2;
    }
}
