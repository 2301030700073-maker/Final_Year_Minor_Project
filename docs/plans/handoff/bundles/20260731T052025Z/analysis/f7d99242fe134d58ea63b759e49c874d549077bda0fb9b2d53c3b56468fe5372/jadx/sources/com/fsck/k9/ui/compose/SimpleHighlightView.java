package com.fsck.k9.ui.compose;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.fsck.k9.ui.R$styleable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleHighlightView extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final int backgroundColor;
    public final Paint basicPaint;
    public Bitmap bitmapBuffer;
    public final Paint eraserPaint;
    public final long fadeInMillis;
    public final long fadeOutMillis;
    public int highlightX;
    public int highlightY;
    public ViewGroup parent;
    public final int[] positionInWindow;
    public final float radius;

    public SimpleHighlightView(AppCompatActivity appCompatActivity) {
        super(appCompatActivity);
        this.fadeInMillis = getResources().getInteger(R.integer.config_mediumAnimTime);
        this.fadeOutMillis = getResources().getInteger(R.integer.config_mediumAnimTime);
        this.radius = getResources().getDimension(com.fsck.k9.R.dimen.highlight_radius);
        this.basicPaint = new Paint();
        Paint paint = new Paint();
        paint.setColor(16777215);
        paint.setAlpha(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        paint.setAntiAlias(true);
        this.eraserPaint = paint;
        this.positionInWindow = new int[2];
        this.highlightX = -1;
        this.highlightY = -1;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(com.fsck.k9.R.style.MessageComposeHighlight, R$styleable.SimpleHighlightView);
        obtainStyledAttributes.getClass();
        this.backgroundColor = obtainStyledAttributes.getColor(0, Color.argb(128, 80, 80, 80));
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setParent(ViewGroup viewGroup) {
        this.parent = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTarget(View view) {
        postDelayed(new Processor$$ExternalSyntheticLambda2(12, this, view), 100L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.getClass();
        int i = this.highlightX;
        int i2 = this.highlightY;
        Bitmap bitmap = this.bitmapBuffer;
        if (i < 0 || i2 < 0 || bitmap == null) {
            super.dispatchDraw(canvas);
            return;
        }
        bitmap.eraseColor(this.backgroundColor);
        new Canvas(bitmap).drawCircle(i, i2, this.radius, this.eraserPaint);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.basicPaint);
        super.dispatchDraw(canvas);
    }

    public final void updateBitmap() {
        Bitmap bitmap = this.bitmapBuffer;
        if (bitmap != null && getMeasuredWidth() == bitmap.getWidth() && getMeasuredHeight() == bitmap.getHeight()) {
            return;
        }
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.bitmapBuffer = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
    }
}
