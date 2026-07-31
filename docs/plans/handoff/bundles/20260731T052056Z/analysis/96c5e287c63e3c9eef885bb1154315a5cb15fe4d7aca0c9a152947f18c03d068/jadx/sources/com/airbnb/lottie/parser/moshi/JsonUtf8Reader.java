package com.airbnb.lottie.parser.moshi;

import coil3.network.HttpException;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.EOFException;
import kotlin.text.Charsets;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonUtf8Reader extends JsonReader {
    public static final ByteString DOUBLE_QUOTE_OR_SLASH;
    public static final ByteString SINGLE_QUOTE_OR_SLASH;
    public static final ByteString UNQUOTED_STRING_TERMINALS;
    public final Buffer buffer;
    public int peeked;
    public long peekedLong;
    public int peekedNumberLength;
    public String peekedString;
    public final RealBufferedSource source;

    static {
        ByteString byteString = ByteString.EMPTY;
        SINGLE_QUOTE_OR_SLASH = ByteString.Companion.encodeUtf8("'\\");
        DOUBLE_QUOTE_OR_SLASH = ByteString.Companion.encodeUtf8("\"\\");
        UNQUOTED_STRING_TERMINALS = ByteString.Companion.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
        ByteString.Companion.encodeUtf8("\n\r");
        ByteString.Companion.encodeUtf8("*/");
    }

    public JsonUtf8Reader(RealBufferedSource realBufferedSource) {
        this.scopes = new int[32];
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        this.peeked = 0;
        this.source = realBufferedSource;
        this.buffer = realBufferedSource.bufferField;
        pushScope(6);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            pushScope(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            pushScope(3);
            this.peeked = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
        }
    }

    public final void checkLenient() {
        syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.peeked = 0;
        this.scopes[0] = 8;
        this.stackSize = 1;
        this.buffer.clear();
        this.source.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c9, code lost:
    
        if (r1 == 4) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cc, code lost:
    
        if (r1 != 7) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ce, code lost:
    
        r23.peekedNumberLength = r2;
        r9 = 17;
        r23.peeked = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a3, code lost:
    
        if (isLiteral(r10) != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a5, code lost:
    
        if (r1 != 2) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a7, code lost:
    
        if (r4 == 0) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01ad, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01af, code lost:
    
        if (r13 == 0) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b3, code lost:
    
        if (r8 != r18) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01b5, code lost:
    
        if (r13 != 0) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b7, code lost:
    
        if (r13 == 0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ba, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01bb, code lost:
    
        r23.peekedLong = r8;
        r7.skip(r2);
        r9 = 16;
        r23.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01c6, code lost:
    
        if (r1 == 2) goto L153;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0120 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int doPeek() {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonUtf8Reader.doPeek():int");
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void endArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 4) {
            StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
        } else {
            int i2 = this.stackSize;
            this.stackSize = i2 - 1;
            int[] iArr = this.pathIndices;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.peeked = 0;
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void endObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 2) {
            StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
            return;
        }
        int i2 = this.stackSize;
        int i3 = i2 - 1;
        this.stackSize = i3;
        this.pathNames[i3] = null;
        int[] iArr = this.pathIndices;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.peeked = 0;
    }

    public final int findName(String str, AndroidSvg androidSvg) {
        int length = ((String[]) androidSvg.svg).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) androidSvg.svg)[i])) {
                this.peeked = 0;
                this.pathNames[this.stackSize - 1] = str;
                return i;
            }
        }
        return -1;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final boolean hasNext() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return (i == 2 || i == 4 || i == 18) ? false : true;
    }

    public final boolean isLiteral(int i) {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        throw null;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final boolean nextBoolean() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i != 6) {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
            return false;
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final double nextDouble() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 16) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 17) {
            long j = this.peekedNumberLength;
            Buffer buffer = this.buffer;
            buffer.getClass();
            this.peekedString = buffer.readString(j, Charsets.UTF_8);
        } else if (i == 9) {
            this.peekedString = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 8) {
            this.peekedString = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i != 11) {
            StringBuilder sb = new StringBuilder("Expected a double but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
            return 0.0d;
        }
        this.peeked = 11;
        try {
            double parseDouble = Double.parseDouble(this.peekedString);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new HttpException("Expected a double but was " + this.peekedString + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final int nextInt() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 16) {
            long j = this.peekedLong;
            int i2 = (int) j;
            if (j == i2) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new HttpException("Expected an int but was " + this.peekedLong + " at path " + getPath());
        }
        if (i == 17) {
            long j2 = this.peekedNumberLength;
            Buffer buffer = this.buffer;
            buffer.getClass();
            this.peekedString = buffer.readString(j2, Charsets.UTF_8);
        } else if (i == 9 || i == 8) {
            String nextQuotedValue = i == 9 ? nextQuotedValue(DOUBLE_QUOTE_OR_SLASH) : nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
            this.peekedString = nextQuotedValue;
            try {
                int parseInt = Integer.parseInt(nextQuotedValue);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i != 11) {
            StringBuilder sb = new StringBuilder("Expected an int but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
            return 0;
        }
        this.peeked = 11;
        try {
            double parseDouble = Double.parseDouble(this.peekedString);
            int i5 = (int) parseDouble;
            if (i5 == parseDouble) {
                this.peekedString = null;
                this.peeked = 0;
                int[] iArr3 = this.pathIndices;
                int i6 = this.stackSize - 1;
                iArr3[i6] = iArr3[i6] + 1;
                return i5;
            }
            throw new HttpException("Expected an int but was " + this.peekedString + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new HttpException("Expected an int but was " + this.peekedString + " at path " + getPath());
        }
    }

    public final String nextName() {
        String str;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            str = nextUnquotedValue();
        } else if (i == 13) {
            str = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 12) {
            str = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else {
            if (i != 15) {
                StringBuilder sb = new StringBuilder("Expected a name but was ");
                sb.append(peek());
                ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
                return null;
            }
            str = this.peekedString;
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = str;
        return str;
    }

    public final int nextNonWhitespace(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            RealBufferedSource realBufferedSource = this.source;
            if (!realBufferedSource.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            Buffer buffer = this.buffer;
            byte b = buffer.getByte(j);
            if (b != 10 && b != 32 && b != 13 && b != 9) {
                buffer.skip(j);
                if (b == 47) {
                    if (realBufferedSource.request(2L)) {
                        checkLenient();
                        throw null;
                    }
                } else if (b == 35) {
                    checkLenient();
                    throw null;
                }
                return b;
            }
            i = i2;
        }
    }

    public final String nextQuotedValue(ByteString byteString) {
        StringBuilder sb = null;
        while (true) {
            long indexOfElement = this.source.indexOfElement(byteString);
            if (indexOfElement == -1) {
                syntaxError("Unterminated string");
                throw null;
            }
            Buffer buffer = this.buffer;
            if (buffer.getByte(indexOfElement) != 92) {
                if (sb == null) {
                    String readString = buffer.readString(indexOfElement, Charsets.UTF_8);
                    buffer.readByte();
                    return readString;
                }
                sb.append(buffer.readString(indexOfElement, Charsets.UTF_8));
                buffer.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(buffer.readString(indexOfElement, Charsets.UTF_8));
            buffer.readByte();
            sb.append(readEscapeCharacter());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final String nextString() {
        String readString;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            readString = nextUnquotedValue();
        } else if (i == 9) {
            readString = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 8) {
            readString = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i == 11) {
            readString = this.peekedString;
            this.peekedString = null;
        } else if (i == 16) {
            readString = Long.toString(this.peekedLong);
        } else {
            if (i != 17) {
                StringBuilder sb = new StringBuilder("Expected a string but was ");
                sb.append(peek());
                ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
                return null;
            }
            long j = this.peekedNumberLength;
            Buffer buffer = this.buffer;
            buffer.getClass();
            readString = buffer.readString(j, Charsets.UTF_8);
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return readString;
    }

    public final String nextUnquotedValue() {
        long indexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
        Buffer buffer = this.buffer;
        if (indexOfElement == -1) {
            return buffer.readUtf8();
        }
        buffer.getClass();
        return buffer.readString(indexOfElement, Charsets.UTF_8);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final JsonReader.Token peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
                return JsonReader.Token.NAME;
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                return JsonReader.Token.NUMBER;
            case RADIO_GROUP_VALUE:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final char readEscapeCharacter() {
        int i;
        RealBufferedSource realBufferedSource = this.source;
        if (!realBufferedSource.request(1L)) {
            syntaxError("Unterminated escape sequence");
            throw null;
        }
        Buffer buffer = this.buffer;
        byte readByte = buffer.readByte();
        if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
            return (char) readByte;
        }
        if (readByte == 98) {
            return '\b';
        }
        if (readByte == 102) {
            return '\f';
        }
        if (readByte == 110) {
            return '\n';
        }
        if (readByte == 114) {
            return '\r';
        }
        if (readByte == 116) {
            return '\t';
        }
        if (readByte != 117) {
            syntaxError("Invalid escape sequence: \\" + ((char) readByte));
            throw null;
        }
        if (!realBufferedSource.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path ".concat(getPath()));
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte b = buffer.getByte(i2);
            char c2 = (char) (c << 4);
            if (b >= 48 && b <= 57) {
                i = b - 48;
            } else if (b >= 97 && b <= 102) {
                i = b - 87;
            } else {
                if (b < 65 || b > 70) {
                    syntaxError("\\u".concat(buffer.readString(4L, Charsets.UTF_8)));
                    throw null;
                }
                i = b - 55;
            }
            c = (char) (i + c2);
        }
        buffer.skip(4L);
        return c;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final int selectName(AndroidSvg androidSvg) {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i < 12 || i > 15) {
            return -1;
        }
        if (i == 15) {
            return findName(this.peekedString, androidSvg);
        }
        int select = this.source.select((Options) androidSvg.renderOptions);
        if (select != -1) {
            this.peeked = 0;
            this.pathNames[this.stackSize - 1] = ((String[]) androidSvg.svg)[select];
            return select;
        }
        String str = this.pathNames[this.stackSize - 1];
        String nextName = nextName();
        int findName = findName(nextName, androidSvg);
        if (findName == -1) {
            this.peeked = 15;
            this.peekedString = nextName;
            this.pathNames[this.stackSize - 1] = str;
        }
        return findName;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void skipName() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            long indexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
            Buffer buffer = this.buffer;
            if (indexOfElement == -1) {
                indexOfElement = buffer.size;
            }
            buffer.skip(indexOfElement);
        } else if (i == 13) {
            skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 12) {
            skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i != 15) {
            StringBuilder sb = new StringBuilder("Expected a name but was ");
            sb.append(peek());
            ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
            return;
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = "null";
    }

    public final void skipQuotedValue(ByteString byteString) {
        while (true) {
            long indexOfElement = this.source.indexOfElement(byteString);
            if (indexOfElement == -1) {
                syntaxError("Unterminated string");
                throw null;
            }
            Buffer buffer = this.buffer;
            if (buffer.getByte(indexOfElement) != 92) {
                buffer.skip(indexOfElement + 1);
                return;
            } else {
                buffer.skip(indexOfElement + 1);
                readEscapeCharacter();
            }
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void skipValue() {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == 3) {
                pushScope(1);
            } else if (i2 == 1) {
                pushScope(3);
            } else {
                if (i2 == 4) {
                    i--;
                    if (i < 0) {
                        StringBuilder sb = new StringBuilder("Expected a value but was ");
                        sb.append(peek());
                        ContextsKt$$ExternalSyntheticBUOutline0.m(sb, getPath());
                        return;
                    }
                    this.stackSize--;
                } else if (i2 == 2) {
                    i--;
                    if (i < 0) {
                        StringBuilder sb2 = new StringBuilder("Expected a value but was ");
                        sb2.append(peek());
                        ContextsKt$$ExternalSyntheticBUOutline0.m(sb2, getPath());
                        return;
                    }
                    this.stackSize--;
                } else {
                    Buffer buffer = this.buffer;
                    if (i2 == 14 || i2 == 10) {
                        long indexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
                        if (indexOfElement == -1) {
                            indexOfElement = buffer.size;
                        }
                        buffer.skip(indexOfElement);
                    } else if (i2 == 9 || i2 == 13) {
                        skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
                    } else if (i2 == 8 || i2 == 12) {
                        skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
                    } else if (i2 == 17) {
                        buffer.skip(this.peekedNumberLength);
                    } else if (i2 == 18) {
                        StringBuilder sb3 = new StringBuilder("Expected a value but was ");
                        sb3.append(peek());
                        ContextsKt$$ExternalSyntheticBUOutline0.m(sb3, getPath());
                        return;
                    }
                }
                this.peeked = 0;
            }
            i++;
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr[i3] = iArr[i3] + 1;
        this.pathNames[i3] = "null";
    }

    public final String toString() {
        return "JsonReader(" + this.source + ")";
    }
}
