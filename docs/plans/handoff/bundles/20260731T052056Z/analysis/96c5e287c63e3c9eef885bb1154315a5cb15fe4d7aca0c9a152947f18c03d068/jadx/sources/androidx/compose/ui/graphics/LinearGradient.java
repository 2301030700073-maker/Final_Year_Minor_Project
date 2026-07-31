package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinearGradient extends ShaderBrush {
    public final List colors;
    public final long end;
    public final long start;
    public final List stops;

    public LinearGradient(List list, ArrayList arrayList, long j, long j2) {
        this.colors = list;
        this.stops = arrayList;
        this.start = j;
        this.end = j2;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* renamed from: createShader-uvyYCjk */
    public final Shader mo422createShaderuvyYCjk(long j) {
        int i;
        int[] iArr;
        long Color;
        long Color2;
        int i2;
        long Color3;
        long Color4;
        long j2 = this.start;
        char c = ' ';
        int i3 = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i3) == Float.POSITIVE_INFINITY) {
            i3 = (int) (j >> 32);
        }
        float intBitsToFloat = Float.intBitsToFloat(i3);
        long j3 = 4294967295L;
        int i4 = (int) (j2 & 4294967295L);
        if (Float.intBitsToFloat(i4) == Float.POSITIVE_INFINITY) {
            i4 = (int) (j & 4294967295L);
        }
        float intBitsToFloat2 = Float.intBitsToFloat(i4);
        long j4 = this.end;
        int i5 = (int) (j4 >> 32);
        if (Float.intBitsToFloat(i5) == Float.POSITIVE_INFINITY) {
            i5 = (int) (j >> 32);
        }
        float intBitsToFloat3 = Float.intBitsToFloat(i5);
        int i6 = (int) (j4 & 4294967295L);
        if (Float.intBitsToFloat(i6) == Float.POSITIVE_INFINITY) {
            i6 = (int) (j & 4294967295L);
        }
        float intBitsToFloat4 = Float.intBitsToFloat(i6);
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat3) << 32) | (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L);
        float[] fArr = null;
        List list = this.colors;
        List list2 = this.stops;
        if (list2 == null) {
            if (list.size() < 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("colors must have length of at least 2 if colorStops is omitted.");
                return null;
            }
        } else if (list.size() != list2.size()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("colors and colorStops arguments must have equal length.");
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            i = 0;
        } else {
            int size = list.size() - 1;
            int i7 = 1;
            i = 0;
            while (i7 < size) {
                char c2 = c;
                long j5 = j3;
                if (Color.m429getAlphaimpl(((Color) list.get(i7)).value) == RecyclerView.DECELERATION_RATE) {
                    i++;
                }
                i7++;
                c = c2;
                j3 = j5;
            }
        }
        char c3 = c;
        long j6 = j3;
        float intBitsToFloat5 = Float.intBitsToFloat((int) (floatToRawIntBits >> c3));
        float intBitsToFloat6 = Float.intBitsToFloat((int) (floatToRawIntBits & j6));
        float intBitsToFloat7 = Float.intBitsToFloat((int) (floatToRawIntBits2 >> c3));
        float intBitsToFloat8 = Float.intBitsToFloat((int) (floatToRawIntBits2 & j6));
        if (Build.VERSION.SDK_INT >= 26) {
            int size2 = list.size();
            iArr = new int[size2];
            for (int i8 = 0; i8 < size2; i8++) {
                iArr[i8] = ColorKt.m444toArgb8_81llA(((Color) list.get(i8)).value);
            }
        } else {
            iArr = new int[list.size() + i];
            int size3 = list.size() - 1;
            int size4 = list.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size4; i10++) {
                long j7 = ((Color) list.get(i10)).value;
                if (Color.m429getAlphaimpl(j7) == RecyclerView.DECELERATION_RATE) {
                    if (i10 == 0) {
                        i2 = i9 + 1;
                        Color4 = ColorKt.Color(Color.m433getRedimpl(r9), Color.m432getGreenimpl(r9), Color.m430getBlueimpl(r9), RecyclerView.DECELERATION_RATE, Color.m431getColorSpaceimpl(((Color) list.get(1)).value));
                        iArr[i9] = ColorKt.m444toArgb8_81llA(Color4);
                    } else if (i10 == size3) {
                        i2 = i9 + 1;
                        Color3 = ColorKt.Color(Color.m433getRedimpl(r9), Color.m432getGreenimpl(r9), Color.m430getBlueimpl(r9), RecyclerView.DECELERATION_RATE, Color.m431getColorSpaceimpl(((Color) list.get(i10 - 1)).value));
                        iArr[i9] = ColorKt.m444toArgb8_81llA(Color3);
                    } else {
                        int i11 = i9 + 1;
                        Color = ColorKt.Color(Color.m433getRedimpl(r8), Color.m432getGreenimpl(r8), Color.m430getBlueimpl(r8), RecyclerView.DECELERATION_RATE, Color.m431getColorSpaceimpl(((Color) list.get(i10 - 1)).value));
                        iArr[i9] = ColorKt.m444toArgb8_81llA(Color);
                        i9 += 2;
                        Color2 = ColorKt.Color(Color.m433getRedimpl(r8), Color.m432getGreenimpl(r8), Color.m430getBlueimpl(r8), RecyclerView.DECELERATION_RATE, Color.m431getColorSpaceimpl(((Color) list.get(i10 + 1)).value));
                        iArr[i11] = ColorKt.m444toArgb8_81llA(Color2);
                    }
                    i9 = i2;
                } else {
                    iArr[i9] = ColorKt.m444toArgb8_81llA(j7);
                    i9++;
                }
            }
        }
        int[] iArr2 = iArr;
        if (i != 0) {
            fArr = new float[list.size() + i];
            fArr[0] = list2 != null ? ((Number) list2.get(0)).floatValue() : 0.0f;
            int size5 = list.size() - 1;
            int i12 = 1;
            for (int i13 = 1; i13 < size5; i13++) {
                long j8 = ((Color) list.get(i13)).value;
                float floatValue = list2 != null ? ((Number) list2.get(i13)).floatValue() : i13 / (list.size() - 1);
                int i14 = i12 + 1;
                fArr[i12] = floatValue;
                if (Color.m429getAlphaimpl(j8) == RecyclerView.DECELERATION_RATE) {
                    i12 += 2;
                    fArr[i14] = floatValue;
                } else {
                    i12 = i14;
                }
            }
            fArr[i12] = list2 != null ? ((Number) list2.get(list.size() - 1)).floatValue() : 1.0f;
        } else if (list2 != null) {
            fArr = CollectionsKt.toFloatArray(list2);
        }
        return new android.graphics.LinearGradient(intBitsToFloat5, intBitsToFloat6, intBitsToFloat7, intBitsToFloat8, iArr2, fArr, Shader.TileMode.CLAMP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        return this.colors.equals(linearGradient.colors) && Intrinsics.areEqual(this.stops, linearGradient.stops) && Offset.m383equalsimpl0(this.start, linearGradient.start) && Offset.m383equalsimpl0(this.end, linearGradient.end);
    }

    public final int hashCode() {
        int hashCode = this.colors.hashCode() * 31;
        List list = this.stops;
        return (Modifier.CC.m(this.end) + ((Modifier.CC.m(this.start) + ((hashCode + (list != null ? list.hashCode() : 0)) * 31)) * 31)) * 31;
    }

    public final String toString() {
        String str;
        long j = this.start;
        String str2 = "";
        if (((((j & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str = "start=" + ((Object) Offset.m388toStringimpl(j)) + ", ";
        } else {
            str = "";
        }
        long j2 = this.end;
        if (((((j2 & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str2 = "end=" + ((Object) Offset.m388toStringimpl(j2)) + ", ";
        }
        return "LinearGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) "Clamp") + ')';
    }
}
