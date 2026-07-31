package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RectangleContent implements BaseKeyframeAnimation.AnimationListener, Content, PathContent {
    public final TextKeyframeAnimation cornerRadiusAnimation;
    public final boolean hidden;
    public boolean isPathValid;
    public final LottieDrawable lottieDrawable;
    public final BaseKeyframeAnimation positionAnimation;
    public final BaseKeyframeAnimation sizeAnimation;
    public final Path path = new Path();
    public final RectF rect = new RectF();
    public final Headers.Builder trimPaths = new Headers.Builder(2, (byte) 0);
    public BaseKeyframeAnimation roundedCornersAnimation = null;

    public RectangleContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Repeater repeater) {
        this.hidden = repeater.hidden;
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation createAnimation = repeater.offset.createAnimation();
        this.positionAnimation = createAnimation;
        BaseKeyframeAnimation createAnimation2 = ((AnimatableValue) repeater.transform).createAnimation();
        this.sizeAnimation = createAnimation2;
        TextKeyframeAnimation createAnimation3 = repeater.copies.createAnimation();
        this.cornerRadiusAnimation = createAnimation3;
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        baseLayer.addAnimation(createAnimation3);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        float f;
        BaseKeyframeAnimation baseKeyframeAnimation;
        boolean z = this.isPathValid;
        Path path = this.path;
        if (z) {
            return path;
        }
        path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return path;
        }
        PointF pointF = (PointF) this.sizeAnimation.getValue();
        float f2 = pointF.x / 2.0f;
        float f3 = pointF.y / 2.0f;
        TextKeyframeAnimation textKeyframeAnimation = this.cornerRadiusAnimation;
        float floatValue = textKeyframeAnimation == null ? 0.0f : textKeyframeAnimation.getFloatValue();
        if (floatValue == RecyclerView.DECELERATION_RATE && (baseKeyframeAnimation = this.roundedCornersAnimation) != null) {
            floatValue = Math.min(((Float) baseKeyframeAnimation.getValue()).floatValue(), Math.min(f2, f3));
        }
        float min = Math.min(f2, f3);
        if (floatValue > min) {
            floatValue = min;
        }
        PointF pointF2 = (PointF) this.positionAnimation.getValue();
        path.moveTo(pointF2.x + f2, (pointF2.y - f3) + floatValue);
        path.lineTo(pointF2.x + f2, (pointF2.y + f3) - floatValue);
        RectF rectF = this.rect;
        if (floatValue > RecyclerView.DECELERATION_RATE) {
            float f4 = pointF2.x + f2;
            float f5 = floatValue * 2.0f;
            f = 2.0f;
            float f6 = pointF2.y + f3;
            rectF.set(f4 - f5, f6 - f5, f4, f6);
            path.arcTo(rectF, RecyclerView.DECELERATION_RATE, 90.0f, false);
        } else {
            f = 2.0f;
        }
        path.lineTo((pointF2.x - f2) + floatValue, pointF2.y + f3);
        if (floatValue > RecyclerView.DECELERATION_RATE) {
            float f7 = pointF2.x - f2;
            float f8 = pointF2.y + f3;
            float f9 = floatValue * f;
            rectF.set(f7, f8 - f9, f9 + f7, f8);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointF2.x - f2, (pointF2.y - f3) + floatValue);
        if (floatValue > RecyclerView.DECELERATION_RATE) {
            float f10 = pointF2.x - f2;
            float f11 = pointF2.y - f3;
            float f12 = floatValue * f;
            rectF.set(f10, f11, f10 + f12, f12 + f11);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x + f2) - floatValue, pointF2.y - f3);
        if (floatValue > RecyclerView.DECELERATION_RATE) {
            float f13 = pointF2.x + f2;
            float f14 = floatValue * f;
            float f15 = pointF2.y - f3;
            rectF.set(f13 - f14, f15, f13, f14 + f15);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.trimPaths.apply(path);
        this.isPathValid = true;
        return path;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i >= arrayList.size()) {
                return;
            }
            Content content = (Content) arrayList.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.type == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.namesAndValues.add(trimPathContent);
                    trimPathContent.addListener(this);
                    i++;
                }
            }
            if (content instanceof RoundedCornersContent) {
                this.roundedCornersAnimation = ((RoundedCornersContent) content).roundedCorners;
            }
            i++;
        }
    }
}
