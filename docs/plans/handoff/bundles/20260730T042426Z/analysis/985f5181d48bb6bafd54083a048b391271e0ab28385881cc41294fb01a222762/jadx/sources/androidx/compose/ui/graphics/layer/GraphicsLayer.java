package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidGraphicsLayer.android.kt */
/* loaded from: classes.dex */
public final class GraphicsLayer {
    public static final Companion Companion = new Companion(null);
    private static final LayerSnapshotImpl SnapshotImpl;
    private Outline androidOutline;
    private final ChildLayerDependenciesTracker childDependenciesTracker;
    private boolean clip;
    private final GraphicsLayerImpl impl;
    private androidx.compose.ui.graphics.Outline internalOutline;
    private boolean isReleased;
    private Path outlinePath;
    private int parentLayerUsages;
    private RectF pathBounds;
    private long pivotOffset;
    private Path roundRectClipPath;
    private float roundRectCornerRadius;
    private long roundRectOutlineSize;
    private long roundRectOutlineTopLeft;
    private long size;
    private Paint softwareLayerPaint;
    private long topLeft;
    private boolean usePathForClip;
    private Density density = DrawContextKt.getDefaultDensity();
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private Function1 drawBlock = new Function1() { // from class: androidx.compose.ui.graphics.layer.GraphicsLayer$drawBlock$1
        public final void invoke(DrawScope drawScope) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((DrawScope) obj);
            return Unit.INSTANCE;
        }
    };
    private final Function1 clipDrawBlock = new Function1() { // from class: androidx.compose.ui.graphics.layer.GraphicsLayer$clipDrawBlock$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((DrawScope) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(DrawScope drawScope) {
            Path path;
            boolean z;
            Function1 function1;
            Function1 function12;
            path = GraphicsLayer.this.outlinePath;
            z = GraphicsLayer.this.usePathForClip;
            if (!z || !GraphicsLayer.this.getClip() || path == null) {
                function1 = GraphicsLayer.this.drawBlock;
                function1.invoke(drawScope);
                return;
            }
            function12 = GraphicsLayer.this.drawBlock;
            int m1297getIntersectrtfAjoo = ClipOp.Companion.m1297getIntersectrtfAjoo();
            DrawContext drawContext = drawScope.getDrawContext();
            long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo1497clipPathmtrdDE(path, m1297getIntersectrtfAjoo);
                function12.invoke(drawScope);
            } finally {
                drawContext.getCanvas().restore();
                drawContext.mo1496setSizeuvyYCjk(mo1495getSizeNHjbRc);
            }
        }
    };
    private boolean outlineDirty = true;

    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl, LayerManager layerManager) {
        this.impl = graphicsLayerImpl;
        Offset.Companion companion = Offset.Companion;
        this.roundRectOutlineTopLeft = companion.m1179getZeroF1C5BW0();
        this.roundRectOutlineSize = Size.Companion.m1209getUnspecifiedNHjbRc();
        this.childDependenciesTracker = new ChildLayerDependenciesTracker();
        graphicsLayerImpl.setClip(false);
        this.topLeft = IntOffset.Companion.m2472getZeronOccac();
        this.size = IntSize.Companion.m2488getZeroYbymL2g();
        this.pivotOffset = companion.m1178getUnspecifiedF1C5BW0();
    }

    public final boolean isReleased() {
        return this.isReleased;
    }

    /* renamed from: getCompositingStrategy-ke2Ky5w, reason: not valid java name */
    public final int m1530getCompositingStrategyke2Ky5w() {
        return this.impl.mo1544getCompositingStrategyke2Ky5w();
    }

    /* renamed from: setCompositingStrategy-Wpw9cng, reason: not valid java name */
    public final void m1536setCompositingStrategyWpw9cng(int i) {
        if (CompositingStrategy.m1523equalsimpl0(this.impl.mo1544getCompositingStrategyke2Ky5w(), i)) {
            return;
        }
        this.impl.mo1547setCompositingStrategyWpw9cng(i);
    }

    /* renamed from: getTopLeft-nOcc-ac, reason: not valid java name */
    public final long m1533getTopLeftnOccac() {
        return this.topLeft;
    }

    /* renamed from: setTopLeft--gyyYBs, reason: not valid java name */
    public final void m1541setTopLeftgyyYBs(long j) {
        if (IntOffset.m2464equalsimpl0(this.topLeft, j)) {
            return;
        }
        this.topLeft = j;
        m1527setPositionVbeCjmY(j, this.size);
    }

    /* renamed from: getSize-YbymL2g, reason: not valid java name */
    public final long m1532getSizeYbymL2g() {
        return this.size;
    }

    /* renamed from: setSize-ozmzZPI, reason: not valid java name */
    private final void m1528setSizeozmzZPI(long j) {
        if (IntSize.m2482equalsimpl0(this.size, j)) {
            return;
        }
        this.size = j;
        m1527setPositionVbeCjmY(this.topLeft, j);
        if (this.roundRectOutlineSize == 9205357640488583168L) {
            this.outlineDirty = true;
            configureOutlineAndClip();
        }
    }

    public final float getAlpha() {
        return this.impl.getAlpha();
    }

    public final void setAlpha(float f) {
        if (this.impl.getAlpha() == f) {
            return;
        }
        this.impl.setAlpha(f);
    }

    /* renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m1529getBlendMode0nO6VwU() {
        return this.impl.mo1543getBlendMode0nO6VwU();
    }

    public final ColorFilter getColorFilter() {
        return this.impl.getColorFilter();
    }

    /* renamed from: getPivotOffset-F1C5BW0, reason: not valid java name */
    public final long m1531getPivotOffsetF1C5BW0() {
        return this.pivotOffset;
    }

    /* renamed from: setPivotOffset-k-4lQ0M, reason: not valid java name */
    public final void m1537setPivotOffsetk4lQ0M(long j) {
        if (Offset.m1164equalsimpl0(this.pivotOffset, j)) {
            return;
        }
        this.pivotOffset = j;
        this.impl.mo1549setPivotOffsetk4lQ0M(j);
    }

    public final float getScaleX() {
        return this.impl.getScaleX();
    }

    public final void setScaleX(float f) {
        if (this.impl.getScaleX() == f) {
            return;
        }
        this.impl.setScaleX(f);
    }

    public final float getScaleY() {
        return this.impl.getScaleY();
    }

    public final void setScaleY(float f) {
        if (this.impl.getScaleY() == f) {
            return;
        }
        this.impl.setScaleY(f);
    }

    public final float getTranslationX() {
        return this.impl.getTranslationX();
    }

    public final void setTranslationX(float f) {
        if (this.impl.getTranslationX() == f) {
            return;
        }
        this.impl.setTranslationX(f);
    }

    public final float getTranslationY() {
        return this.impl.getTranslationY();
    }

    public final void setTranslationY(float f) {
        if (this.impl.getTranslationY() == f) {
            return;
        }
        this.impl.setTranslationY(f);
    }

    public final float getShadowElevation() {
        return this.impl.getShadowElevation();
    }

    public final void setShadowElevation(float f) {
        if (this.impl.getShadowElevation() == f) {
            return;
        }
        this.impl.setShadowElevation(f);
        this.outlineDirty = true;
        configureOutlineAndClip();
    }

    public final float getRotationX() {
        return this.impl.getRotationX();
    }

    public final void setRotationX(float f) {
        if (this.impl.getRotationX() == f) {
            return;
        }
        this.impl.setRotationX(f);
    }

    public final float getRotationY() {
        return this.impl.getRotationY();
    }

    public final void setRotationY(float f) {
        if (this.impl.getRotationY() == f) {
            return;
        }
        this.impl.setRotationY(f);
    }

    public final float getRotationZ() {
        return this.impl.getRotationZ();
    }

    public final void setRotationZ(float f) {
        if (this.impl.getRotationZ() == f) {
            return;
        }
        this.impl.setRotationZ(f);
    }

    public final void setCameraDistance(float f) {
        if (this.impl.getCameraDistance() == f) {
            return;
        }
        this.impl.setCameraDistance(f);
    }

    public final boolean getClip() {
        return this.clip;
    }

    public final void setClip(boolean z) {
        if (this.clip != z) {
            this.clip = z;
            this.outlineDirty = true;
            configureOutlineAndClip();
        }
    }

    public final void setRenderEffect(RenderEffect renderEffect) {
        this.impl.getRenderEffect();
        if (Intrinsics.areEqual((Object) null, renderEffect)) {
            return;
        }
        this.impl.setRenderEffect(renderEffect);
    }

    /* renamed from: setPosition-VbeCjmY, reason: not valid java name */
    private final void m1527setPositionVbeCjmY(long j, long j2) {
        this.impl.mo1550setPositionH0pRuoY(IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j), j2);
    }

    /* renamed from: record-mL-hObY, reason: not valid java name */
    public final void m1534recordmLhObY(Density density, LayoutDirection layoutDirection, long j, Function1 function1) {
        m1528setSizeozmzZPI(j);
        this.density = density;
        this.layoutDirection = layoutDirection;
        this.drawBlock = function1;
        this.impl.setInvalidated(true);
        recordInternal();
    }

    private final void recordInternal() {
        GraphicsLayer graphicsLayer;
        MutableScatterSet mutableScatterSet;
        GraphicsLayer graphicsLayer2;
        MutableScatterSet mutableScatterSet2;
        MutableScatterSet mutableScatterSet3;
        ChildLayerDependenciesTracker childLayerDependenciesTracker = this.childDependenciesTracker;
        graphicsLayer = childLayerDependenciesTracker.dependency;
        childLayerDependenciesTracker.oldDependency = graphicsLayer;
        mutableScatterSet = childLayerDependenciesTracker.dependenciesSet;
        if (mutableScatterSet != null && mutableScatterSet.isNotEmpty()) {
            mutableScatterSet3 = childLayerDependenciesTracker.oldDependenciesSet;
            if (mutableScatterSet3 == null) {
                mutableScatterSet3 = ScatterSetKt.mutableScatterSetOf();
                childLayerDependenciesTracker.oldDependenciesSet = mutableScatterSet3;
            }
            mutableScatterSet3.addAll(mutableScatterSet);
            mutableScatterSet.clear();
        }
        childLayerDependenciesTracker.trackingInProgress = true;
        this.impl.record(this.density, this.layoutDirection, this, this.clipDrawBlock);
        childLayerDependenciesTracker.trackingInProgress = false;
        graphicsLayer2 = childLayerDependenciesTracker.oldDependency;
        if (graphicsLayer2 != null) {
            graphicsLayer2.onRemovedFromParentLayer();
        }
        mutableScatterSet2 = childLayerDependenciesTracker.oldDependenciesSet;
        if (mutableScatterSet2 == null || !mutableScatterSet2.isNotEmpty()) {
            return;
        }
        Object[] objArr = mutableScatterSet2.elements;
        long[] jArr = mutableScatterSet2.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            ((GraphicsLayer) objArr[(i << 3) + i3]).onRemovedFromParentLayer();
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
        mutableScatterSet2.clear();
    }

    private final void addSubLayer(GraphicsLayer graphicsLayer) {
        if (this.childDependenciesTracker.onDependencyAdded(graphicsLayer)) {
            graphicsLayer.onAddedToParentLayer();
        }
    }

    private final void transformCanvas(Canvas canvas) {
        float m2465getXimpl = IntOffset.m2465getXimpl(this.topLeft);
        float m2466getYimpl = IntOffset.m2466getYimpl(this.topLeft);
        float m2465getXimpl2 = IntOffset.m2465getXimpl(this.topLeft) + IntSize.m2484getWidthimpl(this.size);
        float m2466getYimpl2 = IntOffset.m2466getYimpl(this.topLeft) + IntSize.m2483getHeightimpl(this.size);
        float alpha = getAlpha();
        ColorFilter colorFilter = getColorFilter();
        int m1529getBlendMode0nO6VwU = m1529getBlendMode0nO6VwU();
        if (alpha < 1.0f || !BlendMode.m1254equalsimpl0(m1529getBlendMode0nO6VwU, BlendMode.Companion.m1284getSrcOver0nO6VwU()) || colorFilter != null || CompositingStrategy.m1523equalsimpl0(m1530getCompositingStrategyke2Ky5w(), CompositingStrategy.Companion.m1526getOffscreenke2Ky5w())) {
            Paint paint = this.softwareLayerPaint;
            if (paint == null) {
                paint = AndroidPaint_androidKt.Paint();
                this.softwareLayerPaint = paint;
            }
            paint.setAlpha(alpha);
            paint.mo1235setBlendModes9anfk8(m1529getBlendMode0nO6VwU);
            paint.setColorFilter(colorFilter);
            canvas.saveLayer(m2465getXimpl, m2466getYimpl, m2465getXimpl2, m2466getYimpl2, paint.asFrameworkPaint());
        } else {
            canvas.save();
        }
        canvas.translate(m2465getXimpl, m2466getYimpl);
        canvas.concat(this.impl.calculateMatrix());
    }

    private final void recreateDisplayListIfNeeded() {
        if (this.impl.getHasDisplayList()) {
            return;
        }
        try {
            recordInternal();
        } catch (Throwable unused) {
        }
    }

    public final void draw$ui_graphics_release(androidx.compose.ui.graphics.Canvas canvas, GraphicsLayer graphicsLayer) {
        if (this.isReleased) {
            return;
        }
        configureOutlineAndClip();
        recreateDisplayListIfNeeded();
        boolean z = getShadowElevation() > 0.0f;
        if (z) {
            canvas.enableZ();
        }
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        boolean isHardwareAccelerated = nativeCanvas.isHardwareAccelerated();
        if (!isHardwareAccelerated) {
            nativeCanvas.save();
            transformCanvas(nativeCanvas);
        }
        boolean z2 = !isHardwareAccelerated && this.clip;
        if (z2) {
            canvas.save();
            androidx.compose.ui.graphics.Outline outline = getOutline();
            if (outline instanceof Outline.Rectangle) {
                Canvas.CC.m1293clipRectmtrdDE$default(canvas, outline.getBounds(), 0, 2, null);
            } else if (outline instanceof Outline.Rounded) {
                Path path = this.roundRectClipPath;
                if (path != null) {
                    path.rewind();
                } else {
                    path = AndroidPath_androidKt.Path();
                    this.roundRectClipPath = path;
                }
                Path.CC.addRoundRect$default(path, ((Outline.Rounded) outline).getRoundRect(), null, 2, null);
                Canvas.CC.m1291clipPathmtrdDE$default(canvas, path, 0, 2, null);
            } else if (outline instanceof Outline.Generic) {
                Canvas.CC.m1291clipPathmtrdDE$default(canvas, ((Outline.Generic) outline).getPath(), 0, 2, null);
            }
        }
        if (graphicsLayer != null) {
            graphicsLayer.addSubLayer(this);
        }
        this.impl.draw(canvas);
        if (z2) {
            canvas.restore();
        }
        if (z) {
            canvas.disableZ();
        }
        if (isHardwareAccelerated) {
            return;
        }
        nativeCanvas.restore();
    }

    private final void onAddedToParentLayer() {
        this.parentLayerUsages++;
    }

    private final void onRemovedFromParentLayer() {
        this.parentLayerUsages--;
        discardContentIfReleasedAndHaveNoParentLayerUsages();
    }

    private final RectF obtainPathBounds() {
        RectF rectF = this.pathBounds;
        if (rectF != null) {
            return rectF;
        }
        RectF rectF2 = new RectF();
        this.pathBounds = rectF2;
        return rectF2;
    }

    private final void configureOutlineAndClip() {
        if (this.outlineDirty) {
            android.graphics.Outline outline = null;
            if (this.clip || getShadowElevation() > 0.0f) {
                Path path = this.outlinePath;
                if (path != null) {
                    RectF obtainPathBounds = obtainPathBounds();
                    if (!(path instanceof AndroidPath)) {
                        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                    }
                    ((AndroidPath) path).getInternalPath().computeBounds(obtainPathBounds, false);
                    android.graphics.Outline updatePathOutline = updatePathOutline(path);
                    if (updatePathOutline != null) {
                        updatePathOutline.setAlpha(getAlpha());
                        outline = updatePathOutline;
                    }
                    this.impl.mo1548setOutlineO0kMr_c(outline, IntSizeKt.IntSize(Math.round(obtainPathBounds.width()), Math.round(obtainPathBounds.height())));
                    if (this.usePathForClip && this.clip) {
                        this.impl.setClip(false);
                        this.impl.discardDisplayList();
                    } else {
                        this.impl.setClip(this.clip);
                    }
                } else {
                    this.impl.setClip(this.clip);
                    Size.Companion.m1210getZeroNHjbRc();
                    android.graphics.Outline obtainAndroidOutline = obtainAndroidOutline();
                    long m2491toSizeozmzZPI = IntSizeKt.m2491toSizeozmzZPI(this.size);
                    long j = this.roundRectOutlineTopLeft;
                    long j2 = this.roundRectOutlineSize;
                    long j3 = j2 == 9205357640488583168L ? m2491toSizeozmzZPI : j2;
                    obtainAndroidOutline.setRoundRect(Math.round(Offset.m1167getXimpl(j)), Math.round(Offset.m1168getYimpl(j)), Math.round(Offset.m1167getXimpl(j) + Size.m1204getWidthimpl(j3)), Math.round(Offset.m1168getYimpl(j) + Size.m1202getHeightimpl(j3)), this.roundRectCornerRadius);
                    obtainAndroidOutline.setAlpha(getAlpha());
                    this.impl.mo1548setOutlineO0kMr_c(obtainAndroidOutline, IntSizeKt.m2490roundToIntSizeuvyYCjk(j3));
                }
            } else {
                this.impl.setClip(false);
                this.impl.mo1548setOutlineO0kMr_c(null, IntSize.Companion.m2488getZeroYbymL2g());
            }
        }
        this.outlineDirty = false;
    }

    private final android.graphics.Outline updatePathOutline(Path path) {
        android.graphics.Outline outline;
        int i = Build.VERSION.SDK_INT;
        if (i > 28 || path.isConvex()) {
            android.graphics.Outline obtainAndroidOutline = obtainAndroidOutline();
            if (i < 30) {
                if (!(path instanceof AndroidPath)) {
                    throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                }
                obtainAndroidOutline.setConvexPath(((AndroidPath) path).getInternalPath());
            } else {
                OutlineVerificationHelper.INSTANCE.setPath(obtainAndroidOutline, path);
            }
            this.usePathForClip = !obtainAndroidOutline.canClip();
            outline = obtainAndroidOutline;
        } else {
            android.graphics.Outline outline2 = this.androidOutline;
            if (outline2 != null) {
                outline2.setEmpty();
            }
            this.usePathForClip = true;
            this.impl.setInvalidated(true);
            outline = null;
        }
        this.outlinePath = path;
        return outline;
    }

    private final android.graphics.Outline obtainAndroidOutline() {
        android.graphics.Outline outline = this.androidOutline;
        if (outline != null) {
            return outline;
        }
        android.graphics.Outline outline2 = new android.graphics.Outline();
        this.androidOutline = outline2;
        return outline2;
    }

    public final void release$ui_graphics_release() {
        if (this.isReleased) {
            return;
        }
        this.isReleased = true;
        discardContentIfReleasedAndHaveNoParentLayerUsages();
    }

    private final void discardContentIfReleasedAndHaveNoParentLayerUsages() {
        if (this.isReleased && this.parentLayerUsages == 0) {
            discardDisplayList$ui_graphics_release();
        }
    }

    public final void discardDisplayList$ui_graphics_release() {
        GraphicsLayer graphicsLayer;
        MutableScatterSet mutableScatterSet;
        ChildLayerDependenciesTracker childLayerDependenciesTracker = this.childDependenciesTracker;
        graphicsLayer = childLayerDependenciesTracker.dependency;
        if (graphicsLayer != null) {
            graphicsLayer.onRemovedFromParentLayer();
            childLayerDependenciesTracker.dependency = null;
        }
        mutableScatterSet = childLayerDependenciesTracker.dependenciesSet;
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
                                ((GraphicsLayer) objArr[(i << 3) + i3]).onRemovedFromParentLayer();
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

    public final androidx.compose.ui.graphics.Outline getOutline() {
        androidx.compose.ui.graphics.Outline rectangle;
        androidx.compose.ui.graphics.Outline outline = this.internalOutline;
        Path path = this.outlinePath;
        if (outline != null) {
            return outline;
        }
        if (path == null) {
            long m2491toSizeozmzZPI = IntSizeKt.m2491toSizeozmzZPI(this.size);
            long j = this.roundRectOutlineTopLeft;
            long j2 = this.roundRectOutlineSize;
            if (j2 != 9205357640488583168L) {
                m2491toSizeozmzZPI = j2;
            }
            float m1167getXimpl = Offset.m1167getXimpl(j);
            float m1168getYimpl = Offset.m1168getYimpl(j);
            float m1204getWidthimpl = m1167getXimpl + Size.m1204getWidthimpl(m2491toSizeozmzZPI);
            float m1202getHeightimpl = m1168getYimpl + Size.m1202getHeightimpl(m2491toSizeozmzZPI);
            float f = this.roundRectCornerRadius;
            if (f > 0.0f) {
                rectangle = new Outline.Rounded(RoundRectKt.m1197RoundRectgG7oq9Y(m1167getXimpl, m1168getYimpl, m1204getWidthimpl, m1202getHeightimpl, CornerRadiusKt.CornerRadius$default(f, 0.0f, 2, null)));
            } else {
                rectangle = new Outline.Rectangle(new Rect(m1167getXimpl, m1168getYimpl, m1204getWidthimpl, m1202getHeightimpl));
            }
            this.internalOutline = rectangle;
            return rectangle;
        }
        Outline.Generic generic = new Outline.Generic(path);
        this.internalOutline = generic;
        return generic;
    }

    private final void resetOutlineParams() {
        this.internalOutline = null;
        this.outlinePath = null;
        this.roundRectOutlineSize = Size.Companion.m1209getUnspecifiedNHjbRc();
        this.roundRectOutlineTopLeft = Offset.Companion.m1179getZeroF1C5BW0();
        this.roundRectCornerRadius = 0.0f;
        this.outlineDirty = true;
        this.usePathForClip = false;
    }

    public final void setPathOutline(Path path) {
        resetOutlineParams();
        this.outlinePath = path;
        configureOutlineAndClip();
    }

    /* renamed from: setRoundRectOutline-TNW_H78, reason: not valid java name */
    public final void m1539setRoundRectOutlineTNW_H78(long j, long j2, float f) {
        if (Offset.m1164equalsimpl0(this.roundRectOutlineTopLeft, j) && Size.m1201equalsimpl0(this.roundRectOutlineSize, j2) && this.roundRectCornerRadius == f && this.outlinePath == null) {
            return;
        }
        resetOutlineParams();
        this.roundRectOutlineTopLeft = j;
        this.roundRectOutlineSize = j2;
        this.roundRectCornerRadius = f;
        configureOutlineAndClip();
    }

    /* renamed from: setRectOutline-tz77jQw, reason: not valid java name */
    public final void m1538setRectOutlinetz77jQw(long j, long j2) {
        m1539setRoundRectOutlineTNW_H78(j, j2, 0.0f);
    }

    /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
    public final void m1535setAmbientShadowColor8_81llA(long j) {
        if (Color.m1304equalsimpl0(j, this.impl.mo1542getAmbientShadowColor0d7_KjU())) {
            return;
        }
        this.impl.mo1546setAmbientShadowColor8_81llA(j);
    }

    /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
    public final void m1540setSpotShadowColor8_81llA(long j) {
        if (Color.m1304equalsimpl0(j, this.impl.mo1545getSpotShadowColor0d7_KjU())) {
            return;
        }
        this.impl.mo1551setSpotShadowColor8_81llA(j);
    }

    /* compiled from: AndroidGraphicsLayer.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        LayerSnapshotImpl layerSnapshotImpl;
        if (LayerManager.Companion.isRobolectric()) {
            layerSnapshotImpl = LayerSnapshotV21.INSTANCE;
        } else if (Build.VERSION.SDK_INT >= 28) {
            layerSnapshotImpl = LayerSnapshotV28.INSTANCE;
        } else if (SurfaceUtils.INSTANCE.isLockHardwareCanvasAvailable()) {
            layerSnapshotImpl = LayerSnapshotV22.INSTANCE;
        } else {
            layerSnapshotImpl = LayerSnapshotV21.INSTANCE;
        }
        SnapshotImpl = layerSnapshotImpl;
    }
}
