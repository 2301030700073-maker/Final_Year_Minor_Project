package defpackage;

/* renamed from: Td, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0513Td {

    /* renamed from: do, reason: not valid java name */
    public final int f3716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Dy<?> f3717do;

    /* renamed from: if, reason: not valid java name */
    public final int f3718if;

    public C0513Td(int i, int i2, Class cls) {
        this((Dy<?>) Dy.m416do(cls), i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public static C0513Td m2275do(Class<?> cls) {
        return new C0513Td(0, 1, cls);
    }

    /* renamed from: for, reason: not valid java name */
    public static C0513Td m2276for(Class<?> cls) {
        return new C0513Td(1, 0, cls);
    }

    /* renamed from: if, reason: not valid java name */
    public static C0513Td m2277if(Dy<?> dy) {
        return new C0513Td(dy, 1, 0);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0513Td)) {
            return false;
        }
        C0513Td c0513Td = (C0513Td) obj;
        return this.f3717do.equals(c0513Td.f3717do) && this.f3716do == c0513Td.f3716do && this.f3718if == c0513Td.f3718if;
    }

    public final int hashCode() {
        return ((((this.f3717do.hashCode() ^ 1000003) * 1000003) ^ this.f3716do) * 1000003) ^ this.f3718if;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f3717do);
        sb.append(", type=");
        int i = this.f3716do;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f3718if;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else {
            if (i2 != 2) {
                throw new AssertionError(V1.m2494case("Unsupported injection: ", i2));
            }
            str = "deferred";
        }
        return Creturn.m7984try(sb, str, "}");
    }

    public C0513Td(Dy<?> dy, int i, int i2) {
        if (dy == null) {
            throw new NullPointerException("Null dependency anInterface.");
        }
        this.f3717do = dy;
        this.f3716do = i;
        this.f3718if = i2;
    }
}
