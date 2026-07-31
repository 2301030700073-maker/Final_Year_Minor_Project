package androidx.compose.ui.graphics.vector;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public VectorPath(String str, List list, int i, Brush brush, float f, Brush brush2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7) {
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
        int m = Modifier.CC.m(this.name.hashCode() * 31, 31, this.pathData);
        Brush brush = this.fill;
        int m2 = Animation.CC.m((m + (brush != null ? brush.hashCode() : 0)) * 31, this.fillAlpha, 31);
        Brush brush2 = this.stroke;
        return Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m((((Animation.CC.m(Animation.CC.m((m2 + (brush2 != null ? brush2.hashCode() : 0)) * 31, this.strokeAlpha, 31), this.strokeLineWidth, 31) + this.strokeLineCap) * 31) + this.strokeLineJoin) * 31, this.strokeLineMiter, 31), this.trimPathStart, 31), this.trimPathEnd, 31), this.trimPathOffset, 31) + this.pathFillType;
    }
}
