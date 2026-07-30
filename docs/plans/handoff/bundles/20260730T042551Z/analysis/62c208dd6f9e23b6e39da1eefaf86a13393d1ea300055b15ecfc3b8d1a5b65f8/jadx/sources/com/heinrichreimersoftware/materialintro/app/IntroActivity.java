package com.heinrichreimersoftware.materialintro.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextSwitcher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.ViewPager;
import com.facebook.internal.Utility;
import com.heinrichreimersoftware.materialintro.view.FadeableViewPager;
import com.heinrichreimersoftware.materialintro.view.InkPageIndicator;
import com.heinrichreimersoftware.materialintro.view.SwipeBlockableViewPager;
import com.joeykrim.rootcheck.R;
import defpackage.AE;
import defpackage.BE;
import defpackage.C0326Kn;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C2857hE;
import defpackage.C3712sw;
import defpackage.G8;
import defpackage.InterfaceC0531Tv;
import defpackage.InterfaceC2849h6;
import defpackage.InterfaceC3830uw;
import defpackage.QK;
import defpackage.RunnableC0283Io;
import defpackage.ViewOnClickListenerC0239Go;
import defpackage.ViewOnClickListenerC0261Ho;
import defpackage.ViewOnLongClickListenerC3724t7;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"Registered"})
/* loaded from: classes3.dex */
public class IntroActivity extends AppCompatActivity {

    /* renamed from: do, reason: not valid java name */
    public static final AccelerateDecelerateInterpolator f12135do = new AccelerateDecelerateInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f12139do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BE f12140do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Interpolator f12145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ImageButton f12146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LinearLayout f12147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextSwitcher f12148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FadeableViewPager f12150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InkPageIndicator f12151do;

    /* renamed from: goto, reason: not valid java name */
    public int f12156goto;

    /* renamed from: if, reason: not valid java name */
    public long f12157if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ImageButton f12158if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArgbEvaluator f12142do = new ArgbEvaluator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f12149do = new Ctry();

    /* renamed from: new, reason: not valid java name */
    public int f12159new = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f12138do = 0.0f;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f12137case = false;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f12155else = false;

    /* renamed from: try, reason: not valid java name */
    public final int f12160try = 2;

    /* renamed from: case, reason: not valid java name */
    public final int f12136case = 2;

    /* renamed from: else, reason: not valid java name */
    public final int f12154else = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f12153do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f12152do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View.OnClickListener f12144do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f12143do = new Handler();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RunnableC0283Io f12141do = null;

