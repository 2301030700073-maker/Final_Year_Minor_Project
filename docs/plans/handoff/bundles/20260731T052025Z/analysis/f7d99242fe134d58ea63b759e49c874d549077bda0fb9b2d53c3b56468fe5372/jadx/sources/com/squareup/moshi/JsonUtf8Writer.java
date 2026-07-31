package com.squareup.moshi;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import java.io.Closeable;
import java.io.Flushable;
import java.util.Arrays;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonUtf8Writer implements Closeable, Flushable {
    public static final String[] REPLACEMENT_CHARS = new String[128];
    public String deferredName;
    public boolean promoteValueToName;
    public int[] scopes;
    public boolean serializeNulls;
    public final Buffer sink;
    public String[] pathNames = new String[32];
    public int[] pathIndices = new int[32];
    public int flattenStackSize = -1;
    public int stackSize = 1;

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public JsonUtf8Writer(Buffer buffer) {
        int[] iArr = new int[32];
        this.scopes = iArr;
        this.sink = buffer;
        iArr[0] = 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void string(okio.Buffer r6, java.lang.String r7) {
        /*
            r0 = 34
            r6.m1053writeByte(r0)
            int r1 = r7.length()
            r2 = 0
            r3 = r2
        Lb:
            if (r2 >= r1) goto L36
            char r4 = r7.charAt(r2)
            r5 = 128(0x80, float:1.8E-43)
            if (r4 >= r5) goto L1c
            java.lang.String[] r5 = com.squareup.moshi.JsonUtf8Writer.REPLACEMENT_CHARS
            r4 = r5[r4]
            if (r4 != 0) goto L29
            goto L33
        L1c:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r4 != r5) goto L23
            java.lang.String r4 = "\\u2028"
            goto L29
        L23:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r4 != r5) goto L33
            java.lang.String r4 = "\\u2029"
        L29:
            if (r3 >= r2) goto L2e
            r6.writeUtf8(r3, r7, r2)
        L2e:
            r6.m1057writeUtf8(r4)
            int r3 = r2 + 1
        L33:
            int r2 = r2 + 1
            goto Lb
        L36:
            if (r3 >= r1) goto L3b
            r6.writeUtf8(r3, r7, r1)
        L3b:
            r6.m1053writeByte(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.JsonUtf8Writer.string(okio.Buffer, java.lang.String):void");
    }

    public final void beforeValue() {
        int peekScope = peekScope();
        int i = 2;
        if (peekScope != 1) {
            Buffer buffer = this.sink;
            if (peekScope == 2) {
                buffer.m1053writeByte(44);
            } else if (peekScope == 4) {
                buffer.m1057writeUtf8(":");
                i = 5;
            } else if (peekScope == 9) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Sink from valueSink() was not closed");
                return;
            } else {
                if (peekScope != 6) {
                    if (peekScope != 7) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting problem.");
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JSON must have only one top-level value.");
                        return;
                    }
                }
                i = 7;
            }
        }
        this.scopes[this.stackSize - 1] = i;
    }

    public final JsonUtf8Writer beginArray() {
        if (this.promoteValueToName) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Array cannot be used as a map key in JSON at path ".concat(getPath()));
            return null;
        }
        writeDeferredName();
        open('[', 1, 2);
        return this;
    }

    public final JsonUtf8Writer beginObject() {
        if (this.promoteValueToName) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Object cannot be used as a map key in JSON at path ".concat(getPath()));
            return null;
        }
        writeDeferredName();
        open('{', 3, 5);
        return this;
    }

    public final void close(char c, int i, int i2) {
        int peekScope = peekScope();
        if (peekScope != i2 && peekScope != i) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting problem.");
            return;
        }
        if (this.deferredName != null) {
            StreamSharing$$ExternalSyntheticLambda0.m(this.deferredName, "Dangling name: ");
            return;
        }
        int i3 = this.stackSize;
        int i4 = ~this.flattenStackSize;
        if (i3 == i4) {
            this.flattenStackSize = i4;
            return;
        }
        int i5 = i3 - 1;
        this.stackSize = i5;
        this.pathNames[i5] = null;
        int[] iArr = this.pathIndices;
        int i6 = i3 - 2;
        iArr[i6] = iArr[i6] + 1;
        this.sink.m1053writeByte((int) c);
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.stackSize != 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JsonWriter is closed.");
    }

    public final String getPath() {
        return Types.getPath(this.stackSize, this.scopes, this.pathNames, this.pathIndices);
    }

    public final JsonUtf8Writer name(String str) {
        if (str == null) {
            Regex$$ExternalSyntheticBUOutline0.m("name == null");
            return null;
        }
        if (this.stackSize == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JsonWriter is closed.");
            return null;
        }
        int peekScope = peekScope();
        if ((peekScope != 3 && peekScope != 5) || this.deferredName != null || this.promoteValueToName) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting problem.");
            return null;
        }
        this.deferredName = str;
        this.pathNames[this.stackSize - 1] = str;
        return this;
    }

    public final JsonUtf8Writer nullValue() {
        if (this.promoteValueToName) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("null cannot be used as a map key in JSON at path ".concat(getPath()));
            return null;
        }
        if (this.deferredName != null) {
            if (!this.serializeNulls) {
                this.deferredName = null;
                return this;
            }
            writeDeferredName();
        }
        beforeValue();
        this.sink.m1057writeUtf8("null");
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final void open(char c, int i, int i2) {
        int i3;
        int i4 = this.stackSize;
        int i5 = this.flattenStackSize;
        if (i4 == i5 && ((i3 = this.scopes[i4 - 1]) == i || i3 == i2)) {
            this.flattenStackSize = ~i5;
            return;
        }
        beforeValue();
        int i6 = this.stackSize;
        int[] iArr = this.scopes;
        if (i6 == iArr.length) {
            if (i6 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath() + ": circular reference?");
            }
            this.scopes = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.pathNames;
            this.pathNames = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.pathIndices;
            this.pathIndices = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.scopes;
        int i7 = this.stackSize;
        this.stackSize = i7 + 1;
        iArr3[i7] = i;
        this.pathIndices[i7] = 0;
        this.sink.m1053writeByte((int) c);
    }

    public final int peekScope() {
        int i = this.stackSize;
        if (i != 0) {
            return this.scopes[i - 1];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JsonWriter is closed.");
        return 0;
    }

    public final JsonUtf8Writer value(Number number) {
        if (number == null) {
            nullValue();
            return this;
        }
        String obj = number.toString();
        if (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN")) {
            Regex$$ExternalSyntheticBUOutline0.m$2(number, "Numeric values must be finite, but was ");
            return null;
        }
        if (this.promoteValueToName) {
            this.promoteValueToName = false;
            name(obj);
            return this;
        }
        writeDeferredName();
        beforeValue();
        this.sink.m1057writeUtf8(obj);
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final void writeDeferredName() {
        if (this.deferredName != null) {
            int peekScope = peekScope();
            Buffer buffer = this.sink;
            if (peekScope == 5) {
                buffer.m1053writeByte(44);
            } else if (peekScope != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting problem.");
                return;
            }
            this.scopes[this.stackSize - 1] = 4;
            string(buffer, this.deferredName);
            this.deferredName = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.stackSize;
        if (i <= 1 && (i != 1 || this.scopes[i - 1] == 7)) {
            this.stackSize = 0;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Incomplete document");
        }
    }

    public final JsonUtf8Writer value(long j) {
        if (this.promoteValueToName) {
            this.promoteValueToName = false;
            name(Long.toString(j));
            return this;
        }
        writeDeferredName();
        beforeValue();
        this.sink.m1057writeUtf8(Long.toString(j));
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final JsonUtf8Writer value(String str) {
        if (str == null) {
            nullValue();
            return this;
        }
        if (this.promoteValueToName) {
            this.promoteValueToName = false;
            name(str);
            return this;
        }
        writeDeferredName();
        beforeValue();
        string(this.sink, str);
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }
}
