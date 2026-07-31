package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, Content {
    public final TextKeyframeAnimation blurAnimation;
    public float blurMaskFilterRadius;
    public final TextKeyframeAnimation colorAnimation;
    public final boolean hidden;
    public final BaseLayer layer;
    public final LottieDrawable lottieDrawable;
    public final TextKeyframeAnimation opacityAnimation;
    public final LPaint paint;
    public final Path path;
    public final ArrayList paths;

    public FillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeFill shapeFill) {
        Path path = new Path();
        this.path = path;
        this.paint = new LPaint(1, 0);
        this.paths = new ArrayList();
        this.layer = baseLayer;
        AnimatableTextFrame animatableTextFrame = shapeFill.opacity;
        AnimatableTextFrame animatableTextFrame2 = shapeFill.color;
        this.hidden = shapeFill.hidden;
        this.lottieDrawable = lottieDrawable;
        if (baseLayer.getBlurEffect() != null) {
            TextKeyframeAnimation createAnimation = ((AnimatableFloatValue) baseLayer.getBlurEffect().imageLoader).createAnimation();
            this.blurAnimation = createAnimation;
            createAnimation.addUpdateListener(this);
            baseLayer.addAnimation(createAnimation);
        }
        if (animatableTextFrame2 == null) {
            this.colorAnimation = null;
            this.opacityAnimation = null;
            return;
        }
        path.setFillType(shapeFill.fillType);
        BaseKeyframeAnimation createAnimation2 = animatableTextFrame2.createAnimation();
        this.colorAnimation = (TextKeyframeAnimation) createAnimation2;
        createAnimation2.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation2);
        BaseKeyframeAnimation createAnimation3 = animatableTextFrame.createAnimation();
        this.opacityAnimation = (TextKeyframeAnimation) createAnimation3;
        createAnimation3.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation3);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        BlurMaskFilter blurMaskFilter;
        if (this.hidden) {
            return;
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        TextKeyframeAnimation textKeyframeAnimation = this.colorAnimation;
        textKeyframeAnimation.getClass();
        float intValue = ((Integer) this.opacityAnimation.getValue()).intValue() / 100.0f;
        int clamp = (MiscUtils.clamp((int) (i * intValue)) << 24) | (textKeyframeAnimation.getIntValue(textKeyframeAnimation.keyframesWrapper.getCurrentKeyframe(), textKeyframeAnimation.getInterpolatedCurrentKeyframeProgress()) & 16777215);
        LPaint lPaint = this.paint;
        lPaint.setColor(clamp);
        TextKeyframeAnimation textKeyframeAnimation2 = this.blurAnimation;
        if (textKeyframeAnimation2 != null) {
            float floatValue = ((Float) textKeyframeAnimation2.getValue()).floatValue();
            if (floatValue == RecyclerView.DECELERATION_RATE) {
                lPaint.setMaskFilter(null);
            } else if (floatValue != this.blurMaskFilterRadius) {
                BaseLayer baseLayer = this.layer;
                if (baseLayer.blurMaskFilterRadius == floatValue) {
                    blurMaskFilter = baseLayer.blurMaskFilter;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    baseLayer.blurMaskFilter = blurMaskFilter2;
                    baseLayer.blurMaskFilterRadius = floatValue;
                    blurMaskFilter = blurMaskFilter2;
                }
                lPaint.setMaskFilter(blurMaskFilter);
            }
            this.blurMaskFilterRadius = floatValue;
        }
        if (dropShadow != null) {
            dropShadow.applyWithAlpha((int) (intValue * 255.0f), lPaint);
        } else {
            lPaint.clearShadowLayer();
        }
        Path path = this.path;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.paths;
            if (i2 >= arrayList.size()) {
                canvas.drawPath(path, lPaint);
                AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
                return;
            } else {
                path.addPath(((PathContent) arrayList.get(i2)).getPath(), matrix);
                i2++;
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.path;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.paths;
            if (i >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((PathContent) arrayList.get(i)).getPath(), matrix);
                i++;
            }
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            Content content = (Content) list2.get(i);
            if (content instanceof PathContent) {
                this.paths.add((PathContent) content);
            }
        }
    }
}
