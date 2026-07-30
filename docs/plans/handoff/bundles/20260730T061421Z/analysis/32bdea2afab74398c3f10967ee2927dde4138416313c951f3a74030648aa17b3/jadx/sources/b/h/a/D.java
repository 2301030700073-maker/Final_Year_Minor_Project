package b.h.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public final class D extends y {
    public E s;
    public float t;
    public boolean u;

    public D(Object obj, C c2) {
        super(obj, c2);
        this.s = null;
        this.t = Float.MAX_VALUE;
        this.u = false;
    }

    @Override // b.h.a.y
    public void c() {
        super.c();
        float f = this.t;
        if (f != Float.MAX_VALUE) {
            E e = this.s;
            if (e == null) {
                this.s = new E(f);
            } else {
                e.i = f;
            }
            this.t = Float.MAX_VALUE;
        }
    }

    @Override // b.h.a.y
    public void h(float f) {
    }

    @Override // b.h.a.y
    public void i() {
        E e = this.s;
        if (e == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double d2 = (float) e.i;
        if (d2 > this.g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d2 < this.h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        double abs = Math.abs(this.j * 0.75f);
        e.f808d = abs;
        e.e = abs * 62.5d;
        super.i();
    }

    @Override // b.h.a.y
    public boolean j(long j) {
        if (this.u) {
            float f = this.t;
            if (f != Float.MAX_VALUE) {
                this.s.i = f;
                this.t = Float.MAX_VALUE;
            }
            this.f821b = (float) this.s.i;
            this.f820a = RecentsState.NO_OFFSET;
            this.u = false;
            return true;
        }
        if (this.t != Float.MAX_VALUE) {
            long j2 = j / 2;
            u c2 = this.s.c(this.f821b, this.f820a, j2);
            E e = this.s;
            e.i = this.t;
            this.t = Float.MAX_VALUE;
            u c3 = e.c(c2.f818a, c2.f819b, j2);
            this.f821b = c3.f818a;
            this.f820a = c3.f819b;
        } else {
            u c4 = this.s.c(this.f821b, this.f820a, j);
            this.f821b = c4.f818a;
            this.f820a = c4.f819b;
        }
        float max = Math.max(this.f821b, this.h);
        this.f821b = max;
        float min = Math.min(max, this.g);
        this.f821b = min;
        float f2 = this.f820a;
        E e2 = this.s;
        Objects.requireNonNull(e2);
        if (!(((double) Math.abs(f2)) < e2.e && ((double) Math.abs(min - ((float) e2.i))) < e2.f808d)) {
            return false;
        }
        this.f821b = (float) this.s.i;
        this.f820a = RecentsState.NO_OFFSET;
        return true;
    }

    public void k(float f) {
        if (this.f) {
            this.t = f;
            return;
        }
        if (this.s == null) {
            this.s = new E(f);
        }
        this.s.i = f;
        i();
    }

    public boolean l() {
        return this.s.f806b > 0.0d;
    }

    public void m() {
        if (!l()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f) {
            this.u = true;
        }
    }

    public D(Object obj, C c2, float f) {
        super(obj, c2);
        this.s = null;
        this.t = Float.MAX_VALUE;
        this.u = false;
        this.s = new E(f);
    }
}
