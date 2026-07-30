package c.b.a.c.f;

/* loaded from: classes.dex */
public final class M extends A implements Cloneable {
    public static volatile M[] e;

    /* renamed from: c, reason: collision with root package name */
    public String f3034c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f3035d = "";

    public M() {
        this.f3013b = null;
        this.f3022a = -1;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ F clone() {
        return (M) clone();
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final int b() {
        super.b();
        return 0;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final Object clone() {
        try {
            return (M) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
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
        if (!(obj instanceof M)) {
            return false;
        }
        M m = (M) obj;
        String str = m.f3034c;
        String str2 = m.f3035d;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            return this.f3013b.equals(m.f3013b);
        }
        C c3 = m.f3013b;
        return c3 == null || c3.a();
    }

    @Override // c.b.a.c.f.A
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ A clone() {
        return (M) clone();
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((M.class.getName().hashCode() + 527) * 31) + 0) * 31) + 0) * 31;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            i = this.f3013b.hashCode();
        }
        return hashCode + i;
    }
}
