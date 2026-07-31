package org.mozilla.javascript;

import j$.util.Map;
import j$.util.stream.IntStream;
import java.io.IOException;
import java.io.Reader;
import java.math.BigInteger;
import java.util.HashMap;
import org.mozilla.javascript.Parser;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class TokenStream implements Parser.CurrentPositionReporter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final char BYTE_ORDER_MARK = 65279;
    private static final int EOF_CHAR = -1;
    private static final char NUMERIC_SEPARATOR = '_';
    private static final int REPORT_NUMBER_FORMAT_ERROR = -2;
    private BigInteger bigInt;
    Token.CommentType commentType;
    int cursor;
    private boolean dirtyLine;
    private boolean isBinary;
    private boolean isHex;
    private boolean isOctal;
    private boolean isOldOctal;
    private int lastLineEnd;
    int lineno;
    private double number;
    private Parser parser;
    private int quoteChar;
    String regExpFlags;
    private char[] sourceBuffer;
    int sourceCursor;
    private int sourceEnd;
    private Reader sourceReader;
    private String sourceString;
    private int stringBufferTop;
    int tokenBeg;
    int tokenEnd;
    private int tokenStartLastLineEnd;
    private int tokenStartLineno;
    private int ungetCursor;
    private boolean xmlIsAttribute;
    private boolean xmlIsTagContent;
    private int xmlOpenTagsCount;
    private StringBuilder rawString = new StringBuilder();
    private String string = "";
    private char[] stringBuffer = new char[128];
    private final HashMap<String, String> allStrings = new HashMap<>();
    private final int[] ungetBuffer = new int[3];
    private boolean hitEOF = false;
    private int lineStart = 0;
    private int lineEndChar = -1;
    private String commentPrefix = "";
    private int commentCursor = -1;

    public TokenStream(Parser parser, Reader reader, String str, int i) {
        this.parser = parser;
        this.lineno = i;
        if (reader != null) {
            if (str != null) {
                Kit.codeBug();
            }
            this.sourceReader = reader;
            this.sourceBuffer = new char[512];
            this.sourceEnd = 0;
        } else {
            if (str == null) {
                Kit.codeBug();
            }
            this.sourceString = str;
            this.sourceEnd = str.length();
        }
        this.cursor = 0;
        this.sourceCursor = 0;
    }

    private void addToString(int i) {
        int i2 = this.stringBufferTop;
        int charCount = Character.charCount(i);
        int i3 = i2 + charCount;
        char[] cArr = this.stringBuffer;
        if (i3 >= cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.stringBuffer = cArr2;
        }
        char[] cArr3 = this.stringBuffer;
        if (charCount == 1) {
            cArr3[i2] = (char) i;
        } else {
            cArr3[i2] = Character.highSurrogate(i);
            this.stringBuffer[i2 + 1] = Character.lowSurrogate(i);
        }
        this.stringBufferTop = i3;
    }

    private boolean canUngetChar() {
        int i = this.ungetCursor;
        return i == 0 || this.ungetBuffer[i - 1] != 10;
    }

    private final int charAt(int i) {
        if (i < 0) {
            return -1;
        }
        String str = this.sourceString;
        int i2 = this.sourceEnd;
        if (str != null) {
            if (i >= i2) {
                return -1;
            }
            return str.charAt(i);
        }
        if (i >= i2) {
            int i3 = this.sourceCursor;
            try {
                if (!fillSourceBuffer()) {
                    return -1;
                }
                i -= i3 - this.sourceCursor;
            } catch (IOException unused) {
                return -1;
            }
        }
        return this.sourceBuffer[i];
    }

    private static String convertLastCharToHex(String str) {
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(str.substring(0, length));
        sb.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i = 0; i < 4 - hexString.length(); i++) {
            sb.append('0');
        }
        sb.append(hexString);
        return sb.toString();
    }

    private boolean fillSourceBuffer() {
        if (this.sourceString != null) {
            Kit.codeBug();
        }
        if (this.sourceEnd == this.sourceBuffer.length) {
            if (this.lineStart == 0 || isMarkingComment()) {
                char[] cArr = this.sourceBuffer;
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, this.sourceEnd);
                this.sourceBuffer = cArr2;
            } else {
                char[] cArr3 = this.sourceBuffer;
                int i = this.lineStart;
                System.arraycopy(cArr3, i, cArr3, 0, this.sourceEnd - i);
                int i2 = this.sourceEnd;
                int i3 = this.lineStart;
                this.sourceEnd = i2 - i3;
                this.sourceCursor -= i3;
                this.lineStart = 0;
            }
        }
        Reader reader = this.sourceReader;
        char[] cArr4 = this.sourceBuffer;
        int i4 = this.sourceEnd;
        int read = reader.read(cArr4, i4, cArr4.length - i4);
        if (read < 0) {
            return false;
        }
        this.sourceEnd += read;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x008e, code lost:
    
        if (org.mozilla.javascript.ScriptRuntime.isJSLineTerminator(r0) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0090, code lost:
    
        r6.lineEndChar = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
    
        return 10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getChar(boolean r7, boolean r8) {
        /*
            r6 = this;
            int r0 = r6.ungetCursor
            r1 = 1
            if (r0 == 0) goto L12
            int r7 = r6.cursor
            int r7 = r7 + r1
            r6.cursor = r7
            int[] r7 = r6.ungetBuffer
            int r0 = r0 - r1
            r6.ungetCursor = r0
            r6 = r7[r0]
            return r6
        L12:
            java.lang.String r0 = r6.sourceString
            int r2 = r6.sourceCursor
            r3 = -1
            if (r0 == 0) goto L33
            int r4 = r6.sourceEnd
            if (r2 != r4) goto L20
            r6.hitEOF = r1
            return r3
        L20:
            int r4 = r6.cursor
            int r4 = r4 + r1
            r6.cursor = r4
            int r0 = r0.codePointAt(r2)
            int r2 = r6.sourceCursor
            int r4 = java.lang.Character.charCount(r0)
            int r4 = r4 + r2
            r6.sourceCursor = r4
            goto L4f
        L33:
            int r0 = r6.sourceEnd
            if (r2 != r0) goto L40
            boolean r0 = r6.fillSourceBuffer()
            if (r0 != 0) goto L40
            r6.hitEOF = r1
            return r3
        L40:
            int r0 = r6.cursor
            int r0 = r0 + r1
            r6.cursor = r0
            char[] r0 = r6.sourceBuffer
            int r2 = r6.sourceCursor
            int r4 = r2 + 1
            r6.sourceCursor = r4
            char r0 = r0[r2]
        L4f:
            r2 = 13
            r4 = 10
            if (r8 != 0) goto L70
            int r5 = r6.lineEndChar
            if (r5 < 0) goto L70
            if (r5 != r2) goto L60
            if (r0 != r4) goto L60
            r6.lineEndChar = r4
            goto L12
        L60:
            r6.lineEndChar = r3
            int r3 = r6.sourceCursor
            int r3 = r3 - r1
            r6.lineStart = r3
            int r3 = r6.tokenEnd
            r6.lastLineEnd = r3
            int r3 = r6.lineno
            int r3 = r3 + r1
            r6.lineno = r3
        L70:
            r3 = 127(0x7f, float:1.78E-43)
            if (r0 > r3) goto L7b
            if (r0 == r4) goto L78
            if (r0 != r2) goto L93
        L78:
            r6.lineEndChar = r0
            return r4
        L7b:
            r2 = 65279(0xfeff, float:9.1475E-41)
            if (r0 != r2) goto L81
            goto L93
        L81:
            if (r7 == 0) goto L8a
            boolean r2 = isJSFormatChar(r0)
            if (r2 == 0) goto L8a
            goto L12
        L8a:
            boolean r7 = org.mozilla.javascript.ScriptRuntime.isJSLineTerminator(r0)
            if (r7 == 0) goto L93
            r6.lineEndChar = r0
            return r4
        L93:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getChar(boolean, boolean):int");
    }

    private int getCharIgnoreLineEnd() {
        return getChar(true, true);
    }

    private String getStringFromBuffer() {
        this.tokenEnd = this.cursor;
        return new String(this.stringBuffer, 0, this.stringBufferTop);
    }

    private int getTemplateLiteralChar() {
        int charIgnoreLineEnd = getCharIgnoreLineEnd(false);
        if (charIgnoreLineEnd == 10) {
            int i = this.lineEndChar;
            if (i != 13) {
                if (i == 8232 || i == 8233) {
                    charIgnoreLineEnd = i;
                }
            } else if (charAt(this.cursor) == 10) {
                getCharIgnoreLineEnd(false);
            }
            this.lineEndChar = -1;
            this.lineStart = this.sourceCursor - 1;
            this.lineno++;
        }
        this.rawString.append((char) charIgnoreLineEnd);
        return charIgnoreLineEnd;
    }

    private String internString(String str) {
        String str2 = (String) Map.EL.putIfAbsent(this.allStrings, str, str);
        return str2 == null ? str : str2;
    }

    private static boolean isAlpha(int i) {
        return i <= 90 ? 65 <= i : 97 <= i && i <= 122;
    }

    private static boolean isDigit(int i, int i2) {
        if (i == 10 && isDigit(i2)) {
            return true;
        }
        if (i == 16 && isHexDigit(i2)) {
            return true;
        }
        if (i == 8 && isOctalDigit(i2)) {
            return true;
        }
        return i == 2 && isDualDigit(i2);
    }

    private static boolean isDualDigit(int i) {
        return 48 == i || i == 49;
    }

    private static boolean isHexDigit(int i) {
        if (48 <= i && i <= 57) {
            return true;
        }
        if (97 > i || i > 102) {
            return 65 <= i && i <= 70;
        }
        return true;
    }

    private static boolean isJSFormatChar(int i) {
        return i > 127 && Character.getType((char) i) == 16;
    }

    private static boolean isJSSpace(int i) {
        return i <= 127 ? i == 32 || i == 9 || i == 12 || i == 11 : i == 160 || i == 65279 || Character.getType((char) i) == 12;
    }

    public static boolean isKeyword(String str, int i, boolean z) {
        return stringToKeyword(str, i, z) != 0;
    }

    private boolean isMarkingComment() {
        return this.commentCursor != -1;
    }

    private static boolean isOctalDigit(int i) {
        return 48 <= i && i <= 55;
    }

    private static boolean isValidIdentifierName(String str) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(str.codePoints());
        int[] array = convert.toArray();
        int length = array.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = array[i];
            int i4 = i2 + 1;
            if (i2 == 0) {
                if (i3 != 36 && i3 != 95 && !Character.isUnicodeIdentifierStart(i3)) {
                    return false;
                }
            } else if (i3 != 36 && i3 != 8204 && i3 != 8205 && !Character.isUnicodeIdentifierPart(i3)) {
                return false;
            }
            i++;
            i2 = i4;
        }
        return true;
    }

    private void markCommentStart(String str) {
        if (!this.parser.compilerEnv.isRecordingComments() || this.sourceReader == null) {
            return;
        }
        this.commentPrefix = str;
        this.commentCursor = this.sourceCursor - 1;
    }

    private boolean matchChar(int i) {
        int charIgnoreLineEnd = getCharIgnoreLineEnd();
        if (charIgnoreLineEnd == i) {
            this.tokenEnd = this.cursor;
            return true;
        }
        ungetCharIgnoreLineEnd(charIgnoreLineEnd);
        return false;
    }

    private boolean matchTemplateLiteralChar(int i) {
        int templateLiteralChar = getTemplateLiteralChar();
        if (templateLiteralChar == i) {
            return true;
        }
        ungetTemplateLiteralChar(templateLiteralChar);
        return false;
    }

    private int peekChar() {
        int i = getChar();
        ungetChar(i);
        return i;
    }

    private int peekTemplateLiteralChar() {
        int templateLiteralChar = getTemplateLiteralChar();
        ungetTemplateLiteralChar(templateLiteralChar);
        return templateLiteralChar;
    }

    private boolean readCDATA() {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 93 && peekChar() == 93) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private int readDigits(int i, int i2) {
        if (isDigit(i, i2)) {
            addToString(i2);
            i2 = getChar();
            if (i2 != -1) {
                while (true) {
                    if (i2 != 95) {
                        if (!isDigit(i, i2)) {
                            break;
                        }
                        addToString(i2);
                        i2 = getChar();
                        if (i2 == -1) {
                            return -1;
                        }
                    } else {
                        i2 = getChar();
                        if (i2 == 10 || i2 == -1) {
                            return -2;
                        }
                        if (!isDigit(i, i2)) {
                            ungetChar(i2);
                            return 95;
                        }
                        addToString(95);
                    }
                }
            } else {
                return -1;
            }
        }
        return i2;
    }

    private boolean readEntity() {
        int i = getChar();
        int i2 = 1;
        while (i != -1) {
            addToString(i);
            if (i == 60) {
                i2++;
            } else if (i == 62 && i2 - 1 == 0) {
                return true;
            }
            i = getChar();
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private boolean readPI() {
        while (true) {
            int i = getChar();
            if (i == -1) {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
            addToString(i);
            if (i == 63 && peekChar() == 62) {
                addToString(getChar());
                return true;
            }
        }
    }

    private boolean readQuotedString(int i) {
        int i2;
        do {
            i2 = getChar();
            if (i2 == -1) {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
            addToString(i2);
        } while (i2 != i);
        return true;
    }

    private boolean readXmlComment() {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 45 && peekChar() == 45) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private void skipLine() {
        int i;
        do {
            i = getChar();
            if (i == -1) {
                break;
            }
        } while (i != 10);
        ungetChar(i);
        this.tokenEnd = this.cursor;
    }

    private static int stringToKeyword(String str, int i, boolean z) {
        return i < 200 ? stringToKeywordForJS(str) : stringToKeywordForES(str, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x02a2, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02f5, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02fb, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02fe, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0307, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x030a, code lost:
    
        if (r8 != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x030f, code lost:
    
        if (r8 != false) goto L197;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int stringToKeywordForES(java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 1076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.stringToKeywordForES(java.lang.String, boolean):int");
    }

    private static int stringToKeywordForJS(String str) {
        int i;
        str.getClass();
        i = 58;
        switch (str) {
            case "volatile":
            case "synchronized":
            case "double":
            case "extends":
            case "export":
            case "import":
            case "native":
            case "public":
            case "implements":
            case "static":
            case "throws":
            case "package":
            case "protected":
            case "private":
            case "int":
            case "byte":
            case "char":
            case "enum":
            case "goto":
            case "long":
            case "boolean":
            case "class":
            case "final":
            case "float":
            case "short":
            case "super":
            case "interface":
            case "transient":
            case "abstract":
                i = 140;
                break;
            case "delete":
                i = 31;
                break;
            case "return":
                i = 4;
                break;
            case "switch":
                i = Token.SWITCH;
                break;
            case "typeof":
                i = 32;
                break;
            case "finally":
                i = 138;
                break;
            case "continue":
                i = 134;
                break;
            case "do":
                i = Token.DO;
                break;
            case "if":
                i = Token.IF;
                break;
            case "in":
                i = 57;
                break;
            case "for":
                i = Token.FOR;
                break;
            case "let":
                i = Token.LET;
                break;
            case "new":
                i = 30;
                break;
            case "try":
                i = 90;
                break;
            case "var":
                i = 135;
                break;
            case "case":
                i = 128;
                break;
            case "else":
                i = Token.ELSE;
                break;
            case "null":
                i = 47;
                break;
            case "this":
                i = 48;
                break;
            case "true":
                i = 50;
                break;
            case "void":
                i = Token.VOID;
                break;
            case "with":
                i = Token.WITH;
                break;
            case "break":
                i = Token.BREAK;
                break;
            case "catch":
                i = Token.CATCH;
                break;
            case "const":
                i = Token.CONST;
                break;
            case "false":
                i = 49;
                break;
            case "throw":
                i = 55;
                break;
            case "while":
                i = 130;
                break;
            case "yield":
                i = 78;
                break;
            case "debugger":
                i = Token.DEBUGGER;
                break;
            case "instanceof":
                break;
            case "function":
                i = Token.FUNCTION;
                break;
            case "default":
                i = 129;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return 0;
        }
        return i & 255;
    }

    private final String substring(int i, int i2) {
        String str = this.sourceString;
        if (str != null) {
            return str.substring(i, i2);
        }
        return new String(this.sourceBuffer, i, i2 - i);
    }

    private void ungetChar(int i) {
        int i2 = this.ungetCursor;
        if (i2 != 0 && this.ungetBuffer[i2 - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.ungetBuffer;
        int i3 = this.ungetCursor;
        this.ungetCursor = i3 + 1;
        iArr[i3] = i;
        this.cursor--;
    }

    private void ungetCharIgnoreLineEnd(int i) {
        int[] iArr = this.ungetBuffer;
        int i2 = this.ungetCursor;
        this.ungetCursor = i2 + 1;
        iArr[i2] = i;
        this.cursor--;
    }

    private void ungetTemplateLiteralChar(int i) {
        ungetCharIgnoreLineEnd(i);
        this.rawString.setLength(r0.length() - 1);
    }

    public final boolean eof() {
        return this.hitEOF;
    }

    public final String getAndResetCurrentComment() {
        if (this.sourceString != null) {
            if (isMarkingComment()) {
                Kit.codeBug();
            }
            return this.sourceString.substring(this.tokenBeg, this.tokenEnd);
        }
        if (!isMarkingComment()) {
            Kit.codeBug();
        }
        StringBuilder sb = new StringBuilder(this.commentPrefix);
        sb.append(this.sourceBuffer, this.commentCursor, getTokenLength() - this.commentPrefix.length());
        this.commentCursor = -1;
        return sb.toString();
    }

    public final BigInteger getBigInt() {
        return this.bigInt;
    }

    public Token.CommentType getCommentType() {
        return this.commentType;
    }

    public int getCursor() {
        return this.cursor;
    }

    public int getFirstXMLToken() {
        this.xmlOpenTagsCount = 0;
        this.xmlIsAttribute = false;
        this.xmlIsTagContent = false;
        if (!canUngetChar()) {
            return -1;
        }
        ungetChar(60);
        return getNextXMLToken();
    }

    @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
    public int getLength() {
        return this.tokenEnd - this.tokenBeg;
    }

    public final String getLine(int i, int[] iArr) {
        int i2 = (this.cursor + this.ungetCursor) - i;
        int i3 = this.sourceCursor;
        if (i2 > i3) {
            return null;
        }
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            int charAt = charAt(i3 - 1);
            if (ScriptRuntime.isJSLineTerminator(charAt)) {
                if (charAt == 10 && charAt(i3 - 2) == 13) {
                    i2--;
                    i3--;
                }
                i4++;
                i5 = i3 - 1;
            }
            i2--;
            i3--;
        }
        int i6 = 0;
        while (true) {
            if (i3 <= 0) {
                i3 = 0;
                break;
            }
            if (ScriptRuntime.isJSLineTerminator(charAt(i3 - 1))) {
                break;
            }
            i3--;
            i6++;
        }
        iArr[0] = (this.lineno - i4) + (this.lineEndChar >= 0 ? 1 : 0);
        iArr[1] = i6;
        return i4 == 0 ? getLine() : substring(i3, i5);
    }

    @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
    public int getLineno() {
        return this.lineno;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x016b, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getNextXMLToken() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getNextXMLToken():int");
    }

    public final double getNumber() {
        return this.number;
    }

    @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
    public int getOffset() {
        int i = this.sourceCursor - this.lineStart;
        return this.lineEndChar >= 0 ? i - 1 : i;
    }

    @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
    public int getPosition() {
        return this.tokenBeg;
    }

    public final char getQuoteChar() {
        return (char) this.quoteChar;
    }

    public String getRawString() {
        return this.rawString.length() == 0 ? "" : this.rawString.toString();
    }

    public final String getSourceString() {
        return this.sourceString;
    }

    public final String getString() {
        return this.string;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x00bb, code lost:
    
        r30.parser.reportError("msg.invalid.escape");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011a, code lost:
    
        ungetChar(r12);
        r4 = getStringFromBuffer();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0123, code lost:
    
        if (r1 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012d, code lost:
    
        if (r30.parser.compilerEnv.getLanguageVersion() < 200) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0142, code lost:
    
        if (isKeyword(r4, r30.parser.compilerEnv.getLanguageVersion(), r30.parser.inUseStrictDirective()) == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0144, code lost:
    
        r4 = convertLastCharToHex(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x019d, code lost:
    
        if (r1 == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01a7, code lost:
    
        if (r30.parser.compilerEnv.getLanguageVersion() < 200) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01ad, code lost:
    
        if (isValidIdentifierName(r4) != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01af, code lost:
    
        r30.parser.reportError("msg.invalid.escape");
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01b4, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01b5, code lost:
    
        r30.string = internString(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01bb, code lost:
    
        return 44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0149, code lost:
    
        r7 = stringToKeyword(r4, r30.parser.compilerEnv.getLanguageVersion(), r30.parser.inUseStrictDirective());
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015b, code lost:
    
        if (r7 == 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x015f, code lost:
    
        if (r7 == 167) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0163, code lost:
    
        if (r7 != 78) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x017c, code lost:
    
        r30.string = internString(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0184, code lost:
    
        if (r7 == 140) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018f, code lost:
    
        if (r30.parser.compilerEnv.getLanguageVersion() < 200) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019a, code lost:
    
        if (r30.parser.compilerEnv.isReservedKeywordAsIdentifier() != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019c, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x016f, code lost:
    
        if (r30.parser.compilerEnv.getLanguageVersion() >= 170) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0171, code lost:
    
        if (r7 != 167) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0173, code lost:
    
        r7 = "let";
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0179, code lost:
    
        r30.string = r7;
        r7 = 44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0176, code lost:
    
        r7 = "yield";
     */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0397 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x04d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:517:0x075b  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:577:0x06c4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:254:0x03a4 -> B:249:0x038a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getToken() {
        /*
            Method dump skipped, instructions count: 2008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.getToken():int");
    }

    public int getTokenBeg() {
        return this.tokenBeg;
    }

    public int getTokenColumn() {
        return (this.tokenBeg - this.tokenStartLastLineEnd) + 1;
    }

    public int getTokenEnd() {
        return this.tokenEnd;
    }

    public int getTokenLength() {
        return this.tokenEnd - this.tokenBeg;
    }

    public int getTokenStartLineno() {
        return this.tokenStartLineno;
    }

    public final boolean isNumericBinary() {
        return this.isBinary;
    }

    public final boolean isNumericHex() {
        return this.isHex;
    }

    public final boolean isNumericOctal() {
        return this.isOctal;
    }

    public final boolean isNumericOldOctal() {
        return this.isOldOctal;
    }

    public boolean isXMLAttribute() {
        return this.xmlIsAttribute;
    }

    public String readAndClearRegExpFlags() {
        String str = this.regExpFlags;
        this.regExpFlags = null;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d3, code lost:
    
        ungetChar(r2);
        r8.tokenEnd = r8.cursor - 1;
        r8.string = new java.lang.String(r8.stringBuffer, 0, r8.stringBufferTop);
        r8.parser.reportError("msg.unterminated.re.lit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00eb, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readRegExp(int r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.TokenStream.readRegExp(int):void");
    }

    public int readTemplateLiteral(boolean z) {
        this.rawString.setLength(0);
        this.stringBufferTop = 0;
        boolean z2 = false;
        while (true) {
            int templateLiteralChar = getTemplateLiteralChar();
            if (templateLiteralChar == -1) {
                this.string = z2 ? null : getStringFromBuffer();
                this.tokenEnd = this.cursor - 1;
                this.parser.reportError("msg.unexpected.eof");
                return -1;
            }
            if (templateLiteralChar != 36) {
                if (templateLiteralChar == 92) {
                    int templateLiteralChar2 = getTemplateLiteralChar();
                    if (templateLiteralChar2 == 10) {
                        continue;
                    } else {
                        if (templateLiteralChar2 == 98) {
                            templateLiteralChar2 = 8;
                        } else if (templateLiteralChar2 == 102) {
                            templateLiteralChar2 = 12;
                        } else if (templateLiteralChar2 == 110) {
                            templateLiteralChar2 = 10;
                        } else if (templateLiteralChar2 == 114) {
                            templateLiteralChar2 = 13;
                        } else if (templateLiteralChar2 == 120) {
                            int i = 0;
                            int i2 = 0;
                            while (true) {
                                if (i >= 2) {
                                    templateLiteralChar2 = i2;
                                } else if (peekTemplateLiteralChar() == 96) {
                                    templateLiteralChar2 = -1;
                                } else {
                                    i2 = Kit.xDigitToInt(getTemplateLiteralChar(), i2);
                                    i++;
                                }
                            }
                            if (templateLiteralChar2 < 0) {
                                if (!z) {
                                    this.parser.reportError("msg.syntax");
                                    return -1;
                                }
                                z2 = true;
                            }
                        } else if (templateLiteralChar2 != 8232 && templateLiteralChar2 != 8233) {
                            switch (templateLiteralChar2) {
                                case Token.THIS /* 48 */:
                                    int peekTemplateLiteralChar = peekTemplateLiteralChar();
                                    if (peekTemplateLiteralChar >= 48 && peekTemplateLiteralChar <= 57) {
                                        if (!z) {
                                            this.parser.reportError("msg.syntax");
                                            return -1;
                                        }
                                        z2 = true;
                                        break;
                                    } else {
                                        templateLiteralChar2 = 0;
                                        break;
                                    }
                                    break;
                                case Token.FALSE /* 49 */:
                                case 50:
                                case Token.SHEQ /* 51 */:
                                case Token.SHNE /* 52 */:
                                case Token.REGEXP /* 53 */:
                                case Token.BINDNAME /* 54 */:
                                case Token.THROW /* 55 */:
                                case Token.RETHROW /* 56 */:
                                case Token.IN /* 57 */:
                                    if (!z) {
                                        this.parser.reportError("msg.syntax");
                                        return -1;
                                    }
                                    z2 = true;
                                    break;
                                default:
                                    switch (templateLiteralChar2) {
                                        case 116:
                                            templateLiteralChar2 = 9;
                                            break;
                                        case Token.OR /* 117 */:
                                            if (!matchTemplateLiteralChar(Token.EXPORT)) {
                                                int i3 = 0;
                                                int i4 = 0;
                                                while (true) {
                                                    if (i3 >= 4) {
                                                        templateLiteralChar2 = i4;
                                                    } else if (peekTemplateLiteralChar() == 96) {
                                                        templateLiteralChar2 = -1;
                                                    } else {
                                                        i4 = Kit.xDigitToInt(getTemplateLiteralChar(), i4);
                                                        i3++;
                                                    }
                                                }
                                                if (templateLiteralChar2 >= 0) {
                                                    break;
                                                } else {
                                                    if (!z) {
                                                        this.parser.reportError("msg.syntax");
                                                        return -1;
                                                    }
                                                    z2 = true;
                                                }
                                            } else {
                                                templateLiteralChar2 = 0;
                                                while (true) {
                                                    if (peekTemplateLiteralChar() == 96) {
                                                        templateLiteralChar2 = -1;
                                                    } else {
                                                        int templateLiteralChar3 = getTemplateLiteralChar();
                                                        if (templateLiteralChar3 == -1) {
                                                            this.parser.reportError("msg.syntax");
                                                            return -1;
                                                        }
                                                        if (templateLiteralChar3 != 125) {
                                                            templateLiteralChar2 = Kit.xDigitToInt(templateLiteralChar3, templateLiteralChar2);
                                                        }
                                                    }
                                                }
                                                if (templateLiteralChar2 >= 0 && templateLiteralChar2 <= 1114111) {
                                                    if (templateLiteralChar2 <= 65535) {
                                                        break;
                                                    } else {
                                                        addToString(Character.highSurrogate(templateLiteralChar2));
                                                        addToString(Character.lowSurrogate(templateLiteralChar2));
                                                        break;
                                                    }
                                                } else {
                                                    if (!z) {
                                                        this.parser.reportError("msg.syntax");
                                                        return -1;
                                                    }
                                                    z2 = true;
                                                    break;
                                                }
                                            }
                                            break;
                                        case Token.AND /* 118 */:
                                            templateLiteralChar2 = 11;
                                            break;
                                    }
                            }
                        }
                        addToString(templateLiteralChar2);
                    }
                } else {
                    if (templateLiteralChar == 96) {
                        StringBuilder sb = this.rawString;
                        sb.setLength(sb.length() - 1);
                        this.string = z2 ? null : getStringFromBuffer();
                        int i5 = this.sourceCursor;
                        this.cursor = i5;
                        this.tokenEnd = i5;
                        return 180;
                    }
                    addToString(templateLiteralChar);
                }
            } else {
                if (matchTemplateLiteralChar(Token.EXPORT)) {
                    StringBuilder sb2 = this.rawString;
                    sb2.setLength(sb2.length() - 2);
                    this.string = z2 ? null : getStringFromBuffer();
                    this.tokenEnd = this.cursor - 1;
                    return Token.TEMPLATE_LITERAL_SUBST;
                }
                addToString(templateLiteralChar);
            }
        }
    }

    public String tokenToString(int i) {
        return "";
    }

    private int getCharIgnoreLineEnd(boolean z) {
        return getChar(z, true);
    }

    private void markCommentStart() {
        markCommentStart("");
    }

    private static boolean isDigit(int i) {
        return 48 <= i && i <= 57;
    }

    @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
    public String getLine() {
        int i;
        int i2 = this.sourceCursor;
        int i3 = this.lineEndChar;
        if (i3 >= 0) {
            i = i2 - 1;
            if (i3 == 10 && charAt(i2 - 2) == 13) {
                i = i2 - 2;
            }
        } else {
            int i4 = i2 - this.lineStart;
            while (true) {
                int charAt = charAt(this.lineStart + i4);
                if (charAt == -1 || ScriptRuntime.isJSLineTerminator(charAt)) {
                    break;
                }
                i4++;
            }
            i = this.lineStart + i4;
        }
        return substring(this.lineStart, i);
    }

    private int getChar(boolean z) {
        return getChar(z, false);
    }

    private int getChar() {
        return getChar(true, false);
    }
}
