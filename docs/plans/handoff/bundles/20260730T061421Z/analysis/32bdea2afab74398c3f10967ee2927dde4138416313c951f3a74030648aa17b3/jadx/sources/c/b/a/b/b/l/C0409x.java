package c.b.a.b.b.l;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.quickstep.fallback.RecentsState;

/* renamed from: c.b.a.b.b.l.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0409x extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f2696a;

    /* renamed from: b, reason: collision with root package name */
    public final float f2697b;

    public C0409x(float f) {
        Paint paint = new Paint(1);
        this.f2696a = paint;
        paint.setColor(-1);
        this.f2697b = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        float f = this.f2697b;
        if (f < RecentsState.NO_OFFSET) {
            f = bounds.height();
        }
        float f2 = f;
        canvas.drawRoundRect(bounds.left, bounds.top, bounds.right, bounds.bottom, f2, f2, this.f2696a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Rect bounds = getBounds();
        float f = this.f2697b;
        if (f < RecentsState.NO_OFFSET) {
            f = bounds.height();
        }
        outline.setRoundRect(getBounds(), f);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
