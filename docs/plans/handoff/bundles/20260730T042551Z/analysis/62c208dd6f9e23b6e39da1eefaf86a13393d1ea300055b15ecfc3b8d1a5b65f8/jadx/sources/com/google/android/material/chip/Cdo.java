package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0426Pe;
import defpackage.C0716as;
import defpackage.C3612rD;
import defpackage.C3738tL;
import defpackage.PG;
import defpackage.TG;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: com.google.android.material.chip.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends C0716as implements Drawable.Callback, TG.Cif {

    /* renamed from: break, reason: not valid java name */
    public float f10823break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public int f10824break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public boolean f10825break;

    /* renamed from: case, reason: not valid java name */
    public float f10826case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f10827case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public ColorStateList f10828case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f10829case;

    /* renamed from: catch, reason: not valid java name */
    public float f10830catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public int f10831catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public boolean f10832catch;

    /* renamed from: class, reason: not valid java name */
    public float f10833class;

    /* renamed from: class, reason: not valid java name and collision with other field name */
    public int f10834class;

    /* renamed from: const, reason: not valid java name */
    public float f10835const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f10836do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TG f10837do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f10838do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f10839do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorFilter f10840do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint.FontMetrics f10841do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PointF f10842do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f10843do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10844do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RippleDrawable f10845do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextUtils.TruncateAt f10846do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f10847do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<InterfaceC0068do> f10848do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f10849do;

    /* renamed from: else, reason: not valid java name */
    public float f10850else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public int f10851else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public ColorStateList f10852else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f10853else;

    /* renamed from: for, reason: not valid java name */
    public float f10854for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f10855for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Path f10856for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public PorterDuffColorFilter f10857for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Drawable f10858for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10859for;

    /* renamed from: goto, reason: not valid java name */
    public float f10860goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public int f10861goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public ColorStateList f10862goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f10863goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f10864if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f10865if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f10866if;

    /* renamed from: new, reason: not valid java name */
    public float f10867new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f10868new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ColorStateList f10869new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final Paint f10870new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final RectF f10871new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f10872new;

    /* renamed from: this, reason: not valid java name */
    public float f10873this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public int f10874this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public ColorStateList f10875this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f10876this;

    /* renamed from: try, reason: not valid java name */
    public float f10877try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f10878try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public ColorStateList f10879try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f10880try;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f10822if = {R.attr.state_enabled};

    /* renamed from: do, reason: not valid java name */
    public static final ShapeDrawable f10821do = new ShapeDrawable(new OvalShape());

    /* renamed from: com.google.android.material.chip.do$do, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0068do {
        /* renamed from: if */
        void mo5746if();
    }

    public Cdo(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Chip_Action);
        this.f10864if = -1.0f;
        this.f10870new = new Paint(1);
        this.f10841do = new Paint.FontMetrics();
        this.f10871new = new RectF();
        this.f10842do = new PointF();
        this.f10856for = new Path();
        this.f10831catch = 255;
        this.f10843do = PorterDuff.Mode.SRC_IN;
        this.f10848do = new WeakReference<>(null);
        m4766class(context);
        this.f10838do = context;
        TG tg = new TG(this);
        this.f10837do = tg;
        this.f10847do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        tg.f3636do.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f10822if;
        setState(iArr);
        if (!Arrays.equals(this.f10849do, iArr)) {
            this.f10849do = iArr;
            if (m5757instanceof()) {
                m5761strictfp(getState(), iArr);
            }
        }
        this.f10825break = true;
        f10821do.setTint(-1);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m5749abstract(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m5750private(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m5751synchronized(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m5752continue() {
        InterfaceC0068do interfaceC0068do = this.f10848do.get();
        if (interfaceC0068do != null) {
            interfaceC0068do.mo5746if();
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final void m5753default(Rect rect, RectF rectF) {
        float f;
        rectF.setEmpty();
        if (m5756implements() || m5763transient()) {
            float f2 = this.f10826case + this.f10850else;
            Drawable drawable = this.f10863goto ? this.f10858for : this.f10844do;
            float f3 = this.f10867new;
            if (f3 <= 0.0f && drawable != null) {
                f3 = drawable.getIntrinsicWidth();
            }
            if (C0426Pe.m1780if(this) == 0) {
                float f4 = rect.left + f2;
                rectF.left = f4;
                rectF.right = f4 + f3;
            } else {
                float f5 = rect.right - f2;
                rectF.right = f5;
                rectF.left = f5 - f3;
            }
            Drawable drawable2 = this.f10863goto ? this.f10858for : this.f10844do;
            float f6 = this.f10867new;
            if (f6 <= 0.0f && drawable2 != null) {
                f6 = (float) Math.ceil(C3738tL.m8283for(this.f10838do, 24));
                if (drawable2.getIntrinsicHeight() <= f6) {
                    f = drawable2.getIntrinsicHeight();
                    float exactCenterY = rect.exactCenterY() - (f / 2.0f);
                    rectF.top = exactCenterY;
                    rectF.bottom = exactCenterY + f;
                }
            }
            f = f6;
            float exactCenterY2 = rect.exactCenterY() - (f / 2.0f);
            rectF.top = exactCenterY2;
            rectF.bottom = exactCenterY2 + f;
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        RectF rectF;
        int i4;
        int i5;
        int i6;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.f10831catch) == 0) {
            return;
        }
        if (i < 255) {
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            i2 = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
        } else {
            i2 = 0;
        }
        boolean z = this.f10832catch;
        Paint paint = this.f10870new;
        RectF rectF2 = this.f10871new;
        if (!z) {
            paint.setColor(this.f10868new);
            paint.setStyle(Paint.Style.FILL);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, m5759package(), m5759package(), paint);
        }
        if (!this.f10832catch) {
            paint.setColor(this.f10878try);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f10840do;
            if (colorFilter == null) {
                colorFilter = this.f10857for;
            }
            paint.setColorFilter(colorFilter);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, m5759package(), m5759package(), paint);
        }
        if (this.f10832catch) {
            super.draw(canvas);
        }
        if (this.f10854for > 0.0f && !this.f10832catch) {
            paint.setColor(this.f10851else);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f10832catch) {
                ColorFilter colorFilter2 = this.f10840do;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f10857for;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f5 = bounds.left;
            float f6 = this.f10854for / 2.0f;
            rectF2.set(f5 + f6, bounds.top + f6, bounds.right - f6, bounds.bottom - f6);
            float f7 = this.f10864if - (this.f10854for / 2.0f);
            canvas.drawRoundRect(rectF2, f7, f7, paint);
        }
        paint.setColor(this.f10861goto);
        paint.setStyle(Paint.Style.FILL);
        rectF2.set(bounds);
        if (this.f10832catch) {
            RectF rectF3 = new RectF(bounds);
            Path path = this.f10856for;
            C3612rD c3612rD = ((C0716as) this).f8257do;
            C0716as.Cif cif = ((C0716as) this).f8253do;
            c3612rD.m7942do(cif.f8278do, cif.f8283if, rectF3, ((C0716as) this).f8252do, path);
            i3 = 0;
            m4769else(canvas, paint, path, ((C0716as) this).f8253do.f8278do, m4780this());
        } else {
            canvas.drawRoundRect(rectF2, m5759package(), m5759package(), paint);
            i3 = 0;
        }
        if (m5756implements()) {
            m5753default(bounds, rectF2);
            float f8 = rectF2.left;
            float f9 = rectF2.top;
            canvas.translate(f8, f9);
            this.f10844do.setBounds(i3, i3, (int) rectF2.width(), (int) rectF2.height());
            this.f10844do.draw(canvas);
            canvas.translate(-f8, -f9);
        }
        if (m5763transient()) {
            m5753default(bounds, rectF2);
            float f10 = rectF2.left;
            float f11 = rectF2.top;
            canvas.translate(f10, f11);
            this.f10858for.setBounds(i3, i3, (int) rectF2.width(), (int) rectF2.height());
            this.f10858for.draw(canvas);
            canvas.translate(-f10, -f11);
        }
        if (!this.f10825break || this.f10847do == null) {
            rectF = rectF2;
            i4 = i2;
            i5 = 255;
        } else {
            PointF pointF = this.f10842do;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f10847do;
            TG tg = this.f10837do;
            if (charSequence != null) {
                float m5754extends = m5754extends() + this.f10826case + this.f10873this;
                if (C0426Pe.m1780if(this) == 0) {
                    pointF.x = bounds.left + m5754extends;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - m5754extends;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                TextPaint textPaint = tg.f3636do;
                Paint.FontMetrics fontMetrics = this.f10841do;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF2.setEmpty();
            if (this.f10847do != null) {
                float m5754extends2 = m5754extends() + this.f10826case + this.f10873this;
                float m5755finally = m5755finally() + this.f10835const + this.f10823break;
                if (C0426Pe.m1780if(this) == 0) {
                    rectF2.left = bounds.left + m5754extends2;
                    rectF2.right = bounds.right - m5755finally;
                } else {
                    rectF2.left = bounds.left + m5755finally;
                    rectF2.right = bounds.right - m5754extends2;
                }
                rectF2.top = bounds.top;
                rectF2.bottom = bounds.bottom;
            }
            PG pg = tg.f3634do;
            TextPaint textPaint2 = tg.f3636do;
            if (pg != null) {
                textPaint2.drawableState = getState();
                tg.f3634do.m1761try(this.f10838do, textPaint2, tg.f3635do);
            }
            textPaint2.setTextAlign(align);
            boolean z2 = Math.round(tg.m2231do(this.f10847do.toString())) > Math.round(rectF2.width());
            if (z2) {
                i6 = canvas.save();
                canvas.clipRect(rectF2);
            } else {
                i6 = 0;
            }
            CharSequence charSequence2 = this.f10847do;
            if (z2 && this.f10846do != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF2.width(), this.f10846do);
            }
            CharSequence charSequence3 = charSequence2;
            int length = charSequence3.length();
            float f12 = pointF.x;
            float f13 = pointF.y;
            i5 = 255;
            rectF = rectF2;
            i4 = i2;
            canvas.drawText(charSequence3, 0, length, f12, f13, textPaint2);
            if (z2) {
                canvas.restoreToCount(i6);
            }
        }
        if (m5757instanceof()) {
            rectF.setEmpty();
            if (m5757instanceof()) {
                float f14 = this.f10835const + this.f10833class;
                if (C0426Pe.m1780if(this) == 0) {
                    float f15 = bounds.right - f14;
                    rectF.right = f15;
                    rectF.left = f15 - this.f10877try;
                } else {
                    float f16 = bounds.left + f14;
                    rectF.left = f16;
                    rectF.right = f16 + this.f10877try;
                }
                float exactCenterY = bounds.exactCenterY();
                float f17 = this.f10877try;
                float f18 = exactCenterY - (f17 / 2.0f);
                rectF.top = f18;
                rectF.bottom = f18 + f17;
            }
            float f19 = rectF.left;
            float f20 = rectF.top;
            canvas.translate(f19, f20);
            this.f10866if.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f10845do.setBounds(this.f10866if.getBounds());
            this.f10845do.jumpToCurrentState();
            this.f10845do.draw(canvas);
            canvas.translate(-f19, -f20);
        }
        if (this.f10831catch < i5) {
            canvas.restoreToCount(i4);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final float m5754extends() {
        if (!m5756implements() && !m5763transient()) {
            return 0.0f;
        }
        float f = this.f10850else;
        Drawable drawable = this.f10863goto ? this.f10858for : this.f10844do;
        float f2 = this.f10867new;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        return f2 + f + this.f10860goto;
    }

    /* renamed from: finally, reason: not valid java name */
    public final float m5755finally() {
        if (m5757instanceof()) {
            return this.f10830catch + this.f10877try + this.f10833class;
        }
        return 0.0f;
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f10831catch;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f10840do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f10836do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(m5755finally() + this.f10837do.m2231do(this.f10847do.toString()) + m5754extends() + this.f10826case + this.f10873this + this.f10823break + this.f10835const), this.f10834class);
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    @TargetApi(21)
    public final void getOutline(Outline outline) {
        if (this.f10832catch) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f10836do, this.f10864if);
        } else {
            outline.setRoundRect(bounds, this.f10864if);
        }
        outline.setAlpha(this.f10831catch / 255.0f);
    }

    @Override // defpackage.TG.Cif
    /* renamed from: if */
    public final void mo1511if() {
        m5752continue();
        invalidateSelf();
    }

    /* renamed from: implements, reason: not valid java name */
    public final boolean m5756implements() {
        return this.f10859for && this.f10844do != null;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final boolean m5757instanceof() {
        return this.f10880try && this.f10866if != null;
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m5758interface(boolean z) {
        if (this.f10859for != z) {
            boolean m5756implements = m5756implements();
            this.f10859for = z;
            boolean m5756implements2 = m5756implements();
            if (m5756implements != m5756implements2) {
                if (m5756implements2) {
                    m5762throws(this.f10844do);
                } else {
                    m5751synchronized(this.f10844do);
                }
                invalidateSelf();
                m5752continue();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (m5750private(this.f10839do) || m5750private(this.f10865if) || m5750private(this.f10855for)) {
            return true;
        }
        if (this.f10876this && m5750private(this.f10875this)) {
            return true;
        }
        PG pg = this.f10837do.f3634do;
        if ((pg == null || (colorStateList = pg.f2763if) == null || !colorStateList.isStateful()) ? false : true) {
            return true;
        }
        return (this.f10853else && this.f10858for != null && this.f10829case) || m5749abstract(this.f10844do) || m5749abstract(this.f10858for) || m5750private(this.f10862goto);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (m5756implements()) {
            onLayoutDirectionChanged |= C0426Pe.m1778for(this.f10844do, i);
        }
        if (m5763transient()) {
            onLayoutDirectionChanged |= C0426Pe.m1778for(this.f10858for, i);
        }
        if (m5757instanceof()) {
            onLayoutDirectionChanged |= C0426Pe.m1778for(this.f10866if, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (m5756implements()) {
            onLevelChange |= this.f10844do.setLevel(i);
        }
        if (m5763transient()) {
            onLevelChange |= this.f10858for.setLevel(i);
        }
        if (m5757instanceof()) {
            onLevelChange |= this.f10866if.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable, defpackage.TG.Cif
    public final boolean onStateChange(int[] iArr) {
        if (this.f10832catch) {
            super.onStateChange(iArr);
        }
        return m5761strictfp(iArr, this.f10849do);
    }

    /* renamed from: package, reason: not valid java name */
    public final float m5759package() {
        return this.f10832catch ? m4765catch() : this.f10864if;
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m5760protected(boolean z) {
        if (this.f10880try != z) {
            boolean m5757instanceof = m5757instanceof();
            this.f10880try = z;
            boolean m5757instanceof2 = m5757instanceof();
            if (m5757instanceof != m5757instanceof2) {
                if (m5757instanceof2) {
                    m5762throws(this.f10866if);
                } else {
                    m5751synchronized(this.f10866if);
                }
                invalidateSelf();
                m5752continue();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f10831catch != i) {
            this.f10831catch = i;
            invalidateSelf();
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f10840do != colorFilter) {
            this.f10840do = colorFilter;
            invalidateSelf();
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f10862goto != colorStateList) {
            this.f10862goto = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f10843do != mode) {
            this.f10843do = mode;
            ColorStateList colorStateList = this.f10862goto;
            this.f10857for = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (m5756implements()) {
            visible |= this.f10844do.setVisible(z, z2);
        }
        if (m5763transient()) {
            visible |= this.f10858for.setVisible(z, z2);
        }
        if (m5757instanceof()) {
            visible |= this.f10866if.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00e7  */
    /* renamed from: strictfp, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5761strictfp(int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Cdo.m5761strictfp(int[], int[]):boolean");
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m5762throws(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C0426Pe.m1778for(drawable, C0426Pe.m1780if(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f10866if) {
            if (drawable.isStateful()) {
                drawable.setState(this.f10849do);
            }
            C0426Pe.Cdo.m1787goto(drawable, this.f10828case);
            return;
        }
        Drawable drawable2 = this.f10844do;
        if (drawable == drawable2 && this.f10872new) {
            C0426Pe.Cdo.m1787goto(drawable2, this.f10879try);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final boolean m5763transient() {
        return this.f10853else && this.f10858for != null && this.f10863goto;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m5764volatile(boolean z) {
        if (this.f10853else != z) {
            boolean m5763transient = m5763transient();
            this.f10853else = z;
            boolean m5763transient2 = m5763transient();
            if (m5763transient != m5763transient2) {
                if (m5763transient2) {
                    m5762throws(this.f10858for);
                } else {
                    m5751synchronized(this.f10858for);
                }
                invalidateSelf();
                m5752continue();
            }
        }
    }
}
