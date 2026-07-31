package com.google.android.material.shape;

import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.shape.ShapeAppearancePathProvider;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ShapeableDelegate {
    public ShapeAppearanceModel shapeAppearanceModel;
    public boolean forceCompatClippingEnabled = false;
    public boolean offsetZeroCornerEdgeBoundsEnabled = false;
    public RectF maskBounds = new RectF();
    public final Path shapePath = new Path();

    public abstract void invalidateClippingMethod(NavigationView navigationView);

    public abstract boolean shouldUseCompatClipping();

    public final void updateShapePath() {
        ShapeAppearanceModel shapeAppearanceModel;
        RectF rectF = this.maskBounds;
        if (rectF.left > rectF.right || rectF.top > rectF.bottom || (shapeAppearanceModel = this.shapeAppearanceModel) == null) {
            return;
        }
        ShapeAppearancePathProvider.Lazy.INSTANCE.calculatePath(shapeAppearanceModel, 1.0f, rectF, null, this.shapePath);
    }
}
