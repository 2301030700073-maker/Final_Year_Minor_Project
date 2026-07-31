package androidx.compose.ui.graphics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.ConnectorKt;
import androidx.compose.ui.graphics.colorspace.Illuminant;
import kotlin.ResultKt;
import kotlin.ULong;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Color {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Black = Brush.Color(4278190080L);
    public static final long Blue;
    public static final long Red;
    public static final long Transparent;
    public static final long Unspecified;
    public final long value;

    static {
        Brush.Color(4282664004L);
        Brush.Color(4287137928L);
        Brush.Color(4291611852L);
        Brush.Color(4294967295L);
        Red = Brush.Color(4294901760L);
        Brush.Color(4278255360L);
        Blue = Brush.Color(4278190335L);
        Brush.Color(4294967040L);
        Brush.Color(4278255615L);
        Brush.Color(4294902015L);
        Transparent = Brush.Color(0);
        Unspecified = Brush.Color(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.Unspecified);
    }

    public /* synthetic */ Color(long j) {
        this.value = j;
    }

    /* renamed from: convert-vNxB06k, reason: not valid java name */
    public static final long m242convertvNxB06k(long j, ColorSpace colorSpace) {
        Connector connector;
        ColorSpace m247getColorSpaceimpl = m247getColorSpaceimpl(j);
        int i = m247getColorSpaceimpl.id;
        int i2 = colorSpace.id;
        if ((i | i2) < 0) {
            connector = Illuminant.m257createConnectorYBCOT_4(m247getColorSpaceimpl, colorSpace);
        } else {
            MutableIntObjectMap mutableIntObjectMap = ConnectorKt.Connectors;
            int i3 = i | (i2 << 6);
            Object obj = mutableIntObjectMap.get(i3);
            if (obj == null) {
                obj = Illuminant.m257createConnectorYBCOT_4(m247getColorSpaceimpl, colorSpace);
                mutableIntObjectMap.set(i3, obj);
            }
            connector = (Connector) obj;
        }
        return connector.mo256transformToColorl2rxGTc$ui_graphics(j);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m244equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getAlpha-impl, reason: not valid java name */
    public static final float m245getAlphaimpl(long j) {
        float ulongToDouble;
        float f;
        if ((63 & j) == 0) {
            ulongToDouble = (float) ResultKt.ulongToDouble((j >>> 56) & 255);
            f = 255.0f;
        } else {
            ulongToDouble = (float) ResultKt.ulongToDouble((j >>> 6) & 1023);
            f = 1023.0f;
        }
        return ulongToDouble / f;
    }

    /* renamed from: getBlue-impl, reason: not valid java name */
    public static final float m246getBlueimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) ResultKt.ulongToDouble((j >>> 32) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 16) & 65535);
        int i4 = 32768 & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + Token.ASSIGN_MOD;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - Float16Kt.Fp32DenormalFloat;
                return i4 == 0 ? intBitsToFloat : -intBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: getColorSpace-impl, reason: not valid java name */
    public static final ColorSpace m247getColorSpaceimpl(long j) {
        float[] fArr = ColorSpaces.SrgbPrimaries;
        return ColorSpaces.ColorSpacesArray[(int) (j & 63)];
    }

    /* renamed from: getGreen-impl, reason: not valid java name */
    public static final float m248getGreenimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) ResultKt.ulongToDouble((j >>> 40) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 32) & 65535);
        int i4 = 32768 & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + Token.ASSIGN_MOD;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - Float16Kt.Fp32DenormalFloat;
                return i4 == 0 ? intBitsToFloat : -intBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: getRed-impl, reason: not valid java name */
    public static final float m249getRedimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) ResultKt.ulongToDouble((j >>> 48) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 48) & 65535);
        int i4 = 32768 & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + Token.ASSIGN_MOD;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - Float16Kt.Fp32DenormalFloat;
                return i4 == 0 ? intBitsToFloat : -intBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m250toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("Color(");
        sb.append(m249getRedimpl(j));
        sb.append(", ");
        sb.append(m248getGreenimpl(j));
        sb.append(", ");
        sb.append(m246getBlueimpl(j));
        sb.append(", ");
        sb.append(m245getAlphaimpl(j));
        sb.append(", ");
        return Modifier.CC.m(sb, m247getColorSpaceimpl(j).name, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Color) {
            return this.value == ((Color) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return ULong.m658hashCodeimpl(this.value);
    }

    public final String toString() {
        return m250toStringimpl(this.value);
    }
}
