package c.b.a.c.d.g.u;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class F {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2890a = false;

    /* renamed from: b, reason: collision with root package name */
    public final int f2891b;

    /* renamed from: c, reason: collision with root package name */
    public final c.b.a.c.d.g.j f2892c;

    /* renamed from: d, reason: collision with root package name */
    public final c.b.a.c.d.g.c f2893d;

    public F(c.b.a.c.d.g.j jVar, c.b.a.c.d.g.c cVar) {
        this.f2892c = jVar;
        this.f2893d = cVar;
        this.f2891b = Arrays.hashCode(new Object[]{jVar, cVar});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof F)) {
            return false;
        }
        F f = (F) obj;
        boolean z = f.f2890a;
        return c.b.a.c.b.a.p0(this.f2892c, f.f2892c) && c.b.a.c.b.a.p0(this.f2893d, f.f2893d);
    }

    public final int hashCode() {
        return this.f2891b;
    }
}
