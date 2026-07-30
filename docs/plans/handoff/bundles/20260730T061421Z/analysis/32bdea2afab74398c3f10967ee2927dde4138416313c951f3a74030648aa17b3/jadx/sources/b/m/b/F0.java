package b.m.b;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class F0 {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1098a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f1099b = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: c, reason: collision with root package name */
    public int f1100c = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: d, reason: collision with root package name */
    public int f1101d = 0;
    public final int e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public F0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f = staggeredGridLayoutManager;
        this.e = i;
    }

    public void a(View view) {
        B0 j = j(view);
        j.e = this;
        this.f1098a.add(view);
        this.f1100c = RecyclerView.UNDEFINED_DURATION;
        if (this.f1098a.size() == 1) {
            this.f1099b = RecyclerView.UNDEFINED_DURATION;
        }
        if (j.c() || j.b()) {
            this.f1101d = this.f.f195c.c(view) + this.f1101d;
        }
    }

    public void b() {
        View view = (View) this.f1098a.get(r0.size() - 1);
        B0 j = j(view);
        this.f1100c = this.f.f195c.b(view);
        boolean z = j.f;
    }

    public void c() {
        View view = (View) this.f1098a.get(0);
        B0 j = j(view);
        this.f1099b = this.f.f195c.e(view);
        boolean z = j.f;
    }

    public void d() {
        this.f1098a.clear();
        this.f1099b = RecyclerView.UNDEFINED_DURATION;
        this.f1100c = RecyclerView.UNDEFINED_DURATION;
        this.f1101d = 0;
    }

    public int e() {
        return this.f.h ? g(this.f1098a.size() - 1, -1, true) : g(0, this.f1098a.size(), true);
    }

    public int f() {
        return this.f.h ? g(0, this.f1098a.size(), true) : g(this.f1098a.size() - 1, -1, true);
    }

    public int g(int i, int i2, boolean z) {
        int k = this.f.f195c.k();
        int g = this.f.f195c.g();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) this.f1098a.get(i);
            int e = this.f.f195c.e(view);
            int b2 = this.f.f195c.b(view);
            boolean z2 = false;
            boolean z3 = !z ? e >= g : e > g;
            if (!z ? b2 > k : b2 >= k) {
                z2 = true;
            }
            if (z3 && z2 && (e < k || b2 > g)) {
                return this.f.getPosition(view);
            }
            i += i3;
        }
        return -1;
    }

    public int h(int i) {
        int i2 = this.f1100c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f1098a.size() == 0) {
            return i;
        }
        b();
        return this.f1100c;
    }

    public View i(int i, int i2) {
        View view = null;
        if (i2 != -1) {
            int size = this.f1098a.size() - 1;
            while (size >= 0) {
                View view2 = (View) this.f1098a.get(size);
                StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
                if (staggeredGridLayoutManager.h && staggeredGridLayoutManager.getPosition(view2) >= i) {
                    break;
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager2 = this.f;
                if ((!staggeredGridLayoutManager2.h && staggeredGridLayoutManager2.getPosition(view2) <= i) || !view2.hasFocusable()) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = this.f1098a.size();
            int i3 = 0;
            while (i3 < size2) {
                View view3 = (View) this.f1098a.get(i3);
                StaggeredGridLayoutManager staggeredGridLayoutManager3 = this.f;
                if (staggeredGridLayoutManager3.h && staggeredGridLayoutManager3.getPosition(view3) <= i) {
                    break;
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager4 = this.f;
                if ((!staggeredGridLayoutManager4.h && staggeredGridLayoutManager4.getPosition(view3) >= i) || !view3.hasFocusable()) {
                    break;
                }
                i3++;
                view = view3;
            }
        }
        return view;
    }

    public B0 j(View view) {
        return (B0) view.getLayoutParams();
    }

    public int k(int i) {
        int i2 = this.f1099b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f1098a.size() == 0) {
            return i;
        }
        c();
        return this.f1099b;
    }

    public void l() {
        int size = this.f1098a.size();
        View view = (View) this.f1098a.remove(size - 1);
        B0 j = j(view);
        j.e = null;
        if (j.c() || j.b()) {
            this.f1101d -= this.f.f195c.c(view);
        }
        if (size == 1) {
            this.f1099b = RecyclerView.UNDEFINED_DURATION;
        }
        this.f1100c = RecyclerView.UNDEFINED_DURATION;
    }

    public void m() {
        View view = (View) this.f1098a.remove(0);
        B0 j = j(view);
        j.e = null;
        if (this.f1098a.size() == 0) {
            this.f1100c = RecyclerView.UNDEFINED_DURATION;
        }
        if (j.c() || j.b()) {
            this.f1101d -= this.f.f195c.c(view);
        }
        this.f1099b = RecyclerView.UNDEFINED_DURATION;
    }

    public void n(View view) {
        B0 j = j(view);
        j.e = this;
        this.f1098a.add(0, view);
        this.f1099b = RecyclerView.UNDEFINED_DURATION;
        if (this.f1098a.size() == 1) {
            this.f1100c = RecyclerView.UNDEFINED_DURATION;
        }
        if (j.c() || j.b()) {
            this.f1101d = this.f.f195c.c(view) + this.f1101d;
        }
    }
}
