package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.joeykrim.rootcheck.R;

/* renamed from: Xe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0602Xe extends Drawable {

    /* renamed from: else, reason: not valid java name */
    public static final float f4529else = (float) Math.toRadians(45.0d);

    /* renamed from: case, reason: not valid java name */
    public float f4530case;

    /* renamed from: do, reason: not valid java name */
    public final float f4531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f4532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f4533do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f4534do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4535do;

    /* renamed from: for, reason: not valid java name */
    public final float f4536for;

    /* renamed from: if, reason: not valid java name */
    public final float f4537if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f4538if;

    /* renamed from: new, reason: not valid java name */
    public float f4539new;

    /* renamed from: try, reason: not valid java name */
    public float f4540try;

    public C0602Xe(Context context) {
        Paint paint = new Paint();
        this.f4533do = paint;
        this.f4534do = new Path();
        this.f4538if = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, O4.f2568return, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(3, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(7, 0.0f);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.f4530case = (float) (Math.cos(f4529else) * (dimension / 2.0f));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(6, true);
        if (this.f4535do != z) {
            this.f4535do = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(5, 0.0f));
        if (round != this.f4539new) {
            this.f4539new = round;
            invalidateSelf();
        }
        this.f4532do = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f4537if = Math.round(obtainStyledAttributes.getDimension(2, 0.0f));
        this.f4531do = Math.round(obtainStyledAttributes.getDimension(0, 0.0f));
        this.f4536for = obtainStyledAttributes.getDimension(1, 0.0f);
        obtainStyledAttributes.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i = this.f4538if;
        boolean z = i != 0 && (i == 1 || (i == 3 ? C0426Pe.m1780if(this) == 0 : C0426Pe.m1780if(this) == 1));
        float f = this.f4531do;
        float sqrt = (float) Math.sqrt(f * f * 2.0f);
        float f2 = this.f4540try;
        float f3 = this.f4537if;
        float m7823for = Cpublic.m7823for(sqrt, f3, f2, f3);
        float m7823for2 = Cpublic.m7823for(this.f4536for, f3, f2, f3);
        float round = Math.round(((this.f4530case - 0.0f) * f2) + 0.0f);
        float f4 = this.f4540try;
        float m7823for3 = Cpublic.m7823for(f4529else, 0.0f, f4, 0.0f);
        float f5 = z ? 0.0f : -180.0f;
        float m7823for4 = Cpublic.m7823for(z ? 180.0f : 0.0f, f5, f4, f5);
        double d = m7823for;
        double d2 = m7823for3;
        float round2 = Math.round(Math.cos(d2) * d);
        float round3 = Math.round(Math.sin(d2) * d);
        Path path = this.f4534do;
        path.rewind();
        float f6 = this.f4539new;
        Paint paint = this.f4533do;
        float strokeWidth = paint.getStrokeWidth() + f6;
        float m7823for5 = Cpublic.m7823for(-this.f4530case, strokeWidth, this.f4540try, strokeWidth);
        float f7 = (-m7823for2) / 2.0f;
        path.moveTo(f7 + round, 0.0f);
        path.rLineTo(m7823for2 - (round * 2.0f), 0.0f);
        path.moveTo(f7, m7823for5);
        path.rLineTo(round2, round3);
        path.moveTo(f7, -m7823for5);
        path.rLineTo(round2, -round3);
        path.close();
        canvas.save();
        float strokeWidth2 = paint.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth2);
        canvas.translate(bounds.centerX(), (strokeWidth2 * 1.5f) + this.f4539new + ((((int) (height - (2.0f * r5))) / 4) * 2));
        if (this.f4535do) {
            canvas.rotate(m7823for4 * (z ^ false ? -1 : 1));
        } else if (z) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f4532do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f4532do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Paint paint = this.f4533do;
        if (i != paint.getAlpha()) {
            paint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f4533do.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
