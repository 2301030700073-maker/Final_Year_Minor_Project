package kotlinx.serialization.internal;

import androidx.compose.animation.core.Animation;
import androidx.work.Data$$ExternalSyntheticLambda0;
import com.caverock.androidsvg.IntegerParser;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Instant;
import kotlin.time.InstantKt;
import kotlin.time.InstantParseResult;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InstantSerializer implements KSerializer {
    public static final InstantSerializer INSTANCE = new InstantSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Instant", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        InstantParseResult parseIso$expect;
        int i2;
        int i3;
        int i4;
        char charAt;
        char charAt2;
        Instant instant = Instant.MIN;
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        if (decodeString.length() == 0) {
            parseIso$expect = new ParseError("An empty string is not a valid Instant", decodeString);
        } else {
            char charAt3 = decodeString.charAt(0);
            if (charAt3 == '+' || charAt3 == '-') {
                i = 1;
            } else {
                i = 0;
                charAt3 = ' ';
            }
            int i5 = 0;
            int i6 = i;
            while (i6 < decodeString.length() && '0' <= (charAt2 = decodeString.charAt(i6)) && charAt2 < ':') {
                i5 = (i5 * 10) + (decodeString.charAt(i6) - '0');
                i6++;
            }
            int i7 = i6 - i;
            if (i7 > 10) {
                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected at most 10 digits for the year number, got " + i7 + " digits");
            } else if (i7 == 10 && Intrinsics.compare((int) decodeString.charAt(i), 50) >= 0) {
                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected at most 9 digits for the year number or year 1000000000, got " + i7 + " digits");
            } else if (i7 < 4) {
                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "The year number must be padded to 4 digits, got " + i7 + " digits");
            } else if (charAt3 == '+' && i7 == 4) {
                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
            } else if (charAt3 != ' ' || i7 == 4) {
                if (charAt3 == '-') {
                    i5 = -i5;
                }
                int i8 = i6 + 16;
                if (decodeString.length() >= i8) {
                    ParseError parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "'-'", i6, new Data$$ExternalSyntheticLambda0(22));
                    if (parseIso$expect2 == null && (parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "'-'", i6 + 3, new Data$$ExternalSyntheticLambda0(23))) == null && (parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "'T' or 't'", i6 + 6, new Data$$ExternalSyntheticLambda0(24))) == null && (parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "':'", i6 + 9, new Data$$ExternalSyntheticLambda0(25))) == null) {
                        parseIso$expect = InstantKt.parseIso$expect(decodeString, "':'", i6 + 12, new Data$$ExternalSyntheticLambda0(26));
                        if (parseIso$expect == null) {
                            for (int i9 = 0; i9 < 10; i9++) {
                                parseIso$expect2 = InstantKt.parseIso$expect(decodeString, "an ASCII digit", InstantKt.asciiDigitPositionsInIsoStringAfterYear[i9] + i6, new Data$$ExternalSyntheticLambda0(27));
                                if (parseIso$expect2 == null) {
                                }
                            }
                            int parseIso$twoDigitNumber = InstantKt.parseIso$twoDigitNumber(i6 + 1, decodeString);
                            int parseIso$twoDigitNumber2 = InstantKt.parseIso$twoDigitNumber(i6 + 4, decodeString);
                            int parseIso$twoDigitNumber3 = InstantKt.parseIso$twoDigitNumber(i6 + 7, decodeString);
                            int parseIso$twoDigitNumber4 = InstantKt.parseIso$twoDigitNumber(i6 + 10, decodeString);
                            int parseIso$twoDigitNumber5 = InstantKt.parseIso$twoDigitNumber(i6 + 13, decodeString);
                            int i10 = i6 + 15;
                            if (decodeString.charAt(i10) == '.') {
                                i10 = i8;
                                int i11 = 0;
                                while (i10 < decodeString.length() && '0' <= (charAt = decodeString.charAt(i10)) && charAt < ':') {
                                    i11 = (i11 * 10) + (decodeString.charAt(i10) - '0');
                                    i10++;
                                }
                                int i12 = i10 - i8;
                                if (1 > i12 || i12 >= 10) {
                                    parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "1..9 digits are supported for the fraction of the second, got " + i12 + " digits");
                                } else {
                                    i2 = i11 * InstantKt.POWERS_OF_TEN[9 - i12];
                                }
                            } else {
                                i2 = 0;
                            }
                            if (i10 >= decodeString.length()) {
                                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "The UTC offset at the end of the string is missing");
                            } else {
                                char charAt4 = decodeString.charAt(i10);
                                if (charAt4 == '+' || charAt4 == '-') {
                                    int length = decodeString.length() - i10;
                                    if (length > 9) {
                                        parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "The UTC offset string \"" + InstantKt.truncateForErrorMessage(16, decodeString.subSequence(i10, decodeString.length()).toString()) + "\" is too long");
                                    } else if (length % 3 != 0) {
                                        parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Invalid UTC offset string \"" + decodeString.subSequence(i10, decodeString.length()).toString() + '\"');
                                    } else {
                                        int i13 = 0;
                                        for (int i14 = 2; i13 < i14; i14 = 2) {
                                            int i15 = i10 + InstantKt.colonsInIsoOffsetString[i13];
                                            if (i15 >= decodeString.length()) {
                                                break;
                                            }
                                            if (decodeString.charAt(i15) != ':') {
                                                StringBuilder m20m = Animation.CC.m20m(i15, "Expected ':' at index ", ", got '");
                                                m20m.append(decodeString.charAt(i15));
                                                m20m.append('\'');
                                                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, m20m.toString());
                                                break;
                                            }
                                            i13++;
                                        }
                                        int i16 = 0;
                                        while (i16 < 6 && (i4 = InstantKt.asciiDigitsInIsoOffsetString[i16] + i10) < decodeString.length()) {
                                            char charAt5 = decodeString.charAt(i4);
                                            int i17 = i16;
                                            if ('0' > charAt5 || charAt5 >= ':') {
                                                StringBuilder m20m2 = Animation.CC.m20m(i4, "Expected an ASCII digit at index ", ", got '");
                                                m20m2.append(decodeString.charAt(i4));
                                                m20m2.append('\'');
                                                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, m20m2.toString());
                                                break;
                                            }
                                            i16 = i17 + 1;
                                        }
                                        int parseIso$twoDigitNumber6 = InstantKt.parseIso$twoDigitNumber(i10 + 1, decodeString);
                                        int parseIso$twoDigitNumber7 = length > 3 ? InstantKt.parseIso$twoDigitNumber(i10 + 4, decodeString) : 0;
                                        int parseIso$twoDigitNumber8 = length > 6 ? InstantKt.parseIso$twoDigitNumber(i10 + 7, decodeString) : 0;
                                        if (parseIso$twoDigitNumber7 > 59) {
                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected offset-minute-of-hour in 0..59, got " + parseIso$twoDigitNumber7);
                                        } else if (parseIso$twoDigitNumber8 > 59) {
                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected offset-second-of-minute in 0..59, got " + parseIso$twoDigitNumber8);
                                        } else if (parseIso$twoDigitNumber6 <= 17 || (parseIso$twoDigitNumber6 == 18 && parseIso$twoDigitNumber7 == 0 && parseIso$twoDigitNumber8 == 0)) {
                                            i3 = ((parseIso$twoDigitNumber7 * 60) + (parseIso$twoDigitNumber6 * 3600) + parseIso$twoDigitNumber8) * (charAt4 == '-' ? -1 : 1);
                                            if (1 <= parseIso$twoDigitNumber || parseIso$twoDigitNumber >= 13) {
                                                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected a month number in 1..12, got " + parseIso$twoDigitNumber);
                                            } else {
                                                if (1 <= parseIso$twoDigitNumber2) {
                                                    int i18 = i5 & 3;
                                                    if (parseIso$twoDigitNumber2 <= (parseIso$twoDigitNumber != 2 ? (parseIso$twoDigitNumber == 4 || parseIso$twoDigitNumber == 6 || parseIso$twoDigitNumber == 9 || parseIso$twoDigitNumber == 11) ? 30 : 31 : i18 == 0 && (i5 % 100 != 0 || i5 % 400 == 0) ? 29 : 28)) {
                                                        if (parseIso$twoDigitNumber3 > 23) {
                                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected hour in 0..23, got " + parseIso$twoDigitNumber3);
                                                        } else if (parseIso$twoDigitNumber4 > 59) {
                                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected minute-of-hour in 0..59, got " + parseIso$twoDigitNumber4);
                                                        } else if (parseIso$twoDigitNumber5 > 59) {
                                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected second-of-minute in 0..59, got " + parseIso$twoDigitNumber5);
                                                        } else {
                                                            long j = i5;
                                                            long j2 = 365 * j;
                                                            long j3 = (j >= 0 ? ((j + 399) / 400) + (((j + 3) / 4) - ((j + 99) / 100)) + j2 : j2 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (((parseIso$twoDigitNumber * 367) - 362) / 12) + (parseIso$twoDigitNumber2 - 1);
                                                            if (parseIso$twoDigitNumber > 2) {
                                                                j3 = (i18 != 0 || (i5 % 100 == 0 && i5 % 400 != 0)) ? j3 - 2 : (-1) + j3;
                                                            }
                                                            parseIso$expect = new IntegerParser((((j3 - 719528) * 86400) + (((parseIso$twoDigitNumber4 * 60) + (parseIso$twoDigitNumber3 * 3600)) + parseIso$twoDigitNumber5)) - i3, i2);
                                                        }
                                                    }
                                                }
                                                StringBuilder m = Animation.CC.m(parseIso$twoDigitNumber, i5, "Expected a valid day-of-month for month ", " of year ", ", got ");
                                                m.append(parseIso$twoDigitNumber2);
                                                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, m.toString());
                                            }
                                        } else {
                                            parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected an offset in -18:00..+18:00, got " + decodeString.subSequence(i10, decodeString.length()).toString());
                                        }
                                    }
                                } else if (charAt4 == 'Z' || charAt4 == 'z') {
                                    int i19 = i10 + 1;
                                    if (decodeString.length() == i19) {
                                        i3 = 0;
                                        if (1 <= parseIso$twoDigitNumber) {
                                        }
                                        parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected a month number in 1..12, got " + parseIso$twoDigitNumber);
                                    } else {
                                        parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Extra text after the instant at position " + i19);
                                    }
                                } else {
                                    parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "Expected the UTC offset at position " + i10 + ", got '" + charAt4 + '\'');
                                }
                            }
                        }
                    }
                    parseIso$expect = parseIso$expect2;
                    break;
                } else {
                    parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "The input string is too short");
                }
            } else {
                parseIso$expect = InstantKt.parseIso$parseFailure(decodeString, "A '+' or '-' sign is required for year numbers longer than 4 digits");
            }
        }
        return parseIso$expect.toInstant();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        uuidKt.encodeString(instant.toString());
    }
}
