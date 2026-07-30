package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Cgoto;
import com.joeykrim.rootcheck.R;
import defpackage.C0166Dh;
import defpackage.C0222Ft;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0670a5;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C0730b5;
import defpackage.C0789c5;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C3268lM;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3647rq;
import defpackage.C3738tL;
import defpackage.InterfaceC0422Pa;
import defpackage.O2;
import defpackage.QK;
import defpackage.Y4;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: case, reason: not valid java name */
    public int f11457case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f11458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0422Pa f11459do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f11460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f11461do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewGroup f11462do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11463do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f11464do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f11467do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11468do;

    /* renamed from: else, reason: not valid java name */
    public int f11469else;

    /* renamed from: for, reason: not valid java name */
    public final int f11470for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f11471for;

    /* renamed from: goto, reason: not valid java name */
    public int f11472goto;

    /* renamed from: if, reason: not valid java name */
    public final int f11473if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f11474if;

    /* renamed from: new, reason: not valid java name */
    public int f11475new;

    /* renamed from: this, reason: not valid java name */
    public int f11476this;

    /* renamed from: try, reason: not valid java name */
    public int f11477try;

    /* renamed from: do, reason: not valid java name */
    public static final C0166Dh f11452do = C2785g1.f13026do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinearInterpolator f11454do = C2785g1.f13028do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3647rq f11455do = C2785g1.f13029do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f11456do = {R.attr.snackbarStyle};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Handler f11453do = new Handler(Looper.getMainLooper(), new Cdo());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f11466do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f11465do = new Cfor();

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: do, reason: not valid java name */
        public final Ctry f11478do = new Ctry(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: catch */
        public final boolean mo3683catch(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            Ctry ctry = this.f11478do;
            ctry.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    Cgoto.m5933if().m5938try(ctry.f11492do);
                }
            } else if (coordinatorLayout.m3680throws(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                Cgoto m5933if = Cgoto.m5933if();
                Cfor cfor = ctry.f11492do;
                synchronized (m5933if.f11507do) {
                    if (m5933if.m5936for(cfor)) {
                        Cgoto.Cfor cfor2 = m5933if.f11506do;
                        if (!cfor2.f11512do) {
                            cfor2.f11512do = true;
                            m5933if.f11505do.removeCallbacksAndMessages(cfor2);
                        }
                    }
                }
            }
            return super.mo3683catch(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: switch */
        public final boolean mo5670switch(View view) {
            this.f11478do.getClass();
            return view instanceof Ccase;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$case, reason: invalid class name */
    public static class Ccase extends FrameLayout {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f11479do = new Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float f11480do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorStateList f11481do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f11482do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Rect f11483do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public BaseTransientBottomBar<?> f11484do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3554qD f11485do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11486do;

        /* renamed from: for, reason: not valid java name */
        public final int f11487for;

        /* renamed from: new, reason: not valid java name */
        public final int f11488new;

        /* renamed from: try, reason: not valid java name */
        public final int f11489try;

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$case$do, reason: invalid class name */
        public class Cdo implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Ccase(Context context, AttributeSet attributeSet) {
            super(C2775fs.m6683do(context, attributeSet, 0, 0), attributeSet);
            GradientDrawable gradientDrawable;
            Drawable m1779goto;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, O2.n);
            if (obtainStyledAttributes.hasValue(6)) {
                float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(6, 0);
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                QK.Cnew.m1932native(this, dimensionPixelSize);
            }
            this.f11487for = obtainStyledAttributes.getInt(2, 0);
            if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
                this.f11485do = new C3554qD(C3554qD.m7859for(context2, attributeSet, 0, 0));
            }
            float f = obtainStyledAttributes.getFloat(3, 1.0f);
            setBackgroundTintList(C0659Zr.m3071if(context2, obtainStyledAttributes, 4));
            setBackgroundTintMode(C3738tL.m8284goto(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
            this.f11480do = obtainStyledAttributes.getFloat(1, 1.0f);
            this.f11488new = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.f11489try = obtainStyledAttributes.getDimensionPixelSize(7, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f11479do);
            setFocusable(true);
            if (getBackground() == null) {
                int m1581catch = O2.m1581catch(f, O2.m1587goto(this, R.attr.colorSurface), O2.m1587goto(this, R.attr.colorOnSurface));
                C3554qD c3554qD = this.f11485do;
                if (c3554qD != null) {
                    C0166Dh c0166Dh = BaseTransientBottomBar.f11452do;
                    C0716as c0716as = new C0716as(c3554qD);
                    c0716as.m4778super(ColorStateList.valueOf(m1581catch));
                    gradientDrawable = c0716as;
                } else {
                    Resources resources = getResources();
                    C0166Dh c0166Dh2 = BaseTransientBottomBar.f11452do;
                    float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(0);
                    gradientDrawable2.setCornerRadius(dimension);
                    gradientDrawable2.setColor(m1581catch);
                    gradientDrawable = gradientDrawable2;
                }
                if (this.f11481do != null) {
                    m1779goto = C0426Pe.m1779goto(gradientDrawable);
                    C0426Pe.Cdo.m1787goto(m1779goto, this.f11481do);
                } else {
                    m1779goto = C0426Pe.m1779goto(gradientDrawable);
                }
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                setBackground(m1779goto);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            Insets mandatorySystemGestureInsets;
            int i;
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f11484do;
            if (baseTransientBottomBar != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    WindowInsets rootWindowInsets = baseTransientBottomBar.f11464do.getRootWindowInsets();
                    if (rootWindowInsets != null) {
                        mandatorySystemGestureInsets = rootWindowInsets.getMandatorySystemGestureInsets();
                        i = mandatorySystemGestureInsets.bottom;
                        baseTransientBottomBar.f11472goto = i;
                        baseTransientBottomBar.m5920else();
                    }
                } else {
                    baseTransientBottomBar.getClass();
                }
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f11484do;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.m5921for()) {
                return;
            }
            BaseTransientBottomBar.f11453do.post(new com.google.android.material.snackbar.Ctry(baseTransientBottomBar));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f11484do;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.f11468do) {
                return;
            }
            baseTransientBottomBar.m5918case();
            baseTransientBottomBar.f11468do = false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int i3 = this.f11488new;
            if (i3 <= 0 || getMeasuredWidth() <= i3) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }

        @Override // android.view.View
        public final void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public final void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.f11481do != null) {
                drawable = C0426Pe.m1779goto(drawable.mutate());
                C0426Pe.Cdo.m1787goto(drawable, this.f11481do);
                C0426Pe.Cdo.m1790this(drawable, this.f11482do);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public final void setBackgroundTintList(ColorStateList colorStateList) {
            this.f11481do = colorStateList;
            if (getBackground() != null) {
                Drawable m1779goto = C0426Pe.m1779goto(getBackground().mutate());
                C0426Pe.Cdo.m1787goto(m1779goto, colorStateList);
                C0426Pe.Cdo.m1790this(m1779goto, this.f11482do);
                if (m1779goto != getBackground()) {
                    super.setBackgroundDrawable(m1779goto);
                }
            }
        }

        @Override // android.view.View
        public final void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f11482do = mode;
            if (getBackground() != null) {
                Drawable m1779goto = C0426Pe.m1779goto(getBackground().mutate());
                C0426Pe.Cdo.m1790this(m1779goto, mode);
                if (m1779goto != getBackground()) {
                    super.setBackgroundDrawable(m1779goto);
                }
            }
        }

        @Override // android.view.View
        public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f11486do || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f11483do = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f11484do;
            if (baseTransientBottomBar != null) {
                C0166Dh c0166Dh = BaseTransientBottomBar.f11452do;
                baseTransientBottomBar.m5920else();
            }
        }

        @Override // android.view.View
        public final void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f11479do);
            super.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
            int i = message.what;
            if (i == 0) {
                BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                Ccase ccase = baseTransientBottomBar.f11464do;
                if (ccase.getParent() == null) {
                    ViewGroup.LayoutParams layoutParams = ccase.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.Ctry) {
                        CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) layoutParams;
                        Behavior behavior = new Behavior();
                        Ctry ctry2 = behavior.f11478do;
                        ctry2.getClass();
                        ctry2.f11492do = baseTransientBottomBar.f11465do;
                        ((SwipeDismissBehavior) behavior).f10540do = new com.google.android.material.snackbar.Ccase(baseTransientBottomBar);
                        ctry.m3701if(behavior);
                        ctry.f6483try = 80;
                    }
                    ccase.f11486do = true;
                    baseTransientBottomBar.f11462do.addView(ccase);
                    ccase.f11486do = false;
                    baseTransientBottomBar.m5920else();
                    ccase.setVisibility(4);
                }
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (ccase.isLaidOut()) {
                    baseTransientBottomBar.m5918case();
                } else {
                    baseTransientBottomBar.f11468do = true;
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            int i2 = message.arg1;
            AccessibilityManager accessibilityManager = baseTransientBottomBar2.f11463do;
            if (accessibilityManager == null || ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) != null && enabledAccessibilityServiceList.isEmpty())) {
                Ccase ccase2 = baseTransientBottomBar2.f11464do;
                if (ccase2.getVisibility() == 0) {
                    if (ccase2.f11487for == 1) {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                        ofFloat.setInterpolator(baseTransientBottomBar2.f11460do);
                        ofFloat.addUpdateListener(new com.google.android.material.snackbar.Cdo(baseTransientBottomBar2));
                        ofFloat.setDuration(baseTransientBottomBar2.f11473if);
                        ofFloat.addListener(new Y4(baseTransientBottomBar2, i2));
                        ofFloat.start();
                    } else {
                        ValueAnimator valueAnimator = new ValueAnimator();
                        int[] iArr = new int[2];
                        iArr[0] = 0;
                        int height = ccase2.getHeight();
                        ViewGroup.LayoutParams layoutParams2 = ccase2.getLayoutParams();
                        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                            height += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        }
                        iArr[1] = height;
                        valueAnimator.setIntValues(iArr);
                        valueAnimator.setInterpolator(baseTransientBottomBar2.f11474if);
                        valueAnimator.setDuration(baseTransientBottomBar2.f11470for);
                        valueAnimator.addListener(new C0670a5(baseTransientBottomBar2, i2));
                        valueAnimator.addUpdateListener(new com.google.android.material.snackbar.Cnew(baseTransientBottomBar2));
                        valueAnimator.start();
                    }
                    return true;
                }
            }
            baseTransientBottomBar2.m5923new(i2);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$for, reason: invalid class name */
    public class Cfor implements Cgoto.Cif {
        public Cfor() {
        }

        @Override // com.google.android.material.snackbar.Cgoto.Cif
        /* renamed from: do, reason: not valid java name */
        public final void mo5925do(int i) {
            Handler handler = BaseTransientBottomBar.f11453do;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.Cgoto.Cif
        /* renamed from: if, reason: not valid java name */
        public final void mo5926if() {
            Handler handler = BaseTransientBottomBar.f11453do;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f11464do == null || (context = baseTransientBottomBar.f11461do) == null) {
                return;
            }
            int height = C3268lM.m7366do(context).height();
            int[] iArr = new int[2];
            Ccase ccase = baseTransientBottomBar.f11464do;
            ccase.getLocationInWindow(iArr);
            int height2 = (height - (ccase.getHeight() + iArr[1])) + ((int) baseTransientBottomBar.f11464do.getTranslationY());
            int i = baseTransientBottomBar.f11472goto;
            if (height2 >= i) {
                baseTransientBottomBar.f11476this = i;
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar.f11464do.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                C0166Dh c0166Dh = BaseTransientBottomBar.f11452do;
                return;
            }
            int i2 = baseTransientBottomBar.f11472goto;
            baseTransientBottomBar.f11476this = i2;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = (i2 - height2) + marginLayoutParams.bottomMargin;
            baseTransientBottomBar.f11464do.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$new, reason: invalid class name */
    public static abstract class Cnew<B> {
        /* renamed from: do */
        public void mo2595do(Object obj) {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo5927if(B b) {
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public Cfor f11492do;

        public Ctry(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.getClass();
            swipeDismissBehavior.f10544if = Math.min(Math.max(0.0f, 0.1f), 1.0f);
            swipeDismissBehavior.f10542for = Math.min(Math.max(0.0f, 0.6f), 1.0f);
            swipeDismissBehavior.f10543for = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        if (snackbarContentLayout == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (snackbarContentLayout2 == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f11462do = viewGroup;
        this.f11459do = snackbarContentLayout2;
        this.f11461do = context;
        C0682aH.m3113for(context, C0682aH.f4938do, "Theme.AppCompat");
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f11456do);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        Ccase ccase = (Ccase) from.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.f11464do = ccase;
        ccase.f11484do = this;
        float f = ccase.f11480do;
        if (f != 1.0f) {
            snackbarContentLayout.f11497do.setTextColor(O2.m1581catch(f, O2.m1587goto(snackbarContentLayout, R.attr.colorSurface), snackbarContentLayout.f11497do.getCurrentTextColor()));
        }
        snackbarContentLayout.f11499for = ccase.f11489try;
        ccase.addView(snackbarContentLayout);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        ccase.setAccessibilityLiveRegion(1);
        ccase.setImportantForAccessibility(1);
        ccase.setFitsSystemWindows(true);
        QK.Cnew.m1935return(ccase, new C0730b5(this));
        QK.m1858native(ccase, new C0789c5(this));
        this.f11463do = (AccessibilityManager) context.getSystemService("accessibility");
        this.f11470for = C0222Ft.m649for(context, R.attr.motionDurationLong2, 250);
        this.f11458do = C0222Ft.m649for(context, R.attr.motionDurationLong2, 150);
        this.f11473if = C0222Ft.m649for(context, R.attr.motionDurationMedium1, 75);
        this.f11460do = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedInterpolator, f11454do);
        this.f11471for = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedInterpolator, f11455do);
        this.f11474if = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedInterpolator, f11452do);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5918case() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.f11463do;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        Ccase ccase = this.f11464do;
        if (z) {
            ccase.post(new Celse(this));
            return;
        }
        if (ccase.getParent() != null) {
            ccase.setVisibility(0);
        }
        m5924try();
    }

    /* renamed from: do, reason: not valid java name */
    public void mo5919do() {
        m5922if(3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0074, code lost:
    
        if (((r1 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry) && (((androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry) r1).f6472do instanceof com.google.android.material.behavior.SwipeDismissBehavior)) != false) goto L40;
     */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5920else() {
        /*
            r9 = this;
            com.google.android.material.snackbar.BaseTransientBottomBar$case r0 = r9.f11464do
            android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
            boolean r2 = r1 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r2 != 0) goto Lb
            return
        Lb:
            android.graphics.Rect r2 = r0.f11483do
            if (r2 != 0) goto L10
            return
        L10:
            android.view.ViewParent r2 = r0.getParent()
            if (r2 != 0) goto L17
            return
        L17:
            int r2 = r9.f11477try
            android.view.ViewGroup$MarginLayoutParams r1 = (android.view.ViewGroup.MarginLayoutParams) r1
            android.graphics.Rect r3 = r0.f11483do
            int r4 = r3.bottom
            int r4 = r4 + r2
            int r2 = r3.left
            int r5 = r9.f11457case
            int r2 = r2 + r5
            int r5 = r3.right
            int r6 = r9.f11469else
            int r5 = r5 + r6
            int r3 = r3.top
            int r6 = r1.bottomMargin
            r7 = 1
            r8 = 0
            if (r6 != r4) goto L41
            int r6 = r1.leftMargin
            if (r6 != r2) goto L41
            int r6 = r1.rightMargin
            if (r6 != r5) goto L41
            int r6 = r1.topMargin
            if (r6 == r3) goto L3f
            goto L41
        L3f:
            r6 = 0
            goto L42
        L41:
            r6 = 1
        L42:
            if (r6 == 0) goto L4f
            r1.bottomMargin = r4
            r1.leftMargin = r2
            r1.rightMargin = r5
            r1.topMargin = r3
            r0.requestLayout()
        L4f:
            if (r6 != 0) goto L57
            int r1 = r9.f11476this
            int r2 = r9.f11472goto
            if (r1 == r2) goto L82
        L57:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r1 < r2) goto L82
            int r1 = r9.f11472goto
            if (r1 <= 0) goto L77
            android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
            boolean r2 = r1 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry
            if (r2 == 0) goto L73
            androidx.coordinatorlayout.widget.CoordinatorLayout$try r1 = (androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry) r1
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r1 = r1.f6472do
            boolean r1 = r1 instanceof com.google.android.material.behavior.SwipeDismissBehavior
            if (r1 == 0) goto L73
            r1 = 1
            goto L74
        L73:
            r1 = 0
        L74:
            if (r1 == 0) goto L77
            goto L78
        L77:
            r7 = 0
        L78:
            if (r7 == 0) goto L82
            com.google.android.material.snackbar.BaseTransientBottomBar$if r1 = r9.f11466do
            r0.removeCallbacks(r1)
            r0.post(r1)
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.m5920else():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5921for() {
        /*
            r5 = this;
            com.google.android.material.snackbar.goto r0 = com.google.android.material.snackbar.Cgoto.m5933if()
            com.google.android.material.snackbar.BaseTransientBottomBar$for r1 = r5.f11465do
            java.lang.Object r2 = r0.f11507do
            monitor-enter(r2)
            boolean r3 = r0.m5936for(r1)     // Catch: java.lang.Throwable -> L2f
            r4 = 1
            if (r3 != 0) goto L2b
            com.google.android.material.snackbar.goto$for r0 = r0.f11508if     // Catch: java.lang.Throwable -> L2f
            r3 = 0
            if (r0 == 0) goto L26
            if (r1 == 0) goto L21
            java.lang.ref.WeakReference<com.google.android.material.snackbar.goto$if> r0 = r0.f11511do     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L2f
            if (r0 != r1) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            if (r0 == 0) goto L26
            r0 = 1
            goto L27
        L26:
            r0 = 0
        L27:
            if (r0 == 0) goto L2a
            goto L2b
        L2a:
            r4 = 0
        L2b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            return r4
        L2d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            throw r0
        L2f:
            r0 = move-exception
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.m5921for():boolean");
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5922if(int i) {
        Cgoto m5933if = Cgoto.m5933if();
        Cfor cfor = this.f11465do;
        synchronized (m5933if.f11507do) {
            if (m5933if.m5936for(cfor)) {
                m5933if.m5935do(m5933if.f11506do, i);
            } else {
                Cgoto.Cfor cfor2 = m5933if.f11508if;
                boolean z = false;
                if (cfor2 != null) {
                    if (cfor != null && cfor2.f11511do.get() == cfor) {
                        z = true;
                    }
                }
                if (z) {
                    m5933if.m5935do(m5933if.f11508if, i);
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5923new(int i) {
        Cgoto m5933if = Cgoto.m5933if();
        Cfor cfor = this.f11465do;
        synchronized (m5933if.f11507do) {
            try {
                if (m5933if.m5936for(cfor)) {
                    m5933if.f11506do = null;
                    Cgoto.Cfor cfor2 = m5933if.f11508if;
                    if (cfor2 != null && cfor2 != null) {
                        m5933if.f11506do = cfor2;
                        m5933if.f11508if = null;
                        Cgoto.Cif cif = cfor2.f11511do.get();
                        if (cif != null) {
                            cif.mo5926if();
                        } else {
                            m5933if.f11506do = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList = this.f11467do;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((Cnew) this.f11467do.get(size)).mo2595do(this);
                }
            }
        }
        ViewParent parent = this.f11464do.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f11464do);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5924try() {
        Cgoto m5933if = Cgoto.m5933if();
        Cfor cfor = this.f11465do;
        synchronized (m5933if.f11507do) {
            if (m5933if.m5936for(cfor)) {
                m5933if.m5934case(m5933if.f11506do);
            }
        }
        ArrayList arrayList = this.f11467do;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((Cnew) this.f11467do.get(size)).mo5927if(this);
            }
        }
    }
}
