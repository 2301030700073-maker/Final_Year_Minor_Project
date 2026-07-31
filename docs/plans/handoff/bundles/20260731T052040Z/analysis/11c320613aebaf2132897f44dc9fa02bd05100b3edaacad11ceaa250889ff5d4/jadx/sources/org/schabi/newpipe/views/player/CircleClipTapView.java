package org.schabi.newpipe.views.player;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.C;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CircleClipTapView extends View {
    public float arcSize;
    public final Paint backgroundPaint;
    public int heightPx;
    public boolean isLeft;
    public final Path shapePath;
    public int widthPx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleClipTapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        attributeSet.getClass();
        Paint paint = new Paint();
        this.backgroundPaint = paint;
        this.shapePath = new Path();
        this.arcSize = 80.0f;
        this.isLeft = true;
        if (context == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Context is null.");
            throw null;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(C.ENCODING_PCM_32BIT);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.widthPx = displayMetrics.widthPixels;
        this.heightPx = displayMetrics.heightPixels;
        updatePathShape();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        Path path = this.shapePath;
        canvas.clipPath(path);
        canvas.drawPath(path, this.backgroundPaint);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.widthPx = i;
        this.heightPx = i2;
        updatePathShape();
    }

    public final void updatePathShape() {
        float f = this.widthPx * 0.5f;
        Path path = this.shapePath;
        path.reset();
        boolean z = this.isLeft;
        float f2 = z ? 0.0f : this.widthPx;
        int i = z ? 1 : -1;
        path.moveTo(f2, 0.0f);
        float f3 = i;
        path.lineTo(Modifier.CC.m(f, this.arcSize, f3, f2), 0.0f);
        float f4 = this.arcSize;
        int i2 = this.heightPx;
        path.quadTo(((f + f4) * f3) + f2, i2 / 2.0f, Modifier.CC.m(f, f4, f3, f2), i2);
        path.lineTo(f2, this.heightPx);
        path.close();
        invalidate();
    }
}
