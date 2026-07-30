package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WidgetImageView extends View {
    public Drawable mBadge;
    public final int mBadgeMargin;
    public Bitmap mBitmap;
    public final RectF mDstRectF;
    public final Paint mPaint;

    public WidgetImageView(Context context) {
        this(context, null);
    }

    public Rect getBitmapBounds() {
        updateDstRectF();
        Rect rect = new Rect();
        this.mDstRectF.round(rect);
        return rect;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mBitmap != null) {
            updateDstRectF();
            canvas.drawBitmap(this.mBitmap, (Rect) null, this.mDstRectF, this.mPaint);
            Drawable drawable = this.mBadge;
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }
    }

    public final void updateDstRectF() {
        float width = getWidth();
        float height = getHeight();
        float width2 = this.mBitmap.getWidth();
        float f = width2 > width ? width / width2 : 1.0f;
        float f2 = width2 * f;
        float height2 = this.mBitmap.getHeight() * f;
        RectF rectF = this.mDstRectF;
        rectF.left = (width - f2) / 2.0f;
        rectF.right = (width + f2) / 2.0f;
        if (height2 > height) {
            rectF.top = RecentsState.NO_OFFSET;
            rectF.bottom = height2;
        } else {
            rectF.top = (height - height2) / 2.0f;
            rectF.bottom = (height + height2) / 2.0f;
        }
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int boundToRange = Utilities.boundToRange((int) ((this.mDstRectF.right + this.mBadgeMargin) - bounds.width()), this.mBadgeMargin, getWidth() - bounds.width());
            int boundToRange2 = Utilities.boundToRange((int) ((this.mDstRectF.bottom + this.mBadgeMargin) - bounds.height()), this.mBadgeMargin, getHeight() - bounds.height());
            this.mBadge.setBounds(boundToRange, boundToRange2, bounds.width() + boundToRange, bounds.height() + boundToRange2);
        }
    }

    public WidgetImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint(3);
        this.mDstRectF = new RectF();
        this.mBadgeMargin = context.getResources().getDimensionPixelSize(R.dimen.profile_badge_margin);
    }
}
