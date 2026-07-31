package us.shandian.giga.ui.common;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ProgressDrawable extends Drawable {
    public int mBackgroundColor;
    public int mForegroundColor;
    public Handler mMarqueeHandler;
    public Path mMarqueeLine;
    public long mMarqueeNext;
    public float mMarqueeProgress;
    public int mMarqueeSize;
    public float mProgress;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int width = getBounds().width();
        int height = getBounds().height();
        Paint paint = new Paint();
        paint.setColor(this.mBackgroundColor);
        float f = height;
        canvas.drawRect(0.0f, 0.0f, width, f, paint);
        paint.setColor(this.mForegroundColor);
        if (this.mMarqueeLine == null) {
            canvas.drawRect(0.0f, 0.0f, (int) (this.mProgress * r5), f, paint);
            return;
        }
        if (this.mMarqueeSize < 1) {
            setupMarquee(width, height);
        }
        int i = this.mMarqueeSize;
        Paint paint2 = new Paint();
        paint2.setColor(this.mForegroundColor);
        paint2.setStrokeWidth(i);
        paint2.setStyle(Paint.Style.STROKE);
        int i2 = i * 2;
        float f2 = this.mMarqueeProgress;
        if (f2 >= i2) {
            this.mMarqueeProgress = 1.0f;
        } else {
            this.mMarqueeProgress = f2 + 1.0f;
        }
        int i3 = (i * 4) + width;
        Path path = new Path();
        for (int i4 = -i2; i4 < i3; i4 += i2) {
            path.addPath(this.mMarqueeLine, i4 + this.mMarqueeProgress, 0.0f);
        }
        path.close();
        canvas.drawPath(path, paint2);
        if (System.currentTimeMillis() >= this.mMarqueeNext) {
            this.mMarqueeNext = System.currentTimeMillis() + 150;
            this.mMarqueeHandler.postDelayed(new NavigationHelper$$ExternalSyntheticLambda0(this, 1), 150L);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        if (this.mMarqueeLine != null) {
            setupMarquee(rect.width(), rect.height());
        }
    }

    public final void setMarquee(boolean z) {
        if (z == (this.mMarqueeLine != null)) {
            return;
        }
        this.mMarqueeLine = z ? new Path() : null;
        this.mMarqueeHandler = z ? new Handler(Looper.getMainLooper()) : null;
        this.mMarqueeSize = 0;
        this.mMarqueeNext = 0L;
    }

    public final void setupMarquee(int i, int i2) {
        this.mMarqueeSize = (int) ((i * 10.0f) / 100.0f);
        this.mMarqueeLine.rewind();
        Path path = this.mMarqueeLine;
        int i3 = this.mMarqueeSize;
        path.moveTo(-i3, -i3);
        Path path2 = this.mMarqueeLine;
        int i4 = this.mMarqueeSize;
        path2.lineTo((-i4) * 4, i2 + i4);
        this.mMarqueeLine.close();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
