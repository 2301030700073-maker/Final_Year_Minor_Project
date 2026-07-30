package b.b.g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import b.e.i.AbstractC0089c;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class r implements b.b.f.m.C {

    /* renamed from: a, reason: collision with root package name */
    public Context f573a;

    /* renamed from: b, reason: collision with root package name */
    public Context f574b;

    /* renamed from: c, reason: collision with root package name */
    public b.b.f.m.o f575c;

    /* renamed from: d, reason: collision with root package name */
    public LayoutInflater f576d;
    public b.b.f.m.B e;
    public b.b.f.m.E h;
    public C0062n i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public int r;
    public C0064o t;
    public C0054j u;
    public RunnableC0058l v;
    public C0056k w;
    public int y;
    public int f = R.layout.abc_action_menu_layout;
    public int g = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray s = new SparseBooleanArray();
    public final C0066p x = new C0066p(this);

    public r(Context context) {
        this.f573a = context;
        this.f576d = LayoutInflater.from(context);
    }

    @Override // b.b.f.m.C
    public void a(b.b.f.m.o oVar, boolean z) {
        b();
        b.b.f.m.B b2 = this.e;
        if (b2 != null) {
            b2.a(oVar, z);
        }
    }

    public boolean b() {
        return l() | k();
    }

    @Override // b.b.f.m.C
    public boolean c() {
        ArrayList arrayList;
        int i;
        boolean z;
        boolean z2;
        b.b.f.m.o oVar = this.f575c;
        View view = null;
        boolean z3 = false;
        if (oVar != null) {
            arrayList = oVar.l();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i2 = this.p;
        int i3 = this.o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.h;
        int i4 = 0;
        boolean z4 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            z = true;
            if (i4 >= i) {
                break;
            }
            b.b.f.m.r rVar = (b.b.f.m.r) arrayList.get(i4);
            if (rVar.requiresActionButton()) {
                i5++;
            } else if (rVar.h()) {
                i6++;
            } else {
                z4 = true;
            }
            if (this.q && rVar.C) {
                i2 = 0;
            }
            i4++;
        }
        if (this.l && (z4 || i6 + i5 > i2)) {
            i2--;
        }
        int i7 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = this.s;
        sparseBooleanArray.clear();
        int i8 = 0;
        int i9 = 0;
        while (i8 < i) {
            b.b.f.m.r rVar2 = (b.b.f.m.r) arrayList.get(i8);
            if (rVar2.requiresActionButton()) {
                View f = f(rVar2, view, viewGroup);
                f.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = f.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i9 == 0) {
                    i9 = measuredWidth;
                }
                int i10 = rVar2.f409b;
                if (i10 != 0) {
                    sparseBooleanArray.put(i10, z);
                }
                rVar2.k(z);
                z2 = z3;
            } else if (rVar2.h()) {
                int i11 = rVar2.f409b;
                boolean z5 = sparseBooleanArray.get(i11);
                boolean z6 = ((i7 > 0 || z5) && i3 > 0) ? z : z3;
                if (z6) {
                    View f2 = f(rVar2, view, viewGroup);
                    f2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = f2.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i9 == 0) {
                        i9 = measuredWidth2;
                    }
                    z6 &= i3 + i9 > 0 ? z : false;
                }
                boolean z7 = z6;
                if (z7 && i11 != 0) {
                    sparseBooleanArray.put(i11, z);
                } else if (z5) {
                    sparseBooleanArray.put(i11, false);
                    for (int i12 = 0; i12 < i8; i12++) {
                        b.b.f.m.r rVar3 = (b.b.f.m.r) arrayList.get(i12);
                        if (rVar3.f409b == i11) {
                            if (rVar3.g()) {
                                i7++;
                            }
                            rVar3.k(false);
                        }
                    }
                }
                if (z7) {
                    i7--;
                }
                rVar2.k(z7);
                z2 = false;
            } else {
                z2 = z3;
                rVar2.k(z2);
            }
            i8++;
            z3 = z2;
            view = null;
            z = true;
        }
        return z;
    }

    @Override // b.b.f.m.C
    public void d(Context context, b.b.f.m.o oVar) {
        this.f574b = context;
        LayoutInflater.from(context);
        this.f575c = oVar;
        Resources resources = context.getResources();
        if (!this.m) {
            this.l = true;
        }
        int i = 2;
        this.n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.p = i;
        int i4 = this.n;
        if (this.l) {
            if (this.i == null) {
                C0062n c0062n = new C0062n(this, this.f573a);
                this.i = c0062n;
                if (this.k) {
                    c0062n.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.o = i4;
        this.r = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // b.b.f.m.C
    public boolean e(b.b.f.m.o oVar, b.b.f.m.r rVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [b.b.f.m.D] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public View f(b.b.f.m.r rVar, View view, ViewGroup viewGroup) {
        View actionView = rVar.getActionView();
        if (actionView == null || rVar.f()) {
            ActionMenuItemView actionMenuItemView = view instanceof b.b.f.m.D ? (b.b.f.m.D) view : (b.b.f.m.D) this.f576d.inflate(this.g, viewGroup, false);
            actionMenuItemView.e(rVar, 0);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.g = (ActionMenuView) this.h;
            if (this.w == null) {
                this.w = new C0056k(this);
            }
            actionMenuItemView2.g(this.w);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(rVar.C ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // b.b.f.m.C
    public boolean g(b.b.f.m.o oVar, b.b.f.m.r rVar) {
        return false;
    }

    @Override // b.b.f.m.C
    public void h(b.b.f.m.B b2) {
        this.e = b2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b.b.f.m.C
    public boolean i(b.b.f.m.K k) {
        boolean z = false;
        if (!k.hasVisibleItems()) {
            return false;
        }
        b.b.f.m.K k2 = k;
        while (true) {
            b.b.f.m.o oVar = k2.A;
            if (oVar == this.f575c) {
                break;
            }
            k2 = (b.b.f.m.K) oVar;
        }
        b.b.f.m.r rVar = k2.B;
        ViewGroup viewGroup = (ViewGroup) this.h;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof b.b.f.m.D) && ((b.b.f.m.D) childAt).b() == rVar) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        int i2 = k.B.f408a;
        int size = k.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            MenuItem item = k.getItem(i3);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i3++;
        }
        C0054j c0054j = new C0054j(this, this.f574b, k, view);
        this.u = c0054j;
        c0054j.h = z;
        b.b.f.m.y yVar = c0054j.j;
        if (yVar != null) {
            yVar.p(z);
        }
        if (!this.u.f()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        b.b.f.m.B b2 = this.e;
        if (b2 != null) {
            b2.b(k);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b.b.f.m.C
    public void j(boolean z) {
        int i;
        boolean z2;
        ViewGroup viewGroup = (ViewGroup) this.h;
        ArrayList arrayList = null;
        boolean z3 = false;
        if (viewGroup != null) {
            b.b.f.m.o oVar = this.f575c;
            if (oVar != null) {
                oVar.i();
                ArrayList l = this.f575c.l();
                int size = l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    b.b.f.m.r rVar = (b.b.f.m.r) l.get(i2);
                    if (rVar.g()) {
                        View childAt = viewGroup.getChildAt(i);
                        b.b.f.m.r b2 = childAt instanceof b.b.f.m.D ? ((b.b.f.m.D) childAt).b() : null;
                        View f = f(rVar, childAt, viewGroup);
                        if (rVar != b2) {
                            f.setPressed(false);
                            f.jumpDrawablesToCurrentState();
                        }
                        if (f != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) f.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(f);
                            }
                            ((ViewGroup) this.h).addView(f, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.i) {
                    z2 = false;
                } else {
                    viewGroup.removeViewAt(i);
                    z2 = true;
                }
                if (!z2) {
                    i++;
                }
            }
        }
        ((View) this.h).requestLayout();
        b.b.f.m.o oVar2 = this.f575c;
        if (oVar2 != null) {
            oVar2.i();
            ArrayList arrayList2 = oVar2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractC0089c abstractC0089c = ((b.b.f.m.r) arrayList2.get(i3)).A;
            }
        }
        b.b.f.m.o oVar3 = this.f575c;
        if (oVar3 != null) {
            oVar3.i();
            arrayList = oVar3.j;
        }
        if (this.l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z3 = !((b.b.f.m.r) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.i == null) {
                this.i = new C0062n(this, this.f573a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.i.getParent();
            if (viewGroup3 != this.h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.h;
                C0062n c0062n = this.i;
                C0075u generateDefaultLayoutParams = actionMenuView.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f583c = true;
                actionMenuView.addView(c0062n, generateDefaultLayoutParams);
            }
        } else {
            C0062n c0062n2 = this.i;
            if (c0062n2 != null) {
                Object parent = c0062n2.getParent();
                Object obj = this.h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.i);
                }
            }
        }
        ((ActionMenuView) this.h).s = this.l;
    }

    public boolean k() {
        Object obj;
        RunnableC0058l runnableC0058l = this.v;
        if (runnableC0058l != null && (obj = this.h) != null) {
            ((View) obj).removeCallbacks(runnableC0058l);
            this.v = null;
            return true;
        }
        C0064o c0064o = this.t;
        if (c0064o == null) {
            return false;
        }
        if (c0064o.b()) {
            c0064o.j.dismiss();
        }
        return true;
    }

    public boolean l() {
        C0054j c0054j = this.u;
        if (c0054j == null) {
            return false;
        }
        if (!c0054j.b()) {
            return true;
        }
        c0054j.j.dismiss();
        return true;
    }

    public boolean m() {
        C0064o c0064o = this.t;
        return c0064o != null && c0064o.b();
    }

    public boolean n() {
        b.b.f.m.o oVar;
        if (!this.l || m() || (oVar = this.f575c) == null || this.h == null || this.v != null) {
            return false;
        }
        oVar.i();
        if (oVar.j.isEmpty()) {
            return false;
        }
        RunnableC0058l runnableC0058l = new RunnableC0058l(this, new C0064o(this, this.f574b, this.f575c, this.i, true));
        this.v = runnableC0058l;
        ((View) this.h).post(runnableC0058l);
        return true;
    }
}
