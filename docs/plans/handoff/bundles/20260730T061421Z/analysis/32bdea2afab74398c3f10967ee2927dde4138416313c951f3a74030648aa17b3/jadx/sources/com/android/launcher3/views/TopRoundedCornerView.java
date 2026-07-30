package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import b.l.W;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class TopRoundedCornerView extends SpringRelativeLayout {
    public final Path mClipPath;
    public int mNavBarScrimHeight;
    public final Paint mNavBarScrimPaint;
    public float[] mRadii;
    public final RectF mRect;

    public TopRoundedCornerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRect = new RectF();
        this.mClipPath = new Path();
        this.mNavBarScrimHeight = 0;
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bg_round_rect_radius);
        this.mRadii = new float[]{dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET};
        Paint paint = new Paint();
        this.mNavBarScrimPaint = paint;
        paint.setColor(W.getAttrColor(context, R.attr.allAppsNavBarScrimColor));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.mClipPath);
        super.draw(canvas);
        canvas.restore();
        if (this.mNavBarScrimHeight > 0) {
            canvas.drawRect(RecentsState.NO_OFFSET, getHeight() - this.mNavBarScrimHeight, getWidth(), getHeight(), this.mNavBarScrimPaint);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mRect.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, getMeasuredWidth(), getMeasuredHeight());
        this.mClipPath.reset();
        this.mClipPath.addRoundRect(this.mRect, this.mRadii, Path.Direction.CW);
    }

    public TopRoundedCornerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
