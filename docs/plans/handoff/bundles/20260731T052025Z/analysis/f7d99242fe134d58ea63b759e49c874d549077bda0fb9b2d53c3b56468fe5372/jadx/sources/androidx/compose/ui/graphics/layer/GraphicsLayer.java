package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.os.BuildCompat;
import androidx.room.util.DBUtil;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphicsLayer {
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
    public final StateLayer childDependenciesTracker = new StateLayer();

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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
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
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
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
                    graphicsLayerImpl.mo543setOutlineO0kMr_c(outline2, (4294967295L & Math.round(rectF.height())) | (Math.round(rectF.width()) << 32));
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
                    long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(this.size);
                    long j = this.roundRectOutlineTopLeft;
                    long j2 = this.roundRectOutlineSize;
                    if (j2 != 9205357640488583168L) {
                        m1072toSizeozmzZPI = j2;
                    }
                    int i2 = (int) (j >> 32);
                    int i3 = (int) (j & 4294967295L);
                    int i4 = (int) (m1072toSizeozmzZPI >> 32);
                    outline5.setRoundRect(Math.round(Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat(i3)), Math.round(Float.intBitsToFloat(i4) + Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat((int) (m1072toSizeozmzZPI & 4294967295L)) + Float.intBitsToFloat(i3)), this.roundRectCornerRadius);
                    outline5.setAlpha(graphicsLayerImpl.getAlpha());
                    graphicsLayerImpl.mo543setOutlineO0kMr_c(outline5, (4294967295L & Math.round(Float.intBitsToFloat(r15))) | (Math.round(Float.intBitsToFloat(i4)) << 32));
                }
            } else {
                graphicsLayerImpl.setClip(false);
                graphicsLayerImpl.mo543setOutlineO0kMr_c(null, 0L);
            }
        }
        this.outlineDirty = false;
    }

    public final void discardContentIfReleasedAndHaveNoParentLayerUsages() {
        if (this.isReleased && this.parentLayerUsages == 0) {
            StateLayer stateLayer = this.childDependenciesTracker;
            GraphicsLayer graphicsLayer = (GraphicsLayer) stateLayer.rippleAlpha;
            if (graphicsLayer != null) {
                graphicsLayer.parentLayerUsages--;
                graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
                stateLayer.rippleAlpha = null;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) stateLayer.interactions;
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
        StateLayer stateLayer = this.childDependenciesTracker;
        stateLayer.animatedAlpha = (GraphicsLayer) stateLayer.rippleAlpha;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) stateLayer.interactions;
        if (mutableScatterSet != null && mutableScatterSet.isNotEmpty()) {
            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) stateLayer.currentInteraction;
            if (mutableScatterSet2 == null) {
                MutableScatterSet mutableScatterSet3 = ScatterSetKt.EmptyScatterSet;
                mutableScatterSet2 = new MutableScatterSet();
                stateLayer.currentInteraction = mutableScatterSet2;
            }
            mutableScatterSet2.plusAssign(mutableScatterSet);
            mutableScatterSet.clear();
        }
        stateLayer.bounded = true;
        this.drawBlock.invoke(drawScope);
        stateLayer.bounded = false;
        GraphicsLayer graphicsLayer = (GraphicsLayer) stateLayer.animatedAlpha;
        if (graphicsLayer != null) {
            graphicsLayer.parentLayerUsages--;
            graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
        }
        MutableScatterSet mutableScatterSet4 = (MutableScatterSet) stateLayer.currentInteraction;
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
        long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(this.size);
        long j = this.roundRectOutlineTopLeft;
        long j2 = this.roundRectOutlineSize;
        if (j2 != 9205357640488583168L) {
            m1072toSizeozmzZPI = j2;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (m1072toSizeozmzZPI >> 32)) + intBitsToFloat;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (m1072toSizeozmzZPI & 4294967295L)) + intBitsToFloat2;
        if (this.roundRectCornerRadius > 0.0f) {
            outline$Rectangle = new Outline$Rounded(DBUtil.m805RoundRectgG7oq9Y(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4, (Float.floatToRawIntBits(r0) << 32) | (4294967295L & Float.floatToRawIntBits(r0))));
        } else {
            outline$Rectangle = new Outline$Rectangle(new Rect(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4));
        }
        this.internalOutline = outline$Rectangle;
        return outline$Rectangle;
    }

    public final void setAlpha(float f) {
        GraphicsLayerImpl graphicsLayerImpl = this.impl;
        if (graphicsLayerImpl.getAlpha() == f) {
            return;
        }
        graphicsLayerImpl.setAlpha(f);
    }

    /* renamed from: setRoundRectOutline-TNW_H78, reason: not valid java name */
    public final void m535setRoundRectOutlineTNW_H78(long j, long j2, float f) {
        if (Offset.m437equalsimpl0(this.roundRectOutlineTopLeft, j) && Size.m449equalsimpl0(this.roundRectOutlineSize, j2) && this.roundRectCornerRadius == f && this.outlinePath == null) {
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
