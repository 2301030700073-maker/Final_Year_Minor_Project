package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EllipseContent implements PathContent, BaseKeyframeAnimation.AnimationListener, Content {
    public final CircleShape circleShape;
    public boolean isPathValid;
    public final LottieDrawable lottieDrawable;
    public final BaseKeyframeAnimation positionAnimation;
    public final PointKeyframeAnimation sizeAnimation;
    public final Path path = new Path();
    public final Headers.Builder trimPaths = new Headers.Builder(2, (byte) 0);

    public EllipseContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, CircleShape circleShape) {
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation createAnimation = circleShape.size.createAnimation();
        this.sizeAnimation = (PointKeyframeAnimation) createAnimation;
        BaseKeyframeAnimation createAnimation2 = circleShape.position.createAnimation();
        this.positionAnimation = createAnimation2;
        this.circleShape = circleShape;
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        boolean z = this.isPathValid;
        Path path = this.path;
        if (z) {
            return path;
        }
        path.reset();
        CircleShape circleShape = this.circleShape;
        if (circleShape.hidden) {
            this.isPathValid = true;
            return path;
        }
        PointF pointF = (PointF) this.sizeAnimation.getValue();
        float f = pointF.x / 2.0f;
        float f2 = pointF.y / 2.0f;
        float f3 = f * 0.55228f;
        float f4 = f2 * 0.55228f;
        path.reset();
        if (circleShape.isReversed) {
            float f5 = -f2;
            path.moveTo(RecyclerView.DECELERATION_RATE, f5);
            float f6 = RecyclerView.DECELERATION_RATE - f3;
            float f7 = -f;
            float f8 = RecyclerView.DECELERATION_RATE - f4;
            path.cubicTo(f6, f5, f7, f8, f7, RecyclerView.DECELERATION_RATE);
            float f9 = f4 + RecyclerView.DECELERATION_RATE;
            path.cubicTo(f7, f9, f6, f2, RecyclerView.DECELERATION_RATE, f2);
            float f10 = f3 + RecyclerView.DECELERATION_RATE;
            path.cubicTo(f10, f2, f, f9, f, RecyclerView.DECELERATION_RATE);
            path.cubicTo(f, f8, f10, f5, RecyclerView.DECELERATION_RATE, f5);
        } else {
            float f11 = -f2;
            path.moveTo(RecyclerView.DECELERATION_RATE, f11);
            float f12 = f3 + RecyclerView.DECELERATION_RATE;
            float f13 = RecyclerView.DECELERATION_RATE - f4;
            path.cubicTo(f12, f11, f, f13, f, RecyclerView.DECELERATION_RATE);
            float f14 = f4 + RecyclerView.DECELERATION_RATE;
            path.cubicTo(f, f14, f12, f2, RecyclerView.DECELERATION_RATE, f2);
            float f15 = RecyclerView.DECELERATION_RATE - f3;
            float f16 = -f;
            path.cubicTo(f15, f2, f16, f14, f16, RecyclerView.DECELERATION_RATE);
            path.cubicTo(f16, f13, f15, f11, RecyclerView.DECELERATION_RATE, f11);
        }
        PointF pointF2 = (PointF) this.positionAnimation.getValue();
        path.offset(pointF2.x, pointF2.y);
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
                }
            }
            i++;
        }
    }
}
