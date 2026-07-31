package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResolvedFlexBoxConfig implements Density {
    public Density _density;
    public float columnGap;
    public float rowGap;
    public int wrap;

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this._density.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this._density.getFontScale();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
        return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo172toDpGaN1DYA(long j) {
        return this._density.mo172toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        return i / this._density.getDensity();
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
        return this._density.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final long mo179toSp0xMU5do(float f) {
        return this._density.mo179toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return this._density.mo179toSp0xMU5do(mo173toDpu2uoSUM(f));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n        FlexBoxConfig(\n            direction = ");
        sb.append((Object) "Row");
        sb.append(",\n            wrap = ");
        int i = this.wrap;
        sb.append((Object) (i != 0 ? i != 1 ? i != 2 ? "INVALID" : "WrapReverse" : "Wrap" : "NoWrap"));
        sb.append(",\n            justifyContent = Start,\n            alignItems = Start,\n            alignContent = Start,\n            rowGap = ");
        sb.append((Object) Dp.m746toStringimpl(this.rowGap));
        sb.append(",\n            columnGap = ");
        sb.append((Object) Dp.m746toStringimpl(this.columnGap));
        sb.append("\n        )\n    ");
        return StringsKt__IndentKt.trimIndent(sb.toString());
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        return f / this._density.getDensity();
    }
}
