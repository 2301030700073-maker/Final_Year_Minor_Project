package b.e.i;

import java.util.Objects;

/* loaded from: classes.dex */
public class C {

    /* renamed from: a, reason: collision with root package name */
    public final D f742a;

    public C(D d2) {
        this.f742a = d2;
    }

    public D a() {
        return this.f742a;
    }

    public D b() {
        return this.f742a;
    }

    public D c() {
        return this.f742a;
    }

    public C0090d d() {
        return null;
    }

    public b.e.d.b e() {
        return b.e.d.b.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c2 = (C) obj;
        return i() == c2.i() && h() == c2.h() && Objects.equals(f(), c2.f()) && Objects.equals(e(), c2.e()) && Objects.equals(d(), c2.d());
    }

    public b.e.d.b f() {
        return b.e.d.b.e;
    }

    public D g(int i, int i2, int i3, int i4) {
        return D.f743b;
    }

    public boolean h() {
        return false;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(i()), Boolean.valueOf(h()), f(), e(), d());
    }

    public boolean i() {
        return false;
    }
}
