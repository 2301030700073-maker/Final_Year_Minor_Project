package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface GraphicsLayerImpl {
    public static final LayerSnapshotV21 Companion = LayerSnapshotV21.$$INSTANCE;

    Matrix calculateMatrix();

    void discardDisplayList();

    void draw(Canvas canvas);

    float getAlpha();

    /* renamed from: getAmbientShadowColor-0d7_KjU, reason: not valid java name */
    long mo479getAmbientShadowColor0d7_KjU();

    /* renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    int mo480getBlendMode0nO6VwU();

    float getCameraDistance();

    BlendModeColorFilter getColorFilter();

    /* renamed from: getCompositingStrategy-ke2Ky5w, reason: not valid java name */
    int mo481getCompositingStrategyke2Ky5w();

    boolean getHasDisplayList();

    float getRotationX();

    float getRotationY();

    float getRotationZ();

    float getScaleX();

    float getScaleY();

    float getShadowElevation();

    /* renamed from: getSpotShadowColor-0d7_KjU, reason: not valid java name */
    long mo482getSpotShadowColor0d7_KjU();

    float getTranslationX();

    float getTranslationY();

    void record(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, NodeChainKt$fillVector$1 nodeChainKt$fillVector$1);

    void setAlpha(float f);

    /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
    void mo483setAmbientShadowColor8_81llA(long j);

    /* renamed from: setBlendMode-s9anfk8, reason: not valid java name */
    void mo484setBlendModes9anfk8(int i);

    void setCameraDistance(float f);

    void setClip(boolean z);

    void setColorFilter();

    /* renamed from: setCompositingStrategy-Wpw9cng, reason: not valid java name */
    void mo485setCompositingStrategyWpw9cng(int i);

    /* renamed from: setOutline-O0kMr_c, reason: not valid java name */
    void mo486setOutlineO0kMr_c(Outline outline, long j);

    /* renamed from: setPivotOffset-k-4lQ0M, reason: not valid java name */
    void mo487setPivotOffsetk4lQ0M(long j);

    /* renamed from: setPosition-H0pRuoY, reason: not valid java name */
    void mo488setPositionH0pRuoY(int i, int i2, long j);

    void setRotationX();

    void setRotationY();

    void setRotationZ(float f);

    void setScaleX(float f);

    void setScaleY(float f);

    void setShadowElevation(float f);

    /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
    void mo489setSpotShadowColor8_81llA(long j);

    void setTranslationX();

    void setTranslationY(float f);
}
