package b.m.b;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public class D {

    /* renamed from: b, reason: collision with root package name */
    public int f1093b;

    /* renamed from: c, reason: collision with root package name */
    public int f1094c;

    /* renamed from: d, reason: collision with root package name */
    public int f1095d;
    public int e;
    public int f;
    public int g;
    public boolean j;
    public int k;
    public boolean m;

    /* renamed from: a, reason: collision with root package name */
    public boolean f1092a = true;
    public int h = 0;
    public int i = 0;
    public List l = null;

    public void a(View view) {
        int a2;
        int size = this.l.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((w0) this.l.get(i2)).itemView;
            C0178g0 c0178g0 = (C0178g0) view3.getLayoutParams();
            if (view3 != view && !c0178g0.c() && (a2 = (c0178g0.a() - this.f1095d) * this.e) >= 0 && a2 < i) {
                view2 = view3;
                if (a2 == 0) {
                    break;
                } else {
                    i = a2;
                }
            }
        }
        if (view2 == null) {
            this.f1095d = -1;
        } else {
            this.f1095d = ((C0178g0) view2.getLayoutParams()).a();
        }
    }

    public boolean b(t0 t0Var) {
        int i = this.f1095d;
        return i >= 0 && i < t0Var.b();
    }

    public View c(n0 n0Var) {
        List list = this.l;
        if (list == null) {
            View view = n0Var.k(this.f1095d, false, RecyclerView.FOREVER_NS).itemView;
            this.f1095d += this.e;
            return view;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view2 = ((w0) this.l.get(i)).itemView;
            C0178g0 c0178g0 = (C0178g0) view2.getLayoutParams();
            if (!c0178g0.c() && this.f1095d == c0178g0.a()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
