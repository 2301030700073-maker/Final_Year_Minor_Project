package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.os.BuildCompat;
import coil3.util.AndroidSystemCallbacks;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayer {
    public Outline androidOutline;
    public boolean clip;
    public final GraphicsLayerImpl impl;
    public Brush internalOutline;
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
    public Density density = DrawStyle.DefaultDensity;
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;
    public Function1 drawBlock = GraphicsLayer$drawBlock$1.INSTANCE;
    public final GraphicsLayer$clipDrawBlock$1 clipDrawBlock = new GraphicsLayer$clipDrawBlock$1(this);
    public boolean outlineDirty = true;
    public long roundRectOutlineTopLeft = 0;
    public long roundRectOutlineSize = 9205357640488583168L;
    public final AndroidSystemCallbacks childDependenciesTracker = new AndroidSystemCallbacks();

    static {
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        lowerCase.equals("robolectric");
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
            if (z || graphicsLayerImpl.getShadowElevation() > 0.0f) {
                AndroidPath androidPath = this.outlinePath;
                if (androidPath != null) {
                    RectF rectF = this.pathBounds;
                    if (rectF == null) {
                        rectF = new RectF();
                        this.pathBounds = rectF;
                    }
                    boolean z2 = androidPath instanceof AndroidPath;
                    if (!z2) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
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
                            BuildCompat.Api30Impl.setPath(outline, androidPath);
                        } else {
                            if (!z2) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
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
                    graphicsLayerImpl.mo275setOutlineO0kMr_c(outline2, (4294967295L & Math.round(rectF.height())) | (Math.round(rectF.width()) << 32));
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
                    long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(this.size);
                    long j = this.roundRectOutlineTopLeft;
                    long j2 = this.roundRectOutlineSize;
                    if (j2 != 9205357640488583168L) {
                        m708toSizeozmzZPI = j2;
                    }
                    int i2 = (int) (j >> 32);
                    int i3 = (int) (j & 4294967295L);
                    int i4 = (int) (m708toSizeozmzZPI >> 32);
                    outline5.setRoundRect(Math.round(Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat(i3)), Math.round(Float.intBitsToFloat(i4) + Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat((int) (m708toSizeozmzZPI & 4294967295L)) + Float.intBitsToFloat(i3)), this.roundRectCornerRadius);
                    outline5.setAlpha(graphicsLayerImpl.getAlpha());
                    graphicsLayerImpl.mo275setOutlineO0kMr_c(outline5, (4294967295L & Math.round(Float.intBitsToFloat(r15))) | (Math.round(Float.intBitsToFloat(i4)) << 32));
                }
            } else {
                graphicsLayerImpl.setClip(false);
                graphicsLayerImpl.mo275setOutlineO0kMr_c(null, 0L);
            }
        }
        this.outlineDirty = false;
    }

    public final void discardContentIfReleasedAndHaveNoParentLayerUsages() {
        if (this.isReleased && this.parentLayerUsages == 0) {
            AndroidSystemCallbacks androidSystemCallbacks = this.childDependenciesTracker;
            GraphicsLayer graphicsLayer = (GraphicsLayer) androidSystemCallbacks.imageLoader;
            if (graphicsLayer != null) {
                graphicsLayer.parentLayerUsages--;
                graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
                androidSystemCallbacks.imageLoader = null;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) androidSystemCallbacks.componentCallbacks;
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

    public final void drawWithChildTracking(DrawScope drawScope) {
        AndroidSystemCallbacks androidSystemCallbacks = this.childDependenciesTracker;
        androidSystemCallbacks.activityCallbacks = (GraphicsLayer) androidSystemCallbacks.imageLoader;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) androidSystemCallbacks.componentCallbacks;
        if (mutableScatterSet != null && mutableScatterSet.isNotEmpty()) {
            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) androidSystemCallbacks.application;
            if (mutableScatterSet2 == null) {
                MutableScatterSet mutableScatterSet3 = ScatterSetKt.EmptyScatterSet;
                mutableScatterSet2 = new MutableScatterSet();
                androidSystemCallbacks.application = mutableScatterSet2;
            }
            mutableScatterSet2.plusAssign((ScatterSet) mutableScatterSet);
            mutableScatterSet.clear();
        }
        androidSystemCallbacks.shutdown = true;
        this.drawBlock.invoke(drawScope);
        androidSystemCallbacks.shutdown = false;
        GraphicsLayer graphicsLayer = (GraphicsLayer) androidSystemCallbacks.activityCallbacks;
        if (graphicsLayer != null) {
            graphicsLayer.parentLayerUsages--;
            graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
        }
        MutableScatterSet mutableScatterSet4 = (MutableScatterSet) androidSystemCallbacks.application;
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

    public final Brush getOutline() {
        Brush outline$Rectangle;
        Brush brush = this.internalOutline;
        AndroidPath androidPath = this.outlinePath;
        if (brush != null) {
            return brush;
        }
        if (androidPath != null) {
            Outline$Generic outline$Generic = new Outline$Generic(androidPath);
            this.internalOutline = outline$Generic;
            return outline$Generic;
        }
        long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(this.size);
        long j = this.roundRectOutlineTopLeft;
        long j2 = this.roundRectOutlineSize;
        if (j2 != 9205357640488583168L) {
            m708toSizeozmzZPI = j2;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (m708toSizeozmzZPI >> 32)) + intBitsToFloat;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (m708toSizeozmzZPI & 4294967295L)) + intBitsToFloat2;
        if (this.roundRectCornerRadius > 0.0f) {
            outline$Rectangle = new Outline$Rounded(Jsoup.m731RoundRectgG7oq9Y(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4, (Float.floatToRawIntBits(r0) << 32) | (4294967295L & Float.floatToRawIntBits(r0))));
        } else {
            outline$Rectangle = new Outline$Rectangle(new Rect(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4));
        }
        this.internalOutline = outline$Rectangle;
        return outline$Rectangle;
    }

    /* renamed from: setRoundRectOutline-TNW_H78, reason: not valid java name */
    public final void m267setRoundRectOutlineTNW_H78(long j, long j2, float f) {
        if (Offset.m196equalsimpl0(this.roundRectOutlineTopLeft, j) && Size.m206equalsimpl0(this.roundRectOutlineSize, j2) && this.roundRectCornerRadius == f && this.outlinePath == null) {
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
}
