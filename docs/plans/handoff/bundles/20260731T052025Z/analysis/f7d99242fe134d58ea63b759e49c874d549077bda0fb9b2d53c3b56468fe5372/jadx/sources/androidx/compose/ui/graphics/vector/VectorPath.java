package androidx.compose.ui.graphics.vector;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.graphics.Brush;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VectorPath extends VectorNode {
    public final Brush fill;
    public final float fillAlpha;
    public final String name;
    public final List pathData;
    public final int pathFillType;
    public final Brush stroke;
    public final float strokeAlpha;
    public final int strokeLineCap;
    public final int strokeLineJoin;
    public final float strokeLineMiter;
    public final float strokeLineWidth;
    public final float trimPathEnd;
    public final float trimPathOffset;
    public final float trimPathStart;

    public VectorPath(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2, int i3, Brush brush, Brush brush2, String str, List list) {
        this.name = str;
        this.pathData = list;
        this.pathFillType = i;
        this.fill = brush;
        this.fillAlpha = f;
        this.stroke = brush2;
        this.strokeAlpha = f2;
        this.strokeLineWidth = f3;
        this.strokeLineCap = i2;
        this.strokeLineJoin = i3;
        this.strokeLineMiter = f4;
        this.trimPathStart = f5;
        this.trimPathEnd = f6;
        this.trimPathOffset = f7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || VectorPath.class != obj.getClass()) {
            return false;
        }
        VectorPath vectorPath = (VectorPath) obj;
        return this.name.equals(vectorPath.name) && Intrinsics.areEqual(this.fill, vectorPath.fill) && this.fillAlpha == vectorPath.fillAlpha && Intrinsics.areEqual(this.stroke, vectorPath.stroke) && this.strokeAlpha == vectorPath.strokeAlpha && this.strokeLineWidth == vectorPath.strokeLineWidth && this.strokeLineCap == vectorPath.strokeLineCap && this.strokeLineJoin == vectorPath.strokeLineJoin && this.strokeLineMiter == vectorPath.strokeLineMiter && this.trimPathStart == vectorPath.trimPathStart && this.trimPathEnd == vectorPath.trimPathEnd && this.trimPathOffset == vectorPath.trimPathOffset && this.pathFillType == vectorPath.pathFillType && Intrinsics.areEqual(this.pathData, vectorPath.pathData);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(this.pathData, this.name.hashCode() * 31, 31);
        Brush brush = this.fill;
        int m2 = CameraDevices$CC.m((m + (brush != null ? brush.hashCode() : 0)) * 31, this.fillAlpha, 31);
        Brush brush2 = this.stroke;
        return CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m((((CameraDevices$CC.m(CameraDevices$CC.m((m2 + (brush2 != null ? brush2.hashCode() : 0)) * 31, this.strokeAlpha, 31), this.strokeLineWidth, 31) + this.strokeLineCap) * 31) + this.strokeLineJoin) * 31, this.strokeLineMiter, 31), this.trimPathStart, 31), this.trimPathEnd, 31), this.trimPathOffset, 31) + this.pathFillType;
    }
}
