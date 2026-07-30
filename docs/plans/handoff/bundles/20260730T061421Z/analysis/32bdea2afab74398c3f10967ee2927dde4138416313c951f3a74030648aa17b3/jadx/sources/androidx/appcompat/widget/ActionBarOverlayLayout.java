package androidx.appcompat.widget;

import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import b.b.c.W;
import b.b.f.l;
import b.b.f.m.B;
import b.b.g.C0044e;
import b.b.g.C0052i;
import b.b.g.InterfaceC0050h;
import b.b.g.InterfaceC0051h0;
import b.b.g.InterfaceC0053i0;
import b.b.g.RunnableC0046f;
import b.b.g.RunnableC0048g;
import b.b.g.k1;
import b.e.d.b;
import b.e.i.D;
import b.e.i.g;
import b.e.i.h;
import b.e.i.i;
import b.e.i.q;
import c.a.c.a.a;
import com.android.systemui.shared.R;
import java.util.Objects;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0051h0, g, h {
    public static final int[] F = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public ViewPropertyAnimator A;
    public final AnimatorListenerAdapter B;
    public final Runnable C;
    public final Runnable D;
    public final i E;

    /* renamed from: a, reason: collision with root package name */
    public int f43a;

    /* renamed from: b, reason: collision with root package name */
    public int f44b;

    /* renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f45c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContainer f46d;
    public InterfaceC0053i0 e;
    public Drawable f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public final Rect n;
    public final Rect o;
    public final Rect p;
    public final Rect q;
    public final Rect r;
    public final Rect s;
    public final Rect t;
    public D u;
    public D v;
    public D w;
    public D x;
    public InterfaceC0050h y;
    public OverScroller z;

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    @Override // b.b.g.InterfaceC0051h0
    public void a(Menu menu, B b2) {
        u();
        this.e.a(menu, b2);
    }

    @Override // b.b.g.InterfaceC0051h0
    public boolean b() {
        u();
        return this.e.b();
    }

    @Override // b.b.g.InterfaceC0051h0
    public void c(CharSequence charSequence) {
        u();
        this.e.c(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0052i;
    }

    @Override // b.b.g.InterfaceC0051h0
    public boolean d() {
        u();
        return this.e.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f == null || this.g) {
            return;
        }
        if (this.f46d.getVisibility() == 0) {
            i = (int) (this.f46d.getTranslationY() + this.f46d.getBottom() + 0.5f);
        } else {
            i = 0;
        }
        this.f.setBounds(0, i, getWidth(), this.f.getIntrinsicHeight() + i);
        this.f.draw(canvas);
    }

    @Override // b.b.g.InterfaceC0051h0
    public void e(Window.Callback callback) {
        u();
        this.e.e(callback);
    }

    @Override // b.b.g.InterfaceC0051h0
    public boolean f() {
        u();
        return this.e.f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // b.b.g.InterfaceC0051h0
    public boolean g() {
        u();
        return this.e.g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0052i(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0052i(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        i iVar = this.E;
        return iVar.f767b | iVar.f766a;
    }

    @Override // b.b.g.InterfaceC0051h0
    public void h() {
        u();
        this.e.h();
    }

    @Override // b.b.g.InterfaceC0051h0
    public boolean i() {
        u();
        return this.e.i();
    }

    @Override // b.e.i.g
    public void j(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // b.e.i.g
    public void k(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // b.e.i.g
    public void l(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // b.b.g.InterfaceC0051h0
    public void m(int i) {
        u();
        if (i == 2) {
            this.e.s();
            return;
        }
        if (i == 5) {
            this.e.u();
        } else {
            if (i != 109) {
                return;
            }
            this.h = true;
            this.g = getContext().getApplicationInfo().targetSdkVersion < 19;
        }
    }

    @Override // b.b.g.InterfaceC0051h0
    public void n() {
        u();
        this.e.j();
    }

    @Override // b.e.i.h
    public void o(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        u();
        if (windowInsets == null) {
            throw null;
        }
        D d2 = new D(windowInsets);
        boolean r = r(this.f46d, new Rect(d2.b(), d2.d(), d2.c(), d2.a()), true, true, false, true);
        q.b(this, d2, this.n);
        Rect rect = this.n;
        D g = d2.f744a.g(rect.left, rect.top, rect.right, rect.bottom);
        this.u = g;
        boolean z = true;
        if (!this.v.equals(g)) {
            this.v = this.u;
            r = true;
        }
        if (this.o.equals(this.n)) {
            z = r;
        } else {
            this.o.set(this.n);
        }
        if (z) {
            requestLayout();
        }
        return d2.f744a.a().f744a.c().f744a.b().g();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        t(getContext());
        q.B(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0052i c0052i = (C0052i) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0052i).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0052i).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        u();
        measureChildWithMargins(this.f46d, i, 0, i2, 0);
        C0052i c0052i = (C0052i) this.f46d.getLayoutParams();
        int max = Math.max(0, this.f46d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0052i).leftMargin + ((ViewGroup.MarginLayoutParams) c0052i).rightMargin);
        int max2 = Math.max(0, this.f46d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0052i).topMargin + ((ViewGroup.MarginLayoutParams) c0052i).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f46d.getMeasuredState());
        boolean z = (q.o(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f43a;
            if (this.i && this.f46d.f40b != null) {
                measuredHeight += measuredHeight;
            }
        } else {
            measuredHeight = this.f46d.getVisibility() != 8 ? this.f46d.getMeasuredHeight() : 0;
        }
        this.p.set(this.n);
        D d2 = this.u;
        this.w = d2;
        if (this.h || z) {
            b a2 = b.a(this.w.b(), this.w.d() + measuredHeight, this.w.c(), this.w.a() + 0);
            D d3 = this.w;
            new D((D) null);
            WindowInsets g = d3.g();
            WindowInsets.Builder builder = g != null ? new WindowInsets.Builder(g) : new WindowInsets.Builder();
            builder.setSystemWindowInsets(Insets.of(a2.f693a, a2.f694b, a2.f695c, a2.f696d));
            this.w = D.h(builder.build());
        } else {
            Rect rect = this.p;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.w = d2.f744a.g(0, measuredHeight, 0, 0);
        }
        r(this.f45c, this.p, true, true, true, true);
        if (!this.x.equals(this.w)) {
            D d4 = this.w;
            this.x = d4;
            ContentFrameLayout contentFrameLayout = this.f45c;
            WindowInsets g2 = d4.g();
            if (g2 != null) {
                WindowInsets dispatchApplyWindowInsets = contentFrameLayout.dispatchApplyWindowInsets(g2);
                if (!dispatchApplyWindowInsets.equals(g2)) {
                    new D(dispatchApplyWindowInsets);
                }
            }
        }
        measureChildWithMargins(this.f45c, i, 0, i2, 0);
        C0052i c0052i2 = (C0052i) this.f45c.getLayoutParams();
        int max3 = Math.max(max, this.f45c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0052i2).leftMargin + ((ViewGroup.MarginLayoutParams) c0052i2).rightMargin);
        int max4 = Math.max(max2, this.f45c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0052i2).topMargin + ((ViewGroup.MarginLayoutParams) c0052i2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f45c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.j || !z) {
            return false;
        }
        this.z.fling(0, 0, 0, (int) f2, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
        if (this.z.getFinalY() > this.f46d.getHeight()) {
            s();
            this.D.run();
        } else {
            s();
            this.C.run();
        }
        this.k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.l + i2;
        this.l = i5;
        v(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        W w;
        l lVar;
        this.E.f766a = i;
        ActionBarContainer actionBarContainer = this.f46d;
        this.l = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        s();
        InterfaceC0050h interfaceC0050h = this.y;
        if (interfaceC0050h == null || (lVar = (w = (W) interfaceC0050h).t) == null) {
            return;
        }
        lVar.a();
        w.t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f46d.getVisibility() != 0) {
            return false;
        }
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.j && !this.k) {
            if (this.l <= this.f46d.getHeight()) {
                s();
                postDelayed(this.C, 600L);
            } else {
                s();
                postDelayed(this.D, 600L);
            }
        }
        InterfaceC0050h interfaceC0050h = this.y;
        if (interfaceC0050h != null) {
            Objects.requireNonNull((W) interfaceC0050h);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        u();
        int i2 = this.m ^ i;
        this.m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        InterfaceC0050h interfaceC0050h = this.y;
        if (interfaceC0050h != null) {
            ((W) interfaceC0050h).p = !z2;
            if (z || !z2) {
                W w = (W) this.y;
                if (w.q) {
                    w.q = false;
                    w.n(true);
                }
            } else {
                W w2 = (W) interfaceC0050h;
                if (!w2.q) {
                    w2.q = true;
                    w2.n(true);
                }
            }
        }
        if ((i2 & 256) == 0 || this.y == null) {
            return;
        }
        q.B(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f44b = i;
        InterfaceC0050h interfaceC0050h = this.y;
        if (interfaceC0050h != null) {
            ((W) interfaceC0050h).o = i;
        }
    }

    @Override // b.e.i.g
    public void p(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // b.e.i.g
    public boolean q(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(android.view.View r2, android.graphics.Rect r3, boolean r4, boolean r5, boolean r6, boolean r7) {
        /*
            r1 = this;
            android.view.ViewGroup$LayoutParams r1 = r2.getLayoutParams()
            b.b.g.i r1 = (b.b.g.C0052i) r1
            r2 = 1
            if (r4 == 0) goto L13
            int r4 = r1.leftMargin
            int r0 = r3.left
            if (r4 == r0) goto L13
            r1.leftMargin = r0
            r4 = r2
            goto L14
        L13:
            r4 = 0
        L14:
            if (r5 == 0) goto L1f
            int r5 = r1.topMargin
            int r0 = r3.top
            if (r5 == r0) goto L1f
            r1.topMargin = r0
            r4 = r2
        L1f:
            if (r7 == 0) goto L2a
            int r5 = r1.rightMargin
            int r7 = r3.right
            if (r5 == r7) goto L2a
            r1.rightMargin = r7
            r4 = r2
        L2a:
            if (r6 == 0) goto L35
            int r5 = r1.bottomMargin
            int r3 = r3.bottom
            if (r5 == r3) goto L35
            r1.bottomMargin = r3
            goto L36
        L35:
            r2 = r4
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.r(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    public void s() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public final void t(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(F);
        this.f43a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.g = context.getApplicationInfo().targetSdkVersion < 19;
        this.z = new OverScroller(context);
    }

    public void u() {
        InterfaceC0053i0 interfaceC0053i0;
        if (this.f45c == null) {
            this.f45c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f46d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof InterfaceC0053i0) {
                interfaceC0053i0 = (InterfaceC0053i0) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    StringBuilder f = a.f("Can't make a decor toolbar out of ");
                    f.append(findViewById.getClass().getSimpleName());
                    throw new IllegalStateException(f.toString());
                }
                Toolbar toolbar = (Toolbar) findViewById;
                if (toolbar.I == null) {
                    toolbar.I = new k1(toolbar, true);
                }
                interfaceC0053i0 = toolbar.I;
            }
            this.e = interfaceC0053i0;
        }
    }

    public void v(int i) {
        s();
        this.f46d.setTranslationY(-Math.max(0, Math.min(i, this.f46d.getHeight())));
    }

    public void w(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (z) {
                return;
            }
            s();
            v(0);
        }
    }

    public void x() {
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44b = 0;
        this.n = new Rect();
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        D d2 = D.f743b;
        this.u = d2;
        this.v = d2;
        this.w = d2;
        this.x = d2;
        this.B = new C0044e(this);
        this.C = new RunnableC0046f(this);
        this.D = new RunnableC0048g(this);
        t(context);
        this.E = new i();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0052i(layoutParams);
    }
}
