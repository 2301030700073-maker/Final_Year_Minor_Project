package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ShapeKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeContent implements PathContent, BaseKeyframeAnimation.AnimationListener, Content {
    public final boolean hidden;
    public boolean isPathValid;
    public final LottieDrawable lottieDrawable;
    public final ShapeKeyframeAnimation shapeAnimation;
    public final Path path = new Path();
    public final Headers.Builder trimPaths = new Headers.Builder(2, (byte) 0);

    public ShapeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapePath shapePath) {
        this.hidden = shapePath.hidden;
        this.lottieDrawable = lottieDrawable;
        ShapeKeyframeAnimation shapeKeyframeAnimation = new ShapeKeyframeAnimation((List) shapePath.shapePath.fragment);
        this.shapeAnimation = shapeKeyframeAnimation;
        baseLayer.addAnimation(shapeKeyframeAnimation);
        shapeKeyframeAnimation.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        boolean z = this.isPathValid;
        ShapeKeyframeAnimation shapeKeyframeAnimation = this.shapeAnimation;
        Path path = this.path;
        if (z) {
            shapeKeyframeAnimation.getClass();
            return path;
        }
        path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return path;
        }
        Path path2 = (Path) shapeKeyframeAnimation.getValue();
        if (path2 == null) {
            return path;
        }
        path.set(path2);
        path.setFillType(Path.FillType.EVEN_ODD);
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
        ArrayList arrayList = null;
        int i = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i >= arrayList2.size()) {
                this.shapeAnimation.shapeModifiers = arrayList;
                return;
            }
            Content content = (Content) arrayList2.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.type == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.namesAndValues.add(trimPathContent);
                    trimPathContent.addListener(this);
                    i++;
                }
            }
            if (content instanceof RoundedCornersContent) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                RoundedCornersContent roundedCornersContent = (RoundedCornersContent) content;
                roundedCornersContent.roundedCorners.addUpdateListener(this);
                arrayList.add(roundedCornersContent);
            }
            i++;
        }
    }
}
