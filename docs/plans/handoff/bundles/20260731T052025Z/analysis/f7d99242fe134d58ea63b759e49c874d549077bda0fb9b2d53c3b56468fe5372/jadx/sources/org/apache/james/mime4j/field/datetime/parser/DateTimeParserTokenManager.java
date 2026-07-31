package org.apache.james.mime4j.field.datetime.parser;

import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import java.io.IOException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DateTimeParserTokenManager implements DateTimeParserConstants {
    public static int commentNest;
    public char curChar;
    public int curLexState;
    public StringBuilder image;
    public final SlotReader input_stream;
    public final StringBuilder jjimage;
    public int jjimageLen;
    public int jjmatchedKind;
    public int jjmatchedPos;
    public int jjnewStateCnt;
    public int jjround;
    public final int[] jjrounds = new int[4];
    public final int[] jjstateSet = new int[8];
    public static final long[] jjbitVec0 = {0, 0, -1, -1};
    public static final String[] jjstrLiteralImages = {"", "\r", "\n", ",", ":", null, "UT", "GMT", "EST", "EDT", "CST", "CDT", "MST", "MDT", "PST", "PDT", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    public static final long[] jjtoToken = {140737354268671L};
    public static final long[] jjtoSkip = {655360};
    public static final long[] jjtoSpecial = {131072};

    public DateTimeParserTokenManager(SlotReader slotReader) {
        StringBuilder sb = new StringBuilder();
        this.jjimage = sb;
        this.image = sb;
        this.curLexState = 0;
        this.input_stream = slotReader;
    }

    public final void ReInitRounds() {
        this.jjround = -2147483647;
        int i = 4;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            this.jjrounds[i2] = Integer.MIN_VALUE;
            i = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0458  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.james.mime4j.field.datetime.parser.Token getNextToken() {
        /*
            Method dump skipped, instructions count: 1296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.field.datetime.parser.DateTimeParserTokenManager.getNextToken():org.apache.james.mime4j.field.datetime.parser.Token");
    }

    public final void jjCheckNAdd(int i) {
        int[] iArr = this.jjrounds;
        int i2 = iArr[i];
        int i3 = this.jjround;
        if (i2 != i3) {
            int i4 = this.jjnewStateCnt;
            this.jjnewStateCnt = i4 + 1;
            this.jjstateSet[i4] = i;
            iArr[i] = i3;
        }
    }

    public final Token jjFillToken() {
        String str = jjstrLiteralImages[this.jjmatchedKind];
        SlotReader slotReader = this.input_stream;
        if (str == null) {
            str = slotReader.GetImage();
        }
        int[] iArr = slotReader.groups;
        int i = slotReader.currentGroup;
        int i2 = iArr[i];
        int[] iArr2 = (int[]) slotReader.table;
        int i3 = iArr2[i];
        int i4 = slotReader.currentEnd;
        int i5 = iArr[i4];
        int i6 = iArr2[i4];
        int i7 = this.jjmatchedKind;
        Token token = new Token();
        token.kind = i7;
        token.image = str;
        token.beginLine = i2;
        token.beginColumn = i3;
        return token;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x008e, code lost:
    
        if (r11 > 5) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int jjMoveNfa_0(int r25) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.field.datetime.parser.DateTimeParserTokenManager.jjMoveNfa_0(int):int");
    }

    public final int jjMoveStringLiteralDfa1_0(long j) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == 'A') {
                return jjMoveStringLiteralDfa2_0(j, 35190009233408L);
            }
            if (readChar == 'H') {
                return jjMoveStringLiteralDfa2_0(j, 8796093022208L);
            }
            if (readChar == 'M') {
                return jjMoveStringLiteralDfa2_0(j, 128L);
            }
            if (readChar == 'a') {
                return jjMoveStringLiteralDfa2_0(j, 35190009233408L);
            }
            if (readChar == 'c') {
                return jjMoveStringLiteralDfa2_0(j, 137438953472L);
            }
            if (readChar == 'e') {
                return jjMoveStringLiteralDfa2_0(j, 5017058672640L);
            }
            if (readChar == 'h') {
                return jjMoveStringLiteralDfa2_0(j, 8796093022208L);
            }
            if (readChar == 'r') {
                return jjMoveStringLiteralDfa2_0(j, 17592186044416L);
            }
            if (readChar == 'u') {
                return jjMoveStringLiteralDfa2_0(j, 72627896975360L);
            }
            if (readChar == 'O') {
                return jjMoveStringLiteralDfa2_0(j, 1374389534720L);
            }
            if (readChar == 'P') {
                return jjMoveStringLiteralDfa2_0(j, 2147483648L);
            }
            if (readChar == 'o') {
                return jjMoveStringLiteralDfa2_0(j, 1374389534720L);
            }
            if (readChar == 'p') {
                return jjMoveStringLiteralDfa2_0(j, 2147483648L);
            }
            switch (readChar) {
                case 'C':
                    return jjMoveStringLiteralDfa2_0(j, 137438953472L);
                case 'D':
                    return jjMoveStringLiteralDfa2_0(j, 43520L);
                case 'E':
                    return jjMoveStringLiteralDfa2_0(j, 5017058672640L);
                default:
                    switch (readChar) {
                        case 'R':
                            return jjMoveStringLiteralDfa2_0(j, 17592186044416L);
                        case 'S':
                            return jjMoveStringLiteralDfa2_0(j, 21760L);
                        case 'T':
                            if ((j & 64) != 0) {
                                this.jjmatchedKind = 6;
                                this.jjmatchedPos = 1;
                                break;
                            }
                            break;
                        case 'U':
                            return jjMoveStringLiteralDfa2_0(j, 72627896975360L);
                    }
                    return jjMoveNfa_0(1);
            }
        } catch (IOException unused) {
            return jjMoveNfa_0(0);
        }
    }

    public final int jjMoveStringLiteralDfa2_0(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return jjMoveNfa_0(1);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            switch (readChar) {
                case 'B':
                    if ((j3 & 536870912) != 0) {
                        this.jjmatchedKind = 29;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'C':
                    if ((j3 & 549755813888L) != 0) {
                        this.jjmatchedKind = 39;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'D':
                    if ((j3 & 4398046511104L) != 0) {
                        this.jjmatchedKind = 42;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'E':
                    if ((j3 & 2199023255552L) != 0) {
                        this.jjmatchedKind = 41;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'G':
                    if ((j3 & 34359738368L) != 0) {
                        this.jjmatchedKind = 35;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'I':
                    if ((j3 & 17592186044416L) != 0) {
                        this.jjmatchedKind = 44;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'L':
                    if ((j3 & 17179869184L) != 0) {
                        this.jjmatchedKind = 34;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'N':
                    if ((j3 & 268435456) == 0) {
                        if ((j3 & 8589934592L) == 0) {
                            if ((j3 & 1099511627776L) == 0) {
                                if ((j3 & 70368744177664L) != 0) {
                                    this.jjmatchedKind = 46;
                                    this.jjmatchedPos = 2;
                                    break;
                                }
                            } else {
                                this.jjmatchedKind = 40;
                                this.jjmatchedPos = 2;
                                break;
                            }
                        } else {
                            this.jjmatchedKind = 33;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 28;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'P':
                    if ((j3 & 68719476736L) != 0) {
                        this.jjmatchedKind = 36;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'R':
                    if ((j3 & 1073741824) == 0) {
                        if ((j3 & 2147483648L) != 0) {
                            this.jjmatchedKind = 31;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 30;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'T':
                    if ((128 & j3) == 0) {
                        if ((256 & j3) == 0) {
                            if ((512 & j3) == 0) {
                                if ((1024 & j3) == 0) {
                                    if ((2048 & j3) == 0) {
                                        if ((4096 & j3) == 0) {
                                            if ((8192 & j3) == 0) {
                                                if ((16384 & j3) == 0) {
                                                    if ((32768 & j3) == 0) {
                                                        if ((j3 & 137438953472L) == 0) {
                                                            if ((j3 & 35184372088832L) != 0) {
                                                                this.jjmatchedKind = 45;
                                                                this.jjmatchedPos = 2;
                                                                break;
                                                            }
                                                        } else {
                                                            this.jjmatchedKind = 37;
                                                            this.jjmatchedPos = 2;
                                                            break;
                                                        }
                                                    } else {
                                                        this.jjmatchedKind = 15;
                                                        this.jjmatchedPos = 2;
                                                        break;
                                                    }
                                                } else {
                                                    this.jjmatchedKind = 14;
                                                    this.jjmatchedPos = 2;
                                                    break;
                                                }
                                            } else {
                                                this.jjmatchedKind = 13;
                                                this.jjmatchedPos = 2;
                                                break;
                                            }
                                        } else {
                                            this.jjmatchedKind = 12;
                                            this.jjmatchedPos = 2;
                                            break;
                                        }
                                    } else {
                                        this.jjmatchedKind = 11;
                                        this.jjmatchedPos = 2;
                                        break;
                                    }
                                } else {
                                    this.jjmatchedKind = 10;
                                    this.jjmatchedPos = 2;
                                    break;
                                }
                            } else {
                                this.jjmatchedKind = 9;
                                this.jjmatchedPos = 2;
                                break;
                            }
                        } else {
                            this.jjmatchedKind = 8;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 7;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'U':
                    if ((j3 & 8796093022208L) != 0) {
                        this.jjmatchedKind = 43;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'V':
                    if ((j3 & 274877906944L) != 0) {
                        this.jjmatchedKind = 38;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'Y':
                    if ((j3 & 4294967296L) != 0) {
                        this.jjmatchedKind = 32;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'b':
                    if ((j3 & 536870912) != 0) {
                        this.jjmatchedKind = 29;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'c':
                    if ((j3 & 549755813888L) != 0) {
                        this.jjmatchedKind = 39;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'd':
                    if ((j3 & 4398046511104L) != 0) {
                        this.jjmatchedKind = 42;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'e':
                    if ((j3 & 2199023255552L) != 0) {
                        this.jjmatchedKind = 41;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'g':
                    if ((j3 & 34359738368L) != 0) {
                        this.jjmatchedKind = 35;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'i':
                    if ((j3 & 17592186044416L) != 0) {
                        this.jjmatchedKind = 44;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'l':
                    if ((j3 & 17179869184L) != 0) {
                        this.jjmatchedKind = 34;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'n':
                    if ((j3 & 268435456) == 0) {
                        if ((j3 & 8589934592L) == 0) {
                            if ((j3 & 1099511627776L) == 0) {
                                if ((j3 & 70368744177664L) != 0) {
                                    this.jjmatchedKind = 46;
                                    this.jjmatchedPos = 2;
                                    break;
                                }
                            } else {
                                this.jjmatchedKind = 40;
                                this.jjmatchedPos = 2;
                                break;
                            }
                        } else {
                            this.jjmatchedKind = 33;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 28;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'p':
                    if ((j3 & 68719476736L) != 0) {
                        this.jjmatchedKind = 36;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'r':
                    if ((j3 & 1073741824) == 0) {
                        if ((j3 & 2147483648L) != 0) {
                            this.jjmatchedKind = 31;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 30;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 't':
                    if ((j3 & 137438953472L) == 0) {
                        if ((j3 & 35184372088832L) != 0) {
                            this.jjmatchedKind = 45;
                            this.jjmatchedPos = 2;
                            break;
                        }
                    } else {
                        this.jjmatchedKind = 37;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'u':
                    if ((j3 & 8796093022208L) != 0) {
                        this.jjmatchedKind = 43;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'v':
                    if ((j3 & 274877906944L) != 0) {
                        this.jjmatchedKind = 38;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
                case 'y':
                    if ((j3 & 4294967296L) != 0) {
                        this.jjmatchedKind = 32;
                        this.jjmatchedPos = 2;
                        break;
                    }
                    break;
            }
            return jjMoveNfa_0(2);
        } catch (IOException unused) {
            return jjMoveNfa_0(1);
        }
    }
}
