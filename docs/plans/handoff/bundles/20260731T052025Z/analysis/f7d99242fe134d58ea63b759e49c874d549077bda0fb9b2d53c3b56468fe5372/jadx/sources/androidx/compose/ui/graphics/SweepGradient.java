package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.geometry.Offset;
import androidx.core.util.DebugUtils;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final Shader mo476createShaderuvyYCjk(long j) {
        long floatToRawIntBits;
        long j2 = this.center;
        if ((9223372034707292159L & j2) == 9205357640488583168L) {
            floatToRawIntBits = DebugUtils.m788getCenteruvyYCjk(j);
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
        ColorKt.validateColorStops(arrayList, arrayList2);
        int countTransparentColors = ColorKt.countTransparentColors(arrayList);
        return new android.graphics.SweepGradient(Float.intBitsToFloat((int) (floatToRawIntBits >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)), ColorKt.makeTransparentColors(countTransparentColors, arrayList), ColorKt.makeTransparentStops(arrayList2, arrayList, countTransparentColors));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SweepGradient)) {
            return false;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        return Offset.m437equalsimpl0(this.center, sweepGradient.center) && this.colors.equals(sweepGradient.colors) && this.stops.equals(sweepGradient.stops);
    }

    public final int hashCode() {
        return this.stops.hashCode() + Config.CC.m(this.colors, Offset.m439hashCodeimpl(this.center) * 31, 31);
    }

    public final String toString() {
        String str;
        long j = this.center;
        if ((9223372034707292159L & j) != 9205357640488583168L) {
            str = "center=" + ((Object) Offset.m443toStringimpl(j)) + ", ";
        } else {
            str = "";
        }
        StringBuilder m31m = CameraDevices$CC.m31m("SweepGradient(", str, "colors=");
        m31m.append(this.colors);
        m31m.append(", stops=");
        m31m.append(this.stops);
        m31m.append(')');
        return m31m.toString();
    }
}
