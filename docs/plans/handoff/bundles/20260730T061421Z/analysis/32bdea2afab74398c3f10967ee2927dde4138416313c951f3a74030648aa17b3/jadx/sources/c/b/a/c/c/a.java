package c.b.a.c.c;

import android.os.SystemClock;
import c.b.a.c.f.L;
import java.util.ArrayList;
import java.util.Objects;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public int f2853a;

    /* renamed from: b, reason: collision with root package name */
    public String f2854b;

    /* renamed from: c, reason: collision with root package name */
    public String f2855c;

    /* renamed from: d, reason: collision with root package name */
    public String f2856d;
    public int e;
    public final c f;
    public ArrayList g;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public boolean l;
    public final L m;
    public boolean n;
    public final /* synthetic */ e o;

    public a(e eVar, byte[] bArr, g gVar) {
        this.o = eVar;
        e eVar2 = this.o;
        this.f2853a = eVar2.f2860d;
        this.f2854b = eVar2.f2859c;
        this.f2855c = eVar2.e;
        this.f2856d = eVar2.f;
        this.e = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = true;
        L l = new L();
        this.m = l;
        this.n = false;
        this.f2855c = eVar.e;
        this.f2856d = eVar.f;
        Objects.requireNonNull((c.b.a.c.d.m.b) eVar.j);
        l.f3032c = System.currentTimeMillis();
        L l2 = this.m;
        Objects.requireNonNull((c.b.a.c.d.m.b) eVar.j);
        l2.f3033d = SystemClock.elapsedRealtime();
        L l3 = this.m;
        d dVar = eVar.k;
        long j = l3.f3032c;
        Objects.requireNonNull(dVar);
        l3.r = TimeZone.getDefault().getOffset(j) / 1000;
        if (bArr != null) {
            this.m.m = bArr;
        }
        this.f = null;
    }
}
