package org.apache.james.mime4j.field.datetime.parser;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.StringReader;
import java.util.ArrayList;
import org.apache.james.mime4j.dom.datetime.DateTime;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DateTimeParser implements DateTimeParserConstants {
    public static final int[] jj_la1_0 = {2, 0, 0, -268435456, 16, 131040, 131008};
    public static final int[] jj_la1_1 = {0, 32512, 32512, 255, 0, 0, 0};
    public int jj_gen;
    public int jj_ntk;
    public Token token;
    public final DateTimeParserTokenManager token_source;
    public final int[] jj_la1 = new int[7];
    public final ArrayList jj_expentries = new ArrayList();
    public int jj_kind = -1;

    public DateTimeParser(StringReader stringReader) {
        SlotReader slotReader = new SlotReader();
        slotReader.currentEnd = -1;
        slotReader.closed = false;
        slotReader.hadNext = false;
        slotReader.currentSlot = 0;
        slotReader.currentSlotEnd = 0;
        slotReader.slots = stringReader;
        slotReader.emptyCount = 1;
        slotReader.parent = 0;
        slotReader.groupsSize = 4096;
        slotReader.slotsSize = 4096;
        slotReader.currentSlotStack = new char[4096];
        slotReader.groups = new int[4096];
        slotReader.table = new int[4096];
        this.token_source = new DateTimeParserTokenManager(slotReader);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i = 0; i < 7; i++) {
            this.jj_la1[i] = -1;
        }
    }

    public final DateTime doParseAll() {
        int parseInt;
        int parseInt2;
        int i = this.jj_ntk;
        if (i == -1) {
            i = jj_ntk();
        }
        int[] iArr = this.jj_la1;
        switch (i) {
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
                int i2 = this.jj_ntk;
                if (i2 == -1) {
                    i2 = jj_ntk();
                }
                switch (i2) {
                    case 40:
                        jj_consume_token(40);
                        break;
                    case 41:
                        jj_consume_token(41);
                        break;
                    case 42:
                        jj_consume_token(42);
                        break;
                    case 43:
                        jj_consume_token(43);
                        break;
                    case 44:
                        jj_consume_token(44);
                        break;
                    case 45:
                        jj_consume_token(45);
                        break;
                    case 46:
                        jj_consume_token(46);
                        break;
                    default:
                        iArr[2] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                }
                String str = this.token.image;
                jj_consume_token(3);
                break;
            default:
                iArr[1] = this.jj_gen;
                break;
        }
        int parseInt3 = Integer.parseInt(jj_consume_token(27).image, 10);
        int i3 = this.jj_ntk;
        if (i3 == -1) {
            i3 = jj_ntk();
        }
        int i4 = 3;
        switch (i3) {
            case 28:
                jj_consume_token(28);
                i4 = 1;
                break;
            case 29:
                jj_consume_token(29);
                i4 = 2;
                break;
            case 30:
                jj_consume_token(30);
                break;
            case 31:
                jj_consume_token(31);
                i4 = 4;
                break;
            case 32:
                jj_consume_token(32);
                i4 = 5;
                break;
            case 33:
                jj_consume_token(33);
                i4 = 6;
                break;
            case 34:
                jj_consume_token(34);
                i4 = 7;
                break;
            case 35:
                jj_consume_token(35);
                i4 = 8;
                break;
            case 36:
                jj_consume_token(36);
                i4 = 9;
                break;
            case 37:
                jj_consume_token(37);
                i4 = 10;
                break;
            case 38:
                jj_consume_token(38);
                i4 = 11;
                break;
            case 39:
                jj_consume_token(39);
                i4 = 12;
                break;
            default:
                iArr[3] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
        String str2 = jj_consume_token(27).image;
        if (str2.length() == 2) {
            str2 = str2.charAt(0) > '6' ? "19".concat(str2) : "20".concat(str2);
        }
        String str3 = str2;
        int parseInt4 = Integer.parseInt(jj_consume_token(27).image, 10);
        jj_consume_token(4);
        int parseInt5 = Integer.parseInt(jj_consume_token(27).image, 10);
        int i5 = this.jj_ntk;
        if (i5 == -1) {
            i5 = jj_ntk();
        }
        if (i5 != 4) {
            iArr[4] = this.jj_gen;
            parseInt = 0;
        } else {
            jj_consume_token(4);
            parseInt = Integer.parseInt(jj_consume_token(27).image, 10);
        }
        int i6 = this.jj_ntk;
        if (i6 == -1) {
            i6 = jj_ntk();
        }
        switch (i6) {
            case 5:
                parseInt2 = Integer.parseInt(jj_consume_token(27).image, 10) * (jj_consume_token(5).image.equals("-") ? -1 : 1);
                break;
            case 6:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
            case BasicTextKt.ShiftMeta /* 12 */:
            case 13:
            case 14:
            case OffsetKt.Horizontal /* 15 */:
            case 16:
                int i7 = this.jj_ntk;
                if (i7 == -1) {
                    i7 = jj_ntk();
                }
                int i8 = -5;
                switch (i7) {
                    case 6:
                        jj_consume_token(6);
                        i8 = 0;
                        parseInt2 = i8 * 100;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        jj_consume_token(7);
                        i8 = 0;
                        parseInt2 = i8 * 100;
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        jj_consume_token(8);
                        parseInt2 = i8 * 100;
                        break;
                    case 9:
                        jj_consume_token(9);
                        i8 = -4;
                        parseInt2 = i8 * 100;
                        break;
                    case 10:
                        jj_consume_token(10);
                        i8 = -6;
                        parseInt2 = i8 * 100;
                        break;
                    case 11:
                        jj_consume_token(11);
                        parseInt2 = i8 * 100;
                        break;
                    case BasicTextKt.ShiftMeta /* 12 */:
                        jj_consume_token(12);
                        i8 = -7;
                        parseInt2 = i8 * 100;
                        break;
                    case 13:
                        jj_consume_token(13);
                        i8 = -6;
                        parseInt2 = i8 * 100;
                        break;
                    case 14:
                        jj_consume_token(14);
                        i8 = -8;
                        parseInt2 = i8 * 100;
                        break;
                    case OffsetKt.Horizontal /* 15 */:
                        jj_consume_token(15);
                        i8 = -7;
                        parseInt2 = i8 * 100;
                        break;
                    case 16:
                        jj_consume_token(16).image.charAt(0);
                        i8 = 0;
                        parseInt2 = i8 * 100;
                        break;
                    default:
                        iArr[6] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                }
            default:
                iArr[5] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
        DateTime dateTime = new DateTime(str3, i4, parseInt3, parseInt4, parseInt5, parseInt, parseInt2);
        jj_consume_token(0);
        return dateTime;
    }

    public final Token jj_consume_token(int i) {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        Token token3 = this.token;
        if (token3.kind == i) {
            this.jj_gen++;
            return token3;
        }
        this.token = token;
        this.jj_kind = i;
        ArrayList arrayList = this.jj_expentries;
        arrayList.clear();
        boolean[] zArr = new boolean[49];
        int i2 = this.jj_kind;
        if (i2 >= 0) {
            zArr[i2] = true;
            this.jj_kind = -1;
        }
        for (int i3 = 0; i3 < 7; i3++) {
            if (this.jj_la1[i3] == this.jj_gen) {
                for (int i4 = 0; i4 < 32; i4++) {
                    int i5 = 1 << i4;
                    if ((jj_la1_0[i3] & i5) != 0) {
                        zArr[i4] = true;
                    }
                    if ((jj_la1_1[i3] & i5) != 0) {
                        zArr[i4 + 32] = true;
                    }
                }
            }
        }
        for (int i6 = 0; i6 < 49; i6++) {
            if (zArr[i6]) {
                arrayList.add(new int[]{i6});
            }
        }
        int[][] iArr = new int[arrayList.size()][];
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            iArr[i7] = (int[]) arrayList.get(i7);
        }
        Token token4 = this.token;
        ParseException parseException = new ParseException("");
        parseException.eol = System.getProperty("line.separator", "\n");
        parseException.specialConstructor = true;
        parseException.currentToken = token4;
        parseException.expectedTokenSequences = iArr;
        parseException.tokenImage = DateTimeParserConstants.tokenImage;
        throw parseException;
    }

    public final int jj_ntk() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            int i = token2.kind;
            this.jj_ntk = i;
            return i;
        }
        Token nextToken = this.token_source.getNextToken();
        token.next = nextToken;
        int i2 = nextToken.kind;
        this.jj_ntk = i2;
        return i2;
    }
}
