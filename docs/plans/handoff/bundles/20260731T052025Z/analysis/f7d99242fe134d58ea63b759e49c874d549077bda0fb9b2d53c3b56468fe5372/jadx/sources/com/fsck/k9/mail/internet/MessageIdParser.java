package com.fsck.k9.mail.internet;

import java.util.ArrayList;
import kotlin.collections.ArraysKt___ArraysKt;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageIdParser {
    public final /* synthetic */ int $r8$classId;
    public int currentIndex;
    public final int endIndex;
    public final String input;

    public MessageIdParser(String str, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                str.getClass();
                this.input = str;
                this.endIndex = str.length();
                break;
            default:
                this.input = str;
                this.endIndex = str.length();
                break;
        }
    }

    public static final ArrayList parseList(String str) {
        String readDotAtom;
        MessageIdParser messageIdParser = new MessageIdParser(str, 0);
        if (str.length() == 0) {
            throw new MimeHeaderParserException("Expected message identifier", 0);
        }
        ArrayList arrayList = new ArrayList();
        while (!messageIdParser.endReached()) {
            messageIdParser.skipCfws();
            messageIdParser.expect('<');
            String readDotAtom2 = messageIdParser.readDotAtom();
            messageIdParser.expect('@');
            if (messageIdParser.peek() == '[') {
                int i = messageIdParser.currentIndex;
                messageIdParser.expect('[');
                while (true) {
                    char peek = messageIdParser.peek();
                    if (('!' > peek || peek >= '[') && ('^' > peek || peek >= 127)) {
                        break;
                    }
                    messageIdParser.skip();
                }
                messageIdParser.expect(']');
                readDotAtom = str.substring(i, messageIdParser.currentIndex);
            } else {
                readDotAtom = messageIdParser.readDotAtom();
            }
            messageIdParser.expect('>');
            messageIdParser.skipCfws();
            arrayList.add("<" + readDotAtom2 + "@" + readDotAtom + ">");
        }
        return arrayList;
    }

    public final boolean endReached() {
        switch (this.$r8$classId) {
            case 0:
                if (this.currentIndex >= this.endIndex) {
                }
                break;
            default:
                if (this.currentIndex >= this.endIndex) {
                }
                break;
        }
        return false;
    }

    public final void expect(char c) {
        switch (this.$r8$classId) {
            case 0:
                String str = "'" + c + "'";
                if (endReached() || peek() != c) {
                    throw new MimeHeaderParserException("Expected ".concat(str), this.currentIndex);
                }
                skip();
                return;
            default:
                if (!endReached() && peek() == c) {
                    this.currentIndex++;
                    return;
                }
                throw new MimeHeaderParserException("Expected '" + c + "' (" + ((int) c) + ")", this.currentIndex);
        }
    }

    public final char peek() {
        int i = this.$r8$classId;
        String str = this.input;
        switch (i) {
            case 0:
                int i2 = this.currentIndex;
                int length = str.length();
                int i3 = this.currentIndex;
                if (i2 < length) {
                    return str.charAt(i3);
                }
                throw new MimeHeaderParserException("End of input reached unexpectedly", i3);
            default:
                int i4 = this.currentIndex;
                int length2 = str.length();
                int i5 = this.currentIndex;
                if (i4 < length2) {
                    return str.charAt(i5);
                }
                throw new MimeHeaderParserException("End of input reached unexpectedly", i5);
        }
    }

    public char read() {
        int i = this.currentIndex;
        String str = this.input;
        int length = str.length();
        int i2 = this.currentIndex;
        if (i >= length) {
            throw new MimeHeaderParserException("End of input reached unexpectedly", i2);
        }
        char charAt = str.charAt(i2);
        this.currentIndex++;
        return charAt;
    }

    public String readDotAtom() {
        int i = this.currentIndex;
        while (!endReached() && JisSupport.isAText(peek())) {
            skip();
            if (peek() == '.') {
                expect('.');
                if (endReached() || !JisSupport.isAText(peek())) {
                    throw new MimeHeaderParserException("Expected atext", this.currentIndex);
                }
                skip();
            }
            if (!JisSupport.isAText(peek())) {
                return this.input.substring(i, this.currentIndex);
            }
        }
        throw new MimeHeaderParserException("Expected atext", this.currentIndex);
    }

    public void readExtendedParameterValueInto(Buffer buffer) {
        while (!endReached() && peek() != ';') {
            char read = read();
            if (read == '%') {
                buffer.m1053writeByte((readHexDigit() << 4) + readHexDigit());
            } else if (!JisSupport.isAttributeChar(read)) {
                return;
            } else {
                buffer.m1053writeByte((int) read);
            }
        }
    }

    public String readHeaderValue() {
        char peek;
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z = false;
            while (!endReached() && (peek = peek()) != ';') {
                if (JisSupport.isWsp(peek) || peek == '\r' || peek == '\n') {
                    while (!endReached()) {
                        char peek2 = peek();
                        if (!JisSupport.isWsp(peek2) && peek2 != '\r' && peek2 != '\n') {
                            break;
                        }
                        this.currentIndex++;
                    }
                    z = true;
                } else if (peek == '(') {
                    skipComment();
                } else {
                    if (sb.length() > 0 && z) {
                        sb.append(' ');
                    }
                    sb.append(peek);
                    this.currentIndex++;
                }
            }
        }
        return sb.toString();
    }

    public int readHexDigit() {
        char read = read();
        if ('0' <= read && read < ':') {
            return read - '0';
        }
        if ('a' <= read && read < 'g') {
            return read - 'W';
        }
        if ('A' > read || read >= 'G') {
            throw new MimeHeaderParserException("Expected hex character", this.currentIndex - 1);
        }
        return read - '7';
    }

    public String readToken() {
        skipCFWS();
        int i = this.currentIndex;
        while (!endReached()) {
            char peek = peek();
            if (!JisSupport.isVChar(peek) || ArraysKt___ArraysKt.contains(JisSupport.TSPECIALS, peek)) {
                break;
            }
            this.currentIndex++;
        }
        int i2 = this.currentIndex;
        if (i != i2) {
            return this.input.substring(i, i2);
        }
        throw new MimeHeaderParserException("At least one character expected in token", i2);
    }

    public String readUntil() {
        int i = this.currentIndex;
        while (!endReached() && peek() != '\'') {
            this.currentIndex++;
        }
        return this.input.substring(i, this.currentIndex);
    }

    public void skip() {
        this.currentIndex++;
    }

    public void skipCFWS() {
        while (!endReached()) {
            char peek = peek();
            if (JisSupport.isWsp(peek) || peek == '\r' || peek == '\n') {
                this.currentIndex++;
            } else if (peek != '(') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public void skipCfws() {
        do {
            int i = this.currentIndex;
            skipFws();
            if (!endReached() && peek() == '(') {
                expect('(');
                int i2 = 1;
                do {
                    skipFws();
                    char peek = peek();
                    if (peek == '(') {
                        expect('(');
                        i2++;
                    } else {
                        if (peek == '\\') {
                            expect('\\');
                            if (!endReached()) {
                                char peek2 = peek();
                                if (JisSupport.isVChar(peek2) || JisSupport.isWsp(peek2)) {
                                    skip();
                                }
                            }
                            throw new MimeHeaderParserException("Expected VCHAR or WSP", this.currentIndex);
                        }
                        if (('!' > peek || peek >= '(') && (('*' > peek || peek >= '\\') && (']' > peek || peek >= 127))) {
                            expect(')');
                            i2--;
                        } else {
                            skip();
                        }
                    }
                } while (i2 > 0);
            }
            if (this.currentIndex == i) {
                return;
            }
        } while (!endReached());
    }

    public void skipComment() {
        expect('(');
        int i = 1;
        while (!endReached() && i > 0) {
            char read = read();
            if (read == '(') {
                i++;
            } else if (read == ')') {
                i--;
            } else if (read == '\\') {
                this.currentIndex++;
            } else if (read != '\r' && read != '\n' && !JisSupport.isWsp(read) && !JisSupport.isVChar(read)) {
                this.currentIndex--;
                throw new MimeHeaderParserException("Unexpected '" + read + "' (" + ((int) read) + ") in comment", this.currentIndex);
            }
        }
    }

    public void skipFws() {
        while (!endReached() && JisSupport.isWsp(peek())) {
            skip();
        }
        if (endReached() || peek() != '\r') {
            return;
        }
        expect('\r', "CR");
        expect('\n', "LF");
        if (endReached() || !JisSupport.isWsp(peek())) {
            throw new MimeHeaderParserException("Expected WSP", this.currentIndex);
        }
        skip();
        while (!endReached() && JisSupport.isWsp(peek())) {
            skip();
        }
    }

    public void expect(char c, String str) {
        if (!endReached() && peek() == c) {
            skip();
            return;
        }
        throw new MimeHeaderParserException("Expected ".concat(str), this.currentIndex);
    }
}
