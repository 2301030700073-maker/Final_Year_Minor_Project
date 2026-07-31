package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.OffscreenLayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Request;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositionLayer extends BaseLayer {
    public boolean clipToCompositionBounds;
    public final DropShadowKeyframeAnimation dropShadowAnimation;
    public final RectF layerBounds;
    public final ArrayList layers;
    public final RectF newClipRect;
    public final OffscreenLayer offscreenLayer;
    public final PriorityQueue offscreenOp;
    public float progress;
    public final RectF rect;
    public final TextKeyframeAnimation timeRemapping;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.model.layer.CompositionLayer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layer, List list, LottieComposition lottieComposition) {
        super(lottieDrawable, layer);
        BaseLayer baseLayer;
        BaseLayer shapeLayer;
        this.layers = new ArrayList();
        this.rect = new RectF();
        this.newClipRect = new RectF();
        this.layerBounds = new RectF();
        this.offscreenLayer = new OffscreenLayer();
        this.offscreenOp = new PriorityQueue(9, (byte) 0);
        this.clipToCompositionBounds = true;
        AnimatableFloatValue animatableFloatValue = layer.timeRemapping;
        if (animatableFloatValue != null) {
            TextKeyframeAnimation createAnimation = animatableFloatValue.createAnimation();
            this.timeRemapping = createAnimation;
            addAnimation(createAnimation);
            createAnimation.addUpdateListener(this);
        } else {
            this.timeRemapping = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(lottieComposition.layers.size());
        BaseLayer baseLayer2 = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            Layer layer2 = (Layer) list.get(size);
            switch (BaseLayer.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[layer2.layerType.ordinal()]) {
                case 1:
                    shapeLayer = new ShapeLayer(lottieDrawable, layer2, this, lottieComposition);
                    break;
                case 2:
                    shapeLayer = new CompositionLayer(lottieDrawable, layer2, (List) lottieComposition.precomps.get(layer2.refId), lottieComposition);
                    break;
                case 3:
                    shapeLayer = new SolidLayer(lottieDrawable, layer2);
                    break;
                case 4:
                    shapeLayer = new ImageLayer(lottieDrawable, layer2);
                    break;
                case 5:
                    shapeLayer = new NullLayer(lottieDrawable, layer2);
                    break;
                case 6:
                    shapeLayer = new TextLayer(lottieDrawable, layer2);
                    break;
                default:
                    Logger.warning("Unknown layer type " + layer2.layerType);
                    shapeLayer = null;
                    break;
            }
            if (shapeLayer != null) {
                longSparseArray.put(shapeLayer.layerModel.layerId, shapeLayer);
                if (baseLayer2 != null) {
                    baseLayer2.matteLayer = shapeLayer;
                    baseLayer2 = null;
                } else {
                    this.layers.add(0, shapeLayer);
                    int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[layer2.matteType.ordinal()];
                    if (i == 1 || i == 2) {
                        baseLayer2 = shapeLayer;
                    }
                }
            }
        }
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            BaseLayer baseLayer3 = (BaseLayer) longSparseArray.get(longSparseArray.keyAt(i2));
            if (baseLayer3 != null && (baseLayer = (BaseLayer) longSparseArray.get(baseLayer3.layerModel.parentId)) != null) {
                baseLayer3.parentLayer = baseLayer;
            }
        }
        Request.Builder builder = this.layerModel.dropShadowEffect;
        if (builder != null) {
            this.dropShadowAnimation = new DropShadowKeyframeAnimation(this, this, builder);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void drawLayer(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        Canvas canvas2;
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        boolean z = false;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.dropShadowAnimation;
        boolean z2 = (dropShadow == null && dropShadowKeyframeAnimation == null) ? false : true;
        LottieDrawable lottieDrawable = this.lottieDrawable;
        lottieDrawable.getClass();
        if (z2 && lottieDrawable.isApplyingShadowToLayersEnabled) {
            z = true;
        }
        int i2 = z ? 255 : i;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.evaluate(matrix, i2);
        }
        boolean z3 = this.clipToCompositionBounds;
        Layer layer = this.layerModel;
        ArrayList arrayList = this.layers;
        RectF rectF = this.newClipRect;
        if (z3 || !"__container".equals(layer.layerName)) {
            rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, layer.preCompWidth, layer.preCompHeight);
            matrix.mapRect(rectF);
        } else {
            rectF.setEmpty();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                BaseLayer baseLayer = (BaseLayer) it.next();
                RectF rectF2 = this.layerBounds;
                baseLayer.getBounds(rectF2, matrix, true);
                rectF.union(rectF2);
            }
        }
        OffscreenLayer offscreenLayer = this.offscreenLayer;
        if (z) {
            PriorityQueue priorityQueue = this.offscreenOp;
            priorityQueue.array = null;
            priorityQueue.size = i;
            if (dropShadow != null) {
                if (Color.alpha(dropShadow.color) > 0) {
                    priorityQueue.array = dropShadow;
                } else {
                    priorityQueue.array = null;
                }
                dropShadow = null;
            }
            canvas2 = offscreenLayer.start(canvas, rectF, priorityQueue);
        } else {
            canvas2 = canvas;
        }
        canvas.save();
        if (canvas.clipRect(rectF)) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((BaseLayer) arrayList.get(size)).draw(canvas2, matrix, i2, dropShadow);
            }
        }
        if (z) {
            offscreenLayer.finish();
        }
        canvas.restore();
        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        ArrayList arrayList = this.layers;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.rect;
            rectF2.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            ((BaseLayer) arrayList.get(size)).getBounds(rectF2, this.boundsMatrix, true);
            rectF.union(rectF2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void setProgress(float f) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        this.progress = f;
        super.setProgress(f);
        Layer layer = this.layerModel;
        TextKeyframeAnimation textKeyframeAnimation = this.timeRemapping;
        if (textKeyframeAnimation != null) {
            LottieComposition lottieComposition = this.lottieDrawable.composition;
            f = ((((Float) textKeyframeAnimation.getValue()).floatValue() * layer.composition.frameRate) - layer.composition.startFrame) / ((lottieComposition.endFrame - lottieComposition.startFrame) + 0.01f);
        }
        if (textKeyframeAnimation == null) {
            float f2 = layer.startFrame;
            LottieComposition lottieComposition2 = layer.composition;
            f -= f2 / (lottieComposition2.endFrame - lottieComposition2.startFrame);
        }
        if (layer.timeStretch != RecyclerView.DECELERATION_RATE && !"__container".equals(layer.layerName)) {
            f /= layer.timeStretch;
        }
        ArrayList arrayList = this.layers;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((BaseLayer) arrayList.get(size)).setProgress(f);
        }
        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
    }
}
