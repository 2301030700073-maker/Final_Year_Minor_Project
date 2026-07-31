package kotlinx.serialization.internal;

import kotlin.text.HexExtensionsKt;
import kotlin.uuid.Uuid;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UuidSerializer implements KSerializer {
    public static final UuidSerializer INSTANCE = new UuidSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.uuid.Uuid", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        int length = decodeString.length();
        int i = 0;
        if (length == 32) {
            long j = 0;
            while (i < 16) {
                long j2 = j << 4;
                char charAt = decodeString.charAt(i);
                if ((charAt >>> '\b') == 0) {
                    long j3 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt];
                    if (j3 >= 0) {
                        j = j2 | j3;
                        i++;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i, decodeString, "a hexadecimal digit");
                throw null;
            }
            long j4 = 0;
            for (int i2 = 16; i2 < 32; i2++) {
                long j5 = j4 << 4;
                char charAt2 = decodeString.charAt(i2);
                if ((charAt2 >>> '\b') == 0) {
                    long j6 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt2];
                    if (j6 >= 0) {
                        j4 = j5 | j6;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i2, decodeString, "a hexadecimal digit");
                throw null;
            }
            if (j != 0 || j4 != 0) {
                return new Uuid(j, j4);
            }
        } else {
            if (length != 36) {
                StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                sb.append(decodeString.length() <= 64 ? decodeString : decodeString.substring(0, 64).concat("..."));
                sb.append("\" of length ");
                sb.append(decodeString.length());
                throw new IllegalArgumentException(sb.toString());
            }
            long j7 = 0;
            while (i < 8) {
                long j8 = j7 << 4;
                char charAt3 = decodeString.charAt(i);
                if ((charAt3 >>> '\b') == 0) {
                    long j9 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt3];
                    if (j9 >= 0) {
                        j7 = j8 | j9;
                        i++;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i, decodeString, "a hexadecimal digit");
                throw null;
            }
            if (decodeString.charAt(8) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(8, decodeString, "'-' (hyphen)");
                throw null;
            }
            long j10 = 0;
            for (int i3 = 9; i3 < 13; i3++) {
                long j11 = j10 << 4;
                char charAt4 = decodeString.charAt(i3);
                if ((charAt4 >>> '\b') == 0) {
                    long j12 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt4];
                    if (j12 >= 0) {
                        j10 = j11 | j12;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i3, decodeString, "a hexadecimal digit");
                throw null;
            }
            if (decodeString.charAt(13) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(13, decodeString, "'-' (hyphen)");
                throw null;
            }
            long j13 = 0;
            for (int i4 = 14; i4 < 18; i4++) {
                long j14 = j13 << 4;
                char charAt5 = decodeString.charAt(i4);
                if ((charAt5 >>> '\b') == 0) {
                    long j15 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt5];
                    if (j15 >= 0) {
                        j13 = j14 | j15;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i4, decodeString, "a hexadecimal digit");
                throw null;
            }
            if (decodeString.charAt(18) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(18, decodeString, "'-' (hyphen)");
                throw null;
            }
            long j16 = 0;
            for (int i5 = 19; i5 < 23; i5++) {
                long j17 = j16 << 4;
                char charAt6 = decodeString.charAt(i5);
                if ((charAt6 >>> '\b') == 0) {
                    long j18 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt6];
                    if (j18 >= 0) {
                        j16 = j17 | j18;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i5, decodeString, "a hexadecimal digit");
                throw null;
            }
            if (decodeString.charAt(23) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(23, decodeString, "'-' (hyphen)");
                throw null;
            }
            long j19 = 0;
            for (int i6 = 24; i6 < 36; i6++) {
                long j20 = j19 << 4;
                char charAt7 = decodeString.charAt(i6);
                if ((charAt7 >>> '\b') == 0) {
                    long j21 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt7];
                    if (j21 >= 0) {
                        j19 = j20 | j21;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i6, decodeString, "a hexadecimal digit");
                throw null;
            }
            long j22 = (j7 << 32) | (j10 << 16) | j13;
            long j23 = (j16 << 48) | j19;
            if (j22 != 0 || j23 != 0) {
                return new Uuid(j22, j23);
            }
        }
        return Uuid.NIL;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Uuid uuid = (Uuid) obj;
        uuid.getClass();
        uuidKt.encodeString(uuid.toString());
    }
}
