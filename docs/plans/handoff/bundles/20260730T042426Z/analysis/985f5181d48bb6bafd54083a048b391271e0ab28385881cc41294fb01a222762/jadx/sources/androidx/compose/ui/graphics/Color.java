package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import ch.qos.logback.core.CoreConstants;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* compiled from: Color.kt */
/* loaded from: classes.dex */
public final class Color {
    private final long value;
    public static final Companion Companion = new Companion(null);
    private static final long Black = ColorKt.Color(4278190080L);
    private static final long DarkGray = ColorKt.Color(4282664004L);
    private static final long Gray = ColorKt.Color(4287137928L);
    private static final long LightGray = ColorKt.Color(4291611852L);
    private static final long White = ColorKt.Color(BodyPartID.bodyIdMax);
    private static final long Red = ColorKt.Color(4294901760L);
    private static final long Green = ColorKt.Color(4278255360L);
    private static final long Blue = ColorKt.Color(4278190335L);
    private static final long Yellow = ColorKt.Color(4294967040L);
    private static final long Cyan = ColorKt.Color(4278255615L);
    private static final long Magenta = ColorKt.Color(4294902015L);
    private static final long Transparent = ColorKt.Color(0);
    private static final long Unspecified = ColorKt.Color(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.INSTANCE.getUnspecified$ui_graphics_release());

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Color m1298boximpl(long j) {
        return new Color(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1299constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1303equalsimpl(long j, Object obj) {
        return (obj instanceof Color) && j == ((Color) obj).m1312unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1304equalsimpl0(long j, long j2) {
        return ULong.m2703equalsimpl0(j, j2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1310hashCodeimpl(long j) {
        return ULong.m2704hashCodeimpl(j);
    }

    public boolean equals(Object obj) {
        return m1303equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1310hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1312unboximpl() {
        return this.value;
    }

    private /* synthetic */ Color(long j) {
        this.value = j;
    }

    /* renamed from: getColorSpace-impl, reason: not valid java name */
    public static final ColorSpace m1307getColorSpaceimpl(long j) {
        ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
        return colorSpaces.getColorSpacesArray$ui_graphics_release()[(int) ULong.m2701constructorimpl(j & 63)];
    }

    /* renamed from: convert-vNxB06k, reason: not valid java name */
    public static final long m1300convertvNxB06k(long j, ColorSpace colorSpace) {
        return ColorSpaceKt.m1455connectYBCOT_4$default(m1307getColorSpaceimpl(j), colorSpace, 0, 2, null).mo1457transformToColorl2rxGTc$ui_graphics_release(j);
    }

    /* renamed from: getRed-impl, reason: not valid java name */
    public static final float m1309getRedimpl(long j) {
        int i;
        int i2;
        int i3;
        float f;
        if (ULong.m2701constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 48) & 255))) / 255.0f;
        }
        short m2701constructorimpl = (short) ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 48) & 65535);
        int i4 = 32768 & m2701constructorimpl;
        int i5 = ((65535 & m2701constructorimpl) >>> 10) & 31;
        int i6 = m2701constructorimpl & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = GF2Field.MASK;
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
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608);
                f = Float16Kt.Fp32DenormalFloat;
                float f2 = intBitsToFloat - f;
                return i4 == 0 ? f2 : -f2;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: getGreen-impl, reason: not valid java name */
    public static final float m1308getGreenimpl(long j) {
        int i;
        int i2;
        int i3;
        float f;
        if (ULong.m2701constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 40) & 255))) / 255.0f;
        }
        short m2701constructorimpl = (short) ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 32) & 65535);
        int i4 = 32768 & m2701constructorimpl;
        int i5 = ((65535 & m2701constructorimpl) >>> 10) & 31;
        int i6 = m2701constructorimpl & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = GF2Field.MASK;
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
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608);
                f = Float16Kt.Fp32DenormalFloat;
                float f2 = intBitsToFloat - f;
                return i4 == 0 ? f2 : -f2;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: getBlue-impl, reason: not valid java name */
    public static final float m1306getBlueimpl(long j) {
        int i;
        int i2;
        int i3;
        float f;
        if (ULong.m2701constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 32) & 255))) / 255.0f;
        }
        short m2701constructorimpl = (short) ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 16) & 65535);
        int i4 = 32768 & m2701constructorimpl;
        int i5 = ((65535 & m2701constructorimpl) >>> 10) & 31;
        int i6 = m2701constructorimpl & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = GF2Field.MASK;
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
                float intBitsToFloat = Float.intBitsToFloat(i6 + 1056964608);
                f = Float16Kt.Fp32DenormalFloat;
                float f2 = intBitsToFloat - f;
                return i4 == 0 ? f2 : -f2;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    /* renamed from: getAlpha-impl, reason: not valid java name */
    public static final float m1305getAlphaimpl(long j) {
        float ulongToDouble;
        float f;
        if (ULong.m2701constructorimpl(63 & j) == 0) {
            ulongToDouble = (float) UnsignedKt.ulongToDouble(ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 56) & 255));
            f = 255.0f;
        } else {
            ulongToDouble = (float) UnsignedKt.ulongToDouble(ULong.m2701constructorimpl(ULong.m2701constructorimpl(j >>> 6) & 1023));
            f = 1023.0f;
        }
        return ulongToDouble / f;
    }

    /* renamed from: copy-wmQWz5c$default, reason: not valid java name */
    public static /* synthetic */ long m1302copywmQWz5c$default(long j, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m1305getAlphaimpl(j);
        }
        float f5 = f;
        if ((i & 2) != 0) {
            f2 = m1309getRedimpl(j);
        }
        float f6 = f2;
        if ((i & 4) != 0) {
            f3 = m1308getGreenimpl(j);
        }
        float f7 = f3;
        if ((i & 8) != 0) {
            f4 = m1306getBlueimpl(j);
        }
        return m1301copywmQWz5c(j, f5, f6, f7, f4);
    }

    /* renamed from: copy-wmQWz5c, reason: not valid java name */
    public static final long m1301copywmQWz5c(long j, float f, float f2, float f3, float f4) {
        return ColorKt.Color(f2, f3, f4, f, m1307getColorSpaceimpl(j));
    }

    public String toString() {
        return m1311toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1311toStringimpl(long j) {
        return "Color(" + m1309getRedimpl(j) + ", " + m1308getGreenimpl(j) + ", " + m1306getBlueimpl(j) + ", " + m1305getAlphaimpl(j) + ", " + m1307getColorSpaceimpl(j).getName() + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: Color.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getBlack-0d7_KjU, reason: not valid java name */
        public final long m1313getBlack0d7_KjU() {
            return Color.Black;
        }

        /* renamed from: getWhite-0d7_KjU, reason: not valid java name */
        public final long m1318getWhite0d7_KjU() {
            return Color.White;
        }

        /* renamed from: getRed-0d7_KjU, reason: not valid java name */
        public final long m1315getRed0d7_KjU() {
            return Color.Red;
        }

        /* renamed from: getBlue-0d7_KjU, reason: not valid java name */
        public final long m1314getBlue0d7_KjU() {
            return Color.Blue;
        }

        /* renamed from: getTransparent-0d7_KjU, reason: not valid java name */
        public final long m1316getTransparent0d7_KjU() {
            return Color.Transparent;
        }

        /* renamed from: getUnspecified-0d7_KjU, reason: not valid java name */
        public final long m1317getUnspecified0d7_KjU() {
            return Color.Unspecified;
        }
    }
}
