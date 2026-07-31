package androidx.compose.ui.unit;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LinearFontScaleConverter implements FontScaleConverter {
    public final float fontScale;

    public LinearFontScaleConverter(float f) {
        this.fontScale = f;
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float convertDpToSp(float f) {
        return f / this.fontScale;
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float convertSpToDp(float f) {
        return f * this.fontScale;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinearFontScaleConverter) && Float.compare(this.fontScale, ((LinearFontScaleConverter) obj).fontScale) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.fontScale);
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("LinearFontScaleConverter(fontScale="), this.fontScale, ')');
    }
}
