package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.appbar.AppBarLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0098Af;
import defpackage.C0154Cr;
import defpackage.C0222Ft;
import defpackage.C0315Kc;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0762be;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C2805gL;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3902w8;
import defpackage.C3961x8;
import defpackage.Cpublic;
import defpackage.InterfaceC0136Bv;
import defpackage.O2;
import defpackage.QK;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: break, reason: not valid java name */
    public int f10414break;

    /* renamed from: case, reason: not valid java name */
    public final int f10415case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final boolean f10416case;

    /* renamed from: catch, reason: not valid java name */
    public int f10417catch;

    /* renamed from: class, reason: not valid java name */
    public int f10418class;

    /* renamed from: const, reason: not valid java name */
    public int f10419const;

    /* renamed from: do, reason: not valid java name */
    public final long f10420do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f10421do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f10422do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f10423do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10424do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f10425do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewGroup f10426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f10427do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3150jM f10428do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3902w8 f10429do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10430do;

    /* renamed from: else, reason: not valid java name */
    public final int f10431else;

    /* renamed from: for, reason: not valid java name */
    public final int f10432for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10433for;

    /* renamed from: goto, reason: not valid java name */
    public int f10434goto;

    /* renamed from: if, reason: not valid java name */
    public final TimeInterpolator f10435if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f10436if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public View f10437if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f10438if;

    /* renamed from: new, reason: not valid java name */
    public final int f10439new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f10440new;

    /* renamed from: this, reason: not valid java name */
    public final int f10441this;

    /* renamed from: try, reason: not valid java name */
    public final int f10442try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f10443try;

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$do, reason: invalid class name */
    public class Cdo implements InterfaceC0136Bv {
        public Cdo() {
        }

        @Override // defpackage.InterfaceC0136Bv
        /* renamed from: for */
        public final C3150jM mo137for(View view, C3150jM c3150jM) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.getClass();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            C3150jM c3150jM2 = collapsingToolbarLayout.getFitsSystemWindows() ? c3150jM : null;
            if (!Objects.equals(collapsingToolbarLayout.f10428do, c3150jM2)) {
                collapsingToolbarLayout.f10428do = c3150jM2;
                collapsingToolbarLayout.requestLayout();
            }
            return c3150jM.f13676do.mo7081for();
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$if, reason: invalid class name */
    public class Cif implements AppBarLayout.Cif {
        public Cif() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.Cif
        /* renamed from: do */
        public final void mo5647do(int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f10414break = i;
            C3150jM c3150jM = collapsingToolbarLayout.f10428do;
            int m7063try = c3150jM != null ? c3150jM.m7063try() : 0;
            int childCount = collapsingToolbarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = collapsingToolbarLayout.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                C2805gL m5649for = CollapsingToolbarLayout.m5649for(childAt);
                int i3 = layoutParams.f10445do;
                if (i3 == 1) {
                    m5649for.m6725if(C0315Kc.m1182throw(-i, 0, ((collapsingToolbarLayout.getHeight() - CollapsingToolbarLayout.m5649for(childAt).f13152do) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).bottomMargin));
                } else if (i3 == 2) {
                    m5649for.m6725if(Math.round((-i) * layoutParams.f10444do));
                }
            }
            collapsingToolbarLayout.m5655try();
            if (collapsingToolbarLayout.f10436if != null && m7063try > 0) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                collapsingToolbarLayout.postInvalidateOnAnimation();
            }
            int height = collapsingToolbarLayout.getHeight();
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            int minimumHeight = (height - collapsingToolbarLayout.getMinimumHeight()) - m7063try;
            float m5653if = height - collapsingToolbarLayout.m5653if();
            float f = minimumHeight;
            float min = Math.min(1.0f, m5653if / f);
            C3902w8 c3902w8 = collapsingToolbarLayout.f10429do;
            c3902w8.f16246if = min;
            c3902w8.f16239for = Cpublic.m7823for(1.0f, min, 0.5f, min);
            c3902w8.f16218do = collapsingToolbarLayout.f10414break + minimumHeight;
            c3902w8.m8552super(Math.abs(i) / f);
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    /* renamed from: for, reason: not valid java name */
    public static C2805gL m5649for(View view) {
        C2805gL c2805gL = (C2805gL) view.getTag(R.id.view_offset_helper);
        if (c2805gL != null) {
            return c2805gL;
        }
        C2805gL c2805gL2 = new C2805gL(view);
        view.setTag(R.id.view_offset_helper, c2805gL2);
        return c2805gL2;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5650case(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int i5;
        int i6;
        int i7;
        int i8;
        if (!this.f10438if || (view = this.f10437if) == null) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z2 = false;
        boolean z3 = view.isAttachedToWindow() && this.f10437if.getVisibility() == 0;
        this.f10433for = z3;
        if (z3 || z) {
            boolean z4 = getLayoutDirection() == 1;
            View view2 = this.f10425do;
            if (view2 == null) {
                view2 = this.f10426do;
            }
            int height = ((getHeight() - m5649for(view2).f13152do) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view2.getLayoutParams())).bottomMargin;
            View view3 = this.f10437if;
            Rect rect = this.f10423do;
            C0762be.m4845do(this, view3, rect);
            ViewGroup viewGroup = this.f10426do;
            if (viewGroup instanceof Toolbar) {
                Toolbar toolbar = (Toolbar) viewGroup;
                i6 = toolbar.f5946goto;
                i7 = toolbar.f5955this;
                i8 = toolbar.f5911break;
                i5 = toolbar.f5913catch;
            } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
            } else {
                android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                i6 = toolbar2.getTitleMarginStart();
                i7 = toolbar2.getTitleMarginEnd();
                i8 = toolbar2.getTitleMarginTop();
                i5 = toolbar2.getTitleMarginBottom();
            }
            int i9 = rect.left + (z4 ? i7 : i6);
            int i10 = rect.top + height + i8;
            int i11 = rect.right;
            if (!z4) {
                i6 = i7;
            }
            int i12 = i11 - i6;
            int i13 = (rect.bottom + height) - i5;
            C3902w8 c3902w8 = this.f10429do;
            Rect rect2 = c3902w8.f16251if;
            if (!(rect2.left == i9 && rect2.top == i10 && rect2.right == i12 && rect2.bottom == i13)) {
                rect2.set(i9, i10, i12, i13);
                c3902w8.f16262new = true;
            }
            int i14 = this.f10415case;
            int i15 = this.f10439new;
            int i16 = z4 ? i14 : i15;
            int i17 = rect.top + this.f10442try;
            int i18 = i3 - i;
            if (z4) {
                i14 = i15;
            }
            int i19 = i18 - i14;
            int i20 = (i4 - i2) - this.f10431else;
            Rect rect3 = c3902w8.f16223do;
            if (rect3.left == i16 && rect3.top == i17 && rect3.right == i19 && rect3.bottom == i20) {
                z2 = true;
            }
            if (!z2) {
                rect3.set(i16, i17, i19, i20);
                c3902w8.f16262new = true;
            }
            c3902w8.m8553this(z);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5651do() {
        View view;
        if (this.f10430do) {
            ViewGroup viewGroup = null;
            this.f10426do = null;
            this.f10425do = null;
            int i = this.f10432for;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.f10426do = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view2 = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view2 = (View) parent;
                        }
                        parent = parent.getParent();
                        view2 = view2;
                    }
                    this.f10425do = view2;
                }
            }
            if (this.f10426do == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.f10426do = viewGroup;
            }
            boolean z = this.f10438if;
            if (!z && (view = this.f10437if) != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(this.f10437if);
                }
            }
            if (z && this.f10426do != null) {
                if (this.f10437if == null) {
                    this.f10437if = new View(getContext());
                }
                if (this.f10437if.getParent() == null) {
                    this.f10426do.addView(this.f10437if, -1, -1);
                }
            }
            this.f10430do = false;
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m5651do();
        if (this.f10426do == null && (drawable = this.f10424do) != null && this.f10434goto > 0) {
            drawable.mutate().setAlpha(this.f10434goto);
            this.f10424do.draw(canvas);
        }
        if (this.f10438if && this.f10433for) {
            ViewGroup viewGroup = this.f10426do;
            C3902w8 c3902w8 = this.f10429do;
            if (viewGroup != null && this.f10424do != null && this.f10434goto > 0) {
                if ((this.f10417catch == 1) && c3902w8.f16217do < c3902w8.f16239for) {
                    int save = canvas.save();
                    canvas.clipRect(this.f10424do.getBounds(), Region.Op.DIFFERENCE);
                    c3902w8.m8551new(canvas);
                    canvas.restoreToCount(save);
                }
            }
            c3902w8.m8551new(canvas);
        }
        if (this.f10436if == null || this.f10434goto <= 0) {
            return;
        }
        C3150jM c3150jM = this.f10428do;
        int m7063try = c3150jM != null ? c3150jM.m7063try() : 0;
        if (m7063try > 0) {
            this.f10436if.setBounds(0, -this.f10414break, getWidth(), m7063try - this.f10414break);
            this.f10436if.mutate().setAlpha(this.f10434goto);
            this.f10436if.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0018, code lost:
    
        r3 = true;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            android.graphics.drawable.Drawable r0 = r6.f10424do
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L4d
            int r3 = r6.f10434goto
            if (r3 <= 0) goto L4d
            android.view.View r3 = r6.f10425do
            if (r3 == 0) goto L14
            if (r3 != r6) goto L11
            goto L14
        L11:
            if (r8 != r3) goto L1a
            goto L18
        L14:
            android.view.ViewGroup r3 = r6.f10426do
            if (r8 != r3) goto L1a
        L18:
            r3 = 1
            goto L1b
        L1a:
            r3 = 0
        L1b:
            if (r3 == 0) goto L4d
            int r3 = r6.getWidth()
            int r4 = r6.getHeight()
            int r5 = r6.f10417catch
            if (r5 != r2) goto L2b
            r5 = 1
            goto L2c
        L2b:
            r5 = 0
        L2c:
            if (r5 == 0) goto L38
            if (r8 == 0) goto L38
            boolean r5 = r6.f10438if
            if (r5 == 0) goto L38
            int r4 = r8.getBottom()
        L38:
            r0.setBounds(r1, r1, r3, r4)
            android.graphics.drawable.Drawable r0 = r6.f10424do
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = r6.f10434goto
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r6.f10424do
            r0.draw(r7)
            r0 = 1
            goto L4e
        L4d:
            r0 = 0
        L4e:
            boolean r7 = super.drawChild(r7, r8, r9)
            if (r7 != 0) goto L56
            if (r0 == 0) goto L57
        L56:
            r1 = 1
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f10436if;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f10424do;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        C3902w8 c3902w8 = this.f10429do;
        if (c3902w8 != null) {
            z |= c3902w8.m8556while(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5652else() {
        boolean z;
        if (this.f10426do == null || !(z = this.f10438if)) {
            return;
        }
        C3902w8 c3902w8 = this.f10429do;
        if (TextUtils.isEmpty(c3902w8.f16230do)) {
            ViewGroup viewGroup = this.f10426do;
            CharSequence title = viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).f5950if : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null;
            if (title == null || !TextUtils.equals(c3902w8.f16230do, title)) {
                c3902w8.f16230do = title;
                c3902w8.f16254if = null;
                Bitmap bitmap = c3902w8.f16222do;
                if (bitmap != null) {
                    bitmap.recycle();
                    c3902w8.f16222do = null;
                }
                c3902w8.m8553this(false);
            }
            setContentDescription(z ? c3902w8.f16230do : null);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5653if() {
        int i = this.f10441this;
        if (i >= 0) {
            return i + this.f10418class + this.f10419const;
        }
        C3150jM c3150jM = this.f10428do;
        int m7063try = c3150jM != null ? c3150jM.m7063try() : 0;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + m7063try, getHeight()) : getHeight() / 3;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5654new(Drawable drawable) {
        Drawable drawable2 = this.f10424do;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f10424do = mutate;
            if (mutate != null) {
                int width = getWidth();
                int height = getHeight();
                ViewGroup viewGroup = this.f10426do;
                if ((this.f10417catch == 1) && viewGroup != null && this.f10438if) {
                    height = viewGroup.getBottom();
                }
                mutate.setBounds(0, 0, width, height);
                this.f10424do.setCallback(this);
                this.f10424do.setAlpha(this.f10434goto);
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f10417catch == 1) {
                appBarLayout.f10392new = false;
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            if (this.f10427do == null) {
                this.f10427do = new Cif();
            }
            Cif cif = this.f10427do;
            if (appBarLayout.f10382do == null) {
                appBarLayout.f10382do = new ArrayList();
            }
            if (cif != null && !appBarLayout.f10382do.contains(cif)) {
                appBarLayout.f10382do.add(cif);
            }
            QK.Cfor.m1903for(this);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f10429do.m8549goto(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ArrayList arrayList;
        ViewParent parent = getParent();
        Cif cif = this.f10427do;
        if (cif != null && (parent instanceof AppBarLayout) && (arrayList = ((AppBarLayout) parent).f10382do) != null) {
            arrayList.remove(cif);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C3150jM c3150jM = this.f10428do;
        if (c3150jM != null) {
            int m7063try = c3150jM.m7063try();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < m7063try) {
                    QK.m1850const(childAt, m7063try);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            C2805gL m5649for = m5649for(getChildAt(i6));
            View view = m5649for.f13153do;
            m5649for.f13152do = view.getTop();
            m5649for.f13155if = view.getLeft();
        }
        m5650case(false, i, i2, i3, i4);
        m5652else();
        m5655try();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m5649for(getChildAt(i7)).m6724do();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        int measuredHeight2;
        m5651do();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        C3150jM c3150jM = this.f10428do;
        int m7063try = c3150jM != null ? c3150jM.m7063try() : 0;
        if ((mode == 0 || this.f10443try) && m7063try > 0) {
            this.f10418class = m7063try;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + m7063try, 1073741824));
        }
        if (this.f10416case) {
            C3902w8 c3902w8 = this.f10429do;
            if (c3902w8.f16211case > 1) {
                m5652else();
                m5650case(true, 0, 0, getMeasuredWidth(), getMeasuredHeight());
                int i3 = c3902w8.f16259new;
                if (i3 > 1) {
                    TextPaint textPaint = c3902w8.f16253if;
                    textPaint.setTextSize(c3902w8.f16258new);
                    textPaint.setTypeface(c3902w8.f16261new);
                    textPaint.setLetterSpacing(c3902w8.f16272throws);
                    this.f10419const = (i3 - 1) * Math.round(textPaint.descent() + (-textPaint.ascent()));
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f10419const, 1073741824));
                }
            }
        }
        ViewGroup viewGroup = this.f10426do;
        if (viewGroup != null) {
            View view = this.f10425do;
            if (view == null || view == this) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredHeight = viewGroup.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    measuredHeight = viewGroup.getMeasuredHeight();
                }
                setMinimumHeight(measuredHeight);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                measuredHeight2 = view.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            } else {
                measuredHeight2 = view.getMeasuredHeight();
            }
            setMinimumHeight(measuredHeight2);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f10424do;
        if (drawable != null) {
            ViewGroup viewGroup = this.f10426do;
            if ((this.f10417catch == 1) && viewGroup != null && this.f10438if) {
                i2 = viewGroup.getBottom();
            }
            drawable.setBounds(0, 0, i, i2);
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f10436if;
        if (drawable != null && drawable.isVisible() != z) {
            this.f10436if.setVisible(z, false);
        }
        Drawable drawable2 = this.f10424do;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f10424do.setVisible(z, false);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5655try() {
        ViewGroup viewGroup;
        if (this.f10424do == null && this.f10436if == null) {
            return;
        }
        boolean z = getHeight() + this.f10414break < m5653if();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z2 = isLaidOut() && !isInEditMode();
        if (this.f10440new != z) {
            if (z2) {
                int i = z ? 255 : 0;
                m5651do();
                ValueAnimator valueAnimator = this.f10422do;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f10422do = valueAnimator2;
                    valueAnimator2.setInterpolator(i > this.f10434goto ? this.f10421do : this.f10435if);
                    this.f10422do.addUpdateListener(new C3961x8(this));
                } else if (valueAnimator.isRunning()) {
                    this.f10422do.cancel();
                }
                this.f10422do.setDuration(this.f10420do);
                this.f10422do.setIntValues(this.f10434goto, i);
                this.f10422do.start();
            } else {
                int i2 = z ? 255 : 0;
                if (i2 != this.f10434goto) {
                    if (this.f10424do != null && (viewGroup = this.f10426do) != null) {
                        viewGroup.postInvalidateOnAnimation();
                    }
                    this.f10434goto = i2;
                    postInvalidateOnAnimation();
                }
            }
            this.f10440new = z;
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f10424do || drawable == this.f10436if;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Design_CollapsingToolbar), attributeSet, i);
        int i2;
        ColorStateList m3071if;
        ColorStateList m3071if2;
        this.f10430do = true;
        this.f10423do = new Rect();
        this.f10441this = -1;
        this.f10418class = 0;
        this.f10419const = 0;
        Context context2 = getContext();
        C3902w8 c3902w8 = new C3902w8(this);
        this.f10429do = c3902w8;
        c3902w8.f16249if = C2785g1.f13027do;
        c3902w8.m8553this(false);
        c3902w8.f16244for = false;
        C0098Af c0098Af = new C0098Af(context2);
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2512super, i, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        int i3 = m3115new.getInt(4, 8388691);
        if (c3902w8.f16247if != i3) {
            c3902w8.f16247if = i3;
            c3902w8.m8553this(false);
        }
        int i4 = m3115new.getInt(0, 8388627);
        if (c3902w8.f16240for != i4) {
            c3902w8.f16240for = i4;
            c3902w8.m8553this(false);
        }
        int dimensionPixelSize = m3115new.getDimensionPixelSize(5, 0);
        this.f10431else = dimensionPixelSize;
        this.f10415case = dimensionPixelSize;
        this.f10442try = dimensionPixelSize;
        this.f10439new = dimensionPixelSize;
        if (m3115new.hasValue(8)) {
            this.f10439new = m3115new.getDimensionPixelSize(8, 0);
        }
        if (m3115new.hasValue(7)) {
            this.f10415case = m3115new.getDimensionPixelSize(7, 0);
        }
        if (m3115new.hasValue(9)) {
            this.f10442try = m3115new.getDimensionPixelSize(9, 0);
        }
        if (m3115new.hasValue(6)) {
            this.f10431else = m3115new.getDimensionPixelSize(6, 0);
        }
        boolean z = m3115new.getBoolean(20, true);
        this.f10438if = z;
        CharSequence text = m3115new.getText(18);
        ColorStateList colorStateList = null;
        if (text == null || !TextUtils.equals(c3902w8.f16230do, text)) {
            c3902w8.f16230do = text;
            c3902w8.f16254if = null;
            Bitmap bitmap = c3902w8.f16222do;
            if (bitmap != null) {
                bitmap.recycle();
                c3902w8.f16222do = null;
            }
            c3902w8.m8553this(false);
        }
        setContentDescription(z ? c3902w8.f16230do : null);
        c3902w8.m8546const(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        c3902w8.m8544catch(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (m3115new.hasValue(10)) {
            c3902w8.m8546const(m3115new.getResourceId(10, 0));
        }
        if (m3115new.hasValue(1)) {
            c3902w8.m8544catch(m3115new.getResourceId(1, 0));
        }
        if (m3115new.hasValue(22)) {
            int i5 = m3115new.getInt(22, -1);
            c3902w8.f16228do = i5 != 0 ? i5 != 1 ? i5 != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.MIDDLE : TextUtils.TruncateAt.START;
            c3902w8.m8553this(false);
        }
        if (m3115new.hasValue(11) && c3902w8.f16221do != (m3071if2 = C0659Zr.m3071if(context2, m3115new, 11))) {
            c3902w8.f16221do = m3071if2;
            c3902w8.m8553this(false);
        }
        if (m3115new.hasValue(2) && c3902w8.f16250if != (m3071if = C0659Zr.m3071if(context2, m3115new, 2))) {
            c3902w8.f16250if = m3071if;
            c3902w8.m8553this(false);
        }
        this.f10441this = m3115new.getDimensionPixelSize(16, -1);
        if (m3115new.hasValue(14) && (i2 = m3115new.getInt(14, 1)) != c3902w8.f16211case) {
            c3902w8.f16211case = i2;
            Bitmap bitmap2 = c3902w8.f16222do;
            if (bitmap2 != null) {
                bitmap2.recycle();
                c3902w8.f16222do = null;
            }
            c3902w8.m8553this(false);
        }
        if (m3115new.hasValue(21)) {
            c3902w8.f16220do = AnimationUtils.loadInterpolator(context2, m3115new.getResourceId(21, 0));
            c3902w8.m8553this(false);
        }
        this.f10420do = m3115new.getInt(15, 600);
        this.f10421do = C0222Ft.m651new(context2, R.attr.motionEasingStandardInterpolator, C2785g1.f13025do);
        this.f10435if = C0222Ft.m651new(context2, R.attr.motionEasingStandardInterpolator, C2785g1.f13029do);
        m5654new(m3115new.getDrawable(3));
        Drawable drawable = m3115new.getDrawable(17);
        Drawable drawable2 = this.f10436if;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f10436if = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f10436if.setState(getDrawableState());
                }
                Drawable drawable3 = this.f10436if;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                C0426Pe.m1778for(drawable3, getLayoutDirection());
                this.f10436if.setVisible(getVisibility() == 0, false);
                this.f10436if.setCallback(this);
                this.f10436if.setAlpha(this.f10434goto);
            }
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            postInvalidateOnAnimation();
        }
        int i6 = m3115new.getInt(19, 0);
        this.f10417catch = i6;
        boolean z2 = i6 == 1;
        c3902w8.f16231do = z2;
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f10417catch == 1) {
                appBarLayout.f10392new = false;
            }
        }
        if (z2 && this.f10424do == null) {
            Context context3 = getContext();
            TypedValue m304do = C0154Cr.m304do(context3, R.attr.colorSurfaceContainer);
            if (m304do != null) {
                int i7 = m304do.resourceId;
                if (i7 != 0) {
                    colorStateList = C0466Ra.getColorStateList(context3, i7);
                } else {
                    int i8 = m304do.data;
                    if (i8 != 0) {
                        colorStateList = ColorStateList.valueOf(i8);
                    }
                }
            }
            m5654new(new ColorDrawable(colorStateList != null ? colorStateList.getDefaultColor() : c0098Af.m82do(getResources().getDimension(R.dimen.design_appbar_elevation), c0098Af.f118for)));
        }
        this.f10432for = m3115new.getResourceId(23, -1);
        this.f10443try = m3115new.getBoolean(13, false);
        this.f10416case = m3115new.getBoolean(12, false);
        m3115new.recycle();
        setWillNotDraw(false);
        Cdo cdo = new Cdo();
        WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
        QK.Cnew.m1935return(this, cdo);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        public float f10444do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f10445do;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10445do = 0;
            this.f10444do = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2516throw);
            this.f10445do = obtainStyledAttributes.getInt(0, 0);
            this.f10444do = obtainStyledAttributes.getFloat(1, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams() {
            super(-1, -1);
            this.f10445do = 0;
            this.f10444do = 0.5f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10445do = 0;
            this.f10444do = 0.5f;
        }
    }
}
