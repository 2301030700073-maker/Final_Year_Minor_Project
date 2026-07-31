package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.OffscreenLayer;
import java.util.ArrayList;
import java.util.List;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentGroup implements DrawingContent, PathContent, BaseKeyframeAnimation.AnimationListener {
    public final ArrayList contents;
    public final boolean hidden;
    public final LottieDrawable lottieDrawable;
    public final Matrix matrix;
    public final RectF offScreenRectF;
    public final OffscreenLayer offscreenLayer;
    public final PriorityQueue offscreenOp;
    public final Path path;
    public ArrayList pathContents;
    public final RectF rect;
    public final TransformKeyframeAnimation transformAnimation;

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, boolean z, ArrayList arrayList, AnimatableTransform animatableTransform) {
        this.offscreenOp = new PriorityQueue(9, (byte) 0);
        this.offScreenRectF = new RectF();
        this.offscreenLayer = new OffscreenLayer();
        this.matrix = new Matrix();
        this.path = new Path();
        this.rect = new RectF();
        this.lottieDrawable = lottieDrawable;
        this.hidden = z;
        this.contents = arrayList;
        if (animatableTransform != null) {
            TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(animatableTransform);
            this.transformAnimation = transformKeyframeAnimation;
            transformKeyframeAnimation.addAnimationsToLayer(baseLayer);
            transformKeyframeAnimation.addListener(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof GreedyContent) {
                arrayList2.add((GreedyContent) content);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((GreedyContent) arrayList2.get(size2)).absorbContent(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        boolean z;
        if (this.hidden) {
            return;
        }
        Matrix matrix2 = this.matrix;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.transformAnimation;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.getMatrix());
            i = (int) (((((transformKeyframeAnimation.opacity == null ? 100 : ((Integer) r1.getValue()).intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        LottieDrawable lottieDrawable = this.lottieDrawable;
        lottieDrawable.getClass();
        boolean z2 = false;
        ArrayList arrayList = this.contents;
        if (dropShadow != null && lottieDrawable.isApplyingShadowToLayersEnabled) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    z = false;
                    break;
                } else {
                    if ((arrayList.get(i2) instanceof DrawingContent) && (i3 = i3 + 1) >= 2) {
                        z = true;
                        break;
                    }
                    i2++;
                }
            }
            if (z) {
                z2 = true;
            }
        }
        int i4 = z2 ? 255 : i;
        OffscreenLayer offscreenLayer = this.offscreenLayer;
        if (z2) {
            RectF rectF = this.offScreenRectF;
            rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            getBounds(rectF, matrix, true);
            PriorityQueue priorityQueue = this.offscreenOp;
            priorityQueue.size = i;
            if (dropShadow != null) {
                if (Color.alpha(dropShadow.color) > 0) {
                    priorityQueue.array = dropShadow;
                } else {
                    priorityQueue.array = null;
                }
                dropShadow = null;
            } else {
                priorityQueue.array = null;
            }
            canvas = offscreenLayer.start(canvas, rectF, priorityQueue);
        } else if (dropShadow != null) {
            DropShadow dropShadow2 = new DropShadow(dropShadow);
            dropShadow2.multiplyOpacity(i4);
            dropShadow = dropShadow2;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof DrawingContent) {
                ((DrawingContent) obj).draw(canvas, matrix2, i4, dropShadow);
            }
        }
        if (z2) {
            offscreenLayer.finish();
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.matrix;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.transformAnimation;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.getMatrix());
        }
        RectF rectF2 = this.rect;
        rectF2.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
        ArrayList arrayList = this.contents;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof DrawingContent) {
                ((DrawingContent) content).getBounds(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Matrix matrix = this.matrix;
        matrix.reset();
        TransformKeyframeAnimation transformKeyframeAnimation = this.transformAnimation;
        if (transformKeyframeAnimation != null) {
            matrix.set(transformKeyframeAnimation.getMatrix());
        }
        Path path = this.path;
        path.reset();
        if (!this.hidden) {
            ArrayList arrayList = this.contents;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Content content = (Content) arrayList.get(size);
                if (content instanceof PathContent) {
                    path.addPath(((PathContent) content).getPath(), matrix);
                }
            }
        }
        return path;
    }

    public final List getPathList() {
        if (this.pathContents == null) {
            this.pathContents = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.contents;
                if (i >= arrayList.size()) {
                    break;
                }
                Content content = (Content) arrayList.get(i);
                if (content instanceof PathContent) {
                    this.pathContents.add((PathContent) content);
                }
                i++;
            }
        }
        return this.pathContents;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        int size = list.size();
        ArrayList arrayList = this.contents;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Content content = (Content) arrayList.get(size2);
            content.setContents(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(content);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ContentGroup(com.airbnb.lottie.LottieDrawable r8, com.airbnb.lottie.model.layer.BaseLayer r9, com.airbnb.lottie.model.content.ShapeGroup r10, com.airbnb.lottie.LottieComposition r11) {
        /*
            r7 = this;
            java.lang.String r0 = r10.name
            boolean r4 = r10.hidden
            java.util.List r10 = r10.items
            java.util.ArrayList r5 = new java.util.ArrayList
            int r0 = r10.size()
            r5.<init>(r0)
            r0 = 0
            r1 = r0
        L11:
            int r2 = r10.size()
            if (r1 >= r2) goto L29
            java.lang.Object r2 = r10.get(r1)
            com.airbnb.lottie.model.content.ContentModel r2 = (com.airbnb.lottie.model.content.ContentModel) r2
            com.airbnb.lottie.animation.content.Content r2 = r2.toContent(r8, r11, r9)
            if (r2 == 0) goto L26
            r5.add(r2)
        L26:
            int r1 = r1 + 1
            goto L11
        L29:
            int r11 = r10.size()
            if (r0 >= r11) goto L43
            java.lang.Object r11 = r10.get(r0)
            com.airbnb.lottie.model.content.ContentModel r11 = (com.airbnb.lottie.model.content.ContentModel) r11
            boolean r1 = r11 instanceof com.airbnb.lottie.model.animatable.AnimatableTransform
            if (r1 == 0) goto L40
            com.airbnb.lottie.model.animatable.AnimatableTransform r11 = (com.airbnb.lottie.model.animatable.AnimatableTransform) r11
        L3b:
            r1 = r7
            r2 = r8
            r3 = r9
            r6 = r11
            goto L45
        L40:
            int r0 = r0 + 1
            goto L29
        L43:
            r11 = 0
            goto L3b
        L45:
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.ContentGroup.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.ShapeGroup, com.airbnb.lottie.LottieComposition):void");
    }
}
