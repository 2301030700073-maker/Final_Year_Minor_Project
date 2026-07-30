package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.recyclerview.widget.RecyclerView;
import b.b.f.m.B;
import b.b.f.m.E;
import b.b.f.m.m;
import b.b.f.m.n;
import b.b.f.m.o;
import b.b.g.C0069q0;
import b.b.g.C0070r0;
import b.b.g.C0073t;
import b.b.g.C0075u;
import b.b.g.C0077v;
import b.b.g.InterfaceC0071s;
import b.b.g.b1;
import b.b.g.m1;
import b.b.g.r;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class ActionMenuView extends C0070r0 implements n, E {
    public b1 A;
    public o p;
    public Context q;
    public int r;
    public boolean s;
    public r t;
    public B u;
    public m v;
    public boolean w;
    public int x;
    public int y;
    public int z;

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public static int v(View view, int i, int i2, int i3, int i4) {
        C0075u c0075u = (C0075u) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = false;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.f();
        int i5 = 2;
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, RecyclerView.UNDEFINED_DURATION), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z2 || i6 >= 2) {
                i5 = i6;
            }
        }
        if (!c0075u.f583c && z2) {
            z = true;
        }
        c0075u.f = z;
        c0075u.f584d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    @Override // b.b.f.m.n
    public boolean a(b.b.f.m.r rVar) {
        return this.p.r(rVar, null, 0);
    }

    @Override // b.b.f.m.E
    public void b(o oVar) {
        this.p = oVar;
    }

    @Override // b.b.g.C0070r0, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0075u;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // b.b.g.C0070r0
    /* renamed from: j */
    public C0069q0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0075u(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r rVar = this.t;
        if (rVar != null) {
            rVar.j(false);
            if (this.t.m()) {
                this.t.k();
                this.t.n();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        r rVar = this.t;
        if (rVar != null) {
            rVar.b();
        }
    }

    @Override // b.b.g.C0070r0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.w) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int i7 = this.l;
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean b2 = m1.b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0075u c0075u = (C0075u) childAt.getLayoutParams();
                if (c0075u.f583c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (u(i11)) {
                        measuredWidth += i7;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b2) {
                        i5 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0075u).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0075u).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i12 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0075u).leftMargin) + ((ViewGroup.MarginLayoutParams) c0075u).rightMargin;
                    u(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        int max = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (b2) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                C0075u c0075u2 = (C0075u) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0075u2.f583c) {
                    int i17 = width2 - ((ViewGroup.MarginLayoutParams) c0075u2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) c0075u2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            C0075u c0075u3 = (C0075u) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0075u3.f583c) {
                int i20 = paddingLeft + ((ViewGroup.MarginLayoutParams) c0075u3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = measuredWidth4 + ((ViewGroup.MarginLayoutParams) c0075u3).rightMargin + max + i20;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    @Override // b.b.g.C0070r0, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        int i6;
        ?? r3;
        o oVar;
        boolean z3 = this.w;
        boolean z4 = View.MeasureSpec.getMode(i) == 1073741824;
        this.w = z4;
        if (z3 != z4) {
            this.x = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.w && (oVar = this.p) != null && size != this.x) {
            this.x = size;
            oVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.w || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                C0075u c0075u = (C0075u) getChildAt(i7).getLayoutParams();
                ((ViewGroup.MarginLayoutParams) c0075u).rightMargin = 0;
                ((ViewGroup.MarginLayoutParams) c0075u).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.y;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        boolean z5 = false;
        long j = 0;
        while (i17 < childCount2) {
            View childAt = getChildAt(i17);
            int i18 = size3;
            int i19 = i8;
            if (childAt.getVisibility() != 8) {
                boolean z6 = childAt instanceof ActionMenuItemView;
                int i20 = i13 + 1;
                if (z6) {
                    int i21 = this.z;
                    i6 = i20;
                    r3 = 0;
                    childAt.setPadding(i21, 0, i21, 0);
                } else {
                    i6 = i20;
                    r3 = 0;
                }
                C0075u c0075u2 = (C0075u) childAt.getLayoutParams();
                c0075u2.h = r3;
                c0075u2.e = r3;
                c0075u2.f584d = r3;
                c0075u2.f = r3;
                ((ViewGroup.MarginLayoutParams) c0075u2).leftMargin = r3;
                ((ViewGroup.MarginLayoutParams) c0075u2).rightMargin = r3;
                c0075u2.g = z6 && ((ActionMenuItemView) childAt).f();
                int v = v(childAt, i12, c0075u2.f583c ? 1 : i10, childMeasureSpec, paddingBottom);
                i15 = Math.max(i15, v);
                if (c0075u2.f) {
                    i16++;
                }
                if (c0075u2.f583c) {
                    z5 = true;
                }
                i10 -= v;
                i14 = Math.max(i14, childAt.getMeasuredHeight());
                if (v == 1) {
                    j |= 1 << i17;
                }
                i13 = i6;
            }
            i17++;
            size3 = i18;
            i8 = i19;
        }
        int i22 = i8;
        int i23 = size3;
        boolean z7 = z5 && i13 == 2;
        boolean z8 = false;
        while (i16 > 0 && i10 > 0) {
            int i24 = Integer.MAX_VALUE;
            int i25 = 0;
            int i26 = 0;
            long j2 = 0;
            while (i25 < childCount2) {
                int i27 = i14;
                C0075u c0075u3 = (C0075u) getChildAt(i25).getLayoutParams();
                boolean z9 = z8;
                if (c0075u3.f) {
                    int i28 = c0075u3.f584d;
                    if (i28 < i24) {
                        j2 = 1 << i25;
                        i24 = i28;
                        i26 = 1;
                    } else if (i28 == i24) {
                        i26++;
                        j2 |= 1 << i25;
                    }
                }
                i25++;
                z8 = z9;
                i14 = i27;
            }
            i3 = i14;
            z = z8;
            j |= j2;
            if (i26 > i10) {
                break;
            }
            int i29 = i24 + 1;
            int i30 = 0;
            while (i30 < childCount2) {
                View childAt2 = getChildAt(i30);
                C0075u c0075u4 = (C0075u) childAt2.getLayoutParams();
                int i31 = i16;
                long j3 = 1 << i30;
                if ((j2 & j3) == 0) {
                    if (c0075u4.f584d == i29) {
                        j |= j3;
                    }
                    z2 = z7;
                } else {
                    if (z7 && c0075u4.g && i10 == 1) {
                        int i32 = this.z;
                        z2 = z7;
                        childAt2.setPadding(i32 + i12, 0, i32, 0);
                    } else {
                        z2 = z7;
                    }
                    c0075u4.f584d++;
                    c0075u4.h = true;
                    i10--;
                }
                i30++;
                i16 = i31;
                z7 = z2;
            }
            i14 = i3;
            z8 = true;
        }
        i3 = i14;
        z = z8;
        boolean z10 = !z5 && i13 == 1;
        if (i10 > 0 && j != 0 && (i10 < i13 - 1 || z10 || i15 > 1)) {
            float bitCount = Long.bitCount(j);
            if (!z10) {
                if ((j & 1) != 0 && !((C0075u) getChildAt(0).getLayoutParams()).g) {
                    bitCount -= 0.5f;
                }
                int i33 = childCount2 - 1;
                if ((j & (1 << i33)) != 0 && !((C0075u) getChildAt(i33).getLayoutParams()).g) {
                    bitCount -= 0.5f;
                }
            }
            int i34 = bitCount > RecentsState.NO_OFFSET ? (int) ((i10 * i12) / bitCount) : 0;
            for (int i35 = 0; i35 < childCount2; i35++) {
                if ((j & (1 << i35)) != 0) {
                    View childAt3 = getChildAt(i35);
                    C0075u c0075u5 = (C0075u) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0075u5.e = i34;
                        c0075u5.h = true;
                        if (i35 == 0 && !c0075u5.g) {
                            ((ViewGroup.MarginLayoutParams) c0075u5).leftMargin = (-i34) / 2;
                        }
                        z = true;
                    } else if (c0075u5.f583c) {
                        c0075u5.e = i34;
                        c0075u5.h = true;
                        ((ViewGroup.MarginLayoutParams) c0075u5).rightMargin = (-i34) / 2;
                        z = true;
                    } else {
                        if (i35 != 0) {
                            ((ViewGroup.MarginLayoutParams) c0075u5).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount2 - 1) {
                            ((ViewGroup.MarginLayoutParams) c0075u5).rightMargin = i34 / 2;
                        }
                    }
                }
            }
        }
        if (z) {
            for (int i36 = 0; i36 < childCount2; i36++) {
                View childAt4 = getChildAt(i36);
                C0075u c0075u6 = (C0075u) childAt4.getLayoutParams();
                if (c0075u6.h) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0075u6.f584d * i12) + c0075u6.e, 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode != 1073741824) {
            i5 = i22;
            i4 = i3;
        } else {
            i4 = i23;
            i5 = i22;
        }
        setMeasuredDimension(i5, i4);
    }

    @Override // b.b.g.C0070r0
    /* renamed from: r, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C0075u i() {
        C0075u c0075u = new C0075u(-2, -2);
        c0075u.f572b = 16;
        return c0075u;
    }

    @Override // b.b.g.C0070r0
    /* renamed from: s, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C0075u k(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        C0075u c0075u = layoutParams instanceof C0075u ? new C0075u((C0075u) layoutParams) : new C0075u(layoutParams);
        if (c0075u.f572b <= 0) {
            c0075u.f572b = 16;
        }
        return c0075u;
    }

    public Menu t() {
        if (this.p == null) {
            Context context = getContext();
            o oVar = new o(context);
            this.p = oVar;
            oVar.e = new C0077v(this);
            r rVar = new r(context);
            this.t = rVar;
            rVar.l = true;
            rVar.m = true;
            B b2 = this.u;
            if (b2 == null) {
                b2 = new C0073t();
            }
            rVar.e = b2;
            this.p.b(this.t, this.q);
            r rVar2 = this.t;
            rVar2.h = this;
            this.p = rVar2.f575c;
        }
        return this.p;
    }

    public boolean u(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0071s)) {
            z = false | ((InterfaceC0071s) childAt).a();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC0071s)) ? z : z | ((InterfaceC0071s) childAt2).c();
    }

    public void w(b1 b1Var) {
        this.A = b1Var;
    }

    public void x(int i) {
        if (this.r != i) {
            this.r = i;
            if (i == 0) {
                this.q = getContext();
            } else {
                this.q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f577a = false;
        float f = context.getResources().getDisplayMetrics().density;
        this.y = (int) (56.0f * f);
        this.z = (int) (f * 4.0f);
        this.q = context;
        this.r = 0;
    }

    @Override // b.b.g.C0070r0, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0075u(getContext(), attributeSet);
    }
}