    /* renamed from: com.heinrichreimersoftware.materialintro.app.IntroActivity$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = IntroActivity.f12135do;
            IntroActivity.this.m6355interface();
            view.removeOnLayoutChangeListener(this);
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.app.IntroActivity$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0067  */
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onAnimationUpdate(android.animation.ValueAnimator r20) {
            /*
                r19 = this;
                java.lang.Object r0 = r20.getAnimatedValue()
                java.lang.Float r0 = (java.lang.Float) r0
                float r0 = r0.floatValue()
                r1 = r19
                com.heinrichreimersoftware.materialintro.app.IntroActivity r2 = com.heinrichreimersoftware.materialintro.app.IntroActivity.this
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r3 = r2.f12150do
                int r3 = r3.getScrollX()
                float r3 = (float) r3
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r4 = r2.f12150do
                int r4 = r4.getWidth()
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r5 = r2.f12150do
                int r5 = r5.f8038new
                float r6 = (float) r5
                r7 = 0
                r8 = 1065353216(0x3f800000, float:1.0)
                r9 = 0
                int r10 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r10 <= 0) goto L43
                double r10 = (double) r0
                double r12 = java.lang.Math.floor(r10)
                double r14 = (double) r5
                int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
                if (r16 == 0) goto L43
                float r12 = r0 % r8
                int r12 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
                if (r12 == 0) goto L43
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r5 = r2.f12150do
                double r10 = java.lang.Math.floor(r10)
                int r6 = (int) r10
                r5.m4694private(r6, r7)
                goto L61
            L43:
                int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r6 >= 0) goto L61
                double r10 = (double) r0
                double r12 = java.lang.Math.ceil(r10)
                double r5 = (double) r5
                int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r14 == 0) goto L61
                float r5 = r0 % r8
                int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
                if (r5 == 0) goto L61
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r5 = r2.f12150do
                double r10 = java.lang.Math.ceil(r10)
                int r6 = (int) r10
                r5.m4694private(r6, r7)
            L61:
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r5 = r2.f12150do
                boolean r6 = r5.f8024else
                if (r6 != 0) goto La7
                boolean r6 = r5.f8046try
                if (r6 == 0) goto L6c
                goto La4
            L6c:
                r7 = 1
                r5.f8024else = r7
                r5.m4698strictfp(r7)
                r5.f8026for = r9
                r5.f8044try = r9
                android.view.VelocityTracker r6 = r5.f8012do
                if (r6 != 0) goto L81
                android.view.VelocityTracker r6 = android.view.VelocityTracker.obtain()
                r5.f8012do = r6
                goto L84
            L81:
                r6.clear()
            L84:
                long r14 = android.os.SystemClock.uptimeMillis()
                r12 = 0
                r13 = 0
                r6 = 0
                r16 = 0
                r8 = r14
                r10 = r14
                r17 = r14
                r14 = r6
                r15 = r16
                android.view.MotionEvent r6 = android.view.MotionEvent.obtain(r8, r10, r12, r13, r14, r15)
                android.view.VelocityTracker r8 = r5.f8012do
                r8.addMovement(r6)
                r6.recycle()
                r8 = r17
                r5.f8009do = r8
            La4:
                if (r7 != 0) goto La7
                goto Lb0
            La7:
                com.heinrichreimersoftware.materialintro.view.FadeableViewPager r2 = r2.f12150do     // Catch: java.lang.Throwable -> Lb0
                float r4 = (float) r4     // Catch: java.lang.Throwable -> Lb0
                float r4 = r4 * r0
                float r3 = r3 - r4
                r2.m4676break(r3)     // Catch: java.lang.Throwable -> Lb0
            Lb0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.heinrichreimersoftware.materialintro.app.IntroActivity.Cfor.onAnimationUpdate(android.animation.ValueAnimator):void");
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.app.IntroActivity$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f12163do;

        public Cif(int i) {
            this.f12163do = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            FadeableViewPager fadeableViewPager = IntroActivity.this.f12150do;
            if (((ViewPager) fadeableViewPager).f8024else) {
                fadeableViewPager.m4701this();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            IntroActivity introActivity = IntroActivity.this;
            try {
                FadeableViewPager fadeableViewPager = introActivity.f12150do;
                if (((ViewPager) fadeableViewPager).f8024else) {
                    fadeableViewPager.m4701this();
                }
                introActivity.f12150do.m4693package(this.f12163do);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.app.IntroActivity$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            IntroActivity introActivity = IntroActivity.this;
            int m6352extends = introActivity.m6352extends();
            int i = ((ViewPager) introActivity.f12150do).f8038new;
            while (i < m6352extends && introActivity.m6360public(i, true)) {
                i++;
            }
            introActivity.m6349abstract(i);
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.app.IntroActivity$try, reason: invalid class name */
    public class Ctry extends FadeableViewPager.Cnew {
        public Ctry() {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do */
        public final void mo4671do(float f, int i, int i2) {
            float f2 = i + f;
            int floor = (int) Math.floor(f2);
            IntroActivity introActivity = IntroActivity.this;
            introActivity.f12159new = floor;
            introActivity.f12138do = ((f2 % 1.0f) + 1.0f) % 1.0f;
            if (introActivity.m6362static()) {
                return;
            }
            if (Math.abs(f) < 0.1f) {
                introActivity.m6357package();
            }
            introActivity.m6363strictfp();
            introActivity.m6355interface();
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: new */
        public final void mo1557new(int i) {
            IntroActivity introActivity = IntroActivity.this;
            introActivity.f12159new = i;
            introActivity.m6359protected();
            introActivity.m6357package();
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m6349abstract(int i) {
        if (((ViewPager) this.f12150do).f8024else) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((ViewPager) r0).f8038new, i);
        ofFloat.addListener(new Cif(i));
        ofFloat.addUpdateListener(new Cfor());
        int abs = Math.abs(i - ((ViewPager) this.f12150do).f8038new);
        ofFloat.setInterpolator(this.f12145do);
        double d = abs;
        ofFloat.setDuration(Math.round(((Math.sqrt(d) + d) * this.f12157if) / 2.0d));
        ofFloat.start();
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m6350continue() {
        float f = this.f12159new + this.f12138do;
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mi_y_offset);
        if (f < this.f12140do.mo171try()) {
            C3712sw<CharSequence, ? extends View.OnClickListener> m6351default = m6351default(this.f12159new);
            C3712sw<CharSequence, ? extends View.OnClickListener> m6351default2 = this.f12138do == 0.0f ? null : m6351default(this.f12159new + 1);
            AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = f12135do;
            if (m6351default != null) {
                Object obj = m6351default.f15569if;
                CharSequence charSequence = m6351default.f15568do;
                if (m6351default2 == null) {
                    this.f12148do.setVisibility(0);
                    if (!((Button) this.f12148do.getCurrentView()).getText().equals(charSequence)) {
                        this.f12148do.setText(charSequence);
                    }
                    View.OnClickListener onClickListener = (View.OnClickListener) obj;
                    this.f12148do.getChildAt(0).setOnClickListener(onClickListener);
                    this.f12148do.getChildAt(1).setOnClickListener(onClickListener);
                    this.f12148do.setAlpha(1.0f - this.f12138do);
                    this.f12148do.setScaleX(1.0f - this.f12138do);
                    this.f12148do.setScaleY(1.0f - this.f12138do);
                    ViewGroup.LayoutParams layoutParams = this.f12148do.getLayoutParams();
                    layoutParams.height = Math.round(accelerateDecelerateInterpolator.getInterpolation(1.0f - this.f12138do) * getResources().getDimensionPixelSize(R.dimen.mi_button_cta_height));
                    this.f12148do.setLayoutParams(layoutParams);
                } else {
                    this.f12148do.setVisibility(0);
                    ViewGroup.LayoutParams layoutParams2 = this.f12148do.getLayoutParams();
                    layoutParams2.height = getResources().getDimensionPixelSize(R.dimen.mi_button_cta_height);
                    this.f12148do.setLayoutParams(layoutParams2);
                    if (this.f12138do >= 0.5f) {
                        CharSequence text = ((Button) this.f12148do.getCurrentView()).getText();
                        CharSequence charSequence2 = m6351default2.f15568do;
                        if (!text.equals(charSequence2)) {
                            this.f12148do.setText(charSequence2);
                        }
                        View childAt = this.f12148do.getChildAt(0);
                        View.OnClickListener onClickListener2 = (View.OnClickListener) m6351default2.f15569if;
                        childAt.setOnClickListener(onClickListener2);
                        this.f12148do.getChildAt(1).setOnClickListener(onClickListener2);
                    } else {
                        if (!((Button) this.f12148do.getCurrentView()).getText().equals(charSequence)) {
                            this.f12148do.setText(charSequence);
                        }
                        View.OnClickListener onClickListener3 = (View.OnClickListener) obj;
                        this.f12148do.getChildAt(0).setOnClickListener(onClickListener3);
                        this.f12148do.getChildAt(1).setOnClickListener(onClickListener3);
                    }
                }
            } else if (m6351default2 == null) {
                this.f12148do.setVisibility(8);
            } else {
                this.f12148do.setVisibility(0);
                CharSequence text2 = ((Button) this.f12148do.getCurrentView()).getText();
                CharSequence charSequence3 = m6351default2.f15568do;
                if (!text2.equals(charSequence3)) {
                    this.f12148do.setText(charSequence3);
                }
                View childAt2 = this.f12148do.getChildAt(0);
                View.OnClickListener onClickListener4 = (View.OnClickListener) m6351default2.f15569if;
                childAt2.setOnClickListener(onClickListener4);
                this.f12148do.getChildAt(1).setOnClickListener(onClickListener4);
                this.f12148do.setAlpha(this.f12138do);
                this.f12148do.setScaleX(this.f12138do);
                this.f12148do.setScaleY(this.f12138do);
                ViewGroup.LayoutParams layoutParams3 = this.f12148do.getLayoutParams();
                layoutParams3.height = Math.round(accelerateDecelerateInterpolator.getInterpolation(this.f12138do) * getResources().getDimensionPixelSize(R.dimen.mi_button_cta_height));
                this.f12148do.setLayoutParams(layoutParams3);
            }
        }
        if (f < this.f12140do.mo171try() - 1) {
            this.f12148do.setTranslationY(0.0f);
        } else {
            this.f12148do.setTranslationY(this.f12138do * dimensionPixelSize);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final C3712sw<CharSequence, ? extends View.OnClickListener> m6351default(int i) {
        if (i < m6352extends() && (m6353finally(i) instanceof InterfaceC2849h6)) {
            InterfaceC2849h6 interfaceC2849h6 = (InterfaceC2849h6) m6353finally(i);
            if (interfaceC2849h6.mo6777this() != null) {
                if (interfaceC2849h6.mo6776for() != null) {
                    if (interfaceC2849h6.mo6776for() != null) {
                        return new C3712sw<>(interfaceC2849h6.mo6776for(), interfaceC2849h6.mo6777this());
                    }
                    interfaceC2849h6.mo6778try();
                    return new C3712sw<>(getString(0), interfaceC2849h6.mo6777this());
                }
                interfaceC2849h6.mo6778try();
            }
        }
        if (!this.f12155else) {
            return null;
        }
        if (TextUtils.isEmpty(this.f12152do)) {
            String string = getString(R.string.mi_label_button_cta);
            Object obj = this.f12144do;
            if (obj == null) {
                obj = new Cnew();
            }
            return new C3712sw<>(string, obj);
        }
        CharSequence charSequence = this.f12152do;
        Object obj2 = this.f12144do;
        if (obj2 == null) {
            obj2 = new Cnew();
        }
        return new C3712sw<>(charSequence, obj2);
    }

    /* renamed from: extends, reason: not valid java name */
    public final int m6352extends() {
        BE be = this.f12140do;
        if (be == null) {
            return 0;
        }
        return be.mo171try();
    }

    /* renamed from: finally, reason: not valid java name */
    public final AE m6353finally(int i) {
        return (AE) this.f12140do.f219do.get(i);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m6354import(C2857hE c2857hE) {
        if (this.f12140do.m170static(c2857hE)) {
            int i = this.f12159new;
            this.f12150do.mo4687finally(this.f12140do);
            this.f12150do.m4693package(i);
            if (m6362static()) {
                return;
            }
            m6359protected();
            if (this.f12136case == 2) {
                this.f12158if.setImageResource(R.drawable.ic_skip);
            } else {
                this.f12158if.setImageResource(R.drawable.ic_previous);
            }
            m6363strictfp();
            m6355interface();
            m6357package();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m6355interface() {
        int m707case;
        int m707case2;
        int color;
        int color2;
        if (this.f12159new == m6352extends()) {
            m707case = 0;
            m707case2 = 0;
            color2 = 0;
            color = 0;
        } else {
            int color3 = C0466Ra.getColor(this, m6364switch(this.f12159new));
            int color4 = C0466Ra.getColor(this, m6364switch(Math.min(this.f12159new + 1, m6352extends() - 1)));
            m707case = G8.m707case(color3, 255);
            m707case2 = G8.m707case(color4, 255);
            try {
                color = C0466Ra.getColor(this, m6365throws(this.f12159new));
            } catch (Resources.NotFoundException unused) {
                color = C0466Ra.getColor(this, R.color.mi_status_bar_background);
            }
            try {
                color2 = C0466Ra.getColor(this, m6365throws(Math.min(this.f12159new + 1, m6352extends() - 1)));
            } catch (Resources.NotFoundException unused2) {
                color2 = C0466Ra.getColor(this, R.color.mi_status_bar_background);
            }
        }
        if (this.f12159new + this.f12138do >= this.f12140do.mo171try() - 1) {
            m707case2 = G8.m707case(m707case, 0);
            color2 = G8.m707case(color, 0);
        }
        ArgbEvaluator argbEvaluator = this.f12142do;
        int intValue = ((Integer) argbEvaluator.evaluate(this.f12138do, Integer.valueOf(m707case), Integer.valueOf(m707case2))).intValue();
        int intValue2 = ((Integer) argbEvaluator.evaluate(this.f12138do, Integer.valueOf(color), Integer.valueOf(color2))).intValue();
        this.f12147do.setBackgroundColor(intValue);
        float[] fArr = new float[3];
        Color.colorToHSV(intValue2, fArr);
        fArr[2] = (float) (fArr[2] * 0.95d);
        int HSVToColor = Color.HSVToColor(fArr);
        InkPageIndicator inkPageIndicator = this.f12151do;
        inkPageIndicator.f12177do.setColor(HSVToColor);
        inkPageIndicator.invalidate();
        QK.m1861return(this.f12146do, ColorStateList.valueOf(HSVToColor));
        QK.m1861return(this.f12158if, ColorStateList.valueOf(HSVToColor));
        int i = this.f12154else;
        int color5 = i == 2 ? C0466Ra.getColor(this, android.R.color.white) : HSVToColor;
        QK.m1861return(this.f12148do.getChildAt(0), ColorStateList.valueOf(color5));
        QK.m1861return(this.f12148do.getChildAt(1), ColorStateList.valueOf(color5));
        int color6 = G8.m709for(intValue2) > 0.4d ? C0466Ra.getColor(this, R.color.mi_icon_color_light) : C0466Ra.getColor(this, R.color.mi_icon_color_dark);
        InkPageIndicator inkPageIndicator2 = this.f12151do;
        inkPageIndicator2.f12196if.setColor(color6);
        inkPageIndicator2.invalidate();
        C0426Pe.Cdo.m1785else(this.f12146do.getDrawable(), color6);
        C0426Pe.Cdo.m1785else(this.f12158if.getDrawable(), color6);
        if (i != 2) {
            HSVToColor = color6;
        }
        ((Button) this.f12148do.getChildAt(0)).setTextColor(HSVToColor);
        ((Button) this.f12148do.getChildAt(1)).setTextColor(HSVToColor);
        int i2 = Build.VERSION.SDK_INT;
        getWindow().setStatusBarColor(intValue2);
        if (this.f12159new == this.f12140do.mo171try()) {
            getWindow().setNavigationBarColor(0);
        } else if (this.f12159new + this.f12138do >= this.f12140do.mo171try() - 1) {
            TypedArray obtainStyledAttributes = obtainStyledAttributes(new TypedValue().data, new int[]{android.R.attr.navigationBarColor});
            int color7 = obtainStyledAttributes.getColor(0, -16777216);
            obtainStyledAttributes.recycle();
            getWindow().setNavigationBarColor(((Integer) argbEvaluator.evaluate(this.f12138do, Integer.valueOf(color7), 0)).intValue());
        }
        if (i2 >= 23) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            getWindow().getDecorView().setSystemUiVisibility(G8.m709for(intValue2) > 0.4d ? systemUiVisibility | Utility.DEFAULT_STREAM_BUFFER_SIZE : systemUiVisibility & (-8193));
        }
        m6350continue();
        float f = this.f12159new + this.f12138do;
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mi_y_offset);
        int i3 = this.f12136case;
        if (f < 1.0f && i3 == 1) {
            this.f12158if.setTranslationY((1.0f - this.f12138do) * dimensionPixelSize);
        } else if (f < this.f12140do.mo171try() - 2) {
            this.f12158if.setTranslationY(0.0f);
            this.f12158if.setTranslationX(0.0f);
        } else if (f < this.f12140do.mo171try() - 1) {
            if (i3 == 2) {
                this.f12158if.setTranslationX(this.f12138do * (getResources().getConfiguration().getLayoutDirection() == 1 ? 1 : -1) * this.f12150do.getWidth());
            } else {
                this.f12158if.setTranslationX(0.0f);
            }
        } else if (i3 == 2) {
            this.f12158if.setTranslationX(this.f12150do.getWidth() * (getResources().getConfiguration().getLayoutDirection() == 1 ? 1 : -1));
        } else {
            this.f12158if.setTranslationY(this.f12138do * dimensionPixelSize);
        }
        float f2 = this.f12159new + this.f12138do;
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mi_y_offset);
        if (f2 < this.f12140do.mo171try() - 2) {
            this.f12146do.setTranslationY(0.0f);
        } else {
            float mo171try = this.f12140do.mo171try() - 1;
            int i4 = this.f12160try;
            if (f2 < mo171try) {
                if (i4 == 2) {
                    this.f12146do.setTranslationY(0.0f);
                } else {
                    this.f12146do.setTranslationY(this.f12138do * dimensionPixelSize2);
                }
            } else if (f2 >= this.f12140do.mo171try() - 1) {
                if (i4 == 2) {
                    this.f12146do.setTranslationY(this.f12138do * dimensionPixelSize2);
                } else {
                    this.f12146do.setTranslationY(-dimensionPixelSize2);
                }
            }
        }
        float f3 = this.f12159new + this.f12138do;
        float dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mi_y_offset);
        if (f3 < this.f12140do.mo171try() - 1) {
            this.f12151do.setTranslationY(0.0f);
        } else {
            this.f12151do.setTranslationY(this.f12138do * dimensionPixelSize3);
        }
        if (this.f12159new != m6352extends()) {
            C2857hE.Cif mo61new = m6353finally(this.f12159new).mo61new();
            C2857hE.Cif mo61new2 = this.f12159new < m6352extends() + (-1) ? m6353finally(this.f12159new + 1).mo61new() : null;
            if (mo61new instanceof InterfaceC3830uw) {
                mo61new.mo6382do(this.f12138do);
            }
            if (mo61new2 instanceof InterfaceC3830uw) {
                mo61new2.mo6382do(this.f12138do - 1.0f);
            }
        }
        m6366volatile();
        if (this.f12159new + this.f12138do < this.f12140do.mo171try() - 1) {
            this.f12147do.setAlpha(1.0f);
        } else {
            this.f12147do.setAlpha(1.0f - (this.f12138do * 0.5f));
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final boolean m6356native(int i, boolean z) {
        if (i <= 0 || i >= m6352extends()) {
            return false;
        }
        boolean mo57case = m6353finally(i).mo57case();
        if (mo57case || !z) {
            return mo57case;
        }
        Iterator it = this.f12153do.iterator();
        while (it.hasNext()) {
            ((InterfaceC0531Tv) it.next()).m2294do();
        }
        return mo57case;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f12159new <= 0) {
            setResult(0);
            super.onBackPressed();
            return;
        }
        int i = ((ViewPager) this.f12150do).f8038new;
        if (i <= 0) {
            return;
        }
        if (m6356native(i, true)) {
            m6349abstract(i - 1);
        } else {
            this.f12158if.startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12145do = AnimationUtils.loadInterpolator(this, android.R.interpolator.accelerate_decelerate);
        this.f12157if = getResources().getInteger(android.R.integer.config_shortAnimTime);
        if (bundle != null) {
            if (bundle.containsKey("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_CURRENT_ITEM")) {
                this.f12159new = bundle.getInt("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_CURRENT_ITEM", this.f12159new);
            }
            if (bundle.containsKey("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_FULLSCREEN")) {
                this.f12137case = bundle.getBoolean("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_FULLSCREEN", this.f12137case);
            }
            if (bundle.containsKey("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_BUTTON_CTA_VISIBLE")) {
                this.f12155else = bundle.getBoolean("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_BUTTON_CTA_VISIBLE", this.f12155else);
            }
        }
        if (this.f12137case) {
            m6358private(1280, true);
            m6366volatile();
        }
        getWindow().setSoftInputMode(16);
        setContentView(R.layout.activity_intro);
        this.f12147do = (LinearLayout) findViewById(R.id.mi_frame);
        this.f12150do = (FadeableViewPager) findViewById(R.id.mi_pager);
        this.f12151do = (InkPageIndicator) findViewById(R.id.mi_pager_indicator);
        this.f12146do = (ImageButton) findViewById(R.id.mi_button_next);
        this.f12158if = (ImageButton) findViewById(R.id.mi_button_skip);
        TextSwitcher textSwitcher = (TextSwitcher) findViewById(R.id.mi_button_cta);
        this.f12148do = textSwitcher;
        if (textSwitcher != null) {
            textSwitcher.setInAnimation(this, R.anim.fade_in);
            this.f12148do.setOutAnimation(this, R.anim.fade_out);
        }
        BE be = new BE(m4113class());
        this.f12140do = be;
        this.f12150do.mo4687finally(be);
        this.f12150do.mo4690if(this.f12149do);
        this.f12150do.m4694private(this.f12159new, false);
        InkPageIndicator inkPageIndicator = this.f12151do;
        FadeableViewPager fadeableViewPager = this.f12150do;
        inkPageIndicator.f12181do = fadeableViewPager;
        fadeableViewPager.mo4690if(inkPageIndicator);
        inkPageIndicator.f12206try = fadeableViewPager.mo4678catch().mo171try();
        inkPageIndicator.m6376if(inkPageIndicator.getWidth(), inkPageIndicator.getHeight());
        inkPageIndicator.m6377try();
        inkPageIndicator.requestLayout();
        fadeableViewPager.mo4678catch().mo6367const(new C0326Kn(inkPageIndicator));
        this.f12146do.setOnClickListener(new ViewOnClickListenerC0239Go(this));
        this.f12158if.setOnClickListener(new ViewOnClickListenerC0261Ho(this));
        this.f12146do.setOnLongClickListener(new ViewOnLongClickListenerC3724t7());
        this.f12158if.setOnLongClickListener(new ViewOnLongClickListenerC3724t7());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        if (this.f12141do != null) {
            m6361return();
        }
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m6359protected();
        m6363strictfp();
        if (this.f12136case == 2) {
            this.f12158if.setImageResource(R.drawable.ic_skip);
        } else {
            this.f12158if.setImageResource(R.drawable.ic_previous);
        }
        m6355interface();
        this.f12147do.addOnLayoutChangeListener(new Cdo());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        m6350continue();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        m6366volatile();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_CURRENT_ITEM", ((ViewPager) this.f12150do).f8038new);
        bundle.putBoolean("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_FULLSCREEN", this.f12137case);
        bundle.putBoolean("com.heinrichreimersoftware.materialintro.app.IntroActivity.KEY_BUTTON_CTA_VISIBLE", this.f12155else);
    }

    @Override // android.app.Activity
    public final void onUserInteraction() {
        if (this.f12141do != null) {
            m6361return();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final void m6357package() {
        if (this.f12159new < m6352extends()) {
            ((SwipeBlockableViewPager) this.f12150do).f12222catch = m6360public(this.f12159new, false);
            ((SwipeBlockableViewPager) this.f12150do).f12221break = m6356native(this.f12159new, false);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public final void m6358private(int i, boolean z) {
        int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
        getWindow().getDecorView().setSystemUiVisibility(z ? i | systemUiVisibility : (~i) & systemUiVisibility);
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m6359protected() {
        int color;
        String charSequence = getTitle().toString();
        Drawable loadIcon = (getApplicationInfo() == null || getPackageManager() == null) ? null : getApplicationInfo().loadIcon(getPackageManager());
        Bitmap bitmap = loadIcon instanceof BitmapDrawable ? ((BitmapDrawable) loadIcon).getBitmap() : null;
        if (this.f12159new < m6352extends()) {
            try {
                color = C0466Ra.getColor(this, m6365throws(this.f12159new));
            } catch (Resources.NotFoundException unused) {
                color = C0466Ra.getColor(this, m6364switch(this.f12159new));
            }
        } else {
            TypedArray obtainStyledAttributes = obtainStyledAttributes(new TypedValue().data, new int[]{R.attr.colorPrimary});
            int color2 = obtainStyledAttributes.getColor(0, 0);
            obtainStyledAttributes.recycle();
            color = color2;
        }
        setTaskDescription(new ActivityManager.TaskDescription(charSequence, bitmap, G8.m707case(color, 255)));
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m6360public(int i, boolean z) {
        if (i >= m6352extends()) {
            return false;
        }
        if (this.f12160try == 1 && i >= m6352extends() - 1) {
            return false;
        }
        boolean mo58do = m6353finally(i).mo58do();
        if (!mo58do && z) {
            Iterator it = this.f12153do.iterator();
            while (it.hasNext()) {
                ((InterfaceC0531Tv) it.next()).m2294do();
            }
        }
        return mo58do;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m6361return() {
        this.f12143do.removeCallbacks(this.f12141do);
        this.f12141do = null;
        this.f12156goto = 0;
        this.f12139do = 0L;
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m6362static() {
        if (this.f12138do != 0.0f || this.f12159new != this.f12140do.mo171try()) {
            return false;
        }
        setResult(-1);
        finish();
        overridePendingTransition(0, 0);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* renamed from: strictfp, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6363strictfp() {
        /*
            r7 = this;
            BE r0 = r7.f12140do
            if (r0 != 0) goto L5
            return
        L5:
            int r1 = r7.f12159new
            float r1 = (float) r1
            float r2 = r7.f12138do
            float r1 = r1 + r2
            int r2 = r7.f12160try
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 1
            r5 = 2
            r6 = 0
            if (r2 != r5) goto L30
            int r0 = r0.mo171try()
            int r0 = r0 - r4
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 < 0) goto L21
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L31
        L21:
            BE r0 = r7.f12140do
            int r0 = r0.mo171try()
            int r0 = r0 - r5
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 < 0) goto L30
            float r0 = r7.f12138do
            goto L31
        L30:
            r0 = 0
        L31:
            r1 = 2131165440(0x7f070100, float:1.7945097E38)
            int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r2 > 0) goto L49
            android.widget.ImageButton r0 = r7.f12146do
            r0.setImageResource(r1)
            android.widget.ImageButton r0 = r7.f12146do
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = 255(0xff, float:3.57E-43)
            r0.setAlpha(r1)
            goto L90
        L49:
            android.widget.ImageButton r2 = r7.f12146do
            r5 = 2131165441(0x7f070101, float:1.79451E38)
            r2.setImageResource(r5)
            android.widget.ImageButton r2 = r7.f12146do
            android.graphics.drawable.Drawable r2 = r2.getDrawable()
            if (r2 == 0) goto L84
            android.widget.ImageButton r2 = r7.f12146do
            android.graphics.drawable.Drawable r2 = r2.getDrawable()
            boolean r2 = r2 instanceof android.graphics.drawable.LayerDrawable
            if (r2 == 0) goto L84
            android.widget.ImageButton r1 = r7.f12146do
            android.graphics.drawable.Drawable r1 = r1.getDrawable()
            android.graphics.drawable.LayerDrawable r1 = (android.graphics.drawable.LayerDrawable) r1
            r2 = 0
            android.graphics.drawable.Drawable r2 = r1.getDrawable(r2)
            float r3 = r3 - r0
            r5 = 1132396544(0x437f0000, float:255.0)
            float r3 = r3 * r5
            int r3 = (int) r3
            r2.setAlpha(r3)
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r4)
            float r0 = r0 * r5
            int r0 = (int) r0
            r1.setAlpha(r0)
            goto L90
        L84:
            android.widget.ImageButton r2 = r7.f12146do
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 <= 0) goto L8d
            r1 = 2131165418(0x7f0700ea, float:1.7945053E38)
        L8d:
            r2.setImageResource(r1)
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.heinrichreimersoftware.materialintro.app.IntroActivity.m6363strictfp():void");
    }

    /* renamed from: switch, reason: not valid java name */
    public final int m6364switch(int i) {
        return ((AE) this.f12140do.f219do.get(i)).mo59goto();
    }

    /* renamed from: throws, reason: not valid java name */
    public final int m6365throws(int i) {
        return ((AE) this.f12140do.f219do.get(i)).mo60if();
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m6366volatile() {
        if (this.f12140do == null || this.f12159new + this.f12138do <= r0.mo171try() - 1) {
            m6358private(4100, this.f12137case);
        } else {
            m6358private(4100, false);
        }
    }
}
