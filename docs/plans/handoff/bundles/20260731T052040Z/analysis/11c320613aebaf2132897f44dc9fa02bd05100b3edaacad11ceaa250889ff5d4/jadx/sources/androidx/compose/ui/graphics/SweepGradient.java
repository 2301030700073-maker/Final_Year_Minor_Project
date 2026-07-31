package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SweepGradient extends ShaderBrush {
    public final long center;
    public final ArrayList colors;
    public final ArrayList stops;

    public SweepGradient(long j, ArrayList arrayList, ArrayList arrayList2) {
        this.center = j;
        this.colors = arrayList;
        this.stops = arrayList2;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* renamed from: createShader-uvyYCjk */
    public final Shader mo251createShaderuvyYCjk(long j) {
        long floatToRawIntBits;
        long j2 = this.center;
        if ((9223372034707292159L & j2) == 9205357640488583168L) {
            floatToRawIntBits = RangesKt.m668getCenteruvyYCjk(j);
        } else {
            int i = (int) (j2 >> 32);
            if (Float.intBitsToFloat(i) == Float.POSITIVE_INFINITY) {
                i = (int) (j >> 32);
            }
            float intBitsToFloat = Float.intBitsToFloat(i);
            int i2 = (int) (j2 & 4294967295L);
            float intBitsToFloat2 = Float.intBitsToFloat(i2) == Float.POSITIVE_INFINITY ? Float.intBitsToFloat((int) (j & 4294967295L)) : Float.intBitsToFloat(i2);
            floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        }
        ArrayList arrayList = this.colors;
        ArrayList arrayList2 = this.stops;
        Brush.validateColorStops(arrayList, arrayList2);
        int countTransparentColors = Brush.countTransparentColors(arrayList);
        return new android.graphics.SweepGradient(Float.intBitsToFloat((int) (floatToRawIntBits >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)), Brush.makeTransparentColors(countTransparentColors, arrayList), Brush.makeTransparentStops(arrayList2, arrayList, countTransparentColors));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SweepGradient)) {
            return false;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        return Offset.m196equalsimpl0(this.center, sweepGradient.center) && this.colors.equals(sweepGradient.colors) && this.stops.equals(sweepGradient.stops);
    }

    public final int hashCode() {
        return this.stops.hashCode() + ((this.colors.hashCode() + (Offset.m198hashCodeimpl(this.center) * 31)) * 31);
    }

    public final String toString() {
        String str;
        long j = this.center;
        if ((9223372034707292159L & j) != 9205357640488583168L) {
            str = "center=" + ((Object) Offset.m202toStringimpl(j)) + ", ";
        } else {
            str = "";
        }
        StringBuilder m180m = Modifier.CC.m180m("SweepGradient(", str, "colors=");
        m180m.append(this.colors);
        m180m.append(", stops=");
        m180m.append(this.stops);
        m180m.append(')');
        return m180m.toString();
    }
}
