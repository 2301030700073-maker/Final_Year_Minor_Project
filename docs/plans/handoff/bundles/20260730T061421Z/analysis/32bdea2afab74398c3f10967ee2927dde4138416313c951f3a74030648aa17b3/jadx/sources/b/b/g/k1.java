package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class k1 implements InterfaceC0053i0 {

    /* renamed from: a, reason: collision with root package name */
    public Toolbar f551a;

    /* renamed from: b, reason: collision with root package name */
    public int f552b;

    /* renamed from: c, reason: collision with root package name */
    public View f553c;

    /* renamed from: d, reason: collision with root package name */
    public View f554d;
    public Drawable e;
    public Drawable f;
    public Drawable g;
    public boolean h;
    public CharSequence i;
    public CharSequence j;
    public CharSequence k;
    public Window.Callback l;
    public boolean m;
    public r n;
    public int o = 0;
    public int p;
    public Drawable q;

    public k1(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.p = 0;
        this.f551a = toolbar;
        CharSequence charSequence = toolbar.x;
        this.i = charSequence;
        this.j = toolbar.y;
        this.h = charSequence != null;
        this.g = toolbar.m();
        a1 o = a1.o(toolbar.getContext(), null, b.b.b.f240a, R.attr.actionBarStyle, 0);
        int i = 15;
        this.q = o.e(15);
        if (z) {
            CharSequence l = o.l(27);
            if (!TextUtils.isEmpty(l)) {
                this.h = true;
                this.i = l;
                if ((this.f552b & 8) != 0) {
                    this.f551a.z(l);
                }
            }
            CharSequence l2 = o.l(25);
            if (!TextUtils.isEmpty(l2)) {
                this.j = l2;
                if ((this.f552b & 8) != 0) {
                    this.f551a.y(l2);
                }
            }
            Drawable e = o.e(20);
            if (e != null) {
                this.f = e;
                z();
            }
            Drawable e2 = o.e(17);
            if (e2 != null) {
                this.e = e2;
                z();
            }
            if (this.g == null && (drawable = this.q) != null) {
                this.g = drawable;
                y();
            }
            w(o.h(10, 0));
            int j = o.j(9, 0);
            if (j != 0) {
                View inflate = LayoutInflater.from(this.f551a.getContext()).inflate(j, (ViewGroup) this.f551a, false);
                View view = this.f554d;
                if (view != null && (this.f552b & 16) != 0) {
                    this.f551a.removeView(view);
                }
                this.f554d = inflate;
                if (inflate != null && (this.f552b & 16) != 0) {
                    this.f551a.addView(inflate);
                }
                w(this.f552b | 16);
            }
            int i2 = o.i(13, 0);
            if (i2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f551a.getLayoutParams();
                layoutParams.height = i2;
                this.f551a.setLayoutParams(layoutParams);
            }
            int c2 = o.c(7, -1);
            int c3 = o.c(3, -1);
            if (c2 >= 0 || c3 >= 0) {
                Toolbar toolbar2 = this.f551a;
                int max = Math.max(c2, 0);
                int max2 = Math.max(c3, 0);
                toolbar2.c();
                toolbar2.t.a(max, max2);
            }
            int j2 = o.j(28, 0);
            if (j2 != 0) {
                Toolbar toolbar3 = this.f551a;
                Context context = toolbar3.getContext();
                toolbar3.l = j2;
                TextView textView = toolbar3.f67b;
                if (textView != null) {
                    textView.setTextAppearance(context, j2);
                }
            }
            int j3 = o.j(26, 0);
            if (j3 != 0) {
                Toolbar toolbar4 = this.f551a;
                Context context2 = toolbar4.getContext();
                toolbar4.m = j3;
                TextView textView2 = toolbar4.f68c;
                if (textView2 != null) {
                    textView2.setTextAppearance(context2, j3);
                }
            }
            int j4 = o.j(22, 0);
            if (j4 != 0) {
                this.f551a.x(j4);
            }
        } else {
            if (this.f551a.m() != null) {
                this.q = this.f551a.m();
            } else {
                i = 11;
            }
            this.f552b = i;
        }
        o.f513b.recycle();
        if (R.string.abc_action_bar_up_description != this.p) {
            this.p = R.string.abc_action_bar_up_description;
            ImageButton imageButton = this.f551a.f69d;
            if (TextUtils.isEmpty(imageButton != null ? imageButton.getContentDescription() : null)) {
                int i3 = this.p;
                this.k = i3 == 0 ? null : this.f551a.getContext().getString(i3);
                x();
            }
        }
        ImageButton imageButton2 = this.f551a.f69d;
        this.k = imageButton2 != null ? imageButton2.getContentDescription() : null;
        Toolbar toolbar5 = this.f551a;
        i1 i1Var = new i1(this);
        toolbar5.e();
        toolbar5.f69d.setOnClickListener(i1Var);
    }

    @Override // b.b.g.InterfaceC0053i0
    public void a(Menu menu, b.b.f.m.B b2) {
        b.b.f.m.r rVar;
        if (this.n == null) {
            r rVar2 = new r(this.f551a.getContext());
            this.n = rVar2;
            Objects.requireNonNull(rVar2);
        }
        r rVar3 = this.n;
        rVar3.e = b2;
        Toolbar toolbar = this.f551a;
        b.b.f.m.o oVar = (b.b.f.m.o) menu;
        if (oVar == null && toolbar.f66a == null) {
            return;
        }
        toolbar.d();
        b.b.f.m.o oVar2 = toolbar.f66a.p;
        if (oVar2 == oVar) {
            return;
        }
        if (oVar2 != null) {
            oVar2.t(toolbar.J);
            oVar2.t(toolbar.K);
        }
        if (toolbar.K == null) {
            toolbar.K = new e1(toolbar);
        }
        rVar3.q = true;
        if (oVar != null) {
            oVar.b(rVar3, toolbar.j);
            oVar.b(toolbar.K, toolbar.j);
        } else {
            rVar3.d(toolbar.j, null);
            e1 e1Var = toolbar.K;
            b.b.f.m.o oVar3 = e1Var.f528a;
            if (oVar3 != null && (rVar = e1Var.f529b) != null) {
                oVar3.d(rVar);
            }
            e1Var.f528a = null;
            rVar3.j(true);
            toolbar.K.j(true);
        }
        toolbar.f66a.x(toolbar.k);
        ActionMenuView actionMenuView = toolbar.f66a;
        actionMenuView.t = rVar3;
        rVar3.h = actionMenuView;
        actionMenuView.p = rVar3.f575c;
        toolbar.J = rVar3;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    @Override // b.b.g.InterfaceC0053i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b() {
        /*
            r3 = this;
            androidx.appcompat.widget.Toolbar r3 = r3.f551a
            androidx.appcompat.widget.ActionMenuView r3 = r3.f66a
            r0 = 1
            r1 = 0
            if (r3 == 0) goto L22
            b.b.g.r r3 = r3.t
            if (r3 == 0) goto L1e
            b.b.g.l r2 = r3.v
            if (r2 != 0) goto L19
            boolean r3 = r3.m()
            if (r3 == 0) goto L17
            goto L19
        L17:
            r3 = r1
            goto L1a
        L19:
            r3 = r0
        L1a:
            if (r3 == 0) goto L1e
            r3 = r0
            goto L1f
        L1e:
            r3 = r1
        L1f:
            if (r3 == 0) goto L22
            goto L23
        L22:
            r0 = r1
        L23:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.k1.b():boolean");
    }

    @Override // b.b.g.InterfaceC0053i0
    public void c(CharSequence charSequence) {
        if (this.h) {
            return;
        }
        this.i = charSequence;
        if ((this.f552b & 8) != 0) {
            this.f551a.z(charSequence);
        }
    }

    @Override // b.b.g.InterfaceC0053i0
    public void collapseActionView() {
        e1 e1Var = this.f551a.K;
        b.b.f.m.r rVar = e1Var == null ? null : e1Var.f529b;
        if (rVar != null) {
            rVar.collapseActionView();
        }
    }

    @Override // b.b.g.InterfaceC0053i0
    public boolean d() {
        return this.f551a.p();
    }

    @Override // b.b.g.InterfaceC0053i0
    public void e(Window.Callback callback) {
        this.l = callback;
    }

    @Override // b.b.g.InterfaceC0053i0
    public boolean f() {
        ActionMenuView actionMenuView = this.f551a.f66a;
        if (actionMenuView != null) {
            r rVar = actionMenuView.t;
            if (rVar != null && rVar.k()) {
                return true;
            }
        }
        return false;
    }

    @Override // b.b.g.InterfaceC0053i0
    public boolean g() {
        return this.f551a.B();
    }

    @Override // b.b.g.InterfaceC0053i0
    public void h() {
        this.m = true;
    }

    @Override // b.b.g.InterfaceC0053i0
    public boolean i() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f551a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f66a) != null && actionMenuView.s;
    }

    @Override // b.b.g.InterfaceC0053i0
    public void j() {
        r rVar;
        ActionMenuView actionMenuView = this.f551a.f66a;
        if (actionMenuView == null || (rVar = actionMenuView.t) == null) {
            return;
        }
        rVar.b();
    }

    @Override // b.b.g.InterfaceC0053i0
    public int k() {
        return this.f552b;
    }

    @Override // b.b.g.InterfaceC0053i0
    public void l(int i) {
        this.f551a.setVisibility(i);
    }

    @Override // b.b.g.InterfaceC0053i0
    public void m(G0 g0) {
        View view = this.f553c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f551a;
            if (parent == toolbar) {
                toolbar.removeView(this.f553c);
            }
        }
        this.f553c = null;
    }

    @Override // b.b.g.InterfaceC0053i0
    public ViewGroup n() {
        return this.f551a;
    }

    @Override // b.b.g.InterfaceC0053i0
    public void o(boolean z) {
    }

    @Override // b.b.g.InterfaceC0053i0
    public Context p() {
        return this.f551a.getContext();
    }

    @Override // b.b.g.InterfaceC0053i0
    public int q() {
        return 0;
    }

    @Override // b.b.g.InterfaceC0053i0
    public b.e.i.t r(int i, long j) {
        b.e.i.t a2 = b.e.i.q.a(this.f551a);
        a2.a(i == 0 ? 1.0f : RecentsState.NO_OFFSET);
        a2.c(j);
        j1 j1Var = new j1(this, i);
        View view = (View) a2.f781a.get();
        if (view != null) {
            a2.e(view, j1Var);
        }
        return a2;
    }

    @Override // b.b.g.InterfaceC0053i0
    public void s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // b.b.g.InterfaceC0053i0
    public boolean t() {
        e1 e1Var = this.f551a.K;
        return (e1Var == null || e1Var.f529b == null) ? false : true;
    }

    @Override // b.b.g.InterfaceC0053i0
    public void u() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // b.b.g.InterfaceC0053i0
    public void v(boolean z) {
        Toolbar toolbar = this.f551a;
        toolbar.L = z;
        toolbar.requestLayout();
    }

    @Override // b.b.g.InterfaceC0053i0
    public void w(int i) {
        View view;
        int i2 = this.f552b ^ i;
        this.f552b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    x();
                }
                y();
            }
            if ((i2 & 3) != 0) {
                z();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f551a.z(this.i);
                    this.f551a.y(this.j);
                } else {
                    this.f551a.z(null);
                    this.f551a.y(null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f554d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f551a.addView(view);
            } else {
                this.f551a.removeView(view);
            }
        }
    }

    public final void x() {
        if ((this.f552b & 4) != 0) {
            if (!TextUtils.isEmpty(this.k)) {
                this.f551a.v(this.k);
                return;
            }
            Toolbar toolbar = this.f551a;
            int i = this.p;
            toolbar.v(i != 0 ? toolbar.getContext().getText(i) : null);
        }
    }

    public final void y() {
        if ((this.f552b & 4) == 0) {
            this.f551a.w(null);
            return;
        }
        Toolbar toolbar = this.f551a;
        Drawable drawable = this.g;
        if (drawable == null) {
            drawable = this.q;
        }
        toolbar.w(drawable);
    }

    public final void z() {
        Drawable drawable;
        int i = this.f552b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f;
            if (drawable == null) {
                drawable = this.e;
            }
        } else {
            drawable = this.e;
        }
        this.f551a.u(drawable);
    }
}
