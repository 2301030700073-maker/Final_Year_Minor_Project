package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Locale;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;
import okhttp3.Cache;
import org.wikipedia.util.GeoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GraphicsLayer {
    public static final LayerSnapshotImpl SnapshotImpl;
    public Outline androidOutline;
    public boolean clip;
    public final GraphicsLayerImpl impl;
    public ColorKt internalOutline;
    public boolean isReleased;
    public AndroidPath outlinePath;
    public int parentLayerUsages;
    public RectF pathBounds;
    public long pivotOffset;
    public AndroidPath roundRectClipPath;
    public float roundRectCornerRadius;
    public long size;
    public CanvasDrawScope softwareDrawScope;
    public AndroidPaint softwareLayerPaint;
    public long topLeft;
    public boolean usePathForClip;
    public Density density = DrawContextKt.DefaultDensity;
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;
    public Function1 drawBlock = GraphicsLayer$drawBlock$1.INSTANCE;
    public final NodeChainKt$fillVector$1 clipDrawBlock = new NodeChainKt$fillVector$1(9, this);
    public boolean outlineDirty = true;
    public long roundRectOutlineTopLeft = 0;
    public long roundRectOutlineSize = 9205357640488583168L;
    public final Cache.RealCacheRequest childDependenciesTracker = new Cache.RealCacheRequest();

    static {
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        SnapshotImpl = lowerCase.equals("robolectric") ? LayerSnapshotV21.INSTANCE : Build.VERSION.SDK_INT >= 28 ? LayerSnapshotV28.INSTANCE : LayerSnapshotV21.INSTANCE$1;
    }

    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl) {
        this.impl = graphicsLayerImpl;
        graphicsLayerImpl.setClip(false);
        this.topLeft = 0L;
        this.size = 0L;
        this.pivotOffset = 9205357640488583168L;
    }

    public final void configureOutlineAndClip() {
        Outline outline;
        if (this.outlineDirty) {
            boolean z = this.clip;
            Outline outline2 = null;
            GraphicsLayerImpl graphicsLayerImpl = this.impl;
            if (z || graphicsLayerImpl.getShadowElevation() > RecyclerView.DECELERATION_RATE) {
                AndroidPath androidPath = this.outlinePath;
                if (androidPath != null) {
                    RectF rectF = this.pathBounds;
                    if (rectF == null) {
                        rectF = new RectF();
                        this.pathBounds = rectF;
                    }
                    boolean z2 = androidPath instanceof AndroidPath;
                    if (!z2) {
                        Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
                        return;
                    }
                    Path path = androidPath.internalPath;
                    path.computeBounds(rectF, false);
                    int i = Build.VERSION.SDK_INT;
                    if (i > 28 || path.isConvex()) {
                        outline = this.androidOutline;
                        if (outline == null) {
                            outline = new Outline();
                            this.androidOutline = outline;
                        }
                        if (i >= 30) {
                            GeoUtil.setPath(outline, androidPath);
                        } else {
                            if (!z2) {
                                Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
                                return;
                            }
                            outline.setConvexPath(path);
                        }
                        this.usePathForClip = !outline.canClip();
                    } else {
                        Outline outline3 = this.androidOutline;
                        if (outline3 != null) {
                            outline3.setEmpty();
                        }
                        this.usePathForClip = true;
                        outline = null;
                    }
                    this.outlinePath = androidPath;
                    if (outline != null) {
                        outline.setAlpha(graphicsLayerImpl.getAlpha());
                        outline2 = outline;
                    }
                    graphicsLayerImpl.mo486setOutlineO0kMr_c(outline2, (4294967295L & Math.round(rectF.height())) | (Math.round(rectF.width()) << 32));
                    if (this.usePathForClip && this.clip) {
                        graphicsLayerImpl.setClip(false);
                        graphicsLayerImpl.discardDisplayList();
                    } else {
                        graphicsLayerImpl.setClip(this.clip);
                    }
                } else {
                    graphicsLayerImpl.setClip(this.clip);
                    Outline outline4 = this.androidOutline;
                    if (outline4 == null) {
                        outline4 = new Outline();
                        this.androidOutline = outline4;
                    }
                    Outline outline5 = outline4;
                    long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(this.size);
                    long j = this.roundRectOutlineTopLeft;
                    long j2 = this.roundRectOutlineSize;
                    if (j2 != 9205357640488583168L) {
                        m813toSizeozmzZPI = j2;
                    }
                    int i2 = (int) (j >> 32);
                    int i3 = (int) (j & 4294967295L);
                    int i4 = (int) (m813toSizeozmzZPI >> 32);
                    outline5.setRoundRect(Math.round(Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat(i3)), Math.round(Float.intBitsToFloat(i4) + Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat((int) (m813toSizeozmzZPI & 4294967295L)) + Float.intBitsToFloat(i3)), this.roundRectCornerRadius);
                    outline5.setAlpha(graphicsLayerImpl.getAlpha());
                    graphicsLayerImpl.mo486setOutlineO0kMr_c(outline5, (4294967295L & Math.round(Float.intBitsToFloat(r15))) | (Math.round(Float.intBitsToFloat(i4)) << 32));
                }
            } else {
                graphicsLayerImpl.setClip(false);
                graphicsLayerImpl.mo486setOutlineO0kMr_c(null, 0L);
            }
        }
        this.outlineDirty = false;
    }

    public final void discardContentIfReleasedAndHaveNoParentLayerUsages() {
        if (this.isReleased && this.parentLayerUsages == 0) {
            Cache.RealCacheRequest realCacheRequest = this.childDependenciesTracker;
            GraphicsLayer graphicsLayer = (GraphicsLayer) realCacheRequest.editor;
            if (graphicsLayer != null) {
                graphicsLayer.parentLayerUsages--;
                graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
                realCacheRequest.editor = null;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) realCacheRequest.body;
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    r11.parentLayerUsages--;
                                    ((GraphicsLayer) objArr[(i << 3) + i3]).discardContentIfReleasedAndHaveNoParentLayerUsages();
                                }
                                j >>= 8;
                            }
                            if (i2 != 8) {
                                break;
                            }
                        }
                        if (i == length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                mutableScatterSet.clear();
            }
            this.impl.discardDisplayList();
        }
    }

    public final void draw$ui_graphics(Canvas canvas, GraphicsLayer graphicsLayer) {
        boolean z;
        boolean z2;
        android.graphics.Canvas canvas2;
        boolean z3;
        float f;
        if (this.isReleased) {
            return;
        }
        configureOutlineAndClip();
        GraphicsLayerImpl graphicsLayerImpl = this.impl;
        if (!graphicsLayerImpl.getHasDisplayList()) {
            try {
                graphicsLayerImpl.record(this.density, this.layoutDirection, this, this.clipDrawBlock);
            } catch (Throwable unused) {
            }
        }
        boolean z4 = graphicsLayerImpl.getShadowElevation() > RecyclerView.DECELERATION_RATE;
        if (z4) {
            canvas.enableZ();
        }
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        boolean isHardwareAccelerated = nativeCanvas.isHardwareAccelerated();
        if (!isHardwareAccelerated) {
            long j = this.topLeft;
            float f2 = (int) (j >> 32);
            float f3 = (int) (j & 4294967295L);
            long j2 = this.size;
            float f4 = ((int) (j2 >> 32)) + f2;
            float f5 = ((int) (j2 & 4294967295L)) + f3;
            float alpha = graphicsLayerImpl.getAlpha();
            BlendModeColorFilter colorFilter = graphicsLayerImpl.getColorFilter();
            int mo480getBlendMode0nO6VwU = graphicsLayerImpl.mo480getBlendMode0nO6VwU();
            if (alpha < 1.0f || mo480getBlendMode0nO6VwU != 3 || colorFilter != null || graphicsLayerImpl.mo481getCompositingStrategyke2Ky5w() == 1) {
                AndroidPaint androidPaint = this.softwareLayerPaint;
                if (androidPaint == null) {
                    androidPaint = ColorKt.Paint();
                    this.softwareLayerPaint = androidPaint;
                }
                androidPaint.setAlpha(alpha);
                androidPaint.m410setBlendModes9anfk8(mo480getBlendMode0nO6VwU);
                androidPaint.setColorFilter(colorFilter);
                nativeCanvas = nativeCanvas;
                f = f2;
                nativeCanvas.saveLayer(f, f3, f4, f5, ColorKt.getNativePaint(androidPaint));
            } else {
                nativeCanvas.save();
                nativeCanvas = nativeCanvas;
                f = f2;
            }
            nativeCanvas.translate(f, f3);
            nativeCanvas.concat(graphicsLayerImpl.calculateMatrix());
        }
        boolean z5 = !isHardwareAccelerated && this.clip;
        if (z5) {
            canvas.save();
            ColorKt outline = getOutline();
            if (outline instanceof Outline$Rectangle) {
                canvas.mo402clipRectmtrdDE(((Outline$Rectangle) outline).rect);
            } else if (outline instanceof Outline$Rounded) {
                AndroidPath androidPath = this.roundRectClipPath;
                if (androidPath != null) {
                    androidPath.internalPath.rewind();
                } else {
                    androidPath = AndroidPath_androidKt.Path();
                    this.roundRectClipPath = androidPath;
                }
                Modifier.CC.addRoundRect$default(androidPath, ((Outline$Rounded) outline).roundRect);
                canvas.mo400clipPathmtrdDE(androidPath);
            } else {
                if (!(outline instanceof Outline$Generic)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                canvas.mo400clipPathmtrdDE(((Outline$Generic) outline).path);
            }
        }
        if (graphicsLayer != null) {
            Cache.RealCacheRequest realCacheRequest = graphicsLayer.childDependenciesTracker;
            if (!realCacheRequest.done) {
                InlineClassHelperKt.throwIllegalArgumentException("Only add dependencies during a tracking");
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) realCacheRequest.body;
            if (mutableScatterSet != null) {
                mutableScatterSet.add(this);
            } else if (((GraphicsLayer) realCacheRequest.editor) != null) {
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                GraphicsLayer graphicsLayer2 = (GraphicsLayer) realCacheRequest.editor;
                graphicsLayer2.getClass();
                mutableScatterSet3.add(graphicsLayer2);
                mutableScatterSet3.add(this);
                realCacheRequest.body = mutableScatterSet3;
                realCacheRequest.editor = null;
            } else {
                realCacheRequest.editor = this;
            }
            MutableScatterSet mutableScatterSet4 = (MutableScatterSet) realCacheRequest.this$0;
            if (mutableScatterSet4 != null) {
                z3 = !mutableScatterSet4.remove(this);
            } else if (((GraphicsLayer) realCacheRequest.cacheOut) != this) {
                z3 = true;
            } else {
                realCacheRequest.cacheOut = null;
                z3 = false;
            }
            if (z3) {
                this.parentLayerUsages++;
            }
        }
        if (((AndroidCanvas) canvas).internalCanvas.isHardwareAccelerated()) {
            z = z4;
            z2 = z5;
            canvas2 = nativeCanvas;
            graphicsLayerImpl.draw(canvas);
        } else {
            CanvasDrawScope canvasDrawScope = this.softwareDrawScope;
            if (canvasDrawScope == null) {
                canvasDrawScope = new CanvasDrawScope();
                this.softwareDrawScope = canvasDrawScope;
            }
            SVG svg = canvasDrawScope.drawContext;
            Density density = this.density;
            LayoutDirection layoutDirection = this.layoutDirection;
            long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(this.size);
            Density density2 = svg.getDensity();
            LayoutDirection layoutDirection2 = svg.getLayoutDirection();
            Canvas canvas3 = svg.getCanvas();
            z2 = z5;
            canvas2 = nativeCanvas;
            long m796getSizeNHjbRc = svg.m796getSizeNHjbRc();
            z = z4;
            GraphicsLayer graphicsLayer3 = (GraphicsLayer) svg.cssRules;
            svg.setDensity(density);
            svg.setLayoutDirection(layoutDirection);
            svg.setCanvas(canvas);
            svg.m797setSizeuvyYCjk(m813toSizeozmzZPI);
            svg.cssRules = this;
            canvas.save();
            try {
                drawWithChildTracking(canvasDrawScope);
            } finally {
                canvas.restore();
                svg.setDensity(density2);
                svg.setLayoutDirection(layoutDirection2);
                svg.setCanvas(canvas3);
                svg.m797setSizeuvyYCjk(m796getSizeNHjbRc);
                svg.cssRules = graphicsLayer3;
            }
        }
        if (z2) {
            canvas.restore();
        }
        if (z) {
            canvas.disableZ();
        }
        if (isHardwareAccelerated) {
            return;
        }
        canvas2.restore();
    }

    public final void drawWithChildTracking(DrawScope drawScope) {
        Cache.RealCacheRequest realCacheRequest = this.childDependenciesTracker;
        realCacheRequest.cacheOut = (GraphicsLayer) realCacheRequest.editor;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) realCacheRequest.body;
        if (mutableScatterSet != null && mutableScatterSet.isNotEmpty()) {
            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) realCacheRequest.this$0;
            if (mutableScatterSet2 == null) {
                MutableScatterSet mutableScatterSet3 = ScatterSetKt.EmptyScatterSet;
                mutableScatterSet2 = new MutableScatterSet();
                realCacheRequest.this$0 = mutableScatterSet2;
            }
            mutableScatterSet2.plusAssign(mutableScatterSet);
            mutableScatterSet.clear();
        }
        realCacheRequest.done = true;
        this.drawBlock.invoke(drawScope);
        realCacheRequest.done = false;
        GraphicsLayer graphicsLayer = (GraphicsLayer) realCacheRequest.cacheOut;
        if (graphicsLayer != null) {
            graphicsLayer.parentLayerUsages--;
            graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
        }
        MutableScatterSet mutableScatterSet4 = (MutableScatterSet) realCacheRequest.this$0;
        if (mutableScatterSet4 == null || !mutableScatterSet4.isNotEmpty()) {
            return;
        }
        Object[] objArr = mutableScatterSet4.elements;
        long[] jArr = mutableScatterSet4.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            r9.parentLayerUsages--;
                            ((GraphicsLayer) objArr[(i << 3) + i3]).discardContentIfReleasedAndHaveNoParentLayerUsages();
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        mutableScatterSet4.clear();
    }

    public final ColorKt getOutline() {
        ColorKt outline$Rectangle;
        ColorKt colorKt = this.internalOutline;
        AndroidPath androidPath = this.outlinePath;
        if (colorKt != null) {
            return colorKt;
        }
        if (androidPath != null) {
            Outline$Generic outline$Generic = new Outline$Generic(androidPath);
            this.internalOutline = outline$Generic;
            return outline$Generic;
        }
        long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(this.size);
        long j = this.roundRectOutlineTopLeft;
        long j2 = this.roundRectOutlineSize;
        if (j2 != 9205357640488583168L) {
            m813toSizeozmzZPI = j2;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (m813toSizeozmzZPI >> 32)) + intBitsToFloat;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (m813toSizeozmzZPI & 4294967295L)) + intBitsToFloat2;
        if (this.roundRectCornerRadius > RecyclerView.DECELERATION_RATE) {
            outline$Rectangle = new Outline$Rounded(RegexKt.m839RoundRectgG7oq9Y(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4, (Float.floatToRawIntBits(r0) << 32) | (4294967295L & Float.floatToRawIntBits(r0))));
        } else {
            outline$Rectangle = new Outline$Rectangle(new Rect(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4));
        }
        this.internalOutline = outline$Rectangle;
        return outline$Rectangle;
    }

    /* renamed from: record-mL-hObY, reason: not valid java name */
    public final void m477recordmLhObY(Density density, LayoutDirection layoutDirection, long j, Function1 function1) {
        boolean m721equalsimpl0 = IntSize.m721equalsimpl0(this.size, j);
        GraphicsLayerImpl graphicsLayerImpl = this.impl;
        if (!m721equalsimpl0) {
            this.size = j;
            long j2 = this.topLeft;
            graphicsLayerImpl.mo488setPositionH0pRuoY((int) (j2 >> 32), (int) (j2 & 4294967295L), j);
            if (this.roundRectOutlineSize == 9205357640488583168L) {
                this.outlineDirty = true;
                configureOutlineAndClip();
            }
        }
        this.density = density;
        this.layoutDirection = layoutDirection;
        this.drawBlock = function1;
        graphicsLayerImpl.record(density, layoutDirection, this, this.clipDrawBlock);
    }

    public final void setAlpha(float f) {
        GraphicsLayerImpl graphicsLayerImpl = this.impl;
        if (graphicsLayerImpl.getAlpha() == f) {
            return;
        }
        graphicsLayerImpl.setAlpha(f);
    }

    /* renamed from: setRoundRectOutline-TNW_H78, reason: not valid java name */
    public final void m478setRoundRectOutlineTNW_H78(long j, long j2, float f) {
        if (Offset.m383equalsimpl0(this.roundRectOutlineTopLeft, j) && Size.m394equalsimpl0(this.roundRectOutlineSize, j2) && this.roundRectCornerRadius == f && this.outlinePath == null) {
            return;
        }
        this.internalOutline = null;
        this.outlinePath = null;
        this.outlineDirty = true;
        this.usePathForClip = false;
        this.roundRectOutlineTopLeft = j;
        this.roundRectOutlineSize = j2;
        this.roundRectCornerRadius = f;
        configureOutlineAndClip();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object toImageBitmap(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.ui.graphics.layer.GraphicsLayer$toImageBitmap$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.ui.graphics.layer.GraphicsLayer$toImageBitmap$1 r0 = (androidx.compose.ui.graphics.layer.GraphicsLayer$toImageBitmap$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.graphics.layer.GraphicsLayer$toImageBitmap$1 r0 = new androidx.compose.ui.graphics.layer.GraphicsLayer$toImageBitmap$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.label = r3
            androidx.compose.ui.graphics.layer.LayerSnapshotImpl r5 = androidx.compose.ui.graphics.layer.GraphicsLayer.SnapshotImpl
            java.lang.Object r5 = r5.toBitmap(r4, r0)
            if (r5 != r1) goto L3c
            return r1
        L3c:
            android.graphics.Bitmap r5 = (android.graphics.Bitmap) r5
            androidx.compose.ui.graphics.AndroidImageBitmap r4 = new androidx.compose.ui.graphics.AndroidImageBitmap
            r4.<init>(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.layer.GraphicsLayer.toImageBitmap(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
