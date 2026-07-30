package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import com.facebook.internal.Utility;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import com.google.android.material.slider.BaseSlider;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0604Xg;
import defpackage.C0154Cr;
import defpackage.C0174Dp;
import defpackage.C0222Ft;
import defpackage.C0315Kc;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C0762be;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.Cpublic;
import defpackage.G8;
import defpackage.HQ;
import defpackage.NH;
import defpackage.O2;
import defpackage.O4;
import defpackage.PG;
import defpackage.QK;
import defpackage.TG;
import defpackage.U4;
import defpackage.V4;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends U4<S>, T extends V4<S>> extends View {

    /* renamed from: strictfp, reason: not valid java name */
    public static final /* synthetic */ int f11367strictfp = 0;

    /* renamed from: abstract, reason: not valid java name */
    public int f11368abstract;

    /* renamed from: break, reason: not valid java name */
    public int f11369break;

    /* renamed from: case, reason: not valid java name */
    public int f11370case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final Paint f11371case;

    /* renamed from: catch, reason: not valid java name */
    public int f11372catch;

    /* renamed from: class, reason: not valid java name */
    public int f11373class;

    /* renamed from: const, reason: not valid java name */
    public int f11374const;

    /* renamed from: continue, reason: not valid java name */
    public int f11375continue;

    /* renamed from: default, reason: not valid java name */
    public int f11376default;

    /* renamed from: do, reason: not valid java name */
    public float f11377do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f11378do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f11379do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f11380do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f11381do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MotionEvent f11383do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11384do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0716as f11385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BaseSlider<S, L, T>.Cfor f11386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f11387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.material.slider.Cdo f11388do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f11389do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<Drawable> f11390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11391do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f11392do;

    /* renamed from: else, reason: not valid java name */
    public int f11393else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public final Paint f11394else;

    /* renamed from: extends, reason: not valid java name */
    public int f11395extends;

    /* renamed from: final, reason: not valid java name */
    public int f11396final;

    /* renamed from: finally, reason: not valid java name */
    public int f11397finally;

    /* renamed from: for, reason: not valid java name */
    public float f11398for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f11399for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f11400for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Paint f11401for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ArrayList f11402for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f11403for;

    /* renamed from: goto, reason: not valid java name */
    public int f11404goto;

    /* renamed from: if, reason: not valid java name */
    public float f11405if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ValueAnimator f11406if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f11407if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Paint f11408if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f11409if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f11410if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11411if;

    /* renamed from: import, reason: not valid java name */
    public int f11412import;

    /* renamed from: native, reason: not valid java name */
    public int f11413native;

    /* renamed from: new, reason: not valid java name */
    public float f11414new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int f11415new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ColorStateList f11416new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final Paint f11417new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ArrayList<Float> f11418new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f11419new;

    /* renamed from: package, reason: not valid java name */
    public int f11420package;

    /* renamed from: private, reason: not valid java name */
    public int f11421private;

    /* renamed from: public, reason: not valid java name */
    public int f11422public;

    /* renamed from: return, reason: not valid java name */
    public int f11423return;

    /* renamed from: static, reason: not valid java name */
    public int f11424static;

    /* renamed from: super, reason: not valid java name */
    public int f11425super;

    /* renamed from: switch, reason: not valid java name */
    public int f11426switch;

    /* renamed from: this, reason: not valid java name */
    public int f11427this;

    /* renamed from: throw, reason: not valid java name */
    public int f11428throw;

    /* renamed from: throws, reason: not valid java name */
    public int f11429throws;

    /* renamed from: try, reason: not valid java name */
    public float f11430try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f11431try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public ColorStateList f11432try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final Paint f11433try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f11434try;

    /* renamed from: while, reason: not valid java name */
    public int f11435while;

    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public float f11436do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList<Float> f11437do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11438do;

        /* renamed from: for, reason: not valid java name */
        public float f11439for;

        /* renamed from: if, reason: not valid java name */
        public float f11440if;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            public final SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11436do);
            parcel.writeFloat(this.f11440if);
            parcel.writeList(this.f11437do);
            parcel.writeFloat(this.f11439for);
            parcel.writeBooleanArray(new boolean[]{this.f11438do});
        }

        public SliderState(Parcel parcel) {
            super(parcel);
            this.f11436do = parcel.readFloat();
            this.f11440if = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f11437do = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f11439for = parcel.readFloat();
            this.f11438do = parcel.createBooleanArray()[0];
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseSlider baseSlider = BaseSlider.this;
            Iterator it = baseSlider.f11389do.iterator();
            while (it.hasNext()) {
                NH nh = (NH) it.next();
                nh.f2350for = 1.2f;
                nh.f2342do = floatValue;
                nh.f2353if = floatValue;
                nh.f2354new = C2785g1.m6709do(0.0f, 1.0f, 0.19f, 1.0f, floatValue);
                nh.invalidateSelf();
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            baseSlider.postInvalidateOnAnimation();
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: for, reason: not valid java name */
        public int f11443for = -1;

        public Cfor() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            BaseSlider.this.f11387do.m2852return(this.f11443for, 4);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            BaseSlider baseSlider = BaseSlider.this;
            C0174Dp m8287try = C3738tL.m8287try(baseSlider);
            Iterator it = baseSlider.f11389do.iterator();
            while (it.hasNext()) {
                ((ViewOverlay) m8287try.f687do).remove((NH) it.next());
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$new, reason: invalid class name */
    public static class Cnew extends AbstractC0604Xg {

        /* renamed from: do, reason: not valid java name */
        public final BaseSlider<?, ?, ?> f11445do;

        /* renamed from: try, reason: not valid java name */
        public final Rect f11446try;

        public Cnew(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f11446try = new Rect();
            this.f11445do = baseSlider;
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: const */
        public final void mo2845const(ArrayList arrayList) {
            for (int i = 0; i < this.f11445do.mo5885break().size(); i++) {
                arrayList.add(Integer.valueOf(i));
            }
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: import */
        public final void mo2849import(int i, C3893w c3893w) {
            c3893w.m8505if(C3893w.Cdo.f16166catch);
            BaseSlider<?, ?, ?> baseSlider = this.f11445do;
            ArrayList mo5885break = baseSlider.mo5885break();
            float floatValue = ((Float) mo5885break.get(i)).floatValue();
            float f = baseSlider.f11405if;
            float f2 = baseSlider.f11398for;
            if (baseSlider.isEnabled()) {
                if (floatValue > f) {
                    c3893w.m8500do(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                }
                if (floatValue < f2) {
                    c3893w.m8500do(4096);
                }
            }
            c3893w.f16161do.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, f, f2, floatValue));
            c3893w.m8495break(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (baseSlider.getContentDescription() != null) {
                sb.append(baseSlider.getContentDescription());
                sb.append(",");
            }
            String format = String.format(((float) ((int) floatValue)) == floatValue ? "%.0f" : "%.2f", Float.valueOf(floatValue));
            String string = baseSlider.getContext().getString(R.string.material_slider_value);
            if (mo5885break.size() > 1) {
                string = i == baseSlider.mo5885break().size() + (-1) ? baseSlider.getContext().getString(R.string.material_slider_range_end) : i == 0 ? baseSlider.getContext().getString(R.string.material_slider_range_start) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            sb.append(String.format(Locale.US, "%s, %s", string, format));
            c3893w.m8498class(sb.toString());
            Rect rect = this.f11446try;
            baseSlider.m5894extends(i, rect);
            c3893w.m8507this(rect);
        }

        /* renamed from: static, reason: not valid java name */
        public final int m5917static(float f, float f2) {
            int i = 0;
            while (true) {
                BaseSlider<?, ?, ?> baseSlider = this.f11445do;
                if (i >= baseSlider.mo5885break().size()) {
                    return -1;
                }
                Rect rect = this.f11446try;
                baseSlider.m5894extends(i, rect);
                if (rect.contains((int) f, (int) f2)) {
                    return i;
                }
                i++;
            }
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: throw */
        public final boolean mo2854throw(int i, int i2, Bundle bundle) {
            BaseSlider<?, ?, ?> baseSlider = this.f11445do;
            if (!baseSlider.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    float f = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
                    int i3 = BaseSlider.f11367strictfp;
                    if (baseSlider.m5913throws(f, i)) {
                        baseSlider.m5896finally();
                        baseSlider.postInvalidate();
                        m2846final(i);
                        return true;
                    }
                }
                return false;
            }
            int i4 = BaseSlider.f11367strictfp;
            float f2 = baseSlider.f11414new;
            if (f2 == 0.0f) {
                f2 = 1.0f;
            }
            if ((baseSlider.f11398for - baseSlider.f11405if) / f2 > 20) {
                f2 *= Math.round(r1 / r5);
            }
            if (i2 == 8192) {
                f2 = -f2;
            }
            if (baseSlider.m5889const()) {
                f2 = -f2;
            }
            if (!baseSlider.m5913throws(C0315Kc.m1179super(((Float) baseSlider.mo5885break().get(i)).floatValue() + f2, baseSlider.f11405if, baseSlider.f11398for), i)) {
                return false;
            }
            baseSlider.m5896finally();
            baseSlider.postInvalidate();
            m2846final(i);
            return true;
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m5884abstract() {
        boolean z;
        int max = Math.max(this.f11373class, Math.max(this.f11425super + getPaddingBottom() + getPaddingTop(), getPaddingBottom() + getPaddingTop() + this.f11412import));
        boolean z2 = true;
        if (max == this.f11374const) {
            z = false;
        } else {
            this.f11374const = max;
            z = true;
        }
        int max2 = Math.max((this.f11435while / 2) - this.f11370case, 0);
        int max3 = Math.max((this.f11425super - this.f11393else) / 2, 0);
        int max4 = Math.max(this.f11420package - this.f11404goto, 0);
        int max5 = Math.max(this.f11421private - this.f11427this, 0);
        int max6 = Math.max(Math.max(max2, max3), Math.max(max4, max5)) + this.f11431try;
        if (this.f11428throw == max6) {
            z2 = false;
        } else {
            this.f11428throw = max6;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (isLaidOut()) {
                this.f11368abstract = Math.max(getWidth() - (this.f11428throw * 2), 0);
                m5895final();
            }
        }
        if (z) {
            requestLayout();
        } else if (z2) {
            postInvalidate();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public ArrayList mo5885break() {
        return new ArrayList(this.f11418new);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5886case() {
        if (this.f11391do) {
            this.f11391do = false;
            ValueAnimator m5897for = m5897for(false);
            this.f11406if = m5897for;
            this.f11378do = null;
            m5897for.addListener(new Cif());
            this.f11406if.start();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m5887catch(double d) {
        double doubleValue = new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.f11414new)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m5888class(MotionEvent motionEvent) {
        boolean z;
        if (motionEvent.getToolType(0) == 3) {
            return false;
        }
        ViewParent parent = getParent();
        while (true) {
            if (!(parent instanceof ViewGroup)) {
                z = false;
                break;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                z = true;
                break;
            }
            parent = parent.getParent();
        }
        return z;
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m5889const() {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return getLayoutDirection() == 1;
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m5890continue() {
        if (this.f11434try) {
            float f = this.f11405if;
            float f2 = this.f11398for;
            if (f >= f2) {
                throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.valueOf(this.f11405if), Float.valueOf(this.f11398for)));
            }
            if (f2 <= f) {
                throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.valueOf(this.f11398for), Float.valueOf(this.f11405if)));
            }
            if (this.f11414new > 0.0f && !m5908strictfp(f2)) {
                throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(this.f11414new), Float.valueOf(this.f11405if), Float.valueOf(this.f11398for)));
            }
            Iterator<Float> it = this.f11418new.iterator();
            while (it.hasNext()) {
                Float next = it.next();
                if (next.floatValue() < this.f11405if || next.floatValue() > this.f11398for) {
                    throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", next, Float.valueOf(this.f11405if), Float.valueOf(this.f11398for)));
                }
                if (this.f11414new > 0.0f && !m5908strictfp(next.floatValue())) {
                    throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", next, Float.valueOf(this.f11405if), Float.valueOf(this.f11414new), Float.valueOf(this.f11414new)));
                }
            }
            float mo5911this = mo5911this();
            if (mo5911this < 0.0f) {
                throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal to 0", Float.valueOf(mo5911this)));
            }
            float f3 = this.f11414new;
            if (f3 > 0.0f && mo5911this > 0.0f) {
                if (this.f11375continue != 1) {
                    throw new IllegalStateException(String.format("minSeparation(%s) cannot be set as a dimension when using stepSize(%s)", Float.valueOf(mo5911this), Float.valueOf(this.f11414new)));
                }
                if (mo5911this < f3 || !m5887catch(mo5911this)) {
                    throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)", Float.valueOf(mo5911this), Float.valueOf(this.f11414new), Float.valueOf(this.f11414new)));
                }
            }
            float f4 = this.f11414new;
            if (f4 != 0.0f) {
                if (((int) f4) != f4) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "stepSize", Float.valueOf(f4));
                }
                float f5 = this.f11405if;
                if (((int) f5) != f5) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueFrom", Float.valueOf(f5));
                }
                float f6 = this.f11398for;
                if (((int) f6) != f6) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueTo", Float.valueOf(f6));
                }
            }
            this.f11434try = false;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final void m5891default() {
        double d;
        float f = this.f11430try;
        float f2 = this.f11414new;
        if (f2 > 0.0f) {
            d = Math.round(f * r1) / ((int) ((this.f11398for - this.f11405if) / f2));
        } else {
            d = f;
        }
        if (m5889const()) {
            d = 1.0d - d;
        }
        float f3 = this.f11398for;
        m5913throws((float) ((d * (f3 - r1)) + this.f11405if), this.f11395extends);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r1 != Integer.MIN_VALUE) goto L24;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchHoverEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            com.google.android.material.slider.BaseSlider$new r0 = r8.f11387do
            android.view.accessibility.AccessibilityManager r1 = r0.f4546do
            boolean r2 = r1.isEnabled()
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L56
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 != 0) goto L13
            goto L56
        L13:
            int r1 = r9.getAction()
            r2 = 256(0x100, float:3.59E-43)
            r5 = 128(0x80, float:1.8E-43)
            r6 = 7
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 == r6) goto L39
            r6 = 9
            if (r1 == r6) goto L39
            r6 = 10
            if (r1 == r6) goto L29
            goto L56
        L29:
            int r1 = r0.f4548for
            if (r1 == r7) goto L56
            if (r1 != r7) goto L30
            goto L54
        L30:
            r0.f4548for = r7
            r0.m2852return(r7, r5)
            r0.m2852return(r1, r2)
            goto L54
        L39:
            float r1 = r9.getX()
            float r6 = r9.getY()
            int r1 = r0.m5917static(r1, r6)
            int r6 = r0.f4548for
            if (r6 != r1) goto L4a
            goto L52
        L4a:
            r0.f4548for = r1
            r0.m2852return(r1, r5)
            r0.m2852return(r6, r2)
        L52:
            if (r1 == r7) goto L56
        L54:
            r0 = 1
            goto L57
        L56:
            r0 = 0
        L57:
            if (r0 != 0) goto L5f
            boolean r9 = super.dispatchHoverEvent(r9)
            if (r9 == 0) goto L60
        L5f:
            r3 = 1
        L60:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.dispatchHoverEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5892do(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.f11435while, this.f11412import);
        } else {
            float max = Math.max(this.f11435while, this.f11412import) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
        }
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.f11380do.setColor(m5898goto(this.f11432try));
        this.f11408if.setColor(m5898goto(this.f11416new));
        this.f11433try.setColor(m5898goto(this.f11400for));
        this.f11371case.setColor(m5898goto(this.f11407if));
        this.f11394else.setColor(m5898goto(this.f11416new));
        Iterator it = this.f11389do.iterator();
        while (it.hasNext()) {
            NH nh = (NH) it.next();
            if (nh.isStateful()) {
                nh.setState(getDrawableState());
            }
        }
        C0716as c0716as = this.f11385do;
        if (c0716as.isStateful()) {
            c0716as.setState(getDrawableState());
        }
        Paint paint = this.f11417new;
        paint.setColor(m5898goto(this.f11379do));
        paint.setAlpha(63);
    }

    /* renamed from: else, reason: not valid java name */
    public final float[] m5893else() {
        float floatValue = this.f11418new.get(0).floatValue();
        ArrayList<Float> arrayList = this.f11418new;
        float floatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (this.f11418new.size() == 1) {
            floatValue = this.f11405if;
        }
        float m5916while = m5916while(floatValue);
        float m5916while2 = m5916while(floatValue2);
        return m5889const() ? new float[]{m5916while2, m5916while} : new float[]{m5916while, m5916while2};
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m5894extends(int i, Rect rect) {
        int m5916while = this.f11428throw + ((int) (m5916while(((Float) mo5885break().get(i)).floatValue()) * this.f11368abstract));
        int m5899if = m5899if();
        int max = Math.max(this.f11435while / 2, this.f11372catch / 2);
        int max2 = Math.max(this.f11412import / 2, this.f11372catch / 2);
        rect.set(m5916while - max, m5899if - max2, m5916while + max, m5899if + max2);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5895final() {
        if (this.f11414new <= 0.0f) {
            return;
        }
        m5890continue();
        int min = Math.min((int) (((this.f11398for - this.f11405if) / this.f11414new) + 1.0f), (this.f11368abstract / this.f11369break) + 1);
        float[] fArr = this.f11392do;
        if (fArr == null || fArr.length != min * 2) {
            this.f11392do = new float[min * 2];
        }
        float f = this.f11368abstract / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f11392do;
            fArr2[i] = ((i / 2.0f) * f) + this.f11428throw;
            fArr2[i + 1] = m5899if();
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m5896finally() {
        if ((!(getBackground() instanceof RippleDrawable)) || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int m5916while = (int) ((m5916while(this.f11418new.get(this.f11397finally).floatValue()) * this.f11368abstract) + this.f11428throw);
            int m5899if = m5899if();
            int i = this.f11413native;
            C0426Pe.Cdo.m1783case(background, m5916while - i, m5899if - i, m5916while + i, m5899if + i);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final ValueAnimator m5897for(boolean z) {
        int m649for;
        TimeInterpolator m651new;
        float f = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.f11406if : this.f11378do;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, z ? 1.0f : 0.0f);
        if (z) {
            m649for = C0222Ft.m649for(getContext(), R.attr.motionDurationMedium4, 83);
            m651new = C0222Ft.m651new(getContext(), R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13027do);
        } else {
            m649for = C0222Ft.m649for(getContext(), R.attr.motionDurationShort3, 117);
            m651new = C0222Ft.m651new(getContext(), R.attr.motionEasingEmphasizedAccelerateInterpolator, C2785g1.f13025do);
        }
        ofFloat.setDuration(m649for);
        ofFloat.setInterpolator(m651new);
        ofFloat.addUpdateListener(new Cdo());
        return ofFloat;
    }

    @Override // android.view.View
    public final CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m5898goto(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
    
        if ((r1 == 3) != false) goto L9;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5899if() {
        /*
            r5 = this;
            int r0 = r5.f11374const
            int r0 = r0 / 2
            int r1 = r5.f11396final
            r2 = 1
            r3 = 0
            if (r1 == r2) goto L11
            r4 = 3
            if (r1 != r4) goto Le
            goto Lf
        Le:
            r2 = 0
        Lf:
            if (r2 == 0) goto L1d
        L11:
            java.util.ArrayList r1 = r5.f11389do
            java.lang.Object r1 = r1.get(r3)
            NH r1 = (defpackage.NH) r1
            int r3 = r1.getIntrinsicHeight()
        L1d:
            int r0 = r0 + r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.m5899if():int");
    }

    /* renamed from: import, reason: not valid java name */
    public final void m5900import() {
        Iterator it = this.f11402for.iterator();
        while (it.hasNext()) {
            ((V4) it.next()).m2513if();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public boolean mo5901native() {
        if (this.f11395extends != -1) {
            return true;
        }
        float f = this.f11430try;
        if (m5889const()) {
            f = 1.0f - f;
        }
        float f2 = this.f11398for;
        float f3 = this.f11405if;
        float m7823for = Cpublic.m7823for(f2, f3, f, f3);
        float m5915volatile = m5915volatile(m7823for);
        this.f11395extends = 0;
        float abs = Math.abs(this.f11418new.get(0).floatValue() - m7823for);
        for (int i = 1; i < this.f11418new.size(); i++) {
            float abs2 = Math.abs(this.f11418new.get(i).floatValue() - m7823for);
            float m5915volatile2 = m5915volatile(this.f11418new.get(i).floatValue());
            if (Float.compare(abs2, abs) > 0) {
                break;
            }
            boolean z = !m5889const() ? m5915volatile2 - m5915volatile >= 0.0f : m5915volatile2 - m5915volatile <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f11395extends = i;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else {
                    if (Math.abs(m5915volatile2 - m5915volatile) < this.f11415new) {
                        this.f11395extends = -1;
                        return false;
                    }
                    if (z) {
                        this.f11395extends = i;
                    }
                }
            }
            abs = abs2;
        }
        return this.f11395extends != -1;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5902new(Canvas canvas, int i, int i2, float f, Drawable drawable) {
        canvas.save();
        canvas.translate((this.f11428throw + ((int) (m5916while(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f11388do);
        Iterator it = this.f11389do.iterator();
        while (it.hasNext()) {
            NH nh = (NH) it.next();
            ViewGroup m8286new = C3738tL.m8286new(this);
            if (m8286new == null) {
                nh.getClass();
            } else {
                nh.getClass();
                int[] iArr = new int[2];
                m8286new.getLocationOnScreen(iArr);
                nh.f2356this = iArr[0];
                m8286new.getWindowVisibleDisplayFrame(nh.f2347do);
                m8286new.addOnLayoutChangeListener(nh.f2343do);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        BaseSlider<S, L, T>.Cfor cfor = this.f11386do;
        if (cfor != null) {
            removeCallbacks(cfor);
        }
        this.f11391do = false;
        Iterator it = this.f11389do.iterator();
        while (it.hasNext()) {
            NH nh = (NH) it.next();
            C0174Dp m8287try = C3738tL.m8287try(this);
            if (m8287try != null) {
                ((ViewOverlay) m8287try.f687do).remove(nh);
                ViewGroup m8286new = C3738tL.m8286new(this);
                if (m8286new == null) {
                    nh.getClass();
                } else {
                    m8286new.removeOnLayoutChangeListener(nh.f2343do);
                }
            }
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f11388do);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0195 A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        Cnew cnew = this.f11387do;
        if (!z) {
            this.f11395extends = -1;
            cnew.m2842break(this.f11397finally);
            return;
        }
        if (i == 1) {
            m5909super(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        } else if (i == 2) {
            m5909super(Integer.MIN_VALUE);
        } else if (i == 17) {
            m5912throw(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        } else if (i == 66) {
            m5912throw(Integer.MIN_VALUE);
        }
        cnew.m2851public(this.f11397finally);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f11418new.size() == 1) {
            this.f11395extends = 0;
        }
        Float f = null;
        Boolean valueOf = null;
        if (this.f11395extends == -1) {
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i == 69) {
                            m5909super(-1);
                            valueOf = Boolean.TRUE;
                        } else if (i != 70) {
                            switch (i) {
                                case 21:
                                    m5912throw(-1);
                                    valueOf = Boolean.TRUE;
                                    break;
                                case 22:
                                    m5912throw(1);
                                    valueOf = Boolean.TRUE;
                                    break;
                            }
                        }
                    }
                    m5909super(1);
                    valueOf = Boolean.TRUE;
                }
                this.f11395extends = this.f11397finally;
                postInvalidate();
                valueOf = Boolean.TRUE;
            } else {
                valueOf = keyEvent.hasNoModifiers() ? Boolean.valueOf(m5909super(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m5909super(-1)) : Boolean.FALSE;
            }
            return valueOf != null ? valueOf.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.f11419new | keyEvent.isLongPress();
        this.f11419new = isLongPress;
        if (isLongPress) {
            float f2 = this.f11414new;
            r10 = f2 != 0.0f ? f2 : 1.0f;
            if ((this.f11398for - this.f11405if) / r10 > 20) {
                r10 *= Math.round(r0 / r11);
            }
        } else {
            float f3 = this.f11414new;
            if (f3 != 0.0f) {
                r10 = f3;
            }
        }
        if (i == 21) {
            if (!m5889const()) {
                r10 = -r10;
            }
            f = Float.valueOf(r10);
        } else if (i == 22) {
            if (m5889const()) {
                r10 = -r10;
            }
            f = Float.valueOf(r10);
        } else if (i == 69) {
            f = Float.valueOf(-r10);
        } else if (i == 70 || i == 81) {
            f = Float.valueOf(r10);
        }
        if (f != null) {
            if (m5913throws(f.floatValue() + this.f11418new.get(this.f11395extends).floatValue(), this.f11395extends)) {
                m5896finally();
                postInvalidate();
            }
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m5909super(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return m5909super(-1);
                }
                return false;
            }
            if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f11395extends = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.f11419new = false;
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if ((r0 == 3) != false) goto L9;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r5, int r6) {
        /*
            r4 = this;
            int r6 = r4.f11374const
            int r0 = r4.f11396final
            r1 = 1
            r2 = 0
            if (r0 == r1) goto Lf
            r3 = 3
            if (r0 != r3) goto Lc
            goto Ld
        Lc:
            r1 = 0
        Ld:
            if (r1 == 0) goto L1b
        Lf:
            java.util.ArrayList r0 = r4.f11389do
            java.lang.Object r0 = r0.get(r2)
            NH r0 = (defpackage.NH) r0
            int r2 = r0.getIntrinsicHeight()
        L1b:
            int r6 = r6 + r2
            r0 = 1073741824(0x40000000, float:2.0)
            int r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r0)
            super.onMeasure(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f11405if = sliderState.f11436do;
        this.f11398for = sliderState.f11440if;
        m5910switch(sliderState.f11437do);
        this.f11414new = sliderState.f11439for;
        if (sliderState.f11438do) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f11436do = this.f11405if;
        sliderState.f11440if = this.f11398for;
        sliderState.f11437do = new ArrayList<>(this.f11418new);
        sliderState.f11439for = this.f11414new;
        sliderState.f11438do = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f11368abstract = Math.max(i - (this.f11428throw * 2), 0);
        m5895final();
        m5896finally();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (r2 != 3) goto L70;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        C0174Dp m8287try;
        super.onVisibilityChanged(view, i);
        if (i == 0 || (m8287try = C3738tL.m8287try(this)) == null) {
            return;
        }
        Iterator it = this.f11389do.iterator();
        while (it.hasNext()) {
            ((ViewOverlay) m8287try.f687do).remove((NH) it.next());
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final void m5903package() {
        int i = this.f11396final;
        if (i == 0 || i == 1) {
            if (this.f11395extends == -1 || !isEnabled()) {
                m5886case();
                return;
            } else {
                m5914try();
                return;
            }
        }
        if (i == 2) {
            m5886case();
            return;
        }
        if (i != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.f11396final);
        }
        if (isEnabled()) {
            Rect rect = new Rect();
            C3738tL.m8286new(this).getHitRect(rect);
            if (getLocalVisibleRect(rect)) {
                m5914try();
                return;
            }
        }
        m5886case();
    }

    /* renamed from: private, reason: not valid java name */
    public final void m5904private(Canvas canvas, Paint paint, RectF rectF, int i) {
        float f;
        float f2 = this.f11425super / 2.0f;
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 1) {
            f = this.f11429throws;
        } else if (i2 != 2) {
            if (i2 == 3) {
                f2 = this.f11429throws;
            }
            f = f2;
        } else {
            f = f2;
            f2 = this.f11429throws;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        Path path = this.f11381do;
        path.reset();
        if (rectF.width() >= f2 + f) {
            path.addRoundRect(rectF, new float[]{f2, f2, f, f, f, f, f2, f2}, Path.Direction.CW);
            canvas.drawPath(path, paint);
            return;
        }
        float min = Math.min(f2, f);
        float max = Math.max(f2, f);
        canvas.save();
        path.addRoundRect(rectF, min, min, Path.Direction.CW);
        canvas.clipPath(path);
        if (i == 0) {
            throw null;
        }
        RectF rectF2 = this.f11409if;
        if (i2 == 1) {
            float f3 = rectF.left;
            rectF2.set(f3, rectF.top, (2.0f * max) + f3, rectF.bottom);
        } else if (i2 != 2) {
            rectF2.set(rectF.centerX() - max, rectF.top, rectF.centerX() + max, rectF.bottom);
        } else {
            float f4 = rectF.right;
            rectF2.set(f4 - (2.0f * max), rectF.top, f4, rectF.bottom);
        }
        canvas.drawRoundRect(rectF2, max, max, paint);
        canvas.restore();
    }

    /* renamed from: public, reason: not valid java name */
    public final void m5905public(int i) {
        if (i == this.f11435while) {
            return;
        }
        this.f11435while = i;
        C3554qD.Cdo cdo = new C3554qD.Cdo();
        float f = this.f11435while / 2.0f;
        HQ m1597break = O4.m1597break(0);
        cdo.f15069do = m1597break;
        float m7865do = C3554qD.Cdo.m7865do(m1597break);
        if (m7865do != -1.0f) {
            cdo.m7870try(m7865do);
        }
        cdo.f15075if = m1597break;
        float m7865do2 = C3554qD.Cdo.m7865do(m1597break);
        if (m7865do2 != -1.0f) {
            cdo.m7866case(m7865do2);
        }
        cdo.f15072for = m1597break;
        float m7865do3 = C3554qD.Cdo.m7865do(m1597break);
        if (m7865do3 != -1.0f) {
            cdo.m7869new(m7865do3);
        }
        cdo.f15078new = m1597break;
        float m7865do4 = C3554qD.Cdo.m7865do(m1597break);
        if (m7865do4 != -1.0f) {
            cdo.m7867for(m7865do4);
        }
        cdo.m7868if(f);
        C3554qD c3554qD = new C3554qD(cdo);
        C0716as c0716as = this.f11385do;
        c0716as.mo4768do(c3554qD);
        c0716as.setBounds(0, 0, this.f11435while, this.f11412import);
        Iterator<Drawable> it = this.f11390do.iterator();
        while (it.hasNext()) {
            m5892do(it.next());
        }
        m5884abstract();
    }

    /* renamed from: return, reason: not valid java name */
    public final void m5906return(NH nh, float f) {
        String format = String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
        if (!TextUtils.equals(nh.f2348do, format)) {
            nh.f2348do = format;
            nh.f2344do.f3638do = true;
            nh.invalidateSelf();
        }
        int m5916while = (this.f11428throw + ((int) (m5916while(f) * this.f11368abstract))) - (nh.getIntrinsicWidth() / 2);
        int m5899if = m5899if() - ((this.f11412import / 2) + this.f11376default);
        nh.setBounds(m5916while, m5899if - nh.getIntrinsicHeight(), nh.getIntrinsicWidth() + m5916while, m5899if);
        Rect rect = new Rect(nh.getBounds());
        C0762be.m4846for(C3738tL.m8286new(this), this, rect);
        nh.setBounds(rect);
        ((ViewOverlay) C3738tL.m8287try(this).f687do).add(nh);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    /* renamed from: static, reason: not valid java name */
    public void mo5907static(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        m5910switch(arrayList);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final boolean m5908strictfp(float f) {
        return m5887catch(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f11405if)), MathContext.DECIMAL64).doubleValue());
    }

    /* renamed from: super, reason: not valid java name */
    public final boolean m5909super(int i) {
        int i2 = this.f11397finally;
        long j = i2 + i;
        long size = this.f11418new.size() - 1;
        if (j < 0) {
            j = 0;
        } else if (j > size) {
            j = size;
        }
        int i3 = (int) j;
        this.f11397finally = i3;
        if (i3 == i2) {
            return false;
        }
        if (this.f11395extends != -1) {
            this.f11395extends = i3;
        }
        m5896finally();
        postInvalidate();
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m5910switch(ArrayList<Float> arrayList) {
        ViewGroup m8286new;
        int resourceId;
        C0174Dp m8287try;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.f11418new.size() == arrayList.size() && this.f11418new.equals(arrayList)) {
            return;
        }
        this.f11418new = arrayList;
        this.f11434try = true;
        this.f11397finally = 0;
        m5896finally();
        ArrayList arrayList2 = this.f11389do;
        if (arrayList2.size() > this.f11418new.size()) {
            List<NH> subList = arrayList2.subList(this.f11418new.size(), arrayList2.size());
            for (NH nh : subList) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (isAttachedToWindow() && (m8287try = C3738tL.m8287try(this)) != null) {
                    ((ViewOverlay) m8287try.f687do).remove(nh);
                    ViewGroup m8286new2 = C3738tL.m8286new(this);
                    if (m8286new2 == null) {
                        nh.getClass();
                    } else {
                        m8286new2.removeOnLayoutChangeListener(nh.f2343do);
                    }
                }
            }
            subList.clear();
        }
        while (arrayList2.size() < this.f11418new.size()) {
            Context context = getContext();
            int i = this.f11399for;
            NH nh2 = new NH(context, i);
            TypedArray m3115new = C0682aH.m3115new(nh2.f2345do, null, O2.v, 0, i, new int[0]);
            Context context2 = nh2.f2345do;
            nh2.f2352goto = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
            boolean z = m3115new.getBoolean(8, true);
            nh2.f2351for = z;
            if (z) {
                C3554qD c3554qD = ((C0716as) nh2).f8253do.f8278do;
                c3554qD.getClass();
                C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
                cdo.f15074for = nh2.m1510default();
                nh2.mo4768do(new C3554qD(cdo));
            } else {
                nh2.f2352goto = 0;
            }
            CharSequence text = m3115new.getText(6);
            boolean equals = TextUtils.equals(nh2.f2348do, text);
            TG tg = nh2.f2344do;
            if (!equals) {
                nh2.f2348do = text;
                tg.f3638do = true;
                nh2.invalidateSelf();
            }
            PG pg = (!m3115new.hasValue(0) || (resourceId = m3115new.getResourceId(0, 0)) == 0) ? null : new PG(context2, resourceId);
            if (pg != null && m3115new.hasValue(1)) {
                pg.f2763if = C0659Zr.m3071if(context2, m3115new, 1);
            }
            tg.m2232for(pg, context2);
            TypedValue m305for = C0154Cr.m305for(context2, R.attr.colorOnBackground, NH.class.getCanonicalName());
            int i2 = m305for.resourceId;
            int color = i2 != 0 ? C0466Ra.getColor(context2, i2) : m305for.data;
            TypedValue m305for2 = C0154Cr.m305for(context2, android.R.attr.colorBackground, NH.class.getCanonicalName());
            int i3 = m305for2.resourceId;
            nh2.m4778super(ColorStateList.valueOf(m3115new.getColor(7, G8.m711new(G8.m707case(color, 153), G8.m707case(i3 != 0 ? C0466Ra.getColor(context2, i3) : m305for2.data, 229)))));
            TypedValue m305for3 = C0154Cr.m305for(context2, R.attr.colorSurface, NH.class.getCanonicalName());
            int i4 = m305for3.resourceId;
            nh2.m4775public(ColorStateList.valueOf(i4 != 0 ? C0466Ra.getColor(context2, i4) : m305for3.data));
            nh2.f2355new = m3115new.getDimensionPixelSize(2, 0);
            nh2.f2357try = m3115new.getDimensionPixelSize(4, 0);
            nh2.f2341case = m3115new.getDimensionPixelSize(5, 0);
            nh2.f2349else = m3115new.getDimensionPixelSize(3, 0);
            m3115new.recycle();
            arrayList2.add(nh2);
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            if (isAttachedToWindow() && (m8286new = C3738tL.m8286new(this)) != null) {
                int[] iArr = new int[2];
                m8286new.getLocationOnScreen(iArr);
                nh2.f2356this = iArr[0];
                m8286new.getWindowVisibleDisplayFrame(nh2.f2347do);
                m8286new.addOnLayoutChangeListener(nh2.f2343do);
            }
        }
        int i5 = arrayList2.size() == 1 ? 0 : 1;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            NH nh3 = (NH) it.next();
            ((C0716as) nh3).f8253do.f8280for = i5;
            nh3.invalidateSelf();
        }
        Iterator it2 = this.f11410if.iterator();
        while (it2.hasNext()) {
            U4 u4 = (U4) it2.next();
            Iterator<Float> it3 = this.f11418new.iterator();
            while (it3.hasNext()) {
                it3.next().floatValue();
                u4.m2322do();
            }
        }
        postInvalidate();
    }

    /* renamed from: this, reason: not valid java name */
    public float mo5911this() {
        return 0.0f;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m5912throw(int i) {
        if (m5889const()) {
            i = i == Integer.MIN_VALUE ? Api.BaseClientBuilder.API_PRIORITY_OTHER : -i;
        }
        m5909super(i);
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m5913throws(float f, int i) {
        this.f11397finally = i;
        if (Math.abs(f - this.f11418new.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        float mo5911this = mo5911this();
        if (this.f11375continue == 0) {
            if (mo5911this == 0.0f) {
                mo5911this = 0.0f;
            } else {
                float f2 = this.f11405if;
                mo5911this = Cpublic.m7823for(f2, this.f11398for, (mo5911this - this.f11428throw) / this.f11368abstract, f2);
            }
        }
        if (m5889const()) {
            mo5911this = -mo5911this;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        this.f11418new.set(i, Float.valueOf(C0315Kc.m1179super(f, i3 < 0 ? this.f11405if : mo5911this + this.f11418new.get(i3).floatValue(), i2 >= this.f11418new.size() ? this.f11398for : this.f11418new.get(i2).floatValue() - mo5911this)));
        Iterator it = this.f11410if.iterator();
        while (it.hasNext()) {
            U4 u4 = (U4) it.next();
            this.f11418new.get(i).floatValue();
            u4.m2322do();
        }
        AccessibilityManager accessibilityManager = this.f11384do;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return true;
        }
        BaseSlider<S, L, T>.Cfor cfor = this.f11386do;
        if (cfor == null) {
            this.f11386do = new Cfor();
        } else {
            removeCallbacks(cfor);
        }
        BaseSlider<S, L, T>.Cfor cfor2 = this.f11386do;
        cfor2.f11443for = i;
        postDelayed(cfor2, 200L);
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5914try() {
        if (!this.f11391do) {
            this.f11391do = true;
            ValueAnimator m5897for = m5897for(true);
            this.f11378do = m5897for;
            this.f11406if = null;
            m5897for.start();
        }
        ArrayList arrayList = this.f11389do;
        Iterator it = arrayList.iterator();
        for (int i = 0; i < this.f11418new.size() && it.hasNext(); i++) {
            if (i != this.f11397finally) {
                m5906return((NH) it.next(), this.f11418new.get(i).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.f11418new.size())));
        }
        m5906return((NH) it.next(), this.f11418new.get(this.f11397finally).floatValue());
    }

    /* renamed from: volatile, reason: not valid java name */
    public final float m5915volatile(float f) {
        return (m5916while(f) * this.f11368abstract) + this.f11428throw;
    }

    /* renamed from: while, reason: not valid java name */
    public final float m5916while(float f) {
        float f2 = this.f11405if;
        float f3 = (f - f2) / (this.f11398for - f2);
        return m5889const() ? 1.0f - f3 : f3;
    }

    /* JADX WARN: Type inference failed for: r2v9, types: [com.google.android.material.slider.do] */
    public BaseSlider(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_Slider), attributeSet, i);
        Paint paint;
        this.f11389do = new ArrayList();
        this.f11410if = new ArrayList();
        this.f11402for = new ArrayList();
        this.f11391do = false;
        this.f11423return = -1;
        this.f11424static = -1;
        this.f11411if = false;
        this.f11418new = new ArrayList<>();
        this.f11395extends = -1;
        this.f11397finally = -1;
        this.f11414new = 0.0f;
        this.f11403for = true;
        this.f11419new = false;
        this.f11381do = new Path();
        this.f11382do = new RectF();
        this.f11409if = new RectF();
        C0716as c0716as = new C0716as();
        this.f11385do = c0716as;
        List<Drawable> emptyList = Collections.emptyList();
        this.f11390do = emptyList;
        this.f11375continue = 0;
        this.f11388do = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.do
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                int i2 = BaseSlider.f11367strictfp;
                BaseSlider.this.m5903package();
            }
        };
        Context context2 = getContext();
        Paint paint2 = new Paint();
        this.f11380do = paint2;
        Paint paint3 = new Paint();
        this.f11408if = paint3;
        Paint paint4 = new Paint(1);
        this.f11401for = paint4;
        paint4.setStyle(Paint.Style.FILL);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint5 = new Paint(1);
        this.f11417new = paint5;
        paint5.setStyle(Paint.Style.FILL);
        Paint paint6 = new Paint();
        this.f11433try = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        Paint paint7 = new Paint();
        this.f11371case = paint7;
        paint7.setStyle(Paint.Style.STROKE);
        paint7.setStrokeCap(Paint.Cap.ROUND);
        Paint paint8 = new Paint();
        this.f11394else = paint8;
        paint8.setStyle(Paint.Style.FILL);
        paint8.setStrokeCap(Paint.Cap.ROUND);
        Resources resources = context2.getResources();
        this.f11373class = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f11431try = dimensionPixelOffset;
        this.f11428throw = dimensionPixelOffset;
        this.f11370case = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f11393else = resources.getDimensionPixelSize(R.dimen.mtrl_slider_track_height);
        this.f11404goto = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.f11427this = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.f11369break = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_min_spacing);
        this.f11376default = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.m, i, R.style.Widget_MaterialComponents_Slider, new int[0]);
        this.f11399for = m3115new.getResourceId(8, R.style.Widget_MaterialComponents_Tooltip);
        this.f11405if = m3115new.getFloat(3, 0.0f);
        this.f11398for = m3115new.getFloat(4, 1.0f);
        mo5907static(Float.valueOf(this.f11405if));
        this.f11414new = m3115new.getFloat(2, 0.0f);
        this.f11372catch = (int) Math.ceil(m3115new.getDimension(9, (float) Math.ceil(C3738tL.m8283for(getContext(), 48))));
        boolean hasValue = m3115new.hasValue(24);
        int i2 = hasValue ? 24 : 26;
        int i3 = hasValue ? 24 : 25;
        ColorStateList m3071if = C0659Zr.m3071if(context2, m3115new, i2);
        m3071if = m3071if == null ? C0466Ra.getColorStateList(context2, R.color.material_slider_inactive_track_color) : m3071if;
        if (!m3071if.equals(this.f11432try)) {
            this.f11432try = m3071if;
            paint2.setColor(m5898goto(m3071if));
            invalidate();
        }
        ColorStateList m3071if2 = C0659Zr.m3071if(context2, m3115new, i3);
        m3071if2 = m3071if2 == null ? C0466Ra.getColorStateList(context2, R.color.material_slider_active_track_color) : m3071if2;
        if (m3071if2.equals(this.f11416new)) {
            paint = paint8;
        } else {
            this.f11416new = m3071if2;
            paint3.setColor(m5898goto(m3071if2));
            paint = paint8;
            paint.setColor(m5898goto(this.f11416new));
            invalidate();
        }
        c0716as.m4778super(C0659Zr.m3071if(context2, m3115new, 10));
        if (m3115new.hasValue(14)) {
            c0716as.m4775public(C0659Zr.m3071if(context2, m3115new, 14));
            postInvalidate();
        }
        c0716as.f8253do.f8280for = m3115new.getDimension(15, 0.0f);
        c0716as.invalidateSelf();
        postInvalidate();
        ColorStateList m3071if3 = C0659Zr.m3071if(context2, m3115new, 5);
        m3071if3 = m3071if3 == null ? C0466Ra.getColorStateList(context2, R.color.material_slider_halo_color) : m3071if3;
        if (!m3071if3.equals(this.f11379do)) {
            this.f11379do = m3071if3;
            Drawable background = getBackground();
            if ((!(getBackground() instanceof RippleDrawable)) || !(background instanceof RippleDrawable)) {
                paint5.setColor(m5898goto(m3071if3));
                paint5.setAlpha(63);
                invalidate();
            } else {
                ((RippleDrawable) background).setColor(m3071if3);
            }
        }
        this.f11403for = m3115new.getBoolean(23, true);
        boolean hasValue2 = m3115new.hasValue(18);
        int i4 = hasValue2 ? 18 : 20;
        int i5 = hasValue2 ? 18 : 19;
        ColorStateList m3071if4 = C0659Zr.m3071if(context2, m3115new, i4);
        m3071if4 = m3071if4 == null ? C0466Ra.getColorStateList(context2, R.color.material_slider_inactive_tick_marks_color) : m3071if4;
        if (!m3071if4.equals(this.f11400for)) {
            this.f11400for = m3071if4;
            paint6.setColor(m5898goto(m3071if4));
            invalidate();
        }
        ColorStateList m3071if5 = C0659Zr.m3071if(context2, m3115new, i5);
        m3071if5 = m3071if5 == null ? C0466Ra.getColorStateList(context2, R.color.material_slider_active_tick_marks_color) : m3071if5;
        if (!m3071if5.equals(this.f11407if)) {
            this.f11407if = m3071if5;
            paint7.setColor(m5898goto(m3071if5));
            invalidate();
        }
        int dimensionPixelSize = m3115new.getDimensionPixelSize(16, 0);
        if (this.f11422public != dimensionPixelSize) {
            this.f11422public = dimensionPixelSize;
            invalidate();
        }
        int dimensionPixelSize2 = m3115new.getDimensionPixelSize(29, 0);
        if (this.f11426switch != dimensionPixelSize2) {
            this.f11426switch = dimensionPixelSize2;
            paint.setStrokeWidth(dimensionPixelSize2);
            invalidate();
        }
        int dimensionPixelSize3 = m3115new.getDimensionPixelSize(28, 0);
        if (this.f11429throws != dimensionPixelSize3) {
            this.f11429throws = dimensionPixelSize3;
            invalidate();
        }
        int dimensionPixelSize4 = m3115new.getDimensionPixelSize(13, 0) * 2;
        int dimensionPixelSize5 = m3115new.getDimensionPixelSize(17, dimensionPixelSize4);
        int dimensionPixelSize6 = m3115new.getDimensionPixelSize(12, dimensionPixelSize4);
        m5905public(dimensionPixelSize5);
        if (dimensionPixelSize6 != this.f11412import) {
            this.f11412import = dimensionPixelSize6;
            c0716as.setBounds(0, 0, this.f11435while, dimensionPixelSize6);
            Iterator<Drawable> it = emptyList.iterator();
            while (it.hasNext()) {
                m5892do(it.next());
            }
            m5884abstract();
        }
        int dimensionPixelSize7 = m3115new.getDimensionPixelSize(6, 0);
        if (dimensionPixelSize7 != this.f11413native) {
            this.f11413native = dimensionPixelSize7;
            Drawable background2 = getBackground();
            if ((!(getBackground() instanceof RippleDrawable)) || !(background2 instanceof RippleDrawable)) {
                postInvalidate();
            } else {
                RippleDrawable rippleDrawable = (RippleDrawable) background2;
                int i6 = this.f11413native;
                if (Build.VERSION.SDK_INT >= 23) {
                    rippleDrawable.setRadius(i6);
                } else {
                    try {
                        RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i6));
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                        throw new IllegalStateException("Couldn't set RippleDrawable radius", e);
                    }
                }
            }
        }
        c0716as.m4770final(m3115new.getDimension(11, 0.0f));
        int dimensionPixelSize8 = m3115new.getDimensionPixelSize(27, 0);
        if (this.f11425super != dimensionPixelSize8) {
            this.f11425super = dimensionPixelSize8;
            paint2.setStrokeWidth(dimensionPixelSize8);
            paint3.setStrokeWidth(this.f11425super);
            m5884abstract();
        }
        int dimensionPixelSize9 = m3115new.getDimensionPixelSize(21, this.f11426switch / 2);
        if (this.f11420package != dimensionPixelSize9) {
            this.f11420package = dimensionPixelSize9;
            paint7.setStrokeWidth(dimensionPixelSize9 * 2);
            m5884abstract();
        }
        int dimensionPixelSize10 = m3115new.getDimensionPixelSize(22, this.f11426switch / 2);
        if (this.f11421private != dimensionPixelSize10) {
            this.f11421private = dimensionPixelSize10;
            paint6.setStrokeWidth(dimensionPixelSize10 * 2);
            m5884abstract();
        }
        int i7 = m3115new.getInt(7, 0);
        if (this.f11396final != i7) {
            this.f11396final = i7;
            requestLayout();
        }
        if (!m3115new.getBoolean(0, true)) {
            setEnabled(false);
        }
        m3115new.recycle();
        setFocusable(true);
        setClickable(true);
        this.f11385do.m4773native(2);
        this.f11415new = ViewConfiguration.get(context2).getScaledTouchSlop();
        Cnew cnew = new Cnew(this);
        this.f11387do = cnew;
        QK.m1858native(this, cnew);
        this.f11384do = (AccessibilityManager) getContext().getSystemService("accessibility");
    }
}
