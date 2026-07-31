package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResolvedFlexItemInfo implements Density {
    public FlexBoxKt$DefaultDensity$1 _density;
    public int _maxContentSize;
    public int _minMainAxisSize;
    public int crossAxisSize;
    public int crossPosition;
    public int flexBaseSize;
    public int hypotheticalMainSize;
    public boolean isFrozen;
    public int mainPosition;
    public Measurable measurable;
    public Placeable placeable;
    public int targetMainSize;

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        this._density.getClass();
        return 1.0f;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        this._density.getClass();
        return 1.0f;
    }

    public final int getMinMainAxisSize$foundation_layout(boolean z) {
        if (this._minMainAxisSize == -1) {
            Measurable measurable = this.measurable;
            int i = 0;
            if (z) {
                if (measurable != null) {
                    i = measurable.minIntrinsicWidth(Integer.MAX_VALUE);
                }
            } else if (measurable != null) {
                i = measurable.minIntrinsicHeight(Integer.MAX_VALUE);
            }
            this._minMainAxisSize = i;
        }
        return this._minMainAxisSize;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
        return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo172toDpGaN1DYA(long j) {
        FlexBoxKt$DefaultDensity$1 flexBoxKt$DefaultDensity$1 = this._density;
        flexBoxKt$DefaultDensity$1.getClass();
        return Modifier.CC.m389$default$toDpGaN1DYA(j, flexBoxKt$DefaultDensity$1);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        getDensity();
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
        getDensity();
        return 1.0f * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final long mo179toSp0xMU5do(float f) {
        FlexBoxKt$DefaultDensity$1 flexBoxKt$DefaultDensity$1 = this._density;
        flexBoxKt$DefaultDensity$1.getClass();
        return Modifier.CC.m393$default$toSp0xMU5do(flexBoxKt$DefaultDensity$1, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return mo179toSp0xMU5do(mo173toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        getDensity();
        return f / 1.0f;
    }
}
