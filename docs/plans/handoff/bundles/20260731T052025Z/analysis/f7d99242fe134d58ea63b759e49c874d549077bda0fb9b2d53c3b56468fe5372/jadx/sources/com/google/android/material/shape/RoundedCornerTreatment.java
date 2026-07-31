package com.google.android.material.shape;

import com.google.android.material.shape.ShapePath;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoundedCornerTreatment extends Validate {
    @Override // org.jsoup.helper.Validate
    public final void getCornerPath(ShapePath shapePath, float f, float f2) {
        float f3 = f2 * f;
        shapePath.reset(f3, 180.0f, 90.0f);
        float f4 = f3 * 2.0f;
        ShapePath.PathArcOperation pathArcOperation = new ShapePath.PathArcOperation(0.0f, 0.0f, f4, f4);
        pathArcOperation.startAngle = 180.0f;
        pathArcOperation.sweepAngle = 90.0f;
        shapePath.operations.add(pathArcOperation);
        ShapePath.ArcShadowOperation arcShadowOperation = new ShapePath.ArcShadowOperation(pathArcOperation);
        shapePath.addConnectingShadowIfNecessary(180.0f);
        shapePath.shadowCompatOperations.add(arcShadowOperation);
        shapePath.currentShadowAngle = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        shapePath.endX = (((float) Math.cos(Math.toRadians(270.0d))) * f6) + f5;
        shapePath.endY = (f6 * ((float) Math.sin(Math.toRadians(270.0d)))) + f5;
    }
}
