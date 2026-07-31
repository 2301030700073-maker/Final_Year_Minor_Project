package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CacheDrawScope implements Density {
    public BuildDrawCacheParams cacheParams = EmptyBuildDrawCacheParams.INSTANCE;
    public DrawResult drawResult;

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.cacheParams.getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.cacheParams.getDensity().getFontScale();
    }

    public final DrawResult onDrawWithContent(Function1 function1) {
        DrawResult drawResult = new DrawResult();
        drawResult.block = function1;
        this.drawResult = drawResult;
        return drawResult;
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

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
        return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo84toDpu2uoSUM(int i) {
        return i / getDensity();
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
        return getDensity() * f;
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
        return f / getDensity();
    }
}
