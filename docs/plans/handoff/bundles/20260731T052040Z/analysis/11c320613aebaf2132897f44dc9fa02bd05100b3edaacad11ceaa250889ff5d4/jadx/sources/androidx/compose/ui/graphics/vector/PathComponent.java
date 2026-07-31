package androidx.compose.ui.graphics.vector;

import android.graphics.Path;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.Owner;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PathComponent extends VNode {
    public AndroidPath _tmpPath;
    public Brush fill;
    public float fillAlpha = 1.0f;
    public boolean isPathDirty;
    public boolean isStrokeDirty;
    public boolean isTrimPathDirty;
    public final AndroidPath path;
    public List pathData;
    public final Lazy pathMeasure$delegate;
    public AndroidPath renderPath;
    public Brush stroke;
    public float strokeAlpha;
    public int strokeLineCap;
    public int strokeLineJoin;
    public float strokeLineMiter;
    public float strokeLineWidth;
    public Stroke strokeStyle;
    public float trimPathEnd;
    public float trimPathOffset;
    public float trimPathStart;

    public PathComponent() {
        int i = VectorKt.$r8$clinit;
        this.pathData = EmptyList.INSTANCE;
        this.strokeAlpha = 1.0f;
        this.strokeLineCap = 0;
        this.strokeLineJoin = 0;
        this.strokeLineMiter = 4.0f;
        this.trimPathEnd = 1.0f;
        this.isPathDirty = true;
        this.isStrokeDirty = true;
        AndroidPath Path = AndroidPath_androidKt.Path();
        this.path = Path;
        this.renderPath = Path;
        this.pathMeasure$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, PathComponent$pathMeasure$2.INSTANCE);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void draw(DrawScope drawScope) {
        DrawScope drawScope2;
        Stroke stroke;
        if (this.isPathDirty) {
            PathParserKt.toPath(this.pathData, this.path);
            updateRenderPath();
        } else if (this.isTrimPathDirty) {
            updateRenderPath();
        }
        this.isPathDirty = false;
        this.isTrimPathDirty = false;
        Brush brush = this.fill;
        if (brush != null) {
            drawScope2 = drawScope;
            Owner.CC.m366drawPathGBMwjPU$default(drawScope2, this.renderPath, brush, this.fillAlpha, null, 56);
        } else {
            drawScope2 = drawScope;
        }
        Brush brush2 = this.stroke;
        if (brush2 != null) {
            Stroke stroke2 = this.strokeStyle;
            if (this.isStrokeDirty || stroke2 == null) {
                Stroke stroke3 = new Stroke(this.strokeLineCap, this.strokeLineJoin, this.strokeLineWidth, this.strokeLineMiter, 16);
                this.strokeStyle = stroke3;
                this.isStrokeDirty = false;
                stroke = stroke3;
            } else {
                stroke = stroke2;
            }
            Owner.CC.m366drawPathGBMwjPU$default(drawScope2, this.renderPath, brush2, this.strokeAlpha, stroke, 48);
        }
    }

    public final String toString() {
        return this.path.toString();
    }

    public final void updateRenderPath() {
        float f = this.trimPathStart;
        AndroidPath androidPath = this.path;
        if (f == 0.0f && this.trimPathEnd == 1.0f) {
            this.renderPath = androidPath;
            return;
        }
        if (Intrinsics.areEqual(this.renderPath, androidPath)) {
            this.renderPath = AndroidPath_androidKt.Path();
        } else {
            Path.FillType fillType = this.renderPath.internalPath.getFillType();
            Path.FillType fillType2 = Path.FillType.EVEN_ODD;
            boolean z = fillType == fillType2;
            this.renderPath.internalPath.rewind();
            Path path = this.renderPath.internalPath;
            if (!z) {
                fillType2 = Path.FillType.WINDING;
            }
            path.setFillType(fillType2);
        }
        Lazy lazy = this.pathMeasure$delegate;
        ((AndroidPathMeasure) lazy.getValue()).internalPathMeasure.setPath(androidPath != null ? androidPath.internalPath : null, false);
        float length = ((AndroidPathMeasure) lazy.getValue()).internalPathMeasure.getLength();
        float f2 = this.trimPathStart;
        float f3 = this.trimPathOffset;
        float f4 = ((f2 + f3) % 1.0f) * length;
        float f5 = ((this.trimPathEnd + f3) % 1.0f) * length;
        if (f4 <= f5) {
            ((AndroidPathMeasure) lazy.getValue()).getSegment(f4, f5, this.renderPath);
            return;
        }
        AndroidPath androidPath2 = this._tmpPath;
        if (androidPath2 == null) {
            androidPath2 = AndroidPath_androidKt.Path();
            this._tmpPath = androidPath2;
        }
        androidPath2.reset();
        ((AndroidPathMeasure) lazy.getValue()).getSegment(f4, length, androidPath2);
        this.renderPath.internalPath.addPath(androidPath2.internalPath, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
        androidPath2.reset();
        ((AndroidPathMeasure) lazy.getValue()).getSegment(0.0f, f5, androidPath2);
        this.renderPath.internalPath.addPath(androidPath2.internalPath, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
    }
}
