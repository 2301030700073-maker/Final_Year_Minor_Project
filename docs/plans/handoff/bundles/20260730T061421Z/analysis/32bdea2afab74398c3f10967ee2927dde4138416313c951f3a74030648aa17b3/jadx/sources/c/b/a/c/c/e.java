package c.b.a.c.c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import c.b.a.c.d.g.f;
import c.b.a.c.d.g.j;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e {
    public static final c.b.a.c.d.g.e m = new c.b.a.c.d.g.e();
    public static final f n;

    @Deprecated
    public static final j o;
    public static final ExperimentTokens[] p;
    public static final String[] q;
    public static final byte[][] r;

    /* renamed from: a, reason: collision with root package name */
    public final String f2857a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2858b;

    /* renamed from: c, reason: collision with root package name */
    public String f2859c;

    /* renamed from: d, reason: collision with root package name */
    public int f2860d;
    public String e;
    public String f;
    public final boolean g;
    public int h;
    public final c.b.a.c.c.f.a i;
    public final c.b.a.c.d.m.a j;
    public d k;
    public final b l;

    static {
        g gVar = new g();
        n = gVar;
        o = new j("ClearcutLogger.API", gVar, m);
        p = new ExperimentTokens[0];
        q = new String[0];
        r = new byte[0][];
    }

    public e(Context context, String str, String str2) {
        int i;
        c.b.a.c.c.f.a aVar = new c.b.a.c.c.f.a(context);
        c.b.a.c.d.m.b bVar = c.b.a.c.d.m.b.f2991a;
        c.b.a.c.c.f.g gVar = new c.b.a.c.c.f.g(context);
        this.f2860d = -1;
        this.h = 0;
        this.f2857a = context.getPackageName();
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.", e);
            i = 0;
        }
        this.f2858b = i;
        this.f2860d = -1;
        this.f2859c = str;
        this.e = null;
        this.f = null;
        this.g = false;
        this.i = aVar;
        this.j = bVar;
        this.k = new d();
        this.h = 0;
        this.l = gVar;
    }

    public static int[] a(ArrayList arrayList) {
        return null;
    }
}
