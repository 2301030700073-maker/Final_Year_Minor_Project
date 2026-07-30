package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import com.joeykrim.rootcheck.R;
import defpackage.C0659Zr;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3554qD;
import defpackage.C3612rD;
import defpackage.InterfaceC3789uD;
import defpackage.O2;

/* loaded from: classes3.dex */
public class ShapeableImageView extends AppCompatImageView implements InterfaceC3789uD {

    /* renamed from: case, reason: not valid java name */
    public final int f11142case;

    /* renamed from: do, reason: not valid java name */
    public final float f11143do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f11144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f11145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f11146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f11148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f11149do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3612rD f11150do;

    /* renamed from: else, reason: not valid java name */
    public final int f11151else;

    /* renamed from: for, reason: not valid java name */
    public final int f11152for;

    /* renamed from: goto, reason: not valid java name */
    public final int f11153goto;

    /* renamed from: if, reason: not valid java name */
    public final Paint f11154if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Path f11155if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f11156if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11157if;

    /* renamed from: new, reason: not valid java name */
    public final int f11158new;

    /* renamed from: try, reason: not valid java name */
    public final int f11159try;

    @TargetApi(21)
    /* renamed from: com.google.android.material.imageview.ShapeableImageView$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {

        /* renamed from: do, reason: not valid java name */
        public final Rect f11160do = new Rect();

        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            ShapeableImageView shapeableImageView = ShapeableImageView.this;
            if (shapeableImageView.f11149do == null) {
                return;
            }
            if (shapeableImageView.f11148do == null) {
                shapeableImageView.f11148do = new C0716as(shapeableImageView.f11149do);
            }
            RectF rectF = shapeableImageView.f11147do;
            Rect rect = this.f11160do;
            rectF.round(rect);
            shapeableImageView.f11148do.setBounds(rect);
            shapeableImageView.f11148do.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        this.f11149do = c3554qD;
        C0716as c0716as = this.f11148do;
        if (c0716as != null) {
            c0716as.mo4768do(c3554qD);
        }
        m5836else(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5836else(int i, int i2) {
        RectF rectF = this.f11147do;
        rectF.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        C3554qD c3554qD = this.f11149do;
        Path path = this.f11146do;
        this.f11150do.m7942do(c3554qD, 1.0f, rectF, null, path);
        Path path2 = this.f11155if;
        path2.rewind();
        path2.addPath(path);
        RectF rectF2 = this.f11156if;
        rectF2.set(0.0f, 0.0f, i, i2);
        path2.addRect(rectF2, Path.Direction.CCW);
    }

    @Override // android.view.View
    public final int getPaddingBottom() {
        return super.getPaddingBottom() - this.f11142case;
    }

    @Override // android.view.View
    public final int getPaddingEnd() {
        int paddingEnd = super.getPaddingEnd();
        int i = this.f11153goto;
        if (i == Integer.MIN_VALUE) {
            i = m5839try() ? this.f11152for : this.f11159try;
        }
        return paddingEnd - i;
    }

    @Override // android.view.View
    public final int getPaddingLeft() {
        return super.getPaddingLeft() - m5837if();
    }

    @Override // android.view.View
    public final int getPaddingRight() {
        return super.getPaddingRight() - m5838new();
    }

    @Override // android.view.View
    public final int getPaddingStart() {
        int paddingStart = super.getPaddingStart();
        int i = this.f11151else;
        if (i == Integer.MIN_VALUE) {
            i = m5839try() ? this.f11159try : this.f11152for;
        }
        return paddingStart - i;
    }

    @Override // android.view.View
    public final int getPaddingTop() {
        return super.getPaddingTop() - this.f11158new;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5837if() {
        int i = this.f11153goto;
        int i2 = this.f11151else;
        if ((i2 == Integer.MIN_VALUE && i == Integer.MIN_VALUE) ? false : true) {
            if (m5839try() && i != Integer.MIN_VALUE) {
                return i;
            }
            if (!m5839try() && i2 != Integer.MIN_VALUE) {
                return i2;
            }
        }
        return this.f11152for;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m5838new() {
        int i = this.f11153goto;
        int i2 = this.f11151else;
        if ((i2 == Integer.MIN_VALUE && i == Integer.MIN_VALUE) ? false : true) {
            if (m5839try() && i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m5839try() && i != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f11159try;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f11155if, this.f11154if);
        ColorStateList colorStateList = this.f11144do;
        if (colorStateList == null) {
            return;
        }
        Paint paint = this.f11145do;
        float f = this.f11143do;
        paint.setStrokeWidth(f);
        int colorForState = colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
        if (f <= 0.0f || colorForState == 0) {
            return;
        }
        paint.setColor(colorForState);
        canvas.drawPath(this.f11146do, paint);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.f11157if && isLayoutDirectionResolved()) {
            boolean z = true;
            this.f11157if = true;
            if (!isPaddingRelative()) {
                if (this.f11151else == Integer.MIN_VALUE && this.f11153goto == Integer.MIN_VALUE) {
                    z = false;
                }
                if (!z) {
                    setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
                    return;
                }
            }
            setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m5836else(i, i2);
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(m5837if() + i, i2 + this.f11158new, m5838new() + i3, i4 + this.f11142case);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        int i5 = this.f11159try;
        int i6 = this.f11152for;
        int i7 = this.f11151else;
        if (i7 == Integer.MIN_VALUE) {
            i7 = m5839try() ? i5 : i6;
        }
        int i8 = i7 + i;
        int i9 = i2 + this.f11158new;
        int i10 = this.f11153goto;
        if (i10 == Integer.MIN_VALUE) {
            if (m5839try()) {
                i5 = i6;
            }
            i10 = i5;
        }
        super.setPaddingRelative(i8, i9, i10 + i3, i4 + this.f11142case);
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m5839try() {
        return getLayoutDirection() == 1;
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_ShapeableImageView), attributeSet, i);
        this.f11150do = C3612rD.Cdo.f15244do;
        this.f11146do = new Path();
        this.f11157if = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f11154if = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f11147do = new RectF();
        this.f11156if = new RectF();
        this.f11155if = new Path();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, O2.k, i, R.style.Widget_MaterialComponents_ShapeableImageView);
        setLayerType(2, null);
        this.f11144do = C0659Zr.m3071if(context2, obtainStyledAttributes, 9);
        this.f11143do = obtainStyledAttributes.getDimensionPixelSize(10, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f11152for = dimensionPixelSize;
        this.f11158new = dimensionPixelSize;
        this.f11159try = dimensionPixelSize;
        this.f11142case = dimensionPixelSize;
        this.f11152for = obtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize);
        this.f11158new = obtainStyledAttributes.getDimensionPixelSize(6, dimensionPixelSize);
        this.f11159try = obtainStyledAttributes.getDimensionPixelSize(4, dimensionPixelSize);
        this.f11142case = obtainStyledAttributes.getDimensionPixelSize(1, dimensionPixelSize);
        this.f11151else = obtainStyledAttributes.getDimensionPixelSize(5, Integer.MIN_VALUE);
        this.f11153goto = obtainStyledAttributes.getDimensionPixelSize(2, Integer.MIN_VALUE);
        obtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f11145do = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f11149do = new C3554qD(C3554qD.m7859for(context2, attributeSet, i, R.style.Widget_MaterialComponents_ShapeableImageView));
        setOutlineProvider(new Cdo());
    }
}
