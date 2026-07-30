package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* compiled from: UStrings.kt */
/* loaded from: classes2.dex */
public abstract class UStringsKt {
    public static final byte toUByte(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.m2661unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final short toUShort(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.m2728unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final int toUInt(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.m2683unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final long toULong(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.m2706unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final UByte toUByteOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    public static final UByte toUByteOrNull(String str, int i) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int m2683unboximpl = uIntOrNull.m2683unboximpl();
        compare = Integer.compare(m2683unboximpl ^ Integer.MIN_VALUE, UInt.m2679constructorimpl(GF2Field.MASK) ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return null;
        }
        return UByte.m2656boximpl(UByte.m2657constructorimpl((byte) m2683unboximpl));
    }

    public static final UShort toUShortOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    public static final UShort toUShortOrNull(String str, int i) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int m2683unboximpl = uIntOrNull.m2683unboximpl();
        compare = Integer.compare(m2683unboximpl ^ Integer.MIN_VALUE, UInt.m2679constructorimpl(65535) ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return null;
        }
        return UShort.m2723boximpl(UShort.m2724constructorimpl((short) m2683unboximpl));
    }

    public static final UInt toUIntOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int m2679constructorimpl = UInt.m2679constructorimpl(i);
        int i4 = 119304647;
        while (i2 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (digitOf < 0) {
                return null;
            }
            compare = Integer.compare(i3 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
            if (compare > 0) {
                if (i4 == 119304647) {
                    i4 = UStringsKt$$ExternalSyntheticBackport2.m(-1, m2679constructorimpl);
                    compare3 = Integer.compare(i3 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
                    if (compare3 > 0) {
                    }
                }
                return null;
            }
            int m2679constructorimpl2 = UInt.m2679constructorimpl(i3 * m2679constructorimpl);
            int m2679constructorimpl3 = UInt.m2679constructorimpl(UInt.m2679constructorimpl(digitOf) + m2679constructorimpl2);
            compare2 = Integer.compare(m2679constructorimpl3 ^ Integer.MIN_VALUE, m2679constructorimpl2 ^ Integer.MIN_VALUE);
            if (compare2 < 0) {
                return null;
            }
            i2++;
            i3 = m2679constructorimpl3;
        }
        return UInt.m2678boximpl(i3);
    }

    public static final ULong toULongOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    public static final ULong toULongOrNull(String str, int i) {
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long m2701constructorimpl = ULong.m2701constructorimpl(i);
        long j = 0;
        long j2 = 512409557603043100L;
        while (i2 < length) {
            if (CharsKt__CharJVMKt.digitOf(str.charAt(i2), i) < 0) {
                return null;
            }
            compare = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
            if (compare > 0) {
                if (j2 == 512409557603043100L) {
                    j2 = UStringsKt$$ExternalSyntheticBackport0.m(-1L, m2701constructorimpl);
                    compare3 = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
                    if (compare3 > 0) {
                    }
                }
                return null;
            }
            long m2701constructorimpl2 = ULong.m2701constructorimpl(j * m2701constructorimpl);
            long m2701constructorimpl3 = ULong.m2701constructorimpl(ULong.m2701constructorimpl(UInt.m2679constructorimpl(r13) & BodyPartID.bodyIdMax) + m2701constructorimpl2);
            compare2 = Long.compare(m2701constructorimpl3 ^ Long.MIN_VALUE, m2701constructorimpl2 ^ Long.MIN_VALUE);
            if (compare2 < 0) {
                return null;
            }
            i2++;
            j = m2701constructorimpl3;
        }
        return ULong.m2700boximpl(j);
    }
}
