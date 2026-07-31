package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RepeaterContent implements DrawingContent, PathContent, GreedyContent, BaseKeyframeAnimation.AnimationListener, Content {
    public ContentGroup contentGroup;
    public final TextKeyframeAnimation copies;
    public final boolean hidden;
    public final BaseLayer layer;
    public final LottieDrawable lottieDrawable;
    public final TextKeyframeAnimation offset;
    public final TransformKeyframeAnimation transform;
    public final Matrix matrix = new Matrix();
    public final Path path = new Path();

    public RepeaterContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Repeater repeater) {
        this.lottieDrawable = lottieDrawable;
        this.layer = baseLayer;
        this.hidden = repeater.hidden;
        TextKeyframeAnimation createAnimation = repeater.copies.createAnimation();
        this.copies = createAnimation;
        baseLayer.addAnimation(createAnimation);
        createAnimation.addUpdateListener(this);
        TextKeyframeAnimation createAnimation2 = ((AnimatableFloatValue) repeater.offset).createAnimation();
        this.offset = createAnimation2;
        baseLayer.addAnimation(createAnimation2);
        createAnimation2.addUpdateListener(this);
        AnimatableTransform animatableTransform = (AnimatableTransform) repeater.transform;
        animatableTransform.getClass();
        TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(animatableTransform);
        this.transform = transformKeyframeAnimation;
        transformKeyframeAnimation.addAnimationsToLayer(baseLayer);
        transformKeyframeAnimation.addListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public final void absorbContent(ListIterator listIterator) {
        if (this.contentGroup != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((Content) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.contentGroup = new ContentGroup(this.lottieDrawable, this.layer, this.hidden, arrayList, null);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        float floatValue = ((Float) this.copies.getValue()).floatValue();
        float floatValue2 = ((Float) this.offset.getValue()).floatValue();
        TransformKeyframeAnimation transformKeyframeAnimation = this.transform;
        float floatValue3 = ((Float) transformKeyframeAnimation.startOpacity.getValue()).floatValue() / 100.0f;
        float floatValue4 = ((Float) transformKeyframeAnimation.endOpacity.getValue()).floatValue() / 100.0f;
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix2 = this.matrix;
            matrix2.set(matrix);
            float f = i2;
            matrix2.preConcat(transformKeyframeAnimation.getMatrixForRepeater(f + floatValue2));
            this.contentGroup.draw(canvas, matrix2, (int) (MiscUtils.lerp(floatValue3, floatValue4, f / floatValue) * i), dropShadow);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.contentGroup.getBounds(rectF, matrix, z);
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Path path = this.contentGroup.getPath();
        Path path2 = this.path;
        path2.reset();
        float floatValue = ((Float) this.copies.getValue()).floatValue();
        float floatValue2 = ((Float) this.offset.getValue()).floatValue();
        for (int i = ((int) floatValue) - 1; i >= 0; i--) {
            Matrix matrixForRepeater = this.transform.getMatrixForRepeater(i + floatValue2);
            Matrix matrix = this.matrix;
            matrix.set(matrixForRepeater);
            path2.addPath(path, matrix);
        }
        return path2;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        this.contentGroup.setContents(list, list2);
    }
}
