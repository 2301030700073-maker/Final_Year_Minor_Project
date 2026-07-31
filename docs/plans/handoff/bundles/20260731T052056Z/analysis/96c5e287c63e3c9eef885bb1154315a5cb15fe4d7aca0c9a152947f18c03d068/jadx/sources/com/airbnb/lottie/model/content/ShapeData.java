package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeData {
    public boolean closed;
    public final ArrayList curves;
    public PointF initialPoint;

    public ShapeData(PointF pointF, boolean z, List list) {
        this.initialPoint = pointF;
        this.closed = z;
        this.curves = new ArrayList(list);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapeData{numCurves=");
        sb.append(this.curves.size());
        sb.append("closed=");
        return Animation.CC.m(sb, this.closed, '}');
    }

    public ShapeData() {
        this.curves = new ArrayList();
    }
}
