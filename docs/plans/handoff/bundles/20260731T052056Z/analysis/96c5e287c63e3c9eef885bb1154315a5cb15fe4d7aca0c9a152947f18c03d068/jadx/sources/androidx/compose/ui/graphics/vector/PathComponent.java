package androidx.compose.ui.graphics.vector;

import android.graphics.Path;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        this.pathMeasure$delegate = ContextsKt.lazy(LazyThreadSafetyMode.NONE, PathComponent$pathMeasure$2.INSTANCE);
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
            Modifier.CC.m347drawPathGBMwjPU$default(drawScope2, this.renderPath, brush, this.fillAlpha, null, 56);
        } else {
            drawScope2 = drawScope;
        }
        Brush brush2 = this.stroke;
        if (brush2 != null) {
            Stroke stroke2 = this.strokeStyle;
            if (this.isStrokeDirty || stroke2 == null) {
                Stroke stroke3 = new Stroke(this.strokeLineWidth, this.strokeLineMiter, this.strokeLineCap, this.strokeLineJoin, 16);
                this.strokeStyle = stroke3;
                this.isStrokeDirty = false;
                stroke = stroke3;
            } else {
                stroke = stroke2;
            }
            Modifier.CC.m347drawPathGBMwjPU$default(drawScope2, this.renderPath, brush2, this.strokeAlpha, stroke, 48);
        }
    }

    public final String toString() {
        return this.path.toString();
    }

    public final void updateRenderPath() {
        float f = this.trimPathStart;
        AndroidPath androidPath = this.path;
        if (f == RecyclerView.DECELERATION_RATE && this.trimPathEnd == 1.0f) {
            this.renderPath = androidPath;
            return;
        }
        AndroidPath androidPath2 = this.renderPath;
        if (androidPath2 != androidPath) {
            int i = androidPath2.internalPath.getFillType() == Path.FillType.EVEN_ODD ? 1 : 0;
            this.renderPath.internalPath.rewind();
            this.renderPath.m417setFillTypeoQ8Xj4U(i);
        } else {
            this.renderPath = AndroidPath_androidKt.Path();
        }
        Lazy lazy = this.pathMeasure$delegate;
        ((AndroidPathMeasure) lazy.getValue()).internalPathMeasure.setPath(androidPath.internalPath, false);
        float length = ((AndroidPathMeasure) lazy.getValue()).internalPathMeasure.getLength();
        float f2 = this.trimPathStart;
        float f3 = this.trimPathOffset;
        float f4 = ((f2 + f3) % 1.0f) * length;
        float f5 = ((this.trimPathEnd + f3) % 1.0f) * length;
        if (f4 <= f5) {
            ((AndroidPathMeasure) lazy.getValue()).getSegment(f4, f5, this.renderPath);
            return;
        }
        AndroidPath androidPath3 = this._tmpPath;
        if (androidPath3 == null) {
            androidPath3 = AndroidPath_androidKt.Path();
            this._tmpPath = androidPath3;
        }
        androidPath3.reset();
        ((AndroidPathMeasure) lazy.getValue()).getSegment(f4, length, androidPath3);
        Modifier.CC.m341addPathUv8p0NA$default(this.renderPath, androidPath3);
        androidPath3.reset();
        ((AndroidPathMeasure) lazy.getValue()).getSegment(RecyclerView.DECELERATION_RATE, f5, androidPath3);
        Modifier.CC.m341addPathUv8p0NA$default(this.renderPath, androidPath3);
    }
}
