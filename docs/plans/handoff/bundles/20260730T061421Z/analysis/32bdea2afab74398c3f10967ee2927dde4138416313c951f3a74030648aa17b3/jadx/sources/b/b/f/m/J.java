package b.b.f.m;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import b.b.g.B0;
import b.b.g.C0061m0;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public final class J extends y implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, C, View.OnKeyListener {

    /* renamed from: b, reason: collision with root package name */
    public final Context f367b;

    /* renamed from: c, reason: collision with root package name */
    public final o f368c;

    /* renamed from: d, reason: collision with root package name */
    public final C0035l f369d;
    public final boolean e;
    public final int f;
    public final int g;
    public final int h;
    public final B0 i;
    public PopupWindow.OnDismissListener l;
    public View m;
    public View n;
    public B o;
    public ViewTreeObserver p;
    public boolean q;
    public boolean r;
    public int s;
    public boolean u;
    public final ViewTreeObserver.OnGlobalLayoutListener j = new H(this);
    public final View.OnAttachStateChangeListener k = new I(this);
    public int t = 0;

    public J(Context context, o oVar, View view, int i, int i2, boolean z) {
        this.f367b = context;
        this.f368c = oVar;
        this.e = z;
        this.f369d = new C0035l(oVar, LayoutInflater.from(context), this.e, R.layout.abc_popup_menu_item_layout);
        this.g = i;
        this.h = i2;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.m = view;
        this.i = new B0(this.f367b, null, this.g, this.h);
        oVar.b(this, context);
    }

    @Override // b.b.f.m.C
    public void a(o oVar, boolean z) {
        if (oVar != this.f368c) {
            return;
        }
        dismiss();
        B b2 = this.o;
        if (b2 != null) {
            b2.a(oVar, z);
        }
    }

    @Override // b.b.f.m.G
    public boolean b() {
        return !this.q && this.i.b();
    }

    @Override // b.b.f.m.C
    public boolean c() {
        return false;
    }

    @Override // b.b.f.m.G
    public void dismiss() {
        if (b()) {
            this.i.dismiss();
        }
    }

    @Override // b.b.f.m.G
    public void f() {
        View view;
        boolean z = true;
        if (!b()) {
            if (this.q || (view = this.m) == null) {
                z = false;
            } else {
                this.n = view;
                this.i.B.setOnDismissListener(this);
                B0 b0 = this.i;
                b0.s = this;
                b0.s(true);
                View view2 = this.n;
                boolean z2 = this.p == null;
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.p = viewTreeObserver;
                if (z2) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.j);
                }
                view2.addOnAttachStateChangeListener(this.k);
                B0 b02 = this.i;
                b02.r = view2;
                b02.l = this.t;
                if (!this.r) {
                    this.s = y.n(this.f369d, null, this.f367b, this.f);
                    this.r = true;
                }
                this.i.r(this.s);
                this.i.B.setInputMethodMode(2);
                B0 b03 = this.i;
                Rect rect = this.f421a;
                Objects.requireNonNull(b03);
                b03.z = rect != null ? new Rect(rect) : null;
                this.i.f();
                C0061m0 c0061m0 = this.i.f601c;
                c0061m0.setOnKeyListener(this);
                if (this.u && this.f368c.m != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f367b).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0061m0, false);
                    TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                    if (textView != null) {
                        textView.setText(this.f368c.m);
                    }
                    frameLayout.setEnabled(false);
                    c0061m0.addHeaderView(frameLayout, null, false);
                }
                this.i.o(this.f369d);
                this.i.f();
            }
        }
        if (!z) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // b.b.f.m.C
    public void h(B b2) {
        this.o = b2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    @Override // b.b.f.m.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(b.b.f.m.K r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L76
            b.b.f.m.A r0 = new b.b.f.m.A
            android.content.Context r3 = r9.f367b
            android.view.View r5 = r9.n
            boolean r6 = r9.e
            int r7 = r9.g
            int r8 = r9.h
            r2 = r0
            r4 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            b.b.f.m.B r2 = r9.o
            r0.d(r2)
            boolean r2 = b.b.f.m.y.v(r10)
            r0.h = r2
            b.b.f.m.y r3 = r0.j
            if (r3 == 0) goto L2a
            r3.p(r2)
        L2a:
            android.widget.PopupWindow$OnDismissListener r2 = r9.l
            r0.k = r2
            r2 = 0
            r9.l = r2
            b.b.f.m.o r2 = r9.f368c
            r2.c(r1)
            b.b.g.B0 r2 = r9.i
            int r3 = r2.f
            boolean r4 = r2.i
            if (r4 != 0) goto L40
            r2 = r1
            goto L42
        L40:
            int r2 = r2.g
        L42:
            int r4 = r9.t
            android.view.View r5 = r9.m
            int r5 = b.e.i.q.i(r5)
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L5a
            android.view.View r4 = r9.m
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L5a:
            boolean r4 = r0.b()
            r5 = 1
            if (r4 == 0) goto L62
            goto L6b
        L62:
            android.view.View r4 = r0.f
            if (r4 != 0) goto L68
            r0 = r1
            goto L6c
        L68:
            r0.e(r3, r2, r5, r5)
        L6b:
            r0 = r5
        L6c:
            if (r0 == 0) goto L76
            b.b.f.m.B r9 = r9.o
            if (r9 == 0) goto L75
            r9.b(r10)
        L75:
            return r5
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.f.m.J.i(b.b.f.m.K):boolean");
    }

    @Override // b.b.f.m.C
    public void j(boolean z) {
        this.r = false;
        C0035l c0035l = this.f369d;
        if (c0035l != null) {
            c0035l.notifyDataSetChanged();
        }
    }

    @Override // b.b.f.m.G
    public ListView k() {
        return this.i.f601c;
    }

    @Override // b.b.f.m.y
    public void l(o oVar) {
    }

    @Override // b.b.f.m.y
    public void o(View view) {
        this.m = view;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.f368c.c(true);
        ViewTreeObserver viewTreeObserver = this.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.p = this.n.getViewTreeObserver();
            }
            this.p.removeGlobalOnLayoutListener(this.j);
            this.p = null;
        }
        this.n.removeOnAttachStateChangeListener(this.k);
        PopupWindow.OnDismissListener onDismissListener = this.l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f369d.f398c = z;
    }

    @Override // b.b.f.m.y
    public void q(int i) {
        this.t = i;
    }

    @Override // b.b.f.m.y
    public void r(int i) {
        this.i.f = i;
    }

    @Override // b.b.f.m.y
    public void s(PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // b.b.f.m.y
    public void t(boolean z) {
        this.u = z;
    }

    @Override // b.b.f.m.y
    public void u(int i) {
        B0 b0 = this.i;
        b0.g = i;
        b0.i = true;
    }
}
