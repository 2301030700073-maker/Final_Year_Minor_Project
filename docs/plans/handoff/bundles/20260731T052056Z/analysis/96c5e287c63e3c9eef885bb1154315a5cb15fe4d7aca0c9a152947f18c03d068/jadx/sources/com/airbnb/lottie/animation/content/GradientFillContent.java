package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientFillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, Content {
    public final TextKeyframeAnimation blurAnimation;
    public float blurMaskFilterRadius;
    public final RectF boundsRect;
    public final int cacheSteps;
    public final PointKeyframeAnimation colorAnimation;
    public final PointKeyframeAnimation endPointAnimation;
    public final boolean hidden;
    public final LottieDrawable lottieDrawable;
    public final TextKeyframeAnimation opacityAnimation;
    public final LPaint paint;
    public final Path path;
    public final ArrayList paths;
    public final PointKeyframeAnimation startPointAnimation;
    public final GradientType type;
    public final LongSparseArray linearGradientCache = new LongSparseArray((Object) null);
    public final LongSparseArray radialGradientCache = new LongSparseArray((Object) null);

    public GradientFillContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer, GradientFill gradientFill) {
        Path path = new Path();
        this.path = path;
        this.paint = new LPaint(1, 0);
        this.boundsRect = new RectF();
        this.paths = new ArrayList();
        this.blurMaskFilterRadius = RecyclerView.DECELERATION_RATE;
        this.hidden = gradientFill.hidden;
        this.lottieDrawable = lottieDrawable;
        this.type = gradientFill.gradientType;
        path.setFillType(gradientFill.fillType);
        this.cacheSteps = (int) (lottieComposition.getDuration() / 32.0f);
        BaseKeyframeAnimation createAnimation = gradientFill.gradientColor.createAnimation();
        this.colorAnimation = (PointKeyframeAnimation) createAnimation;
        createAnimation.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation);
        BaseKeyframeAnimation createAnimation2 = gradientFill.opacity.createAnimation();
        this.opacityAnimation = (TextKeyframeAnimation) createAnimation2;
        createAnimation2.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation2);
        BaseKeyframeAnimation createAnimation3 = gradientFill.startPoint.createAnimation();
        this.startPointAnimation = (PointKeyframeAnimation) createAnimation3;
        createAnimation3.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation3);
        BaseKeyframeAnimation createAnimation4 = gradientFill.endPoint.createAnimation();
        this.endPointAnimation = (PointKeyframeAnimation) createAnimation4;
        createAnimation4.addUpdateListener(this);
        baseLayer.addAnimation(createAnimation4);
        if (baseLayer.getBlurEffect() != null) {
            TextKeyframeAnimation createAnimation5 = ((AnimatableFloatValue) baseLayer.getBlurEffect().imageLoader).createAnimation();
            this.blurAnimation = createAnimation5;
            createAnimation5.addUpdateListener(this);
            baseLayer.addAnimation(createAnimation5);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        float[] fArr;
        int[] iArr;
        Shader shader;
        int[] iArr2;
        if (this.hidden) {
            return;
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        Path path = this.path;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.paths;
            if (i2 >= arrayList.size()) {
                break;
            }
            path.addPath(((PathContent) arrayList.get(i2)).getPath(), matrix);
            i2++;
        }
        path.computeBounds(this.boundsRect, false);
        GradientType gradientType = this.type;
        GradientType gradientType2 = GradientType.LINEAR;
        PointKeyframeAnimation pointKeyframeAnimation = this.colorAnimation;
        PointKeyframeAnimation pointKeyframeAnimation2 = this.endPointAnimation;
        PointKeyframeAnimation pointKeyframeAnimation3 = this.startPointAnimation;
        if (gradientType == gradientType2) {
            long gradientHash$1 = getGradientHash$1();
            LongSparseArray longSparseArray = this.linearGradientCache;
            shader = (LinearGradient) longSparseArray.get(gradientHash$1);
            if (shader == null) {
                PointF pointF = (PointF) pointKeyframeAnimation3.getValue();
                PointF pointF2 = (PointF) pointKeyframeAnimation2.getValue();
                GradientColor gradientColor = (GradientColor) pointKeyframeAnimation.getValue();
                int[] iArr3 = gradientColor.colors;
                float[] fArr2 = gradientColor.positions;
                if (iArr3.length < 2) {
                    int[] iArr4 = {iArr3[0], iArr3[0]};
                    fArr2 = new float[]{RecyclerView.DECELERATION_RATE, 1.0f};
                    iArr2 = iArr4;
                } else {
                    iArr2 = iArr3;
                }
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, iArr2, fArr2, Shader.TileMode.CLAMP);
                longSparseArray.put(gradientHash$1, shader);
            }
        } else {
            long gradientHash$12 = getGradientHash$1();
            LongSparseArray longSparseArray2 = this.radialGradientCache;
            RadialGradient radialGradient = (RadialGradient) longSparseArray2.get(gradientHash$12);
            if (radialGradient != null) {
                shader = radialGradient;
            } else {
                PointF pointF3 = (PointF) pointKeyframeAnimation3.getValue();
                PointF pointF4 = (PointF) pointKeyframeAnimation2.getValue();
                GradientColor gradientColor2 = (GradientColor) pointKeyframeAnimation.getValue();
                int[] iArr5 = gradientColor2.colors;
                float[] fArr3 = gradientColor2.positions;
                if (iArr5.length < 2) {
                    iArr = new int[]{iArr5[0], iArr5[0]};
                    fArr = new float[]{RecyclerView.DECELERATION_RATE, 1.0f};
                } else {
                    fArr = fArr3;
                    iArr = iArr5;
                }
                float f = pointF3.x;
                float f2 = pointF3.y;
                float hypot = (float) Math.hypot(pointF4.x - f, pointF4.y - f2);
                if (hypot <= RecyclerView.DECELERATION_RATE) {
                    hypot = 0.001f;
                }
                RadialGradient radialGradient2 = new RadialGradient(f, f2, hypot, iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(gradientHash$12, radialGradient2);
                shader = radialGradient2;
            }
        }
        shader.setLocalMatrix(matrix);
        LPaint lPaint = this.paint;
        lPaint.setShader(shader);
        TextKeyframeAnimation textKeyframeAnimation = this.blurAnimation;
        if (textKeyframeAnimation != null) {
            float floatValue = ((Float) textKeyframeAnimation.getValue()).floatValue();
            if (floatValue == RecyclerView.DECELERATION_RATE) {
                lPaint.setMaskFilter(null);
            } else if (floatValue != this.blurMaskFilterRadius) {
                lPaint.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.blurMaskFilterRadius = floatValue;
        }
        float intValue = ((Integer) this.opacityAnimation.getValue()).intValue() / 100.0f;
        lPaint.setAlpha(MiscUtils.clamp((int) (i * intValue)));
        if (dropShadow != null) {
            dropShadow.applyWithAlpha((int) (intValue * 255.0f), lPaint);
        }
        canvas.drawPath(path, lPaint);
        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
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

    public final int getGradientHash$1() {
        float f = this.startPointAnimation.progress;
        float f2 = this.cacheSteps;
        int round = Math.round(f * f2);
        int round2 = Math.round(this.endPointAnimation.progress * f2);
        int round3 = Math.round(this.colorAnimation.progress * f2);
        int i = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
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
