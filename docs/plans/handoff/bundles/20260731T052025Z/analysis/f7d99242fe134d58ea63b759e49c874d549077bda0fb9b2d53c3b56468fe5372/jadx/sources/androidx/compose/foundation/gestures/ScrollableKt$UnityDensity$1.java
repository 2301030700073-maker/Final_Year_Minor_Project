package androidx.compose.foundation.gestures;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollableKt$UnityDensity$1 implements Density {
    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return 1.0f;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return 1.0f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
        return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo172toDpGaN1DYA(long j) {
        return Modifier.CC.m389$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        return i / 1.0f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo175toDpSizekrfVVM(long j) {
        return Modifier.CC.m390$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo176toPxR2X_6o(long j) {
        return Modifier.CC.m391$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo177toPx0680j_4(float f) {
        return 1.0f * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final /* synthetic */ long mo179toSp0xMU5do(float f) {
        return Modifier.CC.m393$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return mo179toSp0xMU5do(mo173toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        return f / 1.0f;
    }
}
