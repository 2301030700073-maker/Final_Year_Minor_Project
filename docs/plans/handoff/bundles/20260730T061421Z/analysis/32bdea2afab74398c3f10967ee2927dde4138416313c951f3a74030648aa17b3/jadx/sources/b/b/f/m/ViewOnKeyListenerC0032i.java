package b.b.f.m;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import b.b.g.InterfaceC0086z0;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: b.b.f.m.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC0032i extends y implements C, View.OnKeyListener, PopupWindow.OnDismissListener {
    public boolean A;

    /* renamed from: b, reason: collision with root package name */
    public final Context f387b;

    /* renamed from: c, reason: collision with root package name */
    public final int f388c;

    /* renamed from: d, reason: collision with root package name */
    public final int f389d;
    public final int e;
    public final boolean f;
    public final Handler g;
    public View o;
    public View p;
    public int q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public boolean w;
    public B x;
    public ViewTreeObserver y;
    public PopupWindow.OnDismissListener z;
    public final List h = new ArrayList();
    public final List i = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener j = new ViewTreeObserverOnGlobalLayoutListenerC0027d(this);
    public final View.OnAttachStateChangeListener k = new ViewOnAttachStateChangeListenerC0028e(this);
    public final InterfaceC0086z0 l = new C0030g(this);
    public int m = 0;
    public int n = 0;
    public boolean v = false;

    public ViewOnKeyListenerC0032i(Context context, View view, int i, int i2, boolean z) {
        this.f387b = context;
        this.o = view;
        this.f389d = i;
        this.e = i2;
        this.f = z;
        this.q = b.e.i.q.i(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f388c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.g = new Handler();
    }

    @Override // b.b.f.m.C
    public void a(o oVar, boolean z) {
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (oVar == ((C0031h) this.i.get(i)).f385b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.i.size()) {
            ((C0031h) this.i.get(i2)).f385b.c(false);
        }
        C0031h c0031h = (C0031h) this.i.remove(i);
        c0031h.f385b.t(this);
        if (this.A) {
            c0031h.f384a.B.setExitTransition(null);
            c0031h.f384a.B.setAnimationStyle(0);
        }
        c0031h.f384a.dismiss();
        int size2 = this.i.size();
        if (size2 > 0) {
            this.q = ((C0031h) this.i.get(size2 - 1)).f386c;
        } else {
            this.q = b.e.i.q.i(this.o) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((C0031h) this.i.get(0)).f385b.c(false);
                return;
            }
            return;
        }
        dismiss();
        B b2 = this.x;
        if (b2 != null) {
            b2.a(oVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.y.removeGlobalOnLayoutListener(this.j);
            }
            this.y = null;
        }
        this.p.removeOnAttachStateChangeListener(this.k);
        this.z.onDismiss();
    }

    @Override // b.b.f.m.G
    public boolean b() {
        return this.i.size() > 0 && ((C0031h) this.i.get(0)).f384a.b();
    }

    @Override // b.b.f.m.C
    public boolean c() {
        return false;
    }

    @Override // b.b.f.m.G
    public void dismiss() {
        int size = this.i.size();
        if (size > 0) {
            C0031h[] c0031hArr = (C0031h[]) this.i.toArray(new C0031h[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0031h c0031h = c0031hArr[i];
                if (c0031h.f384a.b()) {
                    c0031h.f384a.dismiss();
                }
            }
        }
    }

    @Override // b.b.f.m.G
    public void f() {
        if (b()) {
            return;
        }
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            w((o) it.next());
        }
        this.h.clear();
        View view = this.o;
        this.p = view;
        if (view != null) {
            boolean z = this.y == null;
            ViewTreeObserver viewTreeObserver = this.p.getViewTreeObserver();
            this.y = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            this.p.addOnAttachStateChangeListener(this.k);
        }
    }

    @Override // b.b.f.m.C
    public void h(B b2) {
        this.x = b2;
    }

    @Override // b.b.f.m.C
    public boolean i(K k) {
        for (C0031h c0031h : this.i) {
            if (k == c0031h.f385b) {
                c0031h.f384a.f601c.requestFocus();
                return true;
            }
        }
        if (!k.hasVisibleItems()) {
            return false;
        }
        k.b(this, this.f387b);
        if (b()) {
            w(k);
        } else {
            this.h.add(k);
        }
        B b2 = this.x;
        if (b2 != null) {
            b2.b(k);
        }
        return true;
    }

    @Override // b.b.f.m.C
    public void j(boolean z) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((C0031h) it.next()).f384a.f601c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((C0035l) adapter).notifyDataSetChanged();
        }
    }

    @Override // b.b.f.m.G
    public ListView k() {
        if (this.i.isEmpty()) {
            return null;
        }
        return ((C0031h) this.i.get(r1.size() - 1)).f384a.f601c;
    }

    @Override // b.b.f.m.y
    public void l(o oVar) {
        oVar.b(this, this.f387b);
        if (b()) {
            w(oVar);
        } else {
            this.h.add(oVar);
        }
    }

    @Override // b.b.f.m.y
    public boolean m() {
        return false;
    }

    @Override // b.b.f.m.y
    public void o(View view) {
        if (this.o != view) {
            this.o = view;
            this.n = Gravity.getAbsoluteGravity(this.m, b.e.i.q.i(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0031h c0031h;
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0031h = null;
                break;
            }
            c0031h = (C0031h) this.i.get(i);
            if (!c0031h.f384a.b()) {
                break;
            } else {
                i++;
            }
        }
        if (c0031h != null) {
            c0031h.f385b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // b.b.f.m.y
    public void p(boolean z) {
        this.v = z;
    }

    @Override // b.b.f.m.y
    public void q(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = Gravity.getAbsoluteGravity(i, b.e.i.q.i(this.o));
        }
    }

    @Override // b.b.f.m.y
    public void r(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // b.b.f.m.y
    public void s(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // b.b.f.m.y
    public void t(boolean z) {
        this.w = z;
    }

    @Override // b.b.f.m.y
    public void u(int i) {
        this.s = true;
        this.u = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0127, code lost:
    
        if (((r9.getWidth() + r10[0]) + r4) > r11.right) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x012f, code lost:
    
        r9 = 1;
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0132, code lost:
    
        r11 = 0;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012d, code lost:
    
        if ((r10[0] - r4) < 0) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(b.b.f.m.o r17) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.f.m.ViewOnKeyListenerC0032i.w(b.b.f.m.o):void");
    }
}
