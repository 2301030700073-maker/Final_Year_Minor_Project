package com.squareup.moshi;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.zxing.BinaryBitmap;
import com.jcraft.jzlib.Adler32;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.io.FileSystemException;
import kotlin.text.Charsets;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.io.Sink$CC;
import okio.Buffer;
import okio.ByteString;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonUtf8Reader implements Closeable {
    public static final ByteString DOUBLE_QUOTE_OR_SLASH;
    public static final ByteString SINGLE_QUOTE_OR_SLASH;
    public static final ByteString UNQUOTED_STRING_TERMINALS;
    public final Buffer buffer;
    public long peekedLong;
    public int peekedNumberLength;
    public String peekedString;
    public final Buffer source;
    public int stackSize;
    public int[] scopes = new int[32];
    public String[] pathNames = new String[32];
    public int[] pathIndices = new int[32];
    public int peeked = 0;

    static {
        ByteString byteString = ByteString.EMPTY;
        SINGLE_QUOTE_OR_SLASH = Adler32.encodeUtf8("'\\");
        DOUBLE_QUOTE_OR_SLASH = Adler32.encodeUtf8("\"\\");
        UNQUOTED_STRING_TERMINALS = Adler32.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
        Adler32.encodeUtf8("\n\r");
        Adler32.encodeUtf8("*/");
    }

    public JsonUtf8Reader(Buffer buffer) {
        this.source = buffer;
        this.buffer = buffer;
        pushScope(6);
    }

    public final void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 3) {
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected BEGIN_ARRAY but was ");
            return;
        }
        pushScope(1);
        this.pathIndices[this.stackSize - 1] = 0;
        this.peeked = 0;
    }

    public final void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 1) {
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected BEGIN_OBJECT but was ");
        } else {
            pushScope(3);
            this.peeked = 0;
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
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01cc, code lost:
    
        if (r1 == 4) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cf, code lost:
    
        if (r1 != 7) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01d1, code lost:
    
        r23.peekedNumberLength = r2;
        r9 = 17;
        r23.peeked = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a6, code lost:
    
        if (isLiteral(r10) != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a8, code lost:
    
        if (r1 != 2) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01aa, code lost:
    
        if (r4 == 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01b0, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b2, code lost:
    
        if (r13 == 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b6, code lost:
    
        if (r8 != r17) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01b8, code lost:
    
        if (r13 != 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ba, code lost:
    
        if (r13 == 0) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01bd, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01be, code lost:
    
        r23.peekedLong = r8;
        r7.skip(r2);
        r9 = 16;
        r23.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01c9, code lost:
    
        if (r1 == 2) goto L155;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0123 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fe A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int doPeek() {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.JsonUtf8Reader.doPeek():int");
    }

    public final void endArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 4) {
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected END_ARRAY but was ");
            return;
        }
        int i2 = this.stackSize;
        this.stackSize = i2 - 1;
        int[] iArr = this.pathIndices;
        int i3 = i2 - 2;
        iArr[i3] = iArr[i3] + 1;
        this.peeked = 0;
    }

    public final void endObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 2) {
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected END_OBJECT but was ");
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

    public final int findName(String str, BinaryBitmap binaryBitmap) {
        int length = ((String[]) binaryBitmap.binarizer).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) binaryBitmap.binarizer)[i])) {
                this.peeked = 0;
                this.pathNames[this.stackSize - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final int findString(String str, BinaryBitmap binaryBitmap) {
        int length = ((String[]) binaryBitmap.binarizer).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) binaryBitmap.binarizer)[i])) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
        }
        return -1;
    }

    public final String getPath() {
        return Types.getPath(this.stackSize, this.scopes, this.pathNames, this.pathIndices);
    }

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
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a boolean but was ");
            return false;
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

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
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a double but was ");
            return 0.0d;
        }
        this.peeked = 11;
        try {
            double parseDouble = Double.parseDouble(this.peekedString);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new FileSystemException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            Regex$$ExternalSyntheticBUOutline0.m$2(this.peekedString, getPath(), "Expected a double but was ");
            return 0.0d;
        }
    }

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
            throw new JsonDataException("Expected an int but was " + this.peekedLong + " at path " + getPath());
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
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected an int but was ");
            return 0;
        }
        this.peeked = 11;
        try {
            double parseDouble = Double.parseDouble(this.peekedString);
            int i5 = (int) parseDouble;
            if (i5 != parseDouble) {
                Regex$$ExternalSyntheticBUOutline0.m$2(this.peekedString, getPath(), "Expected an int but was ");
                return 0;
            }
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i6 = this.stackSize - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            Regex$$ExternalSyntheticBUOutline0.m$2(this.peekedString, getPath(), "Expected an int but was ");
            return 0;
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
                Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a name but was ");
                return null;
            }
            str = this.peekedString;
            this.peekedString = null;
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = str;
        return str;
    }

    public final int nextNonWhitespace(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            Buffer buffer = this.source;
            if (!buffer.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            Buffer buffer2 = this.buffer;
            byte b = buffer2.getByte(j);
            if (b != 10 && b != 32 && b != 13 && b != 9) {
                buffer2.skip(j);
                if (b == 47) {
                    if (buffer.request(2L)) {
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

    public final void nextNull() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 7) {
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected null but was ");
            return;
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
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
                Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a string but was ");
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

    public final int peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return 9;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
                return 6;
            case BasicTextKt.ShiftMeta /* 12 */:
            case 13:
            case 14:
            case OffsetKt.Horizontal /* 15 */:
                return 5;
            case 16:
            case 17:
                return 7;
            case 18:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void pushScope(int i) {
        int i2 = this.stackSize;
        int[] iArr = this.scopes;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new JsonDataException("Nesting too deep at ".concat(getPath()));
            }
            this.scopes = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.pathNames;
            this.pathNames = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.pathIndices;
            this.pathIndices = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.scopes;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr3[i3] = i;
    }

    public final char readEscapeCharacter() {
        int i;
        Buffer buffer = this.source;
        if (!buffer.request(1L)) {
            syntaxError("Unterminated escape sequence");
            throw null;
        }
        Buffer buffer2 = this.buffer;
        byte readByte = buffer2.readByte();
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
        if (!buffer.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path ".concat(getPath()));
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte b = buffer2.getByte(i2);
            char c2 = (char) (c << 4);
            if (b >= 48 && b <= 57) {
                i = b - 48;
            } else if (b >= 97 && b <= 102) {
                i = b - 87;
            } else {
                if (b < 65 || b > 70) {
                    syntaxError("\\u".concat(buffer2.readString(4L, Charsets.UTF_8)));
                    throw null;
                }
                i = b - 55;
            }
            c = (char) (i + c2);
        }
        buffer2.skip(4L);
        return c;
    }

    public final Serializable readJsonValue() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(peek());
        if (ordinal == 0) {
            ArrayList arrayList = new ArrayList();
            beginArray();
            while (hasNext()) {
                arrayList.add(readJsonValue());
            }
            endArray();
            return arrayList;
        }
        if (ordinal != 2) {
            if (ordinal == 5) {
                return nextString();
            }
            if (ordinal == 6) {
                return Double.valueOf(nextDouble());
            }
            if (ordinal == 7) {
                return Boolean.valueOf(nextBoolean());
            }
            if (ordinal == 8) {
                nextNull();
                return null;
            }
            Regex$$ExternalSyntheticBUOutline0.m("Expected a value but was ", Sink$CC.stringValueOf$2(peek()), " at path ", getPath());
            return null;
        }
        LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
        beginObject();
        while (hasNext()) {
            String nextName = nextName();
            Serializable readJsonValue = readJsonValue();
            Object put = linkedHashTreeMap.put(nextName, readJsonValue);
            if (put != null) {
                StringBuilder m31m = CameraDevices$CC.m31m("Map key '", nextName, "' has multiple values at path ");
                m31m.append(getPath());
                m31m.append(": ");
                m31m.append(put);
                m31m.append(" and ");
                m31m.append(readJsonValue);
                throw new JsonDataException(m31m.toString());
            }
        }
        endObject();
        return linkedHashTreeMap;
    }

    public final int selectName(BinaryBitmap binaryBitmap) {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i < 12 || i > 15) {
            return -1;
        }
        if (i == 15) {
            return findName(this.peekedString, binaryBitmap);
        }
        int select = this.source.select((Options) binaryBitmap.matrix);
        if (select != -1) {
            this.peeked = 0;
            this.pathNames[this.stackSize - 1] = ((String[]) binaryBitmap.binarizer)[select];
            return select;
        }
        String str = this.pathNames[this.stackSize - 1];
        String nextName = nextName();
        int findName = findName(nextName, binaryBitmap);
        if (findName == -1) {
            this.peeked = 15;
            this.peekedString = nextName;
            this.pathNames[this.stackSize - 1] = str;
        }
        return findName;
    }

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
            Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a name but was ");
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
                        Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a value but was ");
                        return;
                    }
                    this.stackSize--;
                } else if (i2 == 2) {
                    i--;
                    if (i < 0) {
                        Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a value but was ");
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
                        Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(peek()), getPath(), "Expected a value but was ");
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

    public final void syntaxError(String str) {
        StringBuilder m = Config.CC.m(str, " at path ");
        m.append(getPath());
        throw new FileSystemException(m.toString());
    }

    public final String toString() {
        return "JsonReader(" + this.source + ")";
    }
}
