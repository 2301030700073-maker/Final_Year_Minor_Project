package androidx.compose.ui.graphics;

import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReusableGraphicsLayerScope implements Density {
    public long ambientShadowColor;
    public int blendMode;
    public float cameraDistance;
    public boolean clip;
    public Density graphicsDensity;
    public LayoutDirection layoutDirection;
    public int mutatedFields;
    public Brush outline;
    public float shadowElevation;
    public Shape shape;
    public long size;
    public long spotShadowColor;
    public long transformOrigin;
    public float scaleX = 1.0f;
    public float scaleY = 1.0f;
    public float alpha = 1.0f;

    public ReusableGraphicsLayerScope() {
        long j = GraphicsLayerScopeKt.DefaultShadowColor;
        this.ambientShadowColor = j;
        this.spotShadowColor = j;
        this.cameraDistance = 8.0f;
        this.transformOrigin = TransformOrigin.Center;
        this.shape = Brush.RectangleShape;
        this.size = 9205357640488583168L;
        this.graphicsDensity = UStringsKt.Density$default();
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
        setShadowElevation(0.0f);
        long j = GraphicsLayerScopeKt.DefaultShadowColor;
        if (!Color.m244equalsimpl0(this.ambientShadowColor, j)) {
            this.mutatedFields |= 64;
            this.ambientShadowColor = j;
        }
        if (!Color.m244equalsimpl0(this.spotShadowColor, j)) {
            this.mutatedFields |= 128;
            this.spotShadowColor = j;
        }
        if (this.cameraDistance != 8.0f) {
            this.mutatedFields |= 2048;
            this.cameraDistance = 8.0f;
        }
        m252setTransformOrigin__ExYCQ(TransformOrigin.Center);
        setShape(Brush.RectangleShape);
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
    public final int mo57roundToPxR2X_6o(long j) {
        return Math.round(mo62toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo58roundToPx0680j_4(float f) {
        return Owner.CC.m357$default$roundToPx0680j_4(this, f);
    }

    public final void setAlpha(float f) {
        if (this.alpha == f) {
            return;
        }
        this.mutatedFields |= 4;
        this.alpha = f;
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

    /* renamed from: setTransformOrigin-__ExYCQ, reason: not valid java name */
    public final void m252setTransformOrigin__ExYCQ(long j) {
        if (TransformOrigin.m253equalsimpl0(this.transformOrigin, j)) {
            return;
        }
        this.mutatedFields |= 4096;
        this.transformOrigin = j;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo59toDpGaN1DYA(long j) {
        return Owner.CC.m358$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo61toDpu2uoSUM(int i) {
        return i / this.graphicsDensity.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo62toPxR2X_6o(long j) {
        return Owner.CC.m360$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo63toPx0680j_4(float f) {
        return this.graphicsDensity.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo64toSizeXkaWNTQ(long j) {
        return Owner.CC.m361$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo65toSpkPz2Gy4(float f) {
        return Owner.CC.m362$default$toSp0xMU5do(this, mo60toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return f / this.graphicsDensity.getDensity();
    }
}
