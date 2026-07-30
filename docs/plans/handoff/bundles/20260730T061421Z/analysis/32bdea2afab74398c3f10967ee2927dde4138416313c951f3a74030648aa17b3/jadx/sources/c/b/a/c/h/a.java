package c.b.a.c.h;

import android.net.Uri;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final c.b.a.c.d.g.e f3064a = new c.b.a.c.d.g.e();

    /* renamed from: b, reason: collision with root package name */
    public static final c.b.a.c.d.g.f f3065b;

    static {
        j jVar = new j();
        f3065b = jVar;
        c.b.a.c.d.g.e eVar = f3064a;
        c.b.a.c.b.a.S(jVar, "Cannot construct an Api with a null ClientBuilder");
        c.b.a.c.b.a.S(eVar, "Cannot construct an Api with a null ClientKey");
    }

    public static Uri a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
