package com.google.android.material.shape;

import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import com.google.android.material.shape.ShapePath;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RoundedCornerTreatment extends ContextsKt {
    @Override // coil3.util.ContextsKt
    public final void getCornerPath(ShapePath shapePath, float f, float f2) {
        float f3 = f2 * f;
        shapePath.reset(f3, 180.0f, 90.0f);
        float f4 = f3 * 2.0f;
        ShapePath.PathArcOperation pathArcOperation = new ShapePath.PathArcOperation(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f4, f4);
        pathArcOperation.startAngle = 180.0f;
        pathArcOperation.sweepAngle = 90.0f;
        shapePath.operations.add(pathArcOperation);
        ShapePath.ArcShadowOperation arcShadowOperation = new ShapePath.ArcShadowOperation(pathArcOperation);
        shapePath.addConnectingShadowIfNecessary(180.0f);
        shapePath.shadowCompatOperations.add(arcShadowOperation);
        shapePath.currentShadowAngle = 270.0f;
        float f5 = (RecyclerView.DECELERATION_RATE + f4) * 0.5f;
        float f6 = (f4 - RecyclerView.DECELERATION_RATE) / 2.0f;
        shapePath.endX = (((float) Math.cos(Math.toRadians(270.0d))) * f6) + f5;
        shapePath.endY = (f6 * ((float) Math.sin(Math.toRadians(270.0d)))) + f5;
    }
}
