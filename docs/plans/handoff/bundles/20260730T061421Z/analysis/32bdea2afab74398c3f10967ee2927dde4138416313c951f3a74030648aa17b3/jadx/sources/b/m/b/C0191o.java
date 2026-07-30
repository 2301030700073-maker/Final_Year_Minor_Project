package b.m.b;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.m.b.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0191o extends Z {
    public static TimeInterpolator s;
    public boolean g = true;
    public ArrayList h = new ArrayList();
    public ArrayList i = new ArrayList();
    public ArrayList j = new ArrayList();
    public ArrayList k = new ArrayList();
    public ArrayList l = new ArrayList();
    public ArrayList m = new ArrayList();
    public ArrayList n = new ArrayList();
    public ArrayList o = new ArrayList();
    public ArrayList p = new ArrayList();
    public ArrayList q = new ArrayList();
    public ArrayList r = new ArrayList();

    @Override // b.m.b.Z
    public boolean a(w0 w0Var, w0 w0Var2, Y y, Y y2) {
        int i;
        int i2;
        int i3 = y.f1121a;
        int i4 = y.f1122b;
        if (w0Var2.shouldIgnore()) {
            int i5 = y.f1121a;
            i2 = y.f1122b;
            i = i5;
        } else {
            i = y2.f1121a;
            i2 = y2.f1122b;
        }
        if (w0Var == w0Var2) {
            return j(w0Var, i3, i4, i, i2);
        }
        float translationX = w0Var.itemView.getTranslationX();
        float translationY = w0Var.itemView.getTranslationY();
        float alpha = w0Var.itemView.getAlpha();
        o(w0Var);
        w0Var.itemView.setTranslationX(translationX);
        w0Var.itemView.setTranslationY(translationY);
        w0Var.itemView.setAlpha(alpha);
        o(w0Var2);
        w0Var2.itemView.setTranslationX(-((int) ((i - i3) - translationX)));
        w0Var2.itemView.setTranslationY(-((int) ((i2 - i4) - translationY)));
        w0Var2.itemView.setAlpha(RecentsState.NO_OFFSET);
        this.k.add(new C0189m(w0Var, w0Var2, i3, i4, i, i2));
        return true;
    }

    @Override // b.m.b.Z
    public boolean c(w0 w0Var, List list) {
        return !list.isEmpty() || super.c(w0Var, list);
    }

    @Override // b.m.b.Z
    public void f(w0 w0Var) {
        View view = w0Var.itemView;
        view.animate().cancel();
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0190n) this.j.get(size)).f1187a == w0Var) {
                view.setTranslationY(RecentsState.NO_OFFSET);
                view.setTranslationX(RecentsState.NO_OFFSET);
                d(w0Var);
                this.j.remove(size);
            }
        }
        m(this.k, w0Var);
        if (this.h.remove(w0Var)) {
            view.setAlpha(1.0f);
            d(w0Var);
        }
        if (this.i.remove(w0Var)) {
            view.setAlpha(1.0f);
            d(w0Var);
        }
        int size2 = this.n.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList arrayList = (ArrayList) this.n.get(size2);
            m(arrayList, w0Var);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        int size3 = this.m.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) this.m.get(size3);
            int size4 = arrayList2.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                }
                if (((C0190n) arrayList2.get(size4)).f1187a == w0Var) {
                    view.setTranslationY(RecentsState.NO_OFFSET);
                    view.setTranslationX(RecentsState.NO_OFFSET);
                    d(w0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                }
            }
        }
        int size5 = this.l.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                this.q.remove(w0Var);
                this.o.remove(w0Var);
                this.r.remove(w0Var);
                this.p.remove(w0Var);
                l();
                return;
            }
            ArrayList arrayList3 = (ArrayList) this.l.get(size5);
            if (arrayList3.remove(w0Var)) {
                view.setAlpha(1.0f);
                d(w0Var);
                if (arrayList3.isEmpty()) {
                    this.l.remove(size5);
                }
            }
        }
    }

    @Override // b.m.b.Z
    public void g() {
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0190n c0190n = (C0190n) this.j.get(size);
            View view = c0190n.f1187a.itemView;
            view.setTranslationY(RecentsState.NO_OFFSET);
            view.setTranslationX(RecentsState.NO_OFFSET);
            d(c0190n.f1187a);
            this.j.remove(size);
        }
        int size2 = this.h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            d((w0) this.h.get(size2));
            this.h.remove(size2);
        }
        int size3 = this.i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            w0 w0Var = (w0) this.i.get(size3);
            w0Var.itemView.setAlpha(1.0f);
            d(w0Var);
            this.i.remove(size3);
        }
        int size4 = this.k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            C0189m c0189m = (C0189m) this.k.get(size4);
            w0 w0Var2 = c0189m.f1181a;
            if (w0Var2 != null) {
                n(c0189m, w0Var2);
            }
            w0 w0Var3 = c0189m.f1182b;
            if (w0Var3 != null) {
                n(c0189m, w0Var3);
            }
        }
        this.k.clear();
        if (!h()) {
            return;
        }
        int size5 = this.m.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                break;
            }
            ArrayList arrayList = (ArrayList) this.m.get(size5);
            int size6 = arrayList.size();
            while (true) {
                size6--;
                if (size6 >= 0) {
                    C0190n c0190n2 = (C0190n) arrayList.get(size6);
                    View view2 = c0190n2.f1187a.itemView;
                    view2.setTranslationY(RecentsState.NO_OFFSET);
                    view2.setTranslationX(RecentsState.NO_OFFSET);
                    d(c0190n2.f1187a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
        }
        int size7 = this.l.size();
        while (true) {
            size7--;
            if (size7 < 0) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) this.l.get(size7);
            int size8 = arrayList2.size();
            while (true) {
                size8--;
                if (size8 >= 0) {
                    w0 w0Var4 = (w0) arrayList2.get(size8);
                    w0Var4.itemView.setAlpha(1.0f);
                    d(w0Var4);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.l.remove(arrayList2);
                    }
                }
            }
        }
        int size9 = this.n.size();
        while (true) {
            size9--;
            if (size9 < 0) {
                k(this.q);
                k(this.p);
                k(this.o);
                k(this.r);
                e();
                return;
            }
            ArrayList arrayList3 = (ArrayList) this.n.get(size9);
            int size10 = arrayList3.size();
            while (true) {
                size10--;
                if (size10 >= 0) {
                    C0189m c0189m2 = (C0189m) arrayList3.get(size10);
                    w0 w0Var5 = c0189m2.f1181a;
                    if (w0Var5 != null) {
                        n(c0189m2, w0Var5);
                    }
                    w0 w0Var6 = c0189m2.f1182b;
                    if (w0Var6 != null) {
                        n(c0189m2, w0Var6);
                    }
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
        }
    }

    @Override // b.m.b.Z
    public boolean h() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    public boolean j(w0 w0Var, int i, int i2, int i3, int i4) {
        View view = w0Var.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) w0Var.itemView.getTranslationY());
        o(w0Var);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            d(w0Var);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.j.add(new C0190n(w0Var, translationX, translationY, i3, i4));
        return true;
    }

    public void k(List list) {
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((w0) list.get(size)).itemView.animate().cancel();
            }
        }
    }

    public void l() {
        if (h()) {
            return;
        }
        e();
    }

    public final void m(List list, w0 w0Var) {
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            C0189m c0189m = (C0189m) list.get(size);
            if (n(c0189m, w0Var) && c0189m.f1181a == null && c0189m.f1182b == null) {
                list.remove(c0189m);
            }
        }
    }

    public final boolean n(C0189m c0189m, w0 w0Var) {
        if (c0189m.f1182b == w0Var) {
            c0189m.f1182b = null;
        } else {
            if (c0189m.f1181a != w0Var) {
                return false;
            }
            c0189m.f1181a = null;
        }
        w0Var.itemView.setAlpha(1.0f);
        w0Var.itemView.setTranslationX(RecentsState.NO_OFFSET);
        w0Var.itemView.setTranslationY(RecentsState.NO_OFFSET);
        d(w0Var);
        return true;
    }

    public final void o(w0 w0Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        w0Var.itemView.animate().setInterpolator(s);
        f(w0Var);
    }
}
