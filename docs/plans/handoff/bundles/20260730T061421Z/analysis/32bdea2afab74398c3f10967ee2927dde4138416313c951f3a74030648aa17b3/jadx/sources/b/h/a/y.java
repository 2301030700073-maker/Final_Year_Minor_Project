package b.h.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class y implements InterfaceC0092b {
    public static final x m;
    public static final x n;
    public static final x o;
    public static final x p;
    public static final x q;
    public static final x r;

    /* renamed from: d, reason: collision with root package name */
    public final Object f823d;
    public final C e;
    public float j;

    /* renamed from: a, reason: collision with root package name */
    public float f820a = RecentsState.NO_OFFSET;

    /* renamed from: b, reason: collision with root package name */
    public float f821b = Float.MAX_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public boolean f822c = false;
    public boolean f = false;
    public float g = Float.MAX_VALUE;
    public float h = -Float.MAX_VALUE;
    public long i = 0;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    static {
        new l("translationX");
        new m("translationY");
        new n("translationZ");
        m = new o("scaleX");
        n = new p("scaleY");
        o = new q("rotation");
        p = new r("rotationX");
        q = new s("rotationY");
        new t("x");
        new g("y");
        new h("z");
        r = new i("alpha");
        new j("scrollX");
        new k("scrollY");
    }

    public y(Object obj, C c2) {
        this.f823d = obj;
        this.e = c2;
        if (c2 == o || c2 == p || c2 == q) {
            this.j = 0.1f;
            return;
        }
        if (c2 == r) {
            this.j = 0.00390625f;
        } else if (c2 == m || c2 == n) {
            this.j = 0.002f;
        } else {
            this.j = 1.0f;
        }
    }

    public static void e(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    @Override // b.h.a.InterfaceC0092b
    public boolean a(long j) {
        long j2 = this.i;
        if (j2 == 0) {
            this.i = j;
            g(this.f821b);
            return false;
        }
        this.i = j;
        boolean j3 = j(j - j2);
        float min = Math.min(this.f821b, this.g);
        this.f821b = min;
        float max = Math.max(min, this.h);
        this.f821b = max;
        g(max);
        if (j3) {
            d(false);
        }
        return j3;
    }

    public y b(v vVar) {
        if (!this.k.contains(vVar)) {
            this.k.add(vVar);
        }
        return this;
    }

    public void c() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f) {
            d(true);
        }
    }

    public final void d(boolean z) {
        this.f = false;
        f a2 = f.a();
        a2.f814a.remove(this);
        int indexOf = a2.f815b.indexOf(this);
        if (indexOf >= 0) {
            a2.f815b.set(indexOf, null);
            a2.f = true;
        }
        this.i = 0L;
        this.f822c = false;
        for (int i = 0; i < this.k.size(); i++) {
            if (this.k.get(i) != null) {
                ((v) this.k.get(i)).onAnimationEnd(this, z, this.f821b, this.f820a);
            }
        }
        e(this.k);
    }

    public y f(float f) {
        if (f <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.j = f;
        h(f * 0.75f);
        return this;
    }

    public void g(float f) {
        this.e.setValue(this.f823d, f);
        for (int i = 0; i < this.l.size(); i++) {
            if (this.l.get(i) != null) {
                ((w) this.l.get(i)).a(this, this.f821b, this.f820a);
            }
        }
        e(this.l);
    }

    public abstract void h(float f);

    public void i() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        boolean z = this.f;
        if (z || z) {
            return;
        }
        this.f = true;
        if (!this.f822c) {
            this.f821b = this.e.getValue(this.f823d);
        }
        float f = this.f821b;
        if (f > this.g || f < this.h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        f a2 = f.a();
        if (a2.f815b.size() == 0) {
            if (a2.f817d == null) {
                a2.f817d = new C0095e(a2.f816c);
            }
            a2.f817d.a();
        }
        if (a2.f815b.contains(this)) {
            return;
        }
        a2.f815b.add(this);
    }

    public abstract boolean j(long j);
}
