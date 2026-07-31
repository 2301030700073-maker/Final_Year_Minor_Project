package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
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
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, Content, DrawingContent {
    public final TextKeyframeAnimation blurAnimation;
    public float blurMaskFilterRadius;
    public final ArrayList dashPatternAnimations;
    public final TextKeyframeAnimation dashPatternOffsetAnimation;
    public final float[] dashPatternValues;
    public final BaseLayer layer;
    public final LottieDrawable lottieDrawable;
    public final TextKeyframeAnimation opacityAnimation;
    public final LPaint paint;
    public final TextKeyframeAnimation widthAnimation;
    public final PathMeasure pm = new PathMeasure();
    public final Path path = new Path();
    public final Path trimPathPath = new Path();
    public final RectF rect = new RectF();
    public final ArrayList pathGroups = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PathGroup {
        public final ArrayList paths = new ArrayList();
        public final TrimPathContent trimPath;

        public PathGroup(TrimPathContent trimPathContent) {
            this.trimPath = trimPathContent;
        }
    }

    public BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f, AnimatableTextFrame animatableTextFrame, AnimatableFloatValue animatableFloatValue, ArrayList arrayList, AnimatableFloatValue animatableFloatValue2) {
        LPaint lPaint = new LPaint(1, 0);
        this.paint = lPaint;
        this.blurMaskFilterRadius = RecyclerView.DECELERATION_RATE;
        this.lottieDrawable = lottieDrawable;
        this.layer = baseLayer;
        lPaint.setStyle(Paint.Style.STROKE);
        lPaint.setStrokeCap(cap);
        lPaint.setStrokeJoin(join);
        lPaint.setStrokeMiter(f);
        this.opacityAnimation = (TextKeyframeAnimation) animatableTextFrame.createAnimation();
        this.widthAnimation = animatableFloatValue.createAnimation();
        if (animatableFloatValue2 == null) {
            this.dashPatternOffsetAnimation = null;
        } else {
            this.dashPatternOffsetAnimation = animatableFloatValue2.createAnimation();
        }
        this.dashPatternAnimations = new ArrayList(arrayList.size());
        this.dashPatternValues = new float[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            this.dashPatternAnimations.add(((AnimatableFloatValue) arrayList.get(i)).createAnimation());
        }
        baseLayer.addAnimation(this.opacityAnimation);
        baseLayer.addAnimation(this.widthAnimation);
        for (int i2 = 0; i2 < this.dashPatternAnimations.size(); i2++) {
            baseLayer.addAnimation((BaseKeyframeAnimation) this.dashPatternAnimations.get(i2));
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.dashPatternOffsetAnimation;
        if (baseKeyframeAnimation != null) {
            baseLayer.addAnimation(baseKeyframeAnimation);
        }
        this.opacityAnimation.addUpdateListener(this);
        this.widthAnimation.addUpdateListener(this);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((BaseKeyframeAnimation) this.dashPatternAnimations.get(i3)).addUpdateListener(this);
        }
        TextKeyframeAnimation textKeyframeAnimation = this.dashPatternOffsetAnimation;
        if (textKeyframeAnimation != null) {
            textKeyframeAnimation.addUpdateListener(this);
        }
        if (baseLayer.getBlurEffect() != null) {
            TextKeyframeAnimation createAnimation = ((AnimatableFloatValue) baseLayer.getBlurEffect().imageLoader).createAnimation();
            this.blurAnimation = createAnimation;
            createAnimation.addUpdateListener(this);
            baseLayer.addAnimation(createAnimation);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        int i2;
        BlurMaskFilter blurMaskFilter;
        float[] fArr;
        BaseStrokeContent baseStrokeContent = this;
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        float[] fArr2 = (float[]) Utils.threadLocalPoints.get();
        boolean z = false;
        fArr2[0] = 0.0f;
        int i3 = 1;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            return;
        }
        float f = 100.0f;
        float intValue = ((Integer) baseStrokeContent.opacityAnimation.getValue()).intValue() / 100.0f;
        int clamp = MiscUtils.clamp((int) (i * intValue));
        LPaint lPaint = baseStrokeContent.paint;
        lPaint.setAlpha(clamp);
        lPaint.setStrokeWidth(baseStrokeContent.widthAnimation.getFloatValue());
        if (lPaint.getStrokeWidth() <= RecyclerView.DECELERATION_RATE) {
            return;
        }
        ArrayList arrayList = baseStrokeContent.dashPatternAnimations;
        if (!arrayList.isEmpty()) {
            int i4 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = baseStrokeContent.dashPatternValues;
                if (i4 >= size) {
                    break;
                }
                float floatValue = ((Float) ((BaseKeyframeAnimation) arrayList.get(i4)).getValue()).floatValue();
                fArr[i4] = floatValue;
                if (i4 % 2 == 0) {
                    if (floatValue < 1.0f) {
                        fArr[i4] = 1.0f;
                    }
                } else if (floatValue < 0.1f) {
                    fArr[i4] = 0.1f;
                }
                i4++;
            }
            TextKeyframeAnimation textKeyframeAnimation = baseStrokeContent.dashPatternOffsetAnimation;
            lPaint.setPathEffect(new DashPathEffect(fArr, textKeyframeAnimation == null ? 0.0f : ((Float) textKeyframeAnimation.getValue()).floatValue()));
            AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
        }
        TextKeyframeAnimation textKeyframeAnimation2 = baseStrokeContent.blurAnimation;
        if (textKeyframeAnimation2 != null) {
            float floatValue2 = ((Float) textKeyframeAnimation2.getValue()).floatValue();
            if (floatValue2 == RecyclerView.DECELERATION_RATE) {
                lPaint.setMaskFilter(null);
            } else if (floatValue2 != baseStrokeContent.blurMaskFilterRadius) {
                BaseLayer baseLayer = baseStrokeContent.layer;
                if (baseLayer.blurMaskFilterRadius == floatValue2) {
                    blurMaskFilter = baseLayer.blurMaskFilter;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    baseLayer.blurMaskFilter = blurMaskFilter2;
                    baseLayer.blurMaskFilterRadius = floatValue2;
                    blurMaskFilter = blurMaskFilter2;
                }
                lPaint.setMaskFilter(blurMaskFilter);
            }
            baseStrokeContent.blurMaskFilterRadius = floatValue2;
        }
        if (dropShadow != null) {
            dropShadow.applyWithAlpha((int) (intValue * 255.0f), lPaint);
        }
        canvas.save();
        canvas.concat(matrix);
        int i5 = 0;
        while (true) {
            ArrayList arrayList2 = baseStrokeContent.pathGroups;
            if (i5 >= arrayList2.size()) {
                canvas.restore();
                AsyncUpdates asyncUpdates3 = L.defaultAsyncUpdates;
                return;
            }
            PathGroup pathGroup = (PathGroup) arrayList2.get(i5);
            TrimPathContent trimPathContent = pathGroup.trimPath;
            ArrayList arrayList3 = pathGroup.paths;
            Path path = baseStrokeContent.path;
            if (trimPathContent != null) {
                AsyncUpdates asyncUpdates4 = L.defaultAsyncUpdates;
                path.reset();
                for (int size2 = arrayList3.size() - i3; size2 >= 0; size2--) {
                    path.addPath(((PathContent) arrayList3.get(size2)).getPath());
                }
                float floatValue3 = ((Float) trimPathContent.startAnimation.getValue()).floatValue() / f;
                float floatValue4 = ((Float) trimPathContent.endAnimation.getValue()).floatValue() / f;
                float floatValue5 = ((Float) trimPathContent.offsetAnimation.getValue()).floatValue() / 360.0f;
                if (floatValue3 >= 0.01f || floatValue4 <= 0.99f) {
                    PathMeasure pathMeasure = baseStrokeContent.pm;
                    pathMeasure.setPath(path, z);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length += pathMeasure.getLength();
                    }
                    float f2 = floatValue5 * length;
                    float f3 = (floatValue3 * length) + f2;
                    float min = Math.min((floatValue4 * length) + f2, (f3 + length) - 1.0f);
                    int size3 = arrayList3.size() - i3;
                    float f4 = 0.0f;
                    while (size3 >= 0) {
                        int i6 = i3;
                        Path path2 = ((PathContent) arrayList3.get(size3)).getPath();
                        Path path3 = baseStrokeContent.trimPathPath;
                        path3.set(path2);
                        pathMeasure.setPath(path3, z);
                        float length2 = pathMeasure.getLength();
                        if (min > length) {
                            float f5 = min - length;
                            if (f5 < f4 + length2 && f4 < f5) {
                                Utils.applyTrimPathIfNeeded(path3, f3 > length ? (f3 - length) / length2 : 0.0f, Math.min(f5 / length2, 1.0f), RecyclerView.DECELERATION_RATE);
                                canvas.drawPath(path3, lPaint);
                                f4 += length2;
                                size3--;
                                baseStrokeContent = this;
                                i3 = i6;
                                z = false;
                            }
                        }
                        float f6 = f4 + length2;
                        if (f6 >= f3 && f4 <= min) {
                            if (f6 > min || f3 >= f4) {
                                Utils.applyTrimPathIfNeeded(path3, f3 < f4 ? 0.0f : (f3 - f4) / length2, min > f6 ? 1.0f : (min - f4) / length2, RecyclerView.DECELERATION_RATE);
                                canvas.drawPath(path3, lPaint);
                            } else {
                                canvas.drawPath(path3, lPaint);
                            }
                        }
                        f4 += length2;
                        size3--;
                        baseStrokeContent = this;
                        i3 = i6;
                        z = false;
                    }
                    i2 = i3;
                    AsyncUpdates asyncUpdates5 = L.defaultAsyncUpdates;
                } else {
                    canvas.drawPath(path, lPaint);
                    AsyncUpdates asyncUpdates6 = L.defaultAsyncUpdates;
                    i2 = i3;
                }
            } else {
                i2 = i3;
                AsyncUpdates asyncUpdates7 = L.defaultAsyncUpdates;
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((PathContent) arrayList3.get(size4)).getPath());
                }
                AsyncUpdates asyncUpdates8 = L.defaultAsyncUpdates;
                canvas.drawPath(path, lPaint);
            }
            i5++;
            baseStrokeContent = this;
            i3 = i2;
            z = false;
            f = 100.0f;
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        Path path = this.path;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.pathGroups;
            if (i >= arrayList.size()) {
                RectF rectF2 = this.rect;
                path.computeBounds(rectF2, false);
                float floatValue = this.widthAnimation.getFloatValue() / 2.0f;
                rectF2.set(rectF2.left - floatValue, rectF2.top - floatValue, rectF2.right + floatValue, rectF2.bottom + floatValue);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
                return;
            }
            PathGroup pathGroup = (PathGroup) arrayList.get(i);
            for (int i2 = 0; i2 < pathGroup.paths.size(); i2++) {
                path.addPath(((PathContent) pathGroup.paths.get(i2)).getPath(), matrix);
            }
            i++;
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        PathGroup pathGroup = null;
        TrimPathContent trimPathContent = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList2.get(size);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent2 = (TrimPathContent) content;
                if (trimPathContent2.type == ShapeTrimPath.Type.INDIVIDUALLY) {
                    trimPathContent = trimPathContent2;
                }
            }
        }
        if (trimPathContent != null) {
            trimPathContent.addListener(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.pathGroups;
            if (size2 < 0) {
                break;
            }
            Content content2 = (Content) list2.get(size2);
            if (content2 instanceof TrimPathContent) {
                TrimPathContent trimPathContent3 = (TrimPathContent) content2;
                if (trimPathContent3.type == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (pathGroup != null) {
                        arrayList.add(pathGroup);
                    }
                    PathGroup pathGroup2 = new PathGroup(trimPathContent3);
                    trimPathContent3.addListener(this);
                    pathGroup = pathGroup2;
                }
            }
            if (content2 instanceof PathContent) {
                if (pathGroup == null) {
                    pathGroup = new PathGroup(trimPathContent);
                }
                pathGroup.paths.add((PathContent) content2);
            }
        }
        if (pathGroup != null) {
            arrayList.add(pathGroup);
        }
    }
}
