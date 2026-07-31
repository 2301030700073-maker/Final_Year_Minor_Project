package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.Instant;
import kotlin.time.InstantKt;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlin.time.InstantParseResult;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InstantSerializer implements KSerializer {
    public static final InstantSerializer INSTANCE = new InstantSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Instant", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        int i2;
        int i3;
        InstantParseResult parseIso$parseFailure;
        int i4;
        char charAt;
        char charAt2;
        Instant instant = Instant.MIN;
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        int i5 = 3;
        if (decodeString.length() == 0) {
            parseIso$parseFailure = new ParseError(i5, "An empty string is not a valid Instant", decodeString);
        } else {
            char charAt3 = decodeString.charAt(0);
            if (charAt3 == '+' || charAt3 == '-') {
                i = 1;
            } else {
                i = 0;
                charAt3 = ' ';
            }
            int i6 = 0;
            int i7 = i;
            while (i7 < decodeString.length() && '0' <= (charAt2 = decodeString.charAt(i7)) && charAt2 < ':') {
                i6 = (i6 * 10) + (decodeString.charAt(i7) - '0');
                i7++;
            }
            int i8 = i7 - i;
            if (i8 > 10) {
                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected at most 10 digits for the year number, got " + i8 + " digits");
            } else if (i8 == 10 && decodeString.charAt(i) >= '2') {
                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected at most 9 digits for the year number or year 1000000000, got " + i8 + " digits");
            } else if (i8 < 4) {
                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "The year number must be padded to 4 digits, got " + i8 + " digits");
            } else if (charAt3 == '+' && i8 == 4) {
                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
            } else if (charAt3 != ' ' || i8 == 4) {
                if (charAt3 == '-') {
                    i6 = -i6;
                }
                int i9 = i7 + 16;
                if (decodeString.length() >= i9) {
                    ParseError parseIso$expect = InstantKt.parseIso$expect(decodeString, "'-'", i7, new InstantKt$$ExternalSyntheticLambda0(0));
                    if (parseIso$expect == null && (parseIso$expect = InstantKt.parseIso$expect(decodeString, "'-'", i7 + 3, new InstantKt$$ExternalSyntheticLambda0(17))) == null) {
                        ParseError parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "'T' or 't'", i7 + 6, new InstantKt$$ExternalSyntheticLambda0(18));
                        if (parseIso$expect2 == null && (parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "':'", i7 + 9, new InstantKt$$ExternalSyntheticLambda0(19))) == null && (parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "':'", i7 + 12, new InstantKt$$ExternalSyntheticLambda0(20))) == null) {
                            for (int i10 = 0; i10 < 10; i10++) {
                                parseIso$expect = InstantKt.parseIso$expect(decodeString, "an ASCII digit", InstantKt.asciiDigitPositionsInIsoStringAfterYear[i10] + i7, new InstantKt$$ExternalSyntheticLambda0(21));
                                if (parseIso$expect == null) {
                                }
                            }
                            int parseIso$twoDigitNumber = InstantKt.parseIso$twoDigitNumber(decodeString, i7 + 1);
                            int parseIso$twoDigitNumber2 = InstantKt.parseIso$twoDigitNumber(decodeString, i7 + 4);
                            int parseIso$twoDigitNumber3 = InstantKt.parseIso$twoDigitNumber(decodeString, i7 + 7);
                            int parseIso$twoDigitNumber4 = InstantKt.parseIso$twoDigitNumber(decodeString, i7 + 10);
                            int parseIso$twoDigitNumber5 = InstantKt.parseIso$twoDigitNumber(decodeString, i7 + 13);
                            int i11 = i7 + 15;
                            if (decodeString.charAt(i11) == '.') {
                                i11 = i9;
                                int i12 = 0;
                                while (i11 < decodeString.length() && '0' <= (charAt = decodeString.charAt(i11)) && charAt < ':') {
                                    i12 = (i12 * 10) + (decodeString.charAt(i11) - '0');
                                    i11++;
                                }
                                int i13 = i11 - i9;
                                if (1 > i13 || i13 >= 10) {
                                    parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "1..9 digits are supported for the fraction of the second, got " + i13 + " digits");
                                } else {
                                    i2 = i12 * InstantKt.POWERS_OF_TEN[9 - i13];
                                }
                            } else {
                                i2 = 0;
                            }
                            if (i11 >= decodeString.length()) {
                                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "The UTC offset at the end of the string is missing");
                            } else {
                                char charAt4 = decodeString.charAt(i11);
                                if (charAt4 == '+' || charAt4 == '-') {
                                    int length = decodeString.length() - i11;
                                    if (length > 9) {
                                        parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "The UTC offset string \"" + InstantKt.truncateForErrorMessage(decodeString.subSequence(i11, decodeString.length()).toString(), 16) + "\" is too long");
                                    } else if (length % 3 != 0) {
                                        parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Invalid UTC offset string \"" + decodeString.subSequence(i11, decodeString.length()).toString() + '\"');
                                    } else {
                                        int i14 = 0;
                                        for (int i15 = 2; i14 < i15; i15 = 2) {
                                            int i16 = i11 + InstantKt.colonsInIsoOffsetString[i14];
                                            if (i16 >= decodeString.length()) {
                                                break;
                                            }
                                            if (decodeString.charAt(i16) != ':') {
                                                StringBuilder m30m = CameraDevices$CC.m30m(i16, "Expected ':' at index ", ", got '");
                                                m30m.append(decodeString.charAt(i16));
                                                m30m.append('\'');
                                                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, m30m.toString());
                                                break;
                                            }
                                            i14++;
                                        }
                                        int i17 = 0;
                                        while (i17 < 6 && (i4 = InstantKt.asciiDigitsInIsoOffsetString[i17] + i11) < decodeString.length()) {
                                            char charAt5 = decodeString.charAt(i4);
                                            int i18 = i17;
                                            if ('0' > charAt5 || charAt5 >= ':') {
                                                StringBuilder m30m2 = CameraDevices$CC.m30m(i4, "Expected an ASCII digit at index ", ", got '");
                                                m30m2.append(decodeString.charAt(i4));
                                                m30m2.append('\'');
                                                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, m30m2.toString());
                                                break;
                                            }
                                            i17 = i18 + 1;
                                        }
                                        int parseIso$twoDigitNumber6 = InstantKt.parseIso$twoDigitNumber(decodeString, i11 + 1);
                                        int parseIso$twoDigitNumber7 = length > 3 ? InstantKt.parseIso$twoDigitNumber(decodeString, i11 + 4) : 0;
                                        int parseIso$twoDigitNumber8 = length > 6 ? InstantKt.parseIso$twoDigitNumber(decodeString, i11 + 7) : 0;
                                        if (parseIso$twoDigitNumber7 > 59) {
                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected offset-minute-of-hour in 0..59, got " + parseIso$twoDigitNumber7);
                                        } else if (parseIso$twoDigitNumber8 > 59) {
                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected offset-second-of-minute in 0..59, got " + parseIso$twoDigitNumber8);
                                        } else if (parseIso$twoDigitNumber6 <= 17 || (parseIso$twoDigitNumber6 == 18 && parseIso$twoDigitNumber7 == 0 && parseIso$twoDigitNumber8 == 0)) {
                                            i3 = ((parseIso$twoDigitNumber7 * 60) + (parseIso$twoDigitNumber6 * 3600) + parseIso$twoDigitNumber8) * (charAt4 == '-' ? -1 : 1);
                                            if (1 <= parseIso$twoDigitNumber || parseIso$twoDigitNumber >= 13) {
                                                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected a month number in 1..12, got " + parseIso$twoDigitNumber);
                                            } else {
                                                if (1 <= parseIso$twoDigitNumber2) {
                                                    int i19 = i6 & 3;
                                                    if (parseIso$twoDigitNumber2 <= (parseIso$twoDigitNumber != 2 ? (parseIso$twoDigitNumber == 4 || parseIso$twoDigitNumber == 6 || parseIso$twoDigitNumber == 9 || parseIso$twoDigitNumber == 11) ? 30 : 31 : i19 == 0 && (i6 % 100 != 0 || i6 % 400 == 0) ? 29 : 28)) {
                                                        if (parseIso$twoDigitNumber3 > 23) {
                                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected hour in 0..23, got " + parseIso$twoDigitNumber3);
                                                        } else if (parseIso$twoDigitNumber4 > 59) {
                                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected minute-of-hour in 0..59, got " + parseIso$twoDigitNumber4);
                                                        } else if (parseIso$twoDigitNumber5 > 59) {
                                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected second-of-minute in 0..59, got " + parseIso$twoDigitNumber5);
                                                        } else {
                                                            long j = i6;
                                                            long j2 = 365 * j;
                                                            long j3 = (j >= 0 ? ((j + 399) / 400) + (((j + 3) / 4) - ((j + 99) / 100)) + j2 : j2 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (((parseIso$twoDigitNumber * 367) - 362) / 12) + (parseIso$twoDigitNumber2 - 1);
                                                            if (parseIso$twoDigitNumber > 2) {
                                                                j3 = (i19 != 0 || (i6 % 100 == 0 && i6 % 400 != 0)) ? j3 - 2 : (-1) + j3;
                                                            }
                                                            parseIso$parseFailure = new InstantParseResult.Success(i2, (((j3 - 719528) * 86400) + (((parseIso$twoDigitNumber4 * 60) + (parseIso$twoDigitNumber3 * 3600)) + parseIso$twoDigitNumber5)) - i3);
                                                        }
                                                    }
                                                }
                                                StringBuilder m91m = Config.CC.m91m("Expected a valid day-of-month for month ", parseIso$twoDigitNumber, " of year ", i6, ", got ");
                                                m91m.append(parseIso$twoDigitNumber2);
                                                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, m91m.toString());
                                            }
                                        } else {
                                            parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected an offset in -18:00..+18:00, got " + decodeString.subSequence(i11, decodeString.length()).toString());
                                        }
                                    }
                                } else if (charAt4 == 'Z' || charAt4 == 'z') {
                                    int i20 = i11 + 1;
                                    if (decodeString.length() == i20) {
                                        i3 = 0;
                                        if (1 <= parseIso$twoDigitNumber) {
                                        }
                                        parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected a month number in 1..12, got " + parseIso$twoDigitNumber);
                                    } else {
                                        parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Extra text after the instant at position " + i20);
                                    }
                                } else {
                                    parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "Expected the UTC offset at position " + i11 + ", got '" + charAt4 + '\'');
                                }
                            }
                        } else {
                            parseIso$parseFailure = parseIso$expect2;
                        }
                    }
                    parseIso$parseFailure = parseIso$expect;
                    break;
                } else {
                    parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "The input string is too short");
                }
            } else {
                parseIso$parseFailure = InstantKt.parseIso$parseFailure(decodeString, "A '+' or '-' sign is required for year numbers longer than 4 digits");
            }
        }
        return parseIso$parseFailure.toInstant();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        charsKt__CharKt.encodeString(instant.toString());
    }
}
