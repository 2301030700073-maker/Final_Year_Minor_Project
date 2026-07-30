package androidx.compose.ui.unit;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidDensity.android.kt */
/* loaded from: classes.dex */
final class DensityWithConverter implements Density {
    private final FontScaleConverter converter;
    private final float density;
    private final float fontScale;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityWithConverter)) {
            return false;
        }
        DensityWithConverter densityWithConverter = (DensityWithConverter) obj;
        return Float.compare(this.density, densityWithConverter.density) == 0 && Float.compare(this.fontScale, densityWithConverter.fontScale) == 0 && Intrinsics.areEqual(this.converter, densityWithConverter.converter);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.density) * 31) + Float.floatToIntBits(this.fontScale)) * 31) + this.converter.hashCode();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public /* synthetic */ int mo207roundToPx0680j_4(float f) {
        return Density.CC.m2414$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo209toDpu2uoSUM(float f) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo210toDpu2uoSUM(int i) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
        return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public /* synthetic */ float mo212toPxR2X_6o(long j) {
        return Density.CC.m2418$default$toPxR2X_6o(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public /* synthetic */ float mo213toPx0680j_4(float f) {
        return Density.CC.m2419$default$toPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
        return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
        long mo215toSp0xMU5do;
        mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
        return mo215toSp0xMU5do;
    }

    public String toString() {
        return "DensityWithConverter(density=" + this.density + ", fontScale=" + this.fontScale + ", converter=" + this.converter + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public DensityWithConverter(float f, float f2, FontScaleConverter fontScaleConverter) {
        this.density = f;
        this.fontScale = f2;
        this.converter = fontScaleConverter;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.fontScale;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toSp-0xMU5do */
    public long mo215toSp0xMU5do(float f) {
        return TextUnitKt.getSp(this.converter.convertDpToSp(f));
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toDp-GaN1DYA */
    public float mo208toDpGaN1DYA(long j) {
        if (!TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(j), TextUnitType.Companion.m2516getSpUIouoOA())) {
            throw new IllegalStateException("Only Sp can convert to Px");
        }
        return Dp.m2424constructorimpl(this.converter.convertSpToDp(TextUnit.m2498getValueimpl(j)));
    }
}
