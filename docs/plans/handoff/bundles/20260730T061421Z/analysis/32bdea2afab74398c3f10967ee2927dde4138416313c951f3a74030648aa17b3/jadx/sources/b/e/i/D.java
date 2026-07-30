package b.e.i;

import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public class D {

    /* renamed from: b, reason: collision with root package name */
    public static final D f743b;

    /* renamed from: a, reason: collision with root package name */
    public final C f744a;

    static {
        new D((D) null);
        f743b = h(new WindowInsets.Builder().build()).f744a.a().f744a.b().f744a.c();
    }

    public D(WindowInsets windowInsets) {
        this.f744a = new B(this, windowInsets);
    }

    public static b.e.d.b f(b.e.d.b bVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, bVar.f693a - i);
        int max2 = Math.max(0, bVar.f694b - i2);
        int max3 = Math.max(0, bVar.f695c - i3);
        int max4 = Math.max(0, bVar.f696d - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? bVar : b.e.d.b.a(max, max2, max3, max4);
    }

    public static D h(WindowInsets windowInsets) {
        if (windowInsets != null) {
            return new D(windowInsets);
        }
        throw null;
    }

    public int a() {
        return e().f696d;
    }

    public int b() {
        return e().f693a;
    }

    public int c() {
        return e().f695c;
    }

    public int d() {
        return e().f694b;
    }

    public b.e.d.b e() {
        return this.f744a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof D) {
            return Objects.equals(this.f744a, ((D) obj).f744a);
        }
        return false;
    }

    public WindowInsets g() {
        C c2 = this.f744a;
        if (c2 instanceof y) {
            return ((y) c2).f787b;
        }
        return null;
    }

    public int hashCode() {
        C c2 = this.f744a;
        if (c2 == null) {
            return 0;
        }
        return c2.hashCode();
    }

    public D(D d2) {
        this.f744a = new C(this);
    }
}
