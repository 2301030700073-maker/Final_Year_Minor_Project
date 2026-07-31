package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import coil3.memory.MemoryCacheService;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.utils.DropShadow;
import java.util.Collections;
import java.util.List;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeLayer extends BaseLayer {
    public final CompositionLayer compositionLayer;
    public final ContentGroup contentGroup;
    public final DropShadowKeyframeAnimation dropShadowAnimation;

    public ShapeLayer(LottieDrawable lottieDrawable, Layer layer, CompositionLayer compositionLayer, LottieComposition lottieComposition) {
        super(lottieDrawable, layer);
        this.compositionLayer = compositionLayer;
        ContentGroup contentGroup = new ContentGroup(lottieDrawable, this, new ShapeGroup("__container", layer.shapes, false), lottieComposition);
        this.contentGroup = contentGroup;
        List list = Collections.EMPTY_LIST;
        contentGroup.setContents(list, list);
        Request.Builder builder = this.layerModel.dropShadowEffect;
        if (builder != null) {
            this.dropShadowAnimation = new DropShadowKeyframeAnimation(this, this, builder);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void drawLayer(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.dropShadowAnimation;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.evaluate(matrix, i);
        }
        this.contentGroup.draw(canvas, matrix, i, dropShadow);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final MemoryCacheService getBlurEffect() {
        MemoryCacheService memoryCacheService = this.layerModel.blurEffect;
        return memoryCacheService != null ? memoryCacheService : this.compositionLayer.layerModel.blurEffect;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        this.contentGroup.getBounds(rectF, this.boundsMatrix, z);
    }
}
