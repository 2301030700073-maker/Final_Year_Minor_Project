package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.C0222Ft;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.C3738tL;
import defpackage.O2;
import defpackage.QK;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
class ClockHandView extends View {

    /* renamed from: case, reason: not valid java name */
    public int f11746case;

    /* renamed from: do, reason: not valid java name */
    public double f11747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f11748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ValueAnimator f11749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f11750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f11752do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11753do;

    /* renamed from: for, reason: not valid java name */
    public final int f11754for;

    /* renamed from: if, reason: not valid java name */
    public float f11755if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11756if;

    /* renamed from: new, reason: not valid java name */
    public final int f11757new;

    /* renamed from: try, reason: not valid java name */
    public int f11758try;

    /* renamed from: com.google.android.material.timepicker.ClockHandView$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        void mo6019do(float f);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m6022do(int i) {
        return i == 2 ? Math.round(this.f11758try * 0.66f) : this.f11758try;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6023for(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f11755if = f2;
        this.f11747do = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float m6022do = m6022do(this.f11746case);
        float cos = (((float) Math.cos(this.f11747do)) * m6022do) + width;
        float sin = (m6022do * ((float) Math.sin(this.f11747do))) + height;
        float f3 = this.f11754for;
        this.f11751do.set(cos - f3, sin - f3, cos + f3, sin + f3);
        Iterator it = this.f11752do.iterator();
        while (it.hasNext()) {
            ((Cdo) it.next()).mo6019do(f2);
        }
        invalidate();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6024if(float f) {
        ValueAnimator valueAnimator = this.f11749do;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        m6023for(f, false);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float m6022do = m6022do(this.f11746case);
        float cos = (((float) Math.cos(this.f11747do)) * m6022do) + f;
        float f2 = height;
        float sin = (m6022do * ((float) Math.sin(this.f11747do))) + f2;
        Paint paint = this.f11750do;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.f11754for, paint);
        double sin2 = Math.sin(this.f11747do);
        paint.setStrokeWidth(this.f11757new);
        canvas.drawLine(f, f2, width + ((int) (Math.cos(this.f11747do) * r12)), height + ((int) (r12 * sin2)), paint);
        canvas.drawCircle(f, f2, this.f11748do, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f11749do.isRunning()) {
            return;
        }
        m6024if(this.f11755if);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                z = this.f11756if;
                if (this.f11753do) {
                    this.f11746case = ((float) Math.hypot((double) (x - ((float) (getWidth() / 2))), (double) (y - ((float) (getHeight() / 2))))) <= ((float) m6022do(2)) + C3738tL.m8283for(getContext(), 12) ? 2 : 1;
                }
            } else {
                z = false;
            }
            z2 = false;
        } else {
            this.f11756if = false;
            z = false;
            z2 = true;
        }
        boolean z4 = this.f11756if;
        int degrees = ((int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)))) + 90;
        if (degrees < 0) {
            degrees += 360;
        }
        float f = degrees;
        boolean z5 = this.f11755if != f;
        if (!z2 || !z5) {
            if (z5 || z) {
                m6024if(f);
            }
            this.f11756if = z4 | z3;
            return true;
        }
        z3 = true;
        this.f11756if = z4 | z3;
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11749do = new ValueAnimator();
        this.f11752do = new ArrayList();
        Paint paint = new Paint();
        this.f11750do = paint;
        this.f11751do = new RectF();
        this.f11746case = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2487final, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        C0222Ft.m649for(context, R.attr.motionDurationLong2, 200);
        C0222Ft.m651new(context, R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13026do);
        this.f11758try = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f11754for = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f11757new = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f11748do = r3.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m6024if(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(2);
        obtainStyledAttributes.recycle();
    }
}
