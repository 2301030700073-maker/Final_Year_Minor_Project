package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import coil3.memory.MemoryCacheService;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.KeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.DropShadow;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener {
    public final ArrayList animations;
    public BlurMaskFilter blurMaskFilter;
    public float blurMaskFilterRadius;
    public final Matrix boundsMatrix;
    public final RectF canvasBounds;
    public final LPaint clearPaint;
    public final LPaint dstInPaint;
    public final LPaint dstOutPaint;
    public final TextKeyframeAnimation inOutAnimation;
    public final Layer layerModel;
    public final LottieDrawable lottieDrawable;
    public final SVG mask;
    public final RectF maskBoundsRect;
    public final RectF matteBoundsRect;
    public BaseLayer matteLayer;
    public final LPaint mattePaint;
    public BaseLayer parentLayer;
    public List parentLayers;
    public final RectF rect;
    public LPaint solidWhitePaint;
    public final RectF tempMaskBoundsRect;
    public final TransformKeyframeAnimation transform;
    public boolean visible;
    public final Path path = new Path();
    public final Matrix matrix = new Matrix();
    public final Matrix canvasMatrix = new Matrix();
    public final LPaint contentPaint = new LPaint(1, 0);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.model.layer.BaseLayer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode;
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        int i = 0;
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.dstInPaint = new LPaint(mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.dstOutPaint = new LPaint(mode2);
        LPaint lPaint = new LPaint(1, 0);
        this.mattePaint = lPaint;
        PorterDuff.Mode mode3 = PorterDuff.Mode.CLEAR;
        LPaint lPaint2 = new LPaint();
        lPaint2.setXfermode(new PorterDuffXfermode(mode3));
        this.clearPaint = lPaint2;
        this.rect = new RectF();
        this.canvasBounds = new RectF();
        this.maskBoundsRect = new RectF();
        this.matteBoundsRect = new RectF();
        this.tempMaskBoundsRect = new RectF();
        this.boundsMatrix = new Matrix();
        this.animations = new ArrayList();
        this.visible = true;
        this.blurMaskFilterRadius = RecyclerView.DECELERATION_RATE;
        this.lottieDrawable = lottieDrawable;
        this.layerModel = layer;
        List list = layer.masks;
        if (layer.matteType == Layer.MatteType.INVERT) {
            lPaint.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            lPaint.setXfermode(new PorterDuffXfermode(mode));
        }
        AnimatableTransform animatableTransform = layer.transform;
        animatableTransform.getClass();
        TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(animatableTransform);
        this.transform = transformKeyframeAnimation;
        transformKeyframeAnimation.addListener(this);
        if (list != null && !list.isEmpty()) {
            SVG svg = new SVG(list);
            this.mask = svg;
            Iterator it = ((ArrayList) svg.rootElement).iterator();
            while (it.hasNext()) {
                ((BaseKeyframeAnimation) it.next()).addUpdateListener(this);
            }
            Iterator it2 = ((ArrayList) this.mask.cssRules).iterator();
            while (it2.hasNext()) {
                BaseKeyframeAnimation baseKeyframeAnimation = (BaseKeyframeAnimation) it2.next();
                addAnimation(baseKeyframeAnimation);
                baseKeyframeAnimation.addUpdateListener(this);
            }
        }
        Layer layer2 = this.layerModel;
        if (layer2.inOutKeyframes.isEmpty()) {
            if (true != this.visible) {
                this.visible = true;
                this.lottieDrawable.invalidateSelf();
                return;
            }
            return;
        }
        TextKeyframeAnimation textKeyframeAnimation = new TextKeyframeAnimation(layer2.inOutKeyframes, 2);
        this.inOutAnimation = textKeyframeAnimation;
        textKeyframeAnimation.isDiscrete = true;
        textKeyframeAnimation.addUpdateListener(new BaseLayer$$ExternalSyntheticLambda0(i, this));
        boolean z = ((Float) this.inOutAnimation.getValue()).floatValue() == 1.0f;
        if (z != this.visible) {
            this.visible = z;
            this.lottieDrawable.invalidateSelf();
        }
        addAnimation(this.inOutAnimation);
    }

    public final void addAnimation(BaseKeyframeAnimation baseKeyframeAnimation) {
        if (baseKeyframeAnimation == null) {
            return;
        }
        this.animations.add(baseKeyframeAnimation);
    }

    public final void buildParentLayerListIfNeeded() {
        if (this.parentLayers != null) {
            return;
        }
        if (this.parentLayer == null) {
            this.parentLayers = Collections.EMPTY_LIST;
            return;
        }
        this.parentLayers = new ArrayList();
        for (BaseLayer baseLayer = this.parentLayer; baseLayer != null; baseLayer = baseLayer.parentLayer) {
            this.parentLayers.add(baseLayer);
        }
    }

    public final void clearCanvas(Canvas canvas) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        RectF rectF = this.rect;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.clearPaint);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0384  */
    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r21, android.graphics.Matrix r22, int r23, com.airbnb.lottie.utils.DropShadow r24) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.BaseLayer.draw(android.graphics.Canvas, android.graphics.Matrix, int, com.airbnb.lottie.utils.DropShadow):void");
    }

    public abstract void drawLayer(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow);

    public MemoryCacheService getBlurEffect() {
        return this.layerModel.blurEffect;
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.rect.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
        buildParentLayerListIfNeeded();
        Matrix matrix2 = this.boundsMatrix;
        matrix2.set(matrix);
        if (z) {
            List list = this.parentLayers;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((BaseLayer) this.parentLayers.get(size)).transform.getMatrix());
                }
            } else {
                BaseLayer baseLayer = this.parentLayer;
                if (baseLayer != null) {
                    matrix2.preConcat(baseLayer.transform.getMatrix());
                }
            }
        }
        matrix2.preConcat(this.transform.getMatrix());
    }

    public final boolean hasMasksOnThisLayer() {
        SVG svg = this.mask;
        return (svg == null || ((ArrayList) svg.rootElement).isEmpty()) ? false : true;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    public final void recordRenderTime() {
        Transition.AnonymousClass1 anonymousClass1 = this.lottieDrawable.composition.performanceTracker;
        String str = this.layerModel.layerName;
    }

    public void setProgress(float f) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        TransformKeyframeAnimation transformKeyframeAnimation = this.transform;
        TextKeyframeAnimation textKeyframeAnimation = transformKeyframeAnimation.opacity;
        if (textKeyframeAnimation != null) {
            textKeyframeAnimation.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation2 = transformKeyframeAnimation.startOpacity;
        if (textKeyframeAnimation2 != null) {
            textKeyframeAnimation2.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation3 = transformKeyframeAnimation.endOpacity;
        if (textKeyframeAnimation3 != null) {
            textKeyframeAnimation3.setProgress(f);
        }
        KeyframeAnimation keyframeAnimation = transformKeyframeAnimation.anchorPoint;
        if (keyframeAnimation != null) {
            keyframeAnimation.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation = transformKeyframeAnimation.position;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.setProgress(f);
        }
        PointKeyframeAnimation pointKeyframeAnimation = transformKeyframeAnimation.scale;
        if (pointKeyframeAnimation != null) {
            pointKeyframeAnimation.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation4 = transformKeyframeAnimation.rotation;
        if (textKeyframeAnimation4 != null) {
            textKeyframeAnimation4.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation5 = transformKeyframeAnimation.skew;
        if (textKeyframeAnimation5 != null) {
            textKeyframeAnimation5.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation6 = transformKeyframeAnimation.skewAngle;
        if (textKeyframeAnimation6 != null) {
            textKeyframeAnimation6.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation7 = transformKeyframeAnimation.rotationX;
        if (textKeyframeAnimation7 != null) {
            textKeyframeAnimation7.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation8 = transformKeyframeAnimation.rotationY;
        if (textKeyframeAnimation8 != null) {
            textKeyframeAnimation8.setProgress(f);
        }
        TextKeyframeAnimation textKeyframeAnimation9 = transformKeyframeAnimation.rotationZ;
        if (textKeyframeAnimation9 != null) {
            textKeyframeAnimation9.setProgress(f);
        }
        int i = 0;
        SVG svg = this.mask;
        if (svg != null) {
            ArrayList arrayList = (ArrayList) svg.rootElement;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((BaseKeyframeAnimation) arrayList.get(i2)).setProgress(f);
            }
            AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
        }
        TextKeyframeAnimation textKeyframeAnimation10 = this.inOutAnimation;
        if (textKeyframeAnimation10 != null) {
            textKeyframeAnimation10.setProgress(f);
        }
        BaseLayer baseLayer = this.matteLayer;
        if (baseLayer != null) {
            baseLayer.setProgress(f);
        }
        while (true) {
            ArrayList arrayList2 = this.animations;
            if (i >= arrayList2.size()) {
                AsyncUpdates asyncUpdates3 = L.defaultAsyncUpdates;
                return;
            } else {
                ((BaseKeyframeAnimation) arrayList2.get(i)).setProgress(f);
                i++;
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
    }
}
