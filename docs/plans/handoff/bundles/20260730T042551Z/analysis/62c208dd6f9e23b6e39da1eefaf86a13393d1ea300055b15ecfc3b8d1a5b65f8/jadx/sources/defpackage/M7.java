package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
public final class M7 extends Drawable implements Animatable {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f2100do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f2101do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f2102do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Resources f2103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2104do;

    /* renamed from: if, reason: not valid java name */
    public float f2105if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinearInterpolator f2098do = new LinearInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static final C0166Dh f2097do = new C0166Dh();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f2099do = {-16777216};

    /* renamed from: M7$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: case, reason: not valid java name */
        public float f2106case;

        /* renamed from: do, reason: not valid java name */
        public float f2107do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f2108do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Paint f2109do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Path f2110do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final RectF f2111do = new RectF();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f2112do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f2113do;

        /* renamed from: else, reason: not valid java name */
        public float f2114else;

        /* renamed from: for, reason: not valid java name */
        public float f2115for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f2116for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final Paint f2117for;

        /* renamed from: goto, reason: not valid java name */
        public float f2118goto;

        /* renamed from: if, reason: not valid java name */
        public float f2119if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f2120if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Paint f2121if;

        /* renamed from: new, reason: not valid java name */
        public float f2122new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public int f2123new;

        /* renamed from: this, reason: not valid java name */
        public float f2124this;

        /* renamed from: try, reason: not valid java name */
        public float f2125try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public int f2126try;

        public Cdo() {
            Paint paint = new Paint();
            this.f2109do = paint;
            Paint paint2 = new Paint();
            this.f2121if = paint2;
            Paint paint3 = new Paint();
            this.f2117for = paint3;
            this.f2107do = 0.0f;
            this.f2119if = 0.0f;
            this.f2115for = 0.0f;
            this.f2122new = 5.0f;
            this.f2118goto = 1.0f;
            this.f2123new = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m1395do(int i) {
            this.f2108do = i;
            this.f2126try = this.f2113do[i];
        }
    }

