package b.m.b;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class B {

    /* renamed from: a, reason: collision with root package name */
    public J f1084a;

    /* renamed from: b, reason: collision with root package name */
    public int f1085b;

    /* renamed from: c, reason: collision with root package name */
    public int f1086c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1087d;
    public boolean e;

    public B() {
        d();
    }

    public void a() {
        this.f1086c = this.f1087d ? this.f1084a.g() : this.f1084a.k();
    }

    public void b(View view, int i) {
        if (this.f1087d) {
            this.f1086c = this.f1084a.m() + this.f1084a.b(view);
        } else {
            this.f1086c = this.f1084a.e(view);
        }
        this.f1085b = i;
    }

    public void c(View view, int i) {
        int m = this.f1084a.m();
        if (m >= 0) {
            b(view, i);
            return;
        }
        this.f1085b = i;
        if (!this.f1087d) {
            int e = this.f1084a.e(view);
            int k = e - this.f1084a.k();
            this.f1086c = e;
            if (k > 0) {
                int g = (this.f1084a.g() - Math.min(0, (this.f1084a.g() - m) - this.f1084a.b(view))) - (this.f1084a.c(view) + e);
                if (g < 0) {
                    this.f1086c -= Math.min(k, -g);
                    return;
                }
                return;
            }
            return;
        }
        int g2 = (this.f1084a.g() - m) - this.f1084a.b(view);
        this.f1086c = this.f1084a.g() - g2;
        if (g2 > 0) {
            int c2 = this.f1086c - this.f1084a.c(view);
            int k2 = this.f1084a.k();
            int min = c2 - (Math.min(this.f1084a.e(view) - k2, 0) + k2);
            if (min < 0) {
                this.f1086c = Math.min(g2, -min) + this.f1086c;
            }
        }
    }

    public void d() {
        this.f1085b = -1;
        this.f1086c = RecyclerView.UNDEFINED_DURATION;
        this.f1087d = false;
        this.e = false;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("AnchorInfo{mPosition=");
        f.append(this.f1085b);
        f.append(", mCoordinate=");
        f.append(this.f1086c);
        f.append(", mLayoutFromEnd=");
        f.append(this.f1087d);
        f.append(", mValid=");
        f.append(this.e);
        f.append('}');
        return f.toString();
    }
}
