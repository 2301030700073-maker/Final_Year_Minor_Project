package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.Ccase;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import defpackage.AbstractC0176Dr;
import defpackage.AbstractC3848vD;
import defpackage.B4;
import defpackage.C0242Gr;
import defpackage.C0466Ra;
import defpackage.C0492Se;
import defpackage.C0624Ye;
import defpackage.C0646Ze;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0703af;
import defpackage.C0716as;
import defpackage.C2657ds;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C2952iu;
import defpackage.C3150jM;
import defpackage.C3180ju;
import defpackage.C3180ju.Cfor;
import defpackage.C3180ju.Cgoto;
import defpackage.C3385nL;
import defpackage.C3433oA;
import defpackage.C3554qD;
import defpackage.C3907wD;
import defpackage.C3966xD;
import defpackage.C3970xH;
import defpackage.C4025yD;
import defpackage.InterfaceC0198Er;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.RunnableC2852h9;
import defpackage.ViewTreeObserverOnGlobalLayoutListenerC3534pu;
import defpackage.YF;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements InterfaceC0198Er {

    /* renamed from: case, reason: not valid java name */
    public boolean f11228case;

    /* renamed from: do, reason: not valid java name */
    public final C0242Gr f11229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public YF f11230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2657ds f11232do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2952iu f11233do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3180ju f11234do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewTreeObserverOnGlobalLayoutListenerC3534pu f11235do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3848vD f11236do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f11237do;

    /* renamed from: else, reason: not valid java name */
    public final boolean f11238else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f11239for;

    /* renamed from: new, reason: not valid java name */
    public int f11240new;

    /* renamed from: try, reason: not valid java name */
    public final int f11241try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f11242try;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f11227if = {R.attr.state_checked};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f11226for = {-16842910};

    /* renamed from: com.google.android.material.navigation.NavigationView$do, reason: invalid class name */
    public class Cdo extends DrawerLayout.Ccase {
        public Cdo() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.Ctry
        /* renamed from: for */
        public final void mo4081for(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                C0242Gr c0242Gr = navigationView.f11229do;
                C0242Gr.Cdo cdo = c0242Gr.f1267do;
                if (cdo != null) {
                    cdo.m767for(c0242Gr.f1268do);
                }
                if (!navigationView.f11238else || navigationView.f11240new == 0) {
                    return;
                }
                navigationView.f11240new = 0;
                navigationView.m5850this(navigationView.getWidth(), navigationView.getHeight());
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.Ctry
        /* renamed from: if */
        public final void mo4082if(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                C0242Gr c0242Gr = navigationView.f11229do;
                Objects.requireNonNull(c0242Gr);
                view.post(new RunnableC2852h9(c0242Gr, 6));
            }
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$if, reason: invalid class name */
    public class Cif implements Ccase.Cdo {
        public Cif() {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(Ccase ccase) {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
            NavigationView.this.getClass();
            return false;
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.navigationViewStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public final Pair<DrawerLayout, DrawerLayout.LayoutParams> m5847break() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair<>((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        AbstractC3848vD abstractC3848vD = this.f11236do;
        if (abstractC3848vD.mo8442if()) {
            Path path = abstractC3848vD.f16034do;
            if (!path.isEmpty()) {
                canvas.save();
                canvas.clipPath(path);
                super.dispatchDraw(canvas);
                canvas.restore();
                return;
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: do */
    public final void mo504do(B4 b4) {
        m5847break();
        ((AbstractC0176Dr) this.f11232do).f689do = b4;
    }

    /* renamed from: else, reason: not valid java name */
    public final ColorStateList m5848else(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = C0466Ra.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(com.joeykrim.rootcheck.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f11226for;
        return new ColorStateList(new int[][]{iArr, f11227if, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    /* renamed from: for */
    public final void mo5842for(C3150jM c3150jM) {
        C3180ju c3180ju = this.f11234do;
        c3180ju.getClass();
        int m7063try = c3150jM.m7063try();
        if (c3180ju.f13839super != m7063try) {
            c3180ju.f13839super = m7063try;
            c3180ju.m7174do();
        }
        NavigationMenuView navigationMenuView = c3180ju.f13826do;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, c3150jM.m7061if());
        QK.m1856if(c3180ju.f13824do, c3150jM);
    }

    /* renamed from: goto, reason: not valid java name */
    public final InsetDrawable m5849goto(C3970xH c3970xH, ColorStateList colorStateList) {
        C0716as c0716as = new C0716as(new C3554qD(C3554qD.m7858do(getContext(), c3970xH.m8638this(17, 0), c3970xH.m8638this(18, 0))));
        c0716as.m4778super(colorStateList);
        return new InsetDrawable((Drawable) c0716as, c3970xH.m8637new(22, 0), c3970xH.m8637new(23, 0), c3970xH.m8637new(21, 0), c3970xH.m8637new(20, 0));
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: if */
    public final void mo505if() {
        Pair<DrawerLayout, DrawerLayout.LayoutParams> m5847break = m5847break();
        DrawerLayout drawerLayout = (DrawerLayout) m5847break.first;
        C2657ds c2657ds = this.f11232do;
        B4 b4 = ((AbstractC0176Dr) c2657ds).f689do;
        ((AbstractC0176Dr) c2657ds).f689do = null;
        if (b4 == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.m4070if(this, true);
            return;
        }
        int i = ((DrawerLayout.LayoutParams) m5847break.second).f6730do;
        int i2 = C0703af.f4980do;
        c2657ds.m6468if(b4, i, new C0646Ze(drawerLayout, this), new C0624Ye(drawerLayout, 0));
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: new */
    public final void mo506new() {
        m5847break();
        this.f11232do.m6466do();
        if (!this.f11238else || this.f11240new == 0) {
            return;
        }
        this.f11240new = 0;
        m5850this(getWidth(), getHeight());
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            C0242Gr c0242Gr = this.f11229do;
            if (c0242Gr.f1267do != null) {
                DrawerLayout drawerLayout = (DrawerLayout) parent;
                Cdo cdo = this.f11231do;
                if (cdo == null) {
                    drawerLayout.getClass();
                } else {
                    ArrayList arrayList = drawerLayout.f6712do;
                    if (arrayList != null) {
                        arrayList.remove(cdo);
                    }
                }
                if (cdo != null) {
                    if (drawerLayout.f6712do == null) {
                        drawerLayout.f6712do = new ArrayList();
                    }
                    drawerLayout.f6712do.add(cdo);
                }
                if (DrawerLayout.m4060catch(this)) {
                    c0242Gr.m765do(true);
                }
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f11235do);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            Cdo cdo = this.f11231do;
            if (cdo == null) {
                drawerLayout.getClass();
                return;
            }
            ArrayList arrayList = drawerLayout.f6712do;
            if (arrayList == null) {
                return;
            }
            arrayList.remove(cdo);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int i3 = this.f11239for;
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), i3), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        this.f11233do.m3339public(savedState.f11243do);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f11243do = bundle;
        this.f11233do.m3341static(bundle);
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m5850this(i, i2);
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        O4.m1619protected(this, f);
    }

    @Override // android.view.View
    public final void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        C3180ju c3180ju = this.f11234do;
        if (c3180ju != null) {
            c3180ju.f13843while = i;
            NavigationMenuView navigationMenuView = c3180ju.f13826do;
            if (navigationMenuView != null) {
                navigationMenuView.setOverScrollMode(i);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5850this(int i, int i2) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
            if ((this.f11240new > 0 || this.f11238else) && (getBackground() instanceof C0716as)) {
                int i3 = ((DrawerLayout.LayoutParams) getLayoutParams()).f6730do;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                boolean z = Gravity.getAbsoluteGravity(i3, getLayoutDirection()) == 3;
                C0716as c0716as = (C0716as) getBackground();
                C3554qD c3554qD = c0716as.f8253do.f8278do;
                c3554qD.getClass();
                C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
                cdo.m7868if(this.f11240new);
                if (z) {
                    cdo.m7870try(0.0f);
                    cdo.m7867for(0.0f);
                } else {
                    cdo.m7866case(0.0f);
                    cdo.m7869new(0.0f);
                }
                C3554qD c3554qD2 = new C3554qD(cdo);
                c0716as.mo4768do(c3554qD2);
                AbstractC3848vD abstractC3848vD = this.f11236do;
                abstractC3848vD.f16036do = c3554qD2;
                abstractC3848vD.m8441for();
                abstractC3848vD.mo8440do(this);
                abstractC3848vD.f16035do = new RectF(0.0f, 0.0f, i, i2);
                abstractC3848vD.m8441for();
                abstractC3848vD.mo8440do(this);
                abstractC3848vD.f16038if = true;
                abstractC3848vD.mo8440do(this);
            }
        }
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: try */
    public final void mo507try(B4 b4) {
        int i = ((DrawerLayout.LayoutParams) m5847break().second).f6730do;
        C2657ds c2657ds = this.f11232do;
        B4 b42 = ((AbstractC0176Dr) c2657ds).f689do;
        ((AbstractC0176Dr) c2657ds).f689do = b4;
        float f = b4.f200for;
        if (b42 != null) {
            c2657ds.m6467for(f, i, b4.f199do == 0);
        }
        if (this.f11238else) {
            this.f11240new = C2785g1.m6710if(((AbstractC0176Dr) c2657ds).f690do.getInterpolation(f), 0, this.f11241try);
            m5850this(getWidth(), getHeight());
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public Bundle f11243do;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11243do = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeBundle(this.f11243do);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_Design_NavigationView), attributeSet, i);
        int m8637new;
        C3180ju c3180ju = new C3180ju();
        this.f11234do = c3180ju;
        this.f11237do = new int[2];
        this.f11242try = true;
        this.f11228case = true;
        this.f11240new = 0;
        int i2 = Build.VERSION.SDK_INT;
        this.f11236do = i2 >= 33 ? new C4025yD(this) : i2 >= 22 ? new C3966xD(this) : new C3907wD();
        this.f11232do = new C2657ds(this);
        this.f11229do = new C0242Gr(this);
        this.f11231do = new Cdo();
        Context context2 = getContext();
        C2952iu c2952iu = new C2952iu(context2);
        this.f11233do = c2952iu;
        C3970xH m3116try = C0682aH.m3116try(context2, attributeSet, O2.c, i, com.joeykrim.rootcheck.R.style.Widget_Design_NavigationView, new int[0]);
        if (m3116try.m8630class(1)) {
            Drawable m8639try = m3116try.m8639try(1);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setBackground(m8639try);
        }
        int m8637new2 = m3116try.m8637new(7, 0);
        this.f11240new = m8637new2;
        this.f11238else = m8637new2 == 0;
        this.f11241try = getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList m2176new = C0492Se.m2176new(background);
        if (background == null || m2176new != null) {
            C0716as c0716as = new C0716as(new C3554qD(C3554qD.m7859for(context2, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_Design_NavigationView)));
            if (m2176new != null) {
                c0716as.m4778super(m2176new);
            }
            c0716as.m4766class(context2);
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            setBackground(c0716as);
        }
        if (m3116try.m8630class(8)) {
            setElevation(m3116try.m8637new(8, 0));
        }
        setFitsSystemWindows(m3116try.m8631do(2, false));
        this.f11239for = m3116try.m8637new(3, 0);
        ColorStateList m8636if = m3116try.m8630class(31) ? m3116try.m8636if(31) : null;
        int m8638this = m3116try.m8630class(34) ? m3116try.m8638this(34, 0) : 0;
        if (m8638this == 0 && m8636if == null) {
            m8636if = m5848else(R.attr.textColorSecondary);
        }
        ColorStateList m8636if2 = m3116try.m8630class(14) ? m3116try.m8636if(14) : m5848else(R.attr.textColorSecondary);
        int m8638this2 = m3116try.m8630class(24) ? m3116try.m8638this(24, 0) : 0;
        boolean m8631do = m3116try.m8631do(25, true);
        if (m3116try.m8630class(13) && c3180ju.f13840this != (m8637new = m3116try.m8637new(13, 0))) {
            c3180ju.f13840this = m8637new;
            c3180ju.f13837if = true;
            c3180ju.mo3321new(false);
        }
        ColorStateList m8636if3 = m3116try.m8630class(26) ? m3116try.m8636if(26) : null;
        if (m8638this2 == 0 && m8636if3 == null) {
            m8636if3 = m5848else(R.attr.textColorPrimary);
        }
        Drawable m8639try2 = m3116try.m8639try(10);
        if (m8639try2 == null) {
            if (m3116try.m8630class(17) || m3116try.m8630class(18)) {
                m8639try2 = m5849goto(m3116try, C0659Zr.m3069do(getContext(), m3116try, 19));
                ColorStateList m3069do = C0659Zr.m3069do(context2, m3116try, 16);
                if (m3069do != null) {
                    c3180ju.f13822do = new RippleDrawable(C3433oA.m7696for(m3069do), null, m5849goto(m3116try, null));
                    c3180ju.mo3321new(false);
                }
            }
        }
        if (m3116try.m8630class(11)) {
            c3180ju.f13816case = m3116try.m8637new(11, 0);
            c3180ju.mo3321new(false);
        }
        if (m3116try.m8630class(27)) {
            c3180ju.f13830else = m3116try.m8637new(27, 0);
            c3180ju.mo3321new(false);
        }
        c3180ju.f13815break = m3116try.m8637new(6, 0);
        c3180ju.mo3321new(false);
        c3180ju.f13817catch = m3116try.m8637new(5, 0);
        c3180ju.mo3321new(false);
        c3180ju.f13818class = m3116try.m8637new(33, 0);
        c3180ju.mo3321new(false);
        c3180ju.f13819const = m3116try.m8637new(32, 0);
        c3180ju.mo3321new(false);
        this.f11242try = m3116try.m8631do(35, this.f11242try);
        this.f11228case = m3116try.m8631do(4, this.f11228case);
        int m8637new3 = m3116try.m8637new(12, 0);
        c3180ju.f13831final = m3116try.m8635goto(15, 1);
        c3180ju.mo3321new(false);
        ((Ccase) c2952iu).f5407do = new Cif();
        c3180ju.f13832for = 1;
        c3180ju.mo980else(context2, c2952iu);
        if (m8638this != 0) {
            c3180ju.f13838new = m8638this;
            c3180ju.mo3321new(false);
        }
        c3180ju.f13820do = m8636if;
        c3180ju.mo3321new(false);
        c3180ju.f13833for = m8636if2;
        c3180ju.mo3321new(false);
        int overScrollMode = getOverScrollMode();
        c3180ju.f13843while = overScrollMode;
        NavigationMenuView navigationMenuView = c3180ju.f13826do;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(overScrollMode);
        }
        if (m8638this2 != 0) {
            c3180ju.f13842try = m8638this2;
            c3180ju.mo3321new(false);
        }
        c3180ju.f13829do = m8631do;
        c3180ju.mo3321new(false);
        c3180ju.f13836if = m8636if3;
        c3180ju.mo3321new(false);
        c3180ju.f13821do = m8639try2;
        c3180ju.mo3321new(false);
        c3180ju.f13835goto = m8637new3;
        c3180ju.mo3321new(false);
        c2952iu.m3335if(c3180ju, ((Ccase) c2952iu).f5403do);
        if (c3180ju.f13826do == null) {
            NavigationMenuView navigationMenuView2 = (NavigationMenuView) c3180ju.f13823do.inflate(com.joeykrim.rootcheck.R.layout.design_navigation_menu, (ViewGroup) this, false);
            c3180ju.f13826do = navigationMenuView2;
            C3180ju.Cgoto cgoto = c3180ju.new Cgoto(c3180ju.f13826do);
            ((RecyclerView) navigationMenuView2).f7330do = cgoto;
            QK.m1858native(navigationMenuView2, cgoto);
            if (c3180ju.f13828do == null) {
                C3180ju.Cfor cfor = c3180ju.new Cfor();
                c3180ju.f13828do = cfor;
                cfor.m4465const();
            }
            int i3 = c3180ju.f13843while;
            if (i3 != -1) {
                c3180ju.f13826do.setOverScrollMode(i3);
            }
            LinearLayout linearLayout = (LinearLayout) c3180ju.f13823do.inflate(com.joeykrim.rootcheck.R.layout.design_navigation_item_header, (ViewGroup) c3180ju.f13826do, false);
            c3180ju.f13824do = linearLayout;
            linearLayout.setImportantForAccessibility(2);
            c3180ju.f13826do.t(c3180ju.f13828do);
        }
        addView(c3180ju.f13826do);
        if (m3116try.m8630class(28)) {
            int m8638this3 = m3116try.m8638this(28, 0);
            C3180ju.Cfor cfor2 = c3180ju.f13828do;
            if (cfor2 != null) {
                cfor2.f13852if = true;
            }
            if (this.f11230do == null) {
                this.f11230do = new YF(getContext());
            }
            this.f11230do.inflate(m8638this3, c2952iu);
            C3180ju.Cfor cfor3 = c3180ju.f13828do;
            if (cfor3 != null) {
                cfor3.f13852if = false;
            }
            c3180ju.mo3321new(false);
        }
        if (m3116try.m8630class(9)) {
            c3180ju.f13824do.addView(c3180ju.f13823do.inflate(m3116try.m8638this(9, 0), (ViewGroup) c3180ju.f13824do, false));
            NavigationMenuView navigationMenuView3 = c3180ju.f13826do;
            navigationMenuView3.setPadding(0, 0, 0, navigationMenuView3.getPaddingBottom());
        }
        m3116try.m8633final();
        this.f11235do = new ViewTreeObserverOnGlobalLayoutListenerC3534pu(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.f11235do);
    }
}
