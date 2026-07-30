package com.android.launcher3.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class DoubleShadowBubbleTextView extends BubbleTextView {
    public final ShadowInfo mShadowInfo;

    public class ShadowInfo {
        public final float ambientShadowBlur;
        public final int ambientShadowColor;
        public final float keyShadowBlur;
        public final int keyShadowColor;
        public final float keyShadowOffset;

        public ShadowInfo(Context context, AttributeSet attributeSet, int i) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShadowInfo, i, 0);
            this.ambientShadowBlur = obtainStyledAttributes.getDimension(0, RecentsState.NO_OFFSET);
            this.ambientShadowColor = obtainStyledAttributes.getColor(1, 0);
            this.keyShadowBlur = obtainStyledAttributes.getDimension(2, RecentsState.NO_OFFSET);
            this.keyShadowOffset = obtainStyledAttributes.getDimension(4, RecentsState.NO_OFFSET);
            this.keyShadowColor = obtainStyledAttributes.getColor(3, 0);
            obtainStyledAttributes.recycle();
        }

        public boolean skipDoubleShadow(TextView textView) {
            int alpha = Color.alpha(textView.getCurrentTextColor());
            int alpha2 = Color.alpha(this.keyShadowColor);
            int alpha3 = Color.alpha(this.ambientShadowColor);
            if (alpha == 0 || (alpha2 == 0 && alpha3 == 0)) {
                textView.getPaint().clearShadowLayer();
                return true;
            }
            if (alpha3 > 0) {
                textView.getPaint().setShadowLayer(this.ambientShadowBlur, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, GraphicsUtils.setColorAlphaBound(this.ambientShadowColor, alpha));
                return true;
            }
            if (alpha2 <= 0) {
                return false;
            }
            textView.getPaint().setShadowLayer(this.keyShadowBlur, RecentsState.NO_OFFSET, this.keyShadowOffset, GraphicsUtils.setColorAlphaBound(this.keyShadowColor, alpha));
            return true;
        }
    }

    public DoubleShadowBubbleTextView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mShadowInfo.skipDoubleShadow(this)) {
            super.onDraw(canvas);
            return;
        }
        int alpha = Color.alpha(getCurrentTextColor());
        TextPaint paint = getPaint();
        ShadowInfo shadowInfo = this.mShadowInfo;
        paint.setShadowLayer(shadowInfo.ambientShadowBlur, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, GraphicsUtils.setColorAlphaBound(shadowInfo.ambientShadowColor, alpha));
        drawWithoutDot(canvas);
        canvas.save();
        canvas.clipRect(getScrollX(), getExtendedPaddingTop() + getScrollY(), getWidth() + getScrollX(), getHeight() + getScrollY());
        TextPaint paint2 = getPaint();
        ShadowInfo shadowInfo2 = this.mShadowInfo;
        paint2.setShadowLayer(shadowInfo2.keyShadowBlur, RecentsState.NO_OFFSET, shadowInfo2.keyShadowOffset, GraphicsUtils.setColorAlphaBound(shadowInfo2.keyShadowColor, alpha));
        drawWithoutDot(canvas);
        canvas.restore();
        drawDotIfNecessary(canvas);
    }

    public DoubleShadowBubbleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DoubleShadowBubbleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ShadowInfo shadowInfo = new ShadowInfo(context, attributeSet, i);
        this.mShadowInfo = shadowInfo;
        setShadowLayer(shadowInfo.ambientShadowBlur, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, shadowInfo.ambientShadowColor);
    }
}
