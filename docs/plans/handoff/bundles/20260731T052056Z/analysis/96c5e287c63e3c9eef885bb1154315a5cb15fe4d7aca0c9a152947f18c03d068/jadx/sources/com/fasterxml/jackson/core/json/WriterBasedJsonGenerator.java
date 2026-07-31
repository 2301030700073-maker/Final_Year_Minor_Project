package com.fasterxml.jackson.core.json;

import androidx.fragment.app.LogWriter;
import coil3.ImageLoader$Builder;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.JsonStringEncoder;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.VersionUtil;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer$inputStream$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    public static final char[] HEX_CHARS = (char[]) CharTypes.HC.clone();
    public char[] _entityBuffer;
    public char[] _outputBuffer;
    public final int _outputEnd;
    public int _outputHead;
    public int _outputTail;
    public final char _quoteChar;
    public final LogWriter _writer;

    public WriterBasedJsonGenerator(ImageLoader$Builder imageLoader$Builder, int i, LogWriter logWriter) {
        super(imageLoader$Builder, i);
        this._writer = logWriter;
        if (((char[]) imageLoader$Builder.extras) != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Trying to call same allocXxx() method second time");
            throw null;
        }
        BufferRecycler bufferRecycler = (BufferRecycler) imageLoader$Builder.defaults;
        int i2 = BufferRecycler.CHAR_BUFFER_LENGTHS[1];
        i2 = i2 <= 0 ? 0 : i2;
        char[] cArr = (char[]) bufferRecycler._charBuffers.getAndSet(1, null);
        cArr = (cArr == null || cArr.length < i2) ? new char[i2] : cArr;
        imageLoader$Builder.extras = cArr;
        this._outputBuffer = cArr;
        this._outputEnd = cArr.length;
        this._quoteChar = '\"';
    }

    public static int _readMore(Buffer$inputStream$1 buffer$inputStream$1, byte[] bArr, int i, int i2, int i3) {
        int read;
        int i4 = 0;
        while (i < i2) {
            bArr[i4] = bArr[i];
            i4++;
            i++;
        }
        int min = Math.min(i3, bArr.length);
        do {
            int i5 = min - i4;
            if (i5 == 0 || (read = buffer$inputStream$1.read(bArr, i4, i5)) < 0) {
                return i4;
            }
            i4 += read;
        } while (i4 < 3);
        return i4;
    }

    public final char[] _allocateEntityBuffer() {
        char[] cArr = {'\\', 0, '\\', 'u', '0', '0', 0, 0, '\\', 'u', 0, 0, 0, 0};
        this._entityBuffer = cArr;
        return cArr;
    }

    public final void _appendCharacterEscape(char c, int i) {
        int i2;
        int i3 = this._outputEnd;
        if (i >= 0) {
            if (this._outputTail + 2 > i3) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i4 = this._outputTail;
            int i5 = i4 + 1;
            this._outputTail = i5;
            cArr[i4] = '\\';
            this._outputTail = i4 + 2;
            cArr[i5] = (char) i;
            return;
        }
        if (i == -2) {
            throw null;
        }
        if (this._outputTail + 5 >= i3) {
            _flushBuffer();
        }
        int i6 = this._outputTail;
        char[] cArr2 = this._outputBuffer;
        cArr2[i6] = '\\';
        int i7 = i6 + 2;
        cArr2[i6 + 1] = 'u';
        char[] cArr3 = HEX_CHARS;
        if (c > 255) {
            int i8 = c >> '\b';
            int i9 = i6 + 3;
            cArr2[i7] = cArr3[(i8 & 255) >> 4];
            i2 = i6 + 4;
            cArr2[i9] = cArr3[i8 & 15];
            c = (char) (c & 255);
        } else {
            int i10 = i6 + 3;
            cArr2[i7] = '0';
            i2 = i6 + 4;
            cArr2[i10] = '0';
        }
        cArr2[i2] = cArr3[c >> 4];
        cArr2[i2 + 1] = cArr3[c & 15];
        this._outputTail = i2 + 2;
    }

    public final void _flushBuffer() {
        int i = this._outputTail;
        int i2 = this._outputHead;
        int i3 = i - i2;
        if (i3 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i3);
        }
    }

    public final void _prependOrWriteCharacterEscape(char c, int i) {
        int i2;
        LogWriter logWriter = this._writer;
        if (i >= 0) {
            int i3 = this._outputTail;
            if (i3 >= 2) {
                int i4 = i3 - 2;
                this._outputHead = i4;
                char[] cArr = this._outputBuffer;
                cArr[i4] = '\\';
                cArr[i3 - 1] = (char) i;
                return;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr2[1] = (char) i;
            logWriter.write(cArr2, 0, 2);
            return;
        }
        if (i == -2) {
            throw null;
        }
        int i5 = this._outputTail;
        char[] cArr3 = HEX_CHARS;
        if (i5 < 6) {
            char[] cArr4 = this._entityBuffer;
            if (cArr4 == null) {
                cArr4 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c <= 255) {
                cArr4[6] = cArr3[c >> 4];
                cArr4[7] = cArr3[c & 15];
                logWriter.write(cArr4, 2, 6);
                return;
            } else {
                int i6 = c >> '\b';
                cArr4[10] = cArr3[(i6 & 255) >> 4];
                cArr4[11] = cArr3[i6 & 15];
                cArr4[12] = cArr3[(c & 255) >> 4];
                cArr4[13] = cArr3[c & 15];
                logWriter.write(cArr4, 8, 6);
                return;
            }
        }
        char[] cArr5 = this._outputBuffer;
        int i7 = i5 - 6;
        this._outputHead = i7;
        cArr5[i7] = '\\';
        cArr5[i5 - 5] = 'u';
        if (c > 255) {
            int i8 = c >> '\b';
            cArr5[i5 - 4] = cArr3[(i8 & 255) >> 4];
            i2 = i5 - 3;
            cArr5[i2] = cArr3[i8 & 15];
            c = (char) (c & 255);
        } else {
            cArr5[i5 - 4] = '0';
            i2 = i5 - 3;
            cArr5[i2] = '0';
        }
        cArr5[i2 + 1] = cArr3[c >> 4];
        cArr5[i2 + 2] = cArr3[c & 15];
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public final void _verifyValueWrite(String str) {
        char c;
        JsonWriteContext jsonWriteContext = this._writeContext;
        int i = jsonWriteContext._type;
        if (i != 2) {
            int i2 = jsonWriteContext._index;
            if (i == 1) {
                jsonWriteContext._index = i2 + 1;
                if (i2 >= 0) {
                    c = 1;
                }
                c = 0;
            } else {
                int i3 = i2 + 1;
                jsonWriteContext._index = i3;
                if (i3 != 0) {
                    c = 3;
                }
                c = 0;
            }
        } else if (jsonWriteContext._gotName) {
            jsonWriteContext._gotName = false;
            jsonWriteContext._index++;
            c = 2;
        } else {
            c = 5;
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        char c2 = ',';
        if (prettyPrinter == null) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 5) {
                            return;
                        }
                        _reportCantWriteValueExpectName(str);
                        throw null;
                    }
                    SerializedString serializedString = this._rootValueSeparator;
                    if (serializedString != null) {
                        writeRaw(serializedString._value);
                        return;
                    }
                    return;
                }
                c2 = ':';
            }
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr[i4] = c2;
            return;
        }
        if (c == 0) {
            if (i == 1) {
                DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
                defaultPrettyPrinter._arrayIndenter.writeIndentation(this, defaultPrettyPrinter._nesting);
                return;
            } else {
                if (i == 2) {
                    DefaultPrettyPrinter defaultPrettyPrinter2 = (DefaultPrettyPrinter) prettyPrinter;
                    defaultPrettyPrinter2._objectIndenter.writeIndentation(this, defaultPrettyPrinter2._nesting);
                    return;
                }
                return;
            }
        }
        if (c == 1) {
            DefaultPrettyPrinter defaultPrettyPrinter3 = (DefaultPrettyPrinter) prettyPrinter;
            int i5 = PrettyPrinter.$r8$clinit;
            writeRaw(',');
            defaultPrettyPrinter3._arrayIndenter.writeIndentation(this, defaultPrettyPrinter3._nesting);
            return;
        }
        if (c == 2) {
            DefaultPrettyPrinter defaultPrettyPrinter4 = (DefaultPrettyPrinter) prettyPrinter;
            if (defaultPrettyPrinter4._spacesInObjectEntries) {
                writeRaw(defaultPrettyPrinter4._objectFieldValueSeparatorWithSpaces);
                return;
            } else {
                int i6 = PrettyPrinter.$r8$clinit;
                writeRaw(':');
                return;
            }
        }
        if (c != 3) {
            if (c == 5) {
                _reportCantWriteValueExpectName(str);
                throw null;
            }
            int i7 = VersionUtil.$r8$clinit;
            Gson$$ExternalSyntheticBUOutline0.m$1("Internal error: this code path should never get executed");
            return;
        }
        SerializedString serializedString2 = ((DefaultPrettyPrinter) prettyPrinter)._rootSeparator;
        if (serializedString2 != null) {
            String str2 = serializedString2._value;
            char[] cArr2 = this._outputBuffer;
            int i8 = this._outputTail;
            int length = str2.length();
            if (i8 + length > cArr2.length) {
                length = -1;
            } else {
                str2.getChars(0, length, cArr2, i8);
            }
            if (length < 0) {
                writeRaw(str2);
            } else {
                this._outputTail += length;
            }
        }
    }

    public final int _writeBinary(Base64Variant base64Variant, Buffer$inputStream$1 buffer$inputStream$1, byte[] bArr, int i) {
        int _readMore;
        int i2 = this._outputEnd - 6;
        int i3 = 2;
        int i4 = base64Variant._maxLineLength >> 2;
        int i5 = -3;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i <= 2) {
                break;
            }
            if (i6 > i5) {
                i7 = _readMore(buffer$inputStream$1, bArr, i6, i7, i);
                if (i7 < 3) {
                    i6 = 0;
                    break;
                }
                i5 = i7 - 3;
                i6 = 0;
            }
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i8 = i6 + 2;
            int i9 = ((bArr[i6 + 1] & 255) | (bArr[i6] << 8)) << 8;
            i6 += 3;
            i -= 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk(this._outputBuffer, (bArr[i8] & 255) | i9, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            i4--;
            if (i4 <= 0) {
                char[] cArr = this._outputBuffer;
                int i10 = encodeBase64Chunk + 1;
                this._outputTail = i10;
                cArr[encodeBase64Chunk] = '\\';
                this._outputTail = encodeBase64Chunk + 2;
                cArr[i10] = 'n';
                i4 = base64Variant._maxLineLength >> 2;
            }
        }
        if (i <= 0 || (_readMore = _readMore(buffer$inputStream$1, bArr, i6, i7, i)) <= 0) {
            return i;
        }
        if (this._outputTail > i2) {
            _flushBuffer();
        }
        int i11 = bArr[0] << 16;
        if (1 < _readMore) {
            i11 |= (bArr[1] & 255) << 8;
        } else {
            i3 = 1;
        }
        this._outputTail = base64Variant.encodeBase64Partial(i11, i3, this._outputBuffer, this._outputTail);
        return i - i3;
    }

    public final void _writeNull() {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i] = 'n';
        cArr[i + 1] = 'u';
        cArr[i + 2] = 'l';
        cArr[i + 3] = 'l';
        this._outputTail = i + 4;
    }

    public final void _writeQuotedRaw(String str) {
        int i = this._outputTail;
        int i2 = this._outputEnd;
        if (i >= i2) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        char c = this._quoteChar;
        cArr[i3] = c;
        writeRaw(str);
        if (this._outputTail >= i2) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068 A[LOOP:2: B:11:0x0039->B:17:0x0068, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f A[EDGE_INSN: B:18:0x004f->B:19:0x004f BREAK  A[LOOP:2: B:11:0x0039->B:17:0x0068], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00da A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeString(java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeString(java.lang.String):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                int i = this._writeContext._type;
                if (i != 1) {
                    if (i != 2) {
                        break;
                    } else {
                        writeEndObject();
                    }
                } else {
                    writeEndArray();
                }
            }
        }
        _flushBuffer();
        this._outputHead = 0;
        this._outputTail = 0;
        ImageLoader$Builder imageLoader$Builder = this._ioContext;
        if (this._writer != null) {
            imageLoader$Builder.getClass();
            if (!isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM);
            }
        }
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            char[] cArr2 = (char[]) imageLoader$Builder.extras;
            if (cArr != cArr2 && cArr.length < cArr2.length) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Trying to release buffer smaller than original");
            } else {
                imageLoader$Builder.extras = null;
                ((BufferRecycler) imageLoader$Builder.defaults)._charBuffers.set(1, cArr);
            }
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        _flushBuffer();
        if (this._writer != null) {
            isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) {
        int encodeBase64Chunk;
        _verifyValueWrite("write a binary value");
        int i3 = this._outputTail;
        int i4 = this._outputEnd;
        if (i3 >= i4) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        char c = this._quoteChar;
        cArr[i5] = c;
        int i6 = i2 + i;
        int i7 = i6 - 3;
        int i8 = i4 - 6;
        int i9 = base64Variant._maxLineLength;
        loop0: while (true) {
            int i10 = i9 >> 2;
            while (i <= i7) {
                if (this._outputTail > i8) {
                    _flushBuffer();
                }
                int i11 = i + 2;
                int i12 = ((bArr[i + 1] & 255) | (bArr[i] << 8)) << 8;
                i += 3;
                encodeBase64Chunk = base64Variant.encodeBase64Chunk(this._outputBuffer, i12 | (bArr[i11] & 255), this._outputTail);
                this._outputTail = encodeBase64Chunk;
                i10--;
                if (i10 <= 0) {
                    break;
                }
            }
            char[] cArr2 = this._outputBuffer;
            int i13 = encodeBase64Chunk + 1;
            this._outputTail = i13;
            cArr2[encodeBase64Chunk] = '\\';
            this._outputTail = encodeBase64Chunk + 2;
            cArr2[i13] = 'n';
            i9 = base64Variant._maxLineLength;
        }
        int i14 = i6 - i;
        if (i14 > 0) {
            if (this._outputTail > i8) {
                _flushBuffer();
            }
            int i15 = i + 1;
            int i16 = bArr[i] << 16;
            if (i14 == 2) {
                i16 |= (bArr[i15] & 255) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i16, i14, this._outputBuffer, this._outputTail);
        }
        if (this._outputTail >= i4) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i17 = this._outputTail;
        this._outputTail = i17 + 1;
        cArr3[i17] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeBoolean(boolean z) {
        int i;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z) {
            cArr[i2] = 't';
            cArr[i2 + 1] = 'r';
            cArr[i2 + 2] = 'u';
            i = i2 + 3;
            cArr[i] = 'e';
        } else {
            cArr[i2] = 'f';
            cArr[i2 + 1] = 'a';
            cArr[i2 + 2] = 'l';
            cArr[i2 + 3] = 's';
            i = i2 + 4;
            cArr[i] = 'e';
        }
        this._outputTail = i + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() {
        JsonWriteContext jsonWriteContext = this._writeContext;
        if (jsonWriteContext._type != 1) {
            _reportError("Current context not Array but ".concat(jsonWriteContext.typeDesc()));
            throw null;
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            int i = jsonWriteContext._index + 1;
            DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
            ObjectWriter objectWriter = defaultPrettyPrinter._arrayIndenter;
            if (!objectWriter.isInline()) {
                defaultPrettyPrinter._nesting--;
            }
            if (i > 0) {
                objectWriter.writeIndentation(this, defaultPrettyPrinter._nesting);
            } else {
                writeRaw(' ');
            }
            writeRaw(']');
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = ']';
        }
        this._writeContext = (JsonWriteContext) this._writeContext._parent;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() {
        JsonWriteContext jsonWriteContext = this._writeContext;
        if (jsonWriteContext._type != 2) {
            _reportError("Current context not Object but ".concat(jsonWriteContext.typeDesc()));
            throw null;
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            int i = jsonWriteContext._index + 1;
            DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
            ObjectWriter objectWriter = defaultPrettyPrinter._objectIndenter;
            if (!objectWriter.isInline()) {
                defaultPrettyPrinter._nesting--;
            }
            if (i > 0) {
                objectWriter.writeIndentation(this, defaultPrettyPrinter._nesting);
            } else {
                writeRaw(' ');
            }
            writeRaw('}');
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = '}';
        }
        this._writeContext = (JsonWriteContext) this._writeContext._parent;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeFieldName(SerializedString serializedString) {
        int writeFieldName = this._writeContext.writeFieldName(serializedString._value);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
            throw null;
        }
        boolean z = writeFieldName == 1;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        int i = this._outputEnd;
        char c = this._quoteChar;
        if (prettyPrinter != null) {
            if (z) {
                DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
                writeRaw(',');
                defaultPrettyPrinter._objectIndenter.writeIndentation(this, defaultPrettyPrinter._nesting);
            } else {
                DefaultPrettyPrinter defaultPrettyPrinter2 = (DefaultPrettyPrinter) prettyPrinter;
                defaultPrettyPrinter2._objectIndenter.writeIndentation(this, defaultPrettyPrinter2._nesting);
            }
            char[] asQuotedChars = serializedString.asQuotedChars();
            if (this._cfgUnqNames) {
                writeRaw(asQuotedChars, asQuotedChars.length);
                return;
            }
            if (this._outputTail >= i) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = c;
            writeRaw(asQuotedChars, asQuotedChars.length);
            if (this._outputTail >= i) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            cArr2[i3] = c;
            return;
        }
        if (this._outputTail + 1 >= i) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr3 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr3[i4] = ',';
        }
        if (this._cfgUnqNames) {
            char[] asQuotedChars2 = serializedString.asQuotedChars();
            writeRaw(asQuotedChars2, asQuotedChars2.length);
            return;
        }
        char[] cArr4 = this._outputBuffer;
        int i5 = this._outputTail;
        int i6 = i5 + 1;
        this._outputTail = i6;
        cArr4[i5] = c;
        char[] cArr5 = serializedString._quotedChars;
        if (cArr5 == null) {
            JsonStringEncoder jsonStringEncoder = SerializedString.JSON_ENCODER;
            String str = serializedString._value;
            jsonStringEncoder.getClass();
            cArr5 = JsonStringEncoder.quoteAsString(str);
            serializedString._quotedChars = cArr5;
        }
        int length = cArr5.length;
        if (i6 + length > cArr4.length) {
            length = -1;
        } else {
            System.arraycopy(cArr5, 0, cArr4, i6, length);
        }
        if (length < 0) {
            char[] asQuotedChars3 = serializedString.asQuotedChars();
            writeRaw(asQuotedChars3, asQuotedChars3.length);
            if (this._outputTail >= i) {
                _flushBuffer();
            }
            char[] cArr6 = this._outputBuffer;
            int i7 = this._outputTail;
            this._outputTail = i7 + 1;
            cArr6[i7] = c;
            return;
        }
        int i8 = this._outputTail + length;
        this._outputTail = i8;
        if (i8 >= i) {
            _flushBuffer();
        }
        char[] cArr7 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        cArr7[i9] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeNull() {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeNumber(int i) {
        _verifyValueWrite("write a number");
        boolean z = this._cfgNumbersAsStrings;
        int i2 = this._outputEnd;
        if (!z) {
            if (this._outputTail + 11 >= i2) {
                _flushBuffer();
            }
            this._outputTail = NumberOutput.outputInt(this._outputBuffer, i, this._outputTail);
            return;
        }
        if (this._outputTail + 13 >= i2) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        int i4 = i3 + 1;
        this._outputTail = i4;
        char c = this._quoteChar;
        cArr[i3] = c;
        int outputInt = NumberOutput.outputInt(cArr, i, i4);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeRaw(String str) {
        int length = str.length();
        int i = this._outputTail;
        int i2 = this._outputEnd;
        int i3 = i2 - i;
        if (i3 == 0) {
            _flushBuffer();
            i = this._outputTail;
            i3 = i2 - i;
        }
        char[] cArr = this._outputBuffer;
        if (i3 >= length) {
            str.getChars(0, length, cArr, i);
            this._outputTail += length;
            return;
        }
        int i4 = i2 - i;
        str.getChars(0, i4, cArr, i);
        this._outputTail += i4;
        _flushBuffer();
        int length2 = str.length() - i4;
        while (true) {
            char[] cArr2 = this._outputBuffer;
            if (length2 <= i2) {
                str.getChars(i4, i4 + length2, cArr2, 0);
                this._outputHead = 0;
                this._outputTail = length2;
                return;
            } else {
                int i5 = i4 + i2;
                str.getChars(i4, i5, cArr2, 0);
                this._outputHead = 0;
                this._outputTail = i2;
                _flushBuffer();
                length2 -= i2;
                i4 = i5;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray(Object obj) {
        _verifyValueWrite("start an array");
        JsonWriteContext jsonWriteContext = this._writeContext;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) jsonWriteContext._child;
        ImageLoader$Builder imageLoader$Builder = null;
        if (jsonWriteContext2 == null) {
            ImageLoader$Builder imageLoader$Builder2 = (ImageLoader$Builder) jsonWriteContext._dups;
            if (imageLoader$Builder2 != null) {
                imageLoader$Builder = new ImageLoader$Builder(22, (JsonGeneratorImpl) imageLoader$Builder2.application);
            }
            jsonWriteContext2 = new JsonWriteContext(1, jsonWriteContext, imageLoader$Builder, obj);
            jsonWriteContext._child = jsonWriteContext2;
        } else {
            jsonWriteContext2._type = 1;
            jsonWriteContext2._index = -1;
            jsonWriteContext2._currentName = null;
            jsonWriteContext2._gotName = false;
            jsonWriteContext2._currentValue = obj;
            ImageLoader$Builder imageLoader$Builder3 = (ImageLoader$Builder) jsonWriteContext2._dups;
            if (imageLoader$Builder3 != null) {
                imageLoader$Builder3.defaults = null;
                imageLoader$Builder3.componentRegistry = null;
                imageLoader$Builder3.extras = null;
            }
        }
        this._writeContext = jsonWriteContext2;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            ((DefaultPrettyPrinter) prettyPrinter).writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray$1(Object obj) {
        _verifyValueWrite("start an array");
        JsonWriteContext jsonWriteContext = this._writeContext;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) jsonWriteContext._child;
        ImageLoader$Builder imageLoader$Builder = null;
        if (jsonWriteContext2 == null) {
            ImageLoader$Builder imageLoader$Builder2 = (ImageLoader$Builder) jsonWriteContext._dups;
            if (imageLoader$Builder2 != null) {
                imageLoader$Builder = new ImageLoader$Builder(22, (JsonGeneratorImpl) imageLoader$Builder2.application);
            }
            jsonWriteContext2 = new JsonWriteContext(1, jsonWriteContext, imageLoader$Builder, obj);
            jsonWriteContext._child = jsonWriteContext2;
        } else {
            jsonWriteContext2._type = 1;
            jsonWriteContext2._index = -1;
            jsonWriteContext2._currentName = null;
            jsonWriteContext2._gotName = false;
            jsonWriteContext2._currentValue = obj;
            ImageLoader$Builder imageLoader$Builder3 = (ImageLoader$Builder) jsonWriteContext2._dups;
            if (imageLoader$Builder3 != null) {
                imageLoader$Builder3.defaults = null;
                imageLoader$Builder3.componentRegistry = null;
                imageLoader$Builder3.extras = null;
            }
        }
        this._writeContext = jsonWriteContext2;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            ((DefaultPrettyPrinter) prettyPrinter).writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject(Object obj) {
        _verifyValueWrite("start an object");
        JsonWriteContext jsonWriteContext = this._writeContext;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) jsonWriteContext._child;
        ImageLoader$Builder imageLoader$Builder = null;
        if (jsonWriteContext2 == null) {
            ImageLoader$Builder imageLoader$Builder2 = (ImageLoader$Builder) jsonWriteContext._dups;
            if (imageLoader$Builder2 != null) {
                imageLoader$Builder = new ImageLoader$Builder(22, (JsonGeneratorImpl) imageLoader$Builder2.application);
            }
            jsonWriteContext2 = new JsonWriteContext(2, jsonWriteContext, imageLoader$Builder, obj);
            jsonWriteContext._child = jsonWriteContext2;
        } else {
            jsonWriteContext2._type = 2;
            jsonWriteContext2._index = -1;
            jsonWriteContext2._currentName = null;
            jsonWriteContext2._gotName = false;
            jsonWriteContext2._currentValue = obj;
            ImageLoader$Builder imageLoader$Builder3 = (ImageLoader$Builder) jsonWriteContext2._dups;
            if (imageLoader$Builder3 != null) {
                imageLoader$Builder3.defaults = null;
                imageLoader$Builder3.componentRegistry = null;
                imageLoader$Builder3.extras = null;
            }
        }
        this._writeContext = jsonWriteContext2;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
            writeRaw('{');
            if (defaultPrettyPrinter._objectIndenter.isInline()) {
                return;
            }
            defaultPrettyPrinter._nesting++;
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a A[EDGE_INSN: B:15:0x004a->B:16:0x004a BREAK  A[LOOP:1: B:9:0x0039->B:33:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[LOOP:1: B:9:0x0039->B:33:?, LOOP_END, SYNTHETIC] */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeString(char[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator.writeString(char[], int, int):void");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeNumber(long j) {
        _verifyValueWrite("write a number");
        boolean z = this._cfgNumbersAsStrings;
        int i = this._outputEnd;
        if (z) {
            if (this._outputTail + 23 >= i) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            int i3 = i2 + 1;
            this._outputTail = i3;
            char c = this._quoteChar;
            cArr[i2] = c;
            int outputLong = NumberOutput.outputLong(j, cArr, i3);
            char[] cArr2 = this._outputBuffer;
            this._outputTail = outputLong + 1;
            cArr2[outputLong] = c;
            return;
        }
        if (this._outputTail + 21 >= i) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeNumber(double d) {
        if (!this._cfgNumbersAsStrings) {
            String str = NumberOutput.SMALLEST_INT;
            if ((!Double.isNaN(d) && !Double.isInfinite(d)) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS)) {
                _verifyValueWrite("write a number");
                writeRaw(String.valueOf(d));
                return;
            }
        }
        writeString(String.valueOf(d));
    }

    public final void writeRaw(char[] cArr, int i) {
        if (i < 32) {
            if (i > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, 0, this._outputBuffer, this._outputTail, i);
            this._outputTail += i;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, 0, i);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeNumber(float f) {
        if (!this._cfgNumbersAsStrings) {
            String str = NumberOutput.SMALLEST_INT;
            if ((!Float.isNaN(f) && !Float.isInfinite(f)) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS)) {
                _verifyValueWrite("write a number");
                writeRaw(String.valueOf(f));
                return;
            }
        }
        writeString(String.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeRaw(char c) {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() {
        _verifyValueWrite("start an array");
        JsonWriteContext jsonWriteContext = this._writeContext;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) jsonWriteContext._child;
        ImageLoader$Builder imageLoader$Builder = null;
        if (jsonWriteContext2 == null) {
            ImageLoader$Builder imageLoader$Builder2 = (ImageLoader$Builder) jsonWriteContext._dups;
            if (imageLoader$Builder2 != null) {
                imageLoader$Builder = new ImageLoader$Builder(22, (JsonGeneratorImpl) imageLoader$Builder2.application);
            }
            jsonWriteContext2 = new JsonWriteContext(1, jsonWriteContext, imageLoader$Builder);
            jsonWriteContext._child = jsonWriteContext2;
        } else {
            jsonWriteContext2._type = 1;
            jsonWriteContext2._index = -1;
            jsonWriteContext2._currentName = null;
            jsonWriteContext2._gotName = false;
            ImageLoader$Builder imageLoader$Builder3 = (ImageLoader$Builder) jsonWriteContext2._dups;
            if (imageLoader$Builder3 != null) {
                imageLoader$Builder3.defaults = null;
                imageLoader$Builder3.componentRegistry = null;
                imageLoader$Builder3.extras = null;
            }
        }
        this._writeContext = jsonWriteContext2;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            ((DefaultPrettyPrinter) prettyPrinter).writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() {
        _verifyValueWrite("start an object");
        JsonWriteContext jsonWriteContext = this._writeContext;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) jsonWriteContext._child;
        ImageLoader$Builder imageLoader$Builder = null;
        if (jsonWriteContext2 == null) {
            ImageLoader$Builder imageLoader$Builder2 = (ImageLoader$Builder) jsonWriteContext._dups;
            if (imageLoader$Builder2 != null) {
                imageLoader$Builder = new ImageLoader$Builder(22, (JsonGeneratorImpl) imageLoader$Builder2.application);
            }
            jsonWriteContext2 = new JsonWriteContext(2, jsonWriteContext, imageLoader$Builder);
            jsonWriteContext._child = jsonWriteContext2;
        } else {
            jsonWriteContext2._type = 2;
            jsonWriteContext2._index = -1;
            jsonWriteContext2._currentName = null;
            jsonWriteContext2._gotName = false;
            ImageLoader$Builder imageLoader$Builder3 = (ImageLoader$Builder) jsonWriteContext2._dups;
            if (imageLoader$Builder3 != null) {
                imageLoader$Builder3.defaults = null;
                imageLoader$Builder3.componentRegistry = null;
                imageLoader$Builder3.extras = null;
            }
        }
        this._writeContext = jsonWriteContext2;
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
            writeRaw('{');
            if (defaultPrettyPrinter._objectIndenter.isInline()) {
                return;
            }
            defaultPrettyPrinter._nesting++;
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    public final int _writeBinary(Base64Variant base64Variant, Buffer$inputStream$1 buffer$inputStream$1, byte[] bArr) {
        int i = this._outputEnd - 6;
        int i2 = 2;
        int i3 = base64Variant._maxLineLength >> 2;
        int i4 = -3;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i5 > i4) {
                i6 = _readMore(buffer$inputStream$1, bArr, i5, i6, bArr.length);
                if (i6 < 3) {
                    break;
                }
                i4 = i6 - 3;
                i5 = 0;
            }
            if (this._outputTail > i) {
                _flushBuffer();
            }
            int i8 = i5 + 2;
            int i9 = ((bArr[i5 + 1] & 255) | (bArr[i5] << 8)) << 8;
            i5 += 3;
            i7 += 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk(this._outputBuffer, (bArr[i8] & 255) | i9, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            i3--;
            if (i3 <= 0) {
                char[] cArr = this._outputBuffer;
                int i10 = encodeBase64Chunk + 1;
                this._outputTail = i10;
                cArr[encodeBase64Chunk] = '\\';
                this._outputTail = encodeBase64Chunk + 2;
                cArr[i10] = 'n';
                i3 = base64Variant._maxLineLength >> 2;
            }
        }
        if (i6 <= 0) {
            return i7;
        }
        if (this._outputTail > i) {
            _flushBuffer();
        }
        int i11 = bArr[0] << 16;
        if (1 < i6) {
            i11 |= (bArr[1] & 255) << 8;
        } else {
            i2 = 1;
        }
        int i12 = i7 + i2;
        this._outputTail = base64Variant.encodeBase64Partial(i11, i2, this._outputBuffer, this._outputTail);
        return i12;
    }

    public final int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c, int i3) {
        int i4;
        LogWriter logWriter = this._writer;
        if (i3 >= 0) {
            if (i > 1 && i < i2) {
                int i5 = i - 2;
                cArr[i5] = '\\';
                cArr[i - 1] = (char) i3;
                return i5;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            cArr2[1] = (char) i3;
            logWriter.write(cArr2, 0, 2);
            return i;
        }
        if (i3 != -2) {
            char[] cArr3 = HEX_CHARS;
            if (i > 5 && i < i2) {
                cArr[i - 6] = '\\';
                int i6 = i - 4;
                cArr[i - 5] = 'u';
                if (c > 255) {
                    int i7 = c >> '\b';
                    int i8 = i - 3;
                    cArr[i6] = cArr3[(i7 & 255) >> 4];
                    i4 = i - 2;
                    cArr[i8] = cArr3[i7 & 15];
                    c = (char) (c & 255);
                } else {
                    int i9 = i - 3;
                    cArr[i6] = '0';
                    i4 = i - 2;
                    cArr[i9] = '0';
                }
                cArr[i4] = cArr3[c >> 4];
                cArr[i4 + 1] = cArr3[c & 15];
                return i4 - 4;
            }
            char[] cArr4 = this._entityBuffer;
            if (cArr4 == null) {
                cArr4 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i10 = c >> '\b';
                cArr4[10] = cArr3[(i10 & 255) >> 4];
                cArr4[11] = cArr3[i10 & 15];
                cArr4[12] = cArr3[(c & 255) >> 4];
                cArr4[13] = cArr3[c & 15];
                logWriter.write(cArr4, 8, 6);
                return i;
            }
            cArr4[6] = cArr3[c >> 4];
            cArr4[7] = cArr3[c & 15];
            logWriter.write(cArr4, 2, 6);
            return i;
        }
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeString(String str) {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int i = this._outputTail;
        int i2 = this._outputEnd;
        if (i >= i2) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        char c = this._quoteChar;
        cArr[i3] = c;
        _writeString(str);
        if (this._outputTail >= i2) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeFieldName(String str) {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName != 4) {
            boolean z = writeFieldName == 1;
            PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
            int i = this._outputEnd;
            char c = this._quoteChar;
            if (prettyPrinter != null) {
                if (z) {
                    DefaultPrettyPrinter defaultPrettyPrinter = (DefaultPrettyPrinter) prettyPrinter;
                    writeRaw(',');
                    defaultPrettyPrinter._objectIndenter.writeIndentation(this, defaultPrettyPrinter._nesting);
                } else {
                    DefaultPrettyPrinter defaultPrettyPrinter2 = (DefaultPrettyPrinter) prettyPrinter;
                    defaultPrettyPrinter2._objectIndenter.writeIndentation(this, defaultPrettyPrinter2._nesting);
                }
                if (this._cfgUnqNames) {
                    _writeString(str);
                    return;
                }
                if (this._outputTail >= i) {
                    _flushBuffer();
                }
                char[] cArr = this._outputBuffer;
                int i2 = this._outputTail;
                this._outputTail = i2 + 1;
                cArr[i2] = c;
                _writeString(str);
                if (this._outputTail >= i) {
                    _flushBuffer();
                }
                char[] cArr2 = this._outputBuffer;
                int i3 = this._outputTail;
                this._outputTail = i3 + 1;
                cArr2[i3] = c;
                return;
            }
            if (this._outputTail + 1 >= i) {
                _flushBuffer();
            }
            if (z) {
                char[] cArr3 = this._outputBuffer;
                int i4 = this._outputTail;
                this._outputTail = i4 + 1;
                cArr3[i4] = ',';
            }
            if (this._cfgUnqNames) {
                _writeString(str);
                return;
            }
            char[] cArr4 = this._outputBuffer;
            int i5 = this._outputTail;
            this._outputTail = i5 + 1;
            cArr4[i5] = c;
            _writeString(str);
            if (this._outputTail >= i) {
                _flushBuffer();
            }
            char[] cArr5 = this._outputBuffer;
            int i6 = this._outputTail;
            this._outputTail = i6 + 1;
            cArr5[i6] = c;
            return;
        }
        _reportError("Can not write a field name, expecting a value");
        throw null;
    }
}
