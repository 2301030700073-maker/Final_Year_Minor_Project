package com.google.android.material.shape;

import com.google.android.material.shape.ShapePath;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RoundedCornerTreatment extends Jsoup {
    @Override // org.jsoup.Jsoup
    public final void getCornerPath(ShapePath shapePath, float f, float f2) {
        shapePath.reset(f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        ShapePath.PathArcOperation pathArcOperation = new ShapePath.PathArcOperation(0.0f, 0.0f, f3, f3);
        pathArcOperation.startAngle = 180.0f;
        pathArcOperation.sweepAngle = 90.0f;
        shapePath.operations.add(pathArcOperation);
        ShapePath.ArcShadowOperation arcShadowOperation = new ShapePath.ArcShadowOperation(pathArcOperation);
        shapePath.addConnectingShadowIfNecessary(180.0f);
        shapePath.shadowCompatOperations.add(arcShadowOperation);
        shapePath.currentShadowAngle = 270.0f;
        float f4 = (0.0f + f3) * 0.5f;
        float f5 = (f3 - 0.0f) / 2.0f;
        shapePath.endX = (((float) Math.cos(Math.toRadians(270.0d))) * f5) + f4;
        shapePath.endY = (f5 * ((float) Math.sin(Math.toRadians(270.0d)))) + f4;
    }
}
