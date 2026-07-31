package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReusableGraphicsLayerScope implements Density {
    public long ambientShadowColor;
    public int blendMode;
    public float cameraDistance;
    public boolean clip;
    public Density graphicsDensity;
    public LayoutDirection layoutDirection;
    public int mutatedFields;
    public ColorKt outline;
    public float rotationZ;
    public float shadowElevation;
    public Shape shape;
    public long size;
    public long spotShadowColor;
    public long transformOrigin;
    public float translationY;
    public float scaleX = 1.0f;
    public float scaleY = 1.0f;
    public float alpha = 1.0f;

    public ReusableGraphicsLayerScope() {
        long j = GraphicsLayerScopeKt.DefaultShadowColor;
        this.ambientShadowColor = j;
        this.spotShadowColor = j;
        this.cameraDistance = 8.0f;
        this.transformOrigin = TransformOrigin.Center;
        this.shape = ColorKt.RectangleShape;
        this.size = 9205357640488583168L;
        this.graphicsDensity = UuidKt.Density$default();
        this.layoutDirection = LayoutDirection.Ltr;
        this.blendMode = 3;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.graphicsDensity.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.graphicsDensity.getFontScale();
    }

    public final void reset$1() {
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        setTranslationY(RecyclerView.DECELERATION_RATE);
        setShadowElevation(RecyclerView.DECELERATION_RATE);
        long j = GraphicsLayerScopeKt.DefaultShadowColor;
        m452setAmbientShadowColor8_81llA(j);
        m453setSpotShadowColor8_81llA(j);
        if (this.rotationZ != RecyclerView.DECELERATION_RATE) {
            this.mutatedFields |= 1024;
            this.rotationZ = RecyclerView.DECELERATION_RATE;
        }
        if (this.cameraDistance != 8.0f) {
            this.mutatedFields |= 2048;
            this.cameraDistance = 8.0f;
        }
        m454setTransformOrigin__ExYCQ(TransformOrigin.Center);
        setShape(ColorKt.RectangleShape);
        setClip(false);
        if (this.blendMode != 3) {
            this.mutatedFields |= 524288;
            this.blendMode = 3;
        }
        this.size = 9205357640488583168L;
        this.outline = null;
        this.mutatedFields = 0;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo80roundToPxR2X_6o(long j) {
        return Math.round(mo86toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo81roundToPx0680j_4(float f) {
        return Modifier.CC.m334$default$roundToPx0680j_4(this, f);
    }

    public final void setAlpha(float f) {
        if (this.alpha == f) {
            return;
        }
        this.mutatedFields |= 4;
        this.alpha = f;
    }

    /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
    public final void m452setAmbientShadowColor8_81llA(long j) {
        long j2 = this.ambientShadowColor;
        int i = Color.$r8$clinit;
        if (ULong.m820equalsimpl0(j2, j)) {
            return;
        }
        this.mutatedFields |= 64;
        this.ambientShadowColor = j;
    }

    public final void setClip(boolean z) {
        if (this.clip != z) {
            this.mutatedFields |= 16384;
            this.clip = z;
        }
    }

    public final void setScaleX(float f) {
        if (this.scaleX == f) {
            return;
        }
        this.mutatedFields |= 1;
        this.scaleX = f;
    }

    public final void setScaleY(float f) {
        if (this.scaleY == f) {
            return;
        }
        this.mutatedFields |= 2;
        this.scaleY = f;
    }

    public final void setShadowElevation(float f) {
        if (this.shadowElevation == f) {
            return;
        }
        this.mutatedFields |= 32;
        this.shadowElevation = f;
    }

    public final void setShape(Shape shape) {
        if (Intrinsics.areEqual(this.shape, shape)) {
            return;
        }
        this.mutatedFields |= 8192;
        this.shape = shape;
    }

    /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
    public final void m453setSpotShadowColor8_81llA(long j) {
        long j2 = this.spotShadowColor;
        int i = Color.$r8$clinit;
        if (ULong.m820equalsimpl0(j2, j)) {
            return;
        }
        this.mutatedFields |= 128;
        this.spotShadowColor = j;
    }

    /* renamed from: setTransformOrigin-__ExYCQ, reason: not valid java name */
    public final void m454setTransformOrigin__ExYCQ(long j) {
        if (TransformOrigin.m455equalsimpl0(this.transformOrigin, j)) {
            return;
        }
        this.mutatedFields |= 4096;
        this.transformOrigin = j;
    }

    public final void setTranslationY(float f) {
        if (this.translationY == f) {
            return;
        }
        this.mutatedFields |= 16;
        this.translationY = f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
        return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo84toDpu2uoSUM(int i) {
        return i / this.graphicsDensity.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo85toDpSizekrfVVM(long j) {
        return Modifier.CC.m336$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo86toPxR2X_6o(long j) {
        return Modifier.CC.m337$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo87toPx0680j_4(float f) {
        return this.graphicsDensity.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo88toSizeXkaWNTQ(long j) {
        return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo89toSpkPz2Gy4(float f) {
        return Modifier.CC.m339$default$toSp0xMU5do(this, mo83toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo83toDpu2uoSUM(float f) {
        return f / this.graphicsDensity.getDensity();
    }
}
