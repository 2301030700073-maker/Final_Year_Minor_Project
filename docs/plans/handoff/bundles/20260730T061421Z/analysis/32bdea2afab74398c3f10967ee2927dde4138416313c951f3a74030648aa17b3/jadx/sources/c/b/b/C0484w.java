package c.b.b;

/* renamed from: c.b.b.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0484w {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3219a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3220b;

    public C0484w(Object obj, int i) {
        this.f3219a = obj;
        this.f3220b = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0484w)) {
            return false;
        }
        C0484w c0484w = (C0484w) obj;
        return this.f3219a == c0484w.f3219a && this.f3220b == c0484w.f3220b;
    }

    public int hashCode() {
        return (System.identityHashCode(this.f3219a) * 65535) + this.f3220b;
    }
}