    public M7(Context context) {
        context.getClass();
        this.f2103do = context.getResources();
        Cdo cdo = new Cdo();
        this.f2101do = cdo;
        cdo.f2113do = f2099do;
        cdo.m1395do(0);
        cdo.f2122new = 2.5f;
        cdo.f2109do.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new K7(this, cdo));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f2098do);
        ofFloat.addListener(new L7(this, cdo));
        this.f2102do = ofFloat;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1393if(float f, Cdo cdo) {
        if (f <= 0.75f) {
            cdo.f2126try = cdo.f2113do[cdo.f2108do];
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int[] iArr = cdo.f2113do;
        int i = cdo.f2108do;
        int i2 = iArr[i];
        int i3 = iArr[(i + 1) % iArr.length];
        cdo.f2126try = ((((i2 >> 24) & 255) + ((int) ((((i3 >> 24) & 255) - r1) * f2))) << 24) | ((((i2 >> 16) & 255) + ((int) ((((i3 >> 16) & 255) - r3) * f2))) << 16) | ((((i2 >> 8) & 255) + ((int) ((((i3 >> 8) & 255) - r4) * f2))) << 8) | ((i2 & 255) + ((int) (f2 * ((i3 & 255) - r2))));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1394do(float f, Cdo cdo, boolean z) {
        float interpolation;
        float f2;
        if (this.f2104do) {
            m1393if(f, cdo);
            float floor = (float) (Math.floor(cdo.f2114else / 0.8f) + 1.0d);
            float f3 = cdo.f2125try;
            float f4 = cdo.f2106case;
            cdo.f2107do = (((f4 - 0.01f) - f3) * f) + f3;
            cdo.f2119if = f4;
            float f5 = cdo.f2114else;
            cdo.f2115for = Cpublic.m7823for(floor, f5, f, f5);
            return;
        }
        if (f != 1.0f || z) {
            float f6 = cdo.f2114else;
            C0166Dh c0166Dh = f2097do;
            if (f < 0.5f) {
                interpolation = cdo.f2125try;
                f2 = (c0166Dh.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float f7 = cdo.f2125try + 0.79f;
                interpolation = f7 - (((1.0f - c0166Dh.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f2 = f7;
            }
            float f8 = (0.20999998f * f) + f6;
            float f9 = (f + this.f2105if) * 216.0f;
            cdo.f2107do = interpolation;
            cdo.f2119if = f2;
            cdo.f2115for = f8;
            this.f2100do = f9;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f2100do, bounds.exactCenterX(), bounds.exactCenterY());
        Cdo cdo = this.f2101do;
        RectF rectF = cdo.f2111do;
        float f = cdo.f2124this;
        float f2 = (cdo.f2122new / 2.0f) + f;
        if (f <= 0.0f) {
            f2 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((cdo.f2120if * cdo.f2118goto) / 2.0f, cdo.f2122new / 2.0f);
        }
        rectF.set(bounds.centerX() - f2, bounds.centerY() - f2, bounds.centerX() + f2, bounds.centerY() + f2);
        float f3 = cdo.f2107do;
        float f4 = cdo.f2115for;
        float f5 = (f3 + f4) * 360.0f;
        float f6 = ((cdo.f2119if + f4) * 360.0f) - f5;
        Paint paint = cdo.f2109do;
        paint.setColor(cdo.f2126try);
        paint.setAlpha(cdo.f2123new);
        float f7 = cdo.f2122new / 2.0f;
        rectF.inset(f7, f7);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, cdo.f2117for);
        float f8 = -f7;
        rectF.inset(f8, f8);
        canvas.drawArc(rectF, f5, f6, false, paint);
        if (cdo.f2112do) {
            Path path = cdo.f2110do;
            if (path == null) {
                Path path2 = new Path();
                cdo.f2110do = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f9 = (cdo.f2120if * cdo.f2118goto) / 2.0f;
            cdo.f2110do.moveTo(0.0f, 0.0f);
            cdo.f2110do.lineTo(cdo.f2120if * cdo.f2118goto, 0.0f);
            Path path3 = cdo.f2110do;
            float f10 = cdo.f2120if;
            float f11 = cdo.f2118goto;
            path3.lineTo((f10 * f11) / 2.0f, cdo.f2116for * f11);
            cdo.f2110do.offset((rectF.centerX() + min) - f9, (cdo.f2122new / 2.0f) + rectF.centerY());
            cdo.f2110do.close();
            Paint paint2 = cdo.f2121if;
            paint2.setColor(cdo.f2126try);
            paint2.setAlpha(cdo.f2123new);
            canvas.save();
            canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
            canvas.drawPath(cdo.f2110do, paint2);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f2101do.f2123new;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f2102do.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f2101do.f2123new = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f2101do.f2109do.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f2102do.cancel();
        Cdo cdo = this.f2101do;
        float f = cdo.f2107do;
        cdo.f2125try = f;
        float f2 = cdo.f2119if;
        cdo.f2106case = f2;
        cdo.f2114else = cdo.f2115for;
        if (f2 != f) {
            this.f2104do = true;
            this.f2102do.setDuration(666L);
            this.f2102do.start();
            return;
        }
        cdo.m1395do(0);
        cdo.f2125try = 0.0f;
        cdo.f2106case = 0.0f;
        cdo.f2114else = 0.0f;
        cdo.f2107do = 0.0f;
        cdo.f2119if = 0.0f;
        cdo.f2115for = 0.0f;
        this.f2102do.setDuration(1332L);
        this.f2102do.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f2102do.cancel();
        this.f2100do = 0.0f;
        Cdo cdo = this.f2101do;
        if (cdo.f2112do) {
            cdo.f2112do = false;
        }
        cdo.m1395do(0);
        cdo.f2125try = 0.0f;
        cdo.f2106case = 0.0f;
        cdo.f2114else = 0.0f;
        cdo.f2107do = 0.0f;
        cdo.f2119if = 0.0f;
        cdo.f2115for = 0.0f;
        invalidateSelf();
    }
}
