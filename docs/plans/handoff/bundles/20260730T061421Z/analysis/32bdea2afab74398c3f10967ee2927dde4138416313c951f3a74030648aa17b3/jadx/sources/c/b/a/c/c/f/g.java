package c.b.a.c.c.f;

import android.content.Context;
import c.b.a.c.f.C0431e;
import c.b.a.c.f.p;
import c.b.a.c.f.w;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class g implements c.b.a.c.c.b {

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f2862b = Charset.forName("UTF-8");

    /* renamed from: c, reason: collision with root package name */
    public static final w f2863c = new w(null, c.b.a.c.h.a.a("com.google.android.gms.clearcut.public"), "gms:playlog:service:sampling_", "LogSampling__", false, false);

    /* renamed from: d, reason: collision with root package name */
    public static Map f2864d = null;
    public static Boolean e = null;
    public static Long f = null;

    /* renamed from: a, reason: collision with root package name */
    public final Context f2865a;

    public g(Context context) {
        Context applicationContext;
        this.f2865a = context;
        if (f2864d == null) {
            f2864d = new HashMap();
        }
        Context context2 = this.f2865a;
        if (context2 == null || p.h != null || p.i) {
            return;
        }
        synchronized (p.g) {
            if (!context2.isDeviceProtectedStorage() && (applicationContext = context2.getApplicationContext()) != null) {
                context2 = applicationContext;
            }
            if (p.h != context2) {
                p.j = null;
            }
            p.h = context2;
        }
        p.i = false;
    }

    public static boolean a(Context context) {
        if (e == null) {
            e = Boolean.valueOf(C0431e.a(context).f3038a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return e.booleanValue();
    }
}
