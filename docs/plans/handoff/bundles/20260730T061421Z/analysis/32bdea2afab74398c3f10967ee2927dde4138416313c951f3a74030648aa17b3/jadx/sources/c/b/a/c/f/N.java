package c.b.a.c.f;

/* loaded from: classes.dex */
public final class N extends A implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public int f3036c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f3037d = 0;

    public N() {
        this.f3013b = null;
        this.f3022a = -1;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ F clone() {
        return (N) clone();
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final int b() {
        super.b();
        return 0;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final Object clone() {
        try {
            return (N) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final void e(z zVar) {
        super.e(zVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof N)) {
            return false;
        }
        N n = (N) obj;
        int i = n.f3036c;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            return this.f3013b.equals(n.f3013b);
        }
        C c3 = n.f3013b;
        return c3 == null || c3.a();
    }

    @Override // c.b.a.c.f.A
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ A clone() {
        return (N) clone();
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((N.class.getName().hashCode() + 527) * 31) - 1) * 31) + 0) * 31;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            i = this.f3013b.hashCode();
        }
        return hashCode + i;
    }
}
