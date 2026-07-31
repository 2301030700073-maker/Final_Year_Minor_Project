package androidx.compose.ui.graphics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.ConnectorKt;
import androidx.compose.ui.graphics.colorspace.Illuminant;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Color {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Blue;
    public static final long Red;
    public static final long Transparent;
    public static final long Unspecified;
    public static final long White;
    public final long value;
    public static final long Black = ColorKt.Color(4278190080L);
    public static final long DarkGray = ColorKt.Color(4282664004L);

    static {
        ColorKt.Color(4287137928L);
        ColorKt.Color(4291611852L);
        White = ColorKt.Color(4294967295L);
        Red = ColorKt.Color(4294901760L);
        ColorKt.Color(4278255360L);
        Blue = ColorKt.Color(4278190335L);
        ColorKt.Color(4294967040L);
        ColorKt.Color(4278255615L);
        ColorKt.Color(4294902015L);
        Transparent = ColorKt.Color(0);
        Unspecified = ColorKt.Color(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, ColorSpaces.Unspecified);
    }

    public /* synthetic */ Color(long j) {
        this.value = j;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Color m426boximpl(long j) {
        return new Color(j);
    }

    /* renamed from: convert-vNxB06k, reason: not valid java name */
    public static final long m427convertvNxB06k(long j, ColorSpace colorSpace) {
        Connector connector;
        ColorSpace m431getColorSpaceimpl = m431getColorSpaceimpl(j);
        int i = m431getColorSpaceimpl.id;
        int i2 = colorSpace.id;
        if ((i | i2) < 0) {
            connector = Illuminant.m459createConnectorYBCOT_4(m431getColorSpaceimpl, colorSpace);
        } else {
            MutableIntObjectMap mutableIntObjectMap = ConnectorKt.Connectors;
            int i3 = i | (i2 << 6);
            Object obj = mutableIntObjectMap.get(i3);
            if (obj == null) {
                obj = Illuminant.m459createConnectorYBCOT_4(m431getColorSpaceimpl, colorSpace);
                mutableIntObjectMap.set(i3, obj);
            }
            connector = (Connector) obj;
        }
        return connector.mo458transformToColorl2rxGTc$ui_graphics(j);
    }

    /* renamed from: getAlpha-impl, reason: not valid java name */
    public static final float m429getAlphaimpl(long j) {
        float ulongToDouble;
        float f;
        if ((63 & j) == 0) {
            ulongToDouble = (float) UnsignedKt.ulongToDouble((j >>> 56) & 255);
            f = 255.0f;
        } else {
            ulongToDouble = (float) UnsignedKt.ulongToDouble((j >>> 6) & 1023);
            f = 1023.0f;
        }
        return ulongToDouble / f;
    }

    /* renamed from: getBlue-impl, reason: not valid java name */
    public static final float m430getBlueimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble((j >>> 32) & 255)) / 255.0f;
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
                i = i5 + 112;
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
    public static final ColorSpace m431getColorSpaceimpl(long j) {
        float[] fArr = ColorSpaces.SrgbPrimaries;
        return ColorSpaces.ColorSpacesArray[(int) (j & 63)];
    }

    /* renamed from: getGreen-impl, reason: not valid java name */
    public static final float m432getGreenimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble((j >>> 40) & 255)) / 255.0f;
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
                i = i5 + 112;
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
    public static final float m433getRedimpl(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble((j >>> 48) & 255)) / 255.0f;
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
                i = i5 + 112;
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
    public static String m434toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("Color(");
        sb.append(m433getRedimpl(j));
        sb.append(", ");
        sb.append(m432getGreenimpl(j));
        sb.append(", ");
        sb.append(m430getBlueimpl(j));
        sb.append(", ");
        sb.append(m429getAlphaimpl(j));
        sb.append(", ");
        return Modifier.CC.m(sb, m431getColorSpaceimpl(j).name, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Color) {
            return this.value == ((Color) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.value);
    }

    public final String toString() {
        return m434toStringimpl(this.value);
    }
}
