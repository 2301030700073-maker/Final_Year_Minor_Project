package org.jsoup.parser;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TokenQueue implements AutoCloseable {
    public static final char[] ElementSelectorChars = {'*', '|', '_', '-'};
    public final CharacterReader reader;

    public TokenQueue(String str) {
        this.reader = new CharacterReader(str);
    }

    public static boolean isIdent(char c) {
        return c == '-' || StringUtil.isDigit(c) || c == '_' || StringUtil.isAsciiLetter(c) || c >= 128;
    }

    public static String unescape(String str) {
        if (str.indexOf(92) == -1) {
            return str;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        char c = 0;
        for (char c2 : str.toCharArray()) {
            if (c2 != '\\') {
                borrowBuilder.append(c2);
            } else if (c == '\\') {
                borrowBuilder.append(c2);
                c = 0;
            }
            c = c2;
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public final void advance() {
        CharacterReader characterReader = this.reader;
        if (characterReader.isEmpty()) {
            return;
        }
        characterReader.advance();
    }

    public final String chompBalanced(char c, char c2) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        CharacterReader characterReader = this.reader;
        if (characterReader.bufLength - characterReader.bufPos < 1024) {
            characterReader.fillPoint = 0;
        }
        characterReader.bufferUp();
        characterReader.bufMark = characterReader.bufPos;
        char c3 = 0;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        boolean z3 = false;
        while (!characterReader.isEmpty()) {
            char consume = characterReader.consume();
            if (c3 == '\\') {
                if (consume == 'Q') {
                    z3 = true;
                } else if (consume == 'E') {
                    z3 = false;
                }
                borrowBuilder.append(consume);
            } else {
                if (consume == '\'' && consume != c && !z) {
                    z2 = !z2;
                } else if (consume == '\"' && consume != c && !z2) {
                    z = !z;
                }
                if (z2 || z || z3) {
                    borrowBuilder.append(consume);
                } else if (consume == c) {
                    i++;
                    if (i > 1) {
                        borrowBuilder.append(consume);
                    }
                } else if (consume == c2) {
                    i--;
                    if (i > 0) {
                        borrowBuilder.append(consume);
                    }
                } else {
                    borrowBuilder.append(consume);
                }
            }
            if (i <= 0) {
                break;
            }
            c3 = consume;
        }
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        if (i <= 0) {
            return releaseBuilder;
        }
        characterReader.rewindToMark();
        throw new ValidationException("Did not find balanced marker at '" + releaseBuilder + "'");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.reader.close();
    }

    public final String consumeCssIdentifier() {
        char current;
        CharacterReader characterReader = this.reader;
        if (characterReader.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CSS identifier expected, but end of input found");
            return null;
        }
        characterReader.bufferUp();
        int i = characterReader.bufPos;
        int i2 = characterReader.bufLength;
        char[] cArr = characterReader.charBuf;
        int i3 = i;
        while (i3 < i2 && isIdent(cArr[i3])) {
            i3++;
        }
        characterReader.bufPos = i3;
        String cacheString = i3 > i ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i, i3 - i) : "";
        char current2 = characterReader.current();
        if (current2 != '\\' && current2 != 0) {
            return cacheString;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        if (!cacheString.isEmpty()) {
            borrowBuilder.append(cacheString);
        }
        while (!characterReader.isEmpty()) {
            char current3 = characterReader.current();
            if (!isIdent(current3)) {
                if (current3 != 0) {
                    if (current3 != '\\') {
                        break;
                    }
                    advance();
                    if (!characterReader.isEmpty() && ((current = characterReader.current()) == '\n' || current == '\r' || current == '\f')) {
                        characterReader.unconsume();
                        break;
                    }
                    if (characterReader.isEmpty()) {
                        borrowBuilder.append((char) 65533);
                    } else {
                        char consume = characterReader.consume();
                        if (StringUtil.isHexDigit(consume)) {
                            characterReader.unconsume();
                            characterReader.bufferUp();
                            int i4 = characterReader.bufPos;
                            int i5 = characterReader.bufLength;
                            char[] cArr2 = characterReader.charBuf;
                            int i6 = i4;
                            while (i6 < i5 && i6 - i4 < 6 && StringUtil.isHexDigit(cArr2[i6])) {
                                i6++;
                            }
                            characterReader.bufPos = i6;
                            String cacheString2 = i6 > i4 ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i4, i6 - i4) : "";
                            try {
                                int parseInt = Integer.parseInt(cacheString2, 16);
                                if (parseInt == 0 || !Character.isValidCodePoint(parseInt) || Character.isSurrogate((char) parseInt)) {
                                    borrowBuilder.append((char) 65533);
                                } else {
                                    borrowBuilder.appendCodePoint(parseInt);
                                }
                                if (!characterReader.isEmpty()) {
                                    char current4 = characterReader.current();
                                    if (current4 == '\r') {
                                        advance();
                                        if (!characterReader.isEmpty() && characterReader.current() == '\n') {
                                            advance();
                                        }
                                    } else if (current4 == ' ' || current4 == '\t' || current4 == '\n' || current4 == '\r' || current4 == '\f') {
                                        advance();
                                    }
                                }
                            } catch (NumberFormatException e) {
                                throw new IllegalArgumentException("Invalid escape sequence: ".concat(cacheString2), e);
                            }
                        } else {
                            borrowBuilder.append(consume);
                        }
                    }
                } else {
                    advance();
                    borrowBuilder.append((char) 65533);
                }
            } else {
                borrowBuilder.append(characterReader.consume());
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public final boolean consumeWhitespace() {
        boolean z = false;
        while (StringUtil.isWhitespace(this.reader.current())) {
            advance();
            z = true;
        }
        return z;
    }

    public final boolean matchChomp(char c) {
        CharacterReader characterReader = this.reader;
        if (!characterReader.matches(c)) {
            return false;
        }
        characterReader.consume();
        return true;
    }

    public final String toString() {
        return this.reader.toString();
    }
}
