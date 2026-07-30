package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.timepicker.ClockHandView;
import com.joeykrim.rootcheck.R;
import defpackage.C0466Ra;
import defpackage.C0659Zr;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.O2;
import defpackage.QK;
import java.util.Arrays;

/* loaded from: classes3.dex */
class ClockFaceView extends RadialViewGroup implements ClockHandView.Cdo {

    /* renamed from: catch, reason: not valid java name */
    public final int f11729catch;

    /* renamed from: class, reason: not valid java name */
    public final int f11730class;

    /* renamed from: const, reason: not valid java name */
    public final int f11731const;

    /* renamed from: do, reason: not valid java name */
    public float f11732do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f11733do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11734do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11735do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f11736do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClockHandView f11737do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f11738do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f11739do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String[] f11740do;

    /* renamed from: final, reason: not valid java name */
    public final int f11741final;

    /* renamed from: for, reason: not valid java name */
    public final SparseArray<TextView> f11742for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f11743if;

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ClockFaceView clockFaceView = ClockFaceView.this;
            if (!clockFaceView.isShown()) {
                return true;
            }
            clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
            int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f11737do.f11754for) - clockFaceView.f11729catch;
            if (height != clockFaceView.f11759break) {
                clockFaceView.f11759break = height;
                clockFaceView.mo6021throw();
                int i = clockFaceView.f11759break;
                ClockHandView clockHandView = clockFaceView.f11737do;
                clockHandView.f11758try = i;
                clockHandView.invalidate();
            }
            return true;
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$if, reason: invalid class name */
    public class Cif extends Cimplements {
        public Cif() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: else */
        public final boolean mo3759else(View view, int i, Bundle bundle) {
            if (i != 16) {
                return super.mo3759else(view, i, bundle);
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            ClockFaceView clockFaceView = ClockFaceView.this;
            view.getHitRect(clockFaceView.f11734do);
            float centerX = clockFaceView.f11734do.centerX();
            float centerY = clockFaceView.f11734do.centerY();
            clockFaceView.f11737do.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, centerX, centerY, 0));
            clockFaceView.f11737do.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, centerX, centerY, 0));
            return true;
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
            if (intValue > 0) {
                TextView textView = ClockFaceView.this.f11742for.get(intValue - 1);
                if (Build.VERSION.SDK_INT >= 22) {
                    accessibilityNodeInfo.setTraversalAfter(textView);
                }
            }
            c3893w.m8497catch(C3893w.Ccase.m8509do(0, 1, intValue, false, view.isSelected(), 1));
            accessibilityNodeInfo.setClickable(true);
            c3893w.m8505if(C3893w.Cdo.f16169for);
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.Cdo
    /* renamed from: do, reason: not valid java name */
    public final void mo6019do(float f) {
        if (Math.abs(this.f11732do - f) > 0.001f) {
            this.f11732do = f;
            m6020import();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m6020import() {
        SparseArray<TextView> sparseArray;
        RectF rectF;
        Rect rect;
        RectF rectF2 = this.f11737do.f11751do;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.f11742for;
            int size = sparseArray.size();
            rectF = this.f11735do;
            rect = this.f11734do;
            if (i >= size) {
                break;
            }
            TextView textView2 = sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float height = rectF.height() * rectF.width();
                if (height < f) {
                    textView = textView2;
                    f = height;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = sparseArray.get(i2);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.f11743if);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(rectF2, rectF) ? null : new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f11739do, this.f11738do, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(1, this.f11740do.length, 1).f16179do);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m6020import();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.f11741final / Math.max(Math.max(this.f11730class / displayMetrics.heightPixels, this.f11731const / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    /* renamed from: throw, reason: not valid java name */
    public final void mo6021throw() {
        super.mo6021throw();
        int i = 0;
        while (true) {
            SparseArray<TextView> sparseArray = this.f11742for;
            if (i >= sparseArray.size()) {
                return;
            }
            sparseArray.get(i).setVisibility(0);
            i++;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11734do = new Rect();
        this.f11735do = new RectF();
        this.f11743if = new Rect();
        SparseArray<TextView> sparseArray = new SparseArray<>();
        this.f11742for = sparseArray;
        this.f11738do = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2476const, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList m3071if = C0659Zr.m3071if(context, obtainStyledAttributes, 1);
        this.f11733do = m3071if;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f11737do = clockHandView;
        this.f11729catch = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = m3071if.getColorForState(new int[]{android.R.attr.state_selected}, m3071if.getDefaultColor());
        this.f11739do = new int[]{colorForState, colorForState, m3071if.getDefaultColor()};
        clockHandView.f11752do.add(this);
        int defaultColor = C0466Ra.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList m3071if2 = C0659Zr.m3071if(context, obtainStyledAttributes, 0);
        setBackgroundColor(m3071if2 != null ? m3071if2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new Cdo());
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f11736do = new Cif();
        String[] strArr = new String[12];
        Arrays.fill(strArr, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.f11740do = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z = false;
        for (int i2 = 0; i2 < Math.max(this.f11740do.length, size); i2++) {
            TextView textView = sparseArray.get(i2);
            if (i2 >= this.f11740do.length) {
                removeView(textView);
                sparseArray.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i2, textView);
                    addView(textView);
                }
                textView.setText(this.f11740do[i2]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i2));
                int i3 = (i2 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i3));
                z = i3 > 1 ? true : z;
                QK.m1858native(textView, this.f11736do);
                textView.setTextColor(this.f11733do);
            }
        }
        ClockHandView clockHandView2 = this.f11737do;
        if (clockHandView2.f11753do && !z) {
            clockHandView2.f11746case = 1;
        }
        clockHandView2.f11753do = z;
        clockHandView2.invalidate();
        this.f11730class = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f11731const = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f11741final = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
