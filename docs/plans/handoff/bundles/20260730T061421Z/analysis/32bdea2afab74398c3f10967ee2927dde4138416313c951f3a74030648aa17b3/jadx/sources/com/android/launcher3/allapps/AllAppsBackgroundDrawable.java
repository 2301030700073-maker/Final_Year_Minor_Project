package com.android.launcher3.allapps;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import b.l.W;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class AllAppsBackgroundDrawable extends Drawable {
    public ObjectAnimator mBackgroundAnim;
    public final TransformedImageDrawable mHand;
    public final int mHeight;
    public final TransformedImageDrawable[] mIcons;
    public final int mWidth;

    public class TransformedImageDrawable {
        public int mAlpha;
        public int mGravity;
        public Drawable mImage;
        public float mXPercent;
        public float mYPercent;

        public TransformedImageDrawable(Context context, int i, float f, float f2, int i2) {
            this.mImage = context.getDrawable(i);
            this.mXPercent = f;
            this.mYPercent = f2;
            this.mGravity = i2;
        }

        public void updateBounds(Rect rect) {
            int intrinsicWidth = this.mImage.getIntrinsicWidth();
            int intrinsicHeight = this.mImage.getIntrinsicHeight();
            int width = rect.left + ((int) (this.mXPercent * rect.width()));
            int height = rect.top + ((int) (this.mYPercent * rect.height()));
            if ((this.mGravity & 1) == 1) {
                width -= intrinsicWidth / 2;
            }
            if ((this.mGravity & 16) == 16) {
                height -= intrinsicHeight / 2;
            }
            this.mImage.setBounds(width, height, intrinsicWidth + width, intrinsicHeight + height);
        }
    }

    public AllAppsBackgroundDrawable(Context context) {
        Resources resources = context.getResources();
        this.mWidth = resources.getDimensionPixelSize(R.dimen.all_apps_background_canvas_width);
        this.mHeight = resources.getDimensionPixelSize(R.dimen.all_apps_background_canvas_height);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, W.getAttrBoolean(context, R.attr.isMainColorDark) ? R.style.AllAppsEmptySearchBackground_Dark : R.style.AllAppsEmptySearchBackground);
        this.mHand = new TransformedImageDrawable(contextThemeWrapper, R.drawable.ic_all_apps_bg_hand, 0.575f, RecentsState.NO_OFFSET, 1);
        TransformedImageDrawable[] transformedImageDrawableArr = new TransformedImageDrawable[4];
        this.mIcons = transformedImageDrawableArr;
        transformedImageDrawableArr[0] = new TransformedImageDrawable(contextThemeWrapper, R.drawable.ic_all_apps_bg_icon_1, 0.375f, RecentsState.NO_OFFSET, 1);
        this.mIcons[1] = new TransformedImageDrawable(contextThemeWrapper, R.drawable.ic_all_apps_bg_icon_2, 0.3125f, 0.2f, 1);
        this.mIcons[2] = new TransformedImageDrawable(contextThemeWrapper, R.drawable.ic_all_apps_bg_icon_3, 0.475f, 0.26f, 1);
        this.mIcons[3] = new TransformedImageDrawable(contextThemeWrapper, R.drawable.ic_all_apps_bg_icon_4, 0.7f, 0.125f, 1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mHand.mImage.draw(canvas);
        int i = 0;
        while (true) {
            TransformedImageDrawable[] transformedImageDrawableArr = this.mIcons;
            if (i >= transformedImageDrawableArr.length) {
                return;
            }
            transformedImageDrawableArr[i].mImage.draw(canvas);
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mHand.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mHand.updateBounds(rect);
        int i = 0;
        while (true) {
            TransformedImageDrawable[] transformedImageDrawableArr = this.mIcons;
            if (i >= transformedImageDrawableArr.length) {
                invalidateSelf();
                return;
            } else {
                transformedImageDrawableArr[i].updateBounds(rect);
                i++;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        TransformedImageDrawable transformedImageDrawable = this.mHand;
        transformedImageDrawable.mImage.setAlpha(i);
        transformedImageDrawable.mAlpha = i;
        int i2 = 0;
        while (true) {
            TransformedImageDrawable[] transformedImageDrawableArr = this.mIcons;
            if (i2 >= transformedImageDrawableArr.length) {
                invalidateSelf();
                return;
            }
            TransformedImageDrawable transformedImageDrawable2 = transformedImageDrawableArr[i2];
            transformedImageDrawable2.mImage.setAlpha(i);
            transformedImageDrawable2.mAlpha = i;
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
