package com.google.gson.stream;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class JsonWriter implements Closeable, Flushable {
    public static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    public String deferredName;
    public boolean htmlSafe;
    public boolean lenient;
    public final Writer out;
    public final String separator;
    public boolean serializeNulls;
    public int[] stack;
    public int stackSize;
    public static final Pattern VALID_JSON_NUMBER_PATTERN = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    public static final String[] REPLACEMENT_CHARS = new String[128];

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
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        int[] iArr = new int[32];
        this.stack = iArr;
        this.stackSize = 0;
        if (iArr.length == 0) {
            iArr = Arrays.copyOf(iArr, 0);
            this.stack = iArr;
        }
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        this.separator = ":";
        this.serializeNulls = true;
        Objects.requireNonNull(writer, "out == null");
        this.out = writer;
    }

    public final void beforeValue() {
        int peek = peek();
        if (peek == 1) {
            this.stack[this.stackSize - 1] = 2;
            newline();
            return;
        }
        Writer writer = this.out;
        if (peek == 2) {
            writer.append(',');
            newline();
            return;
        }
        if (peek == 4) {
            writer.append((CharSequence) this.separator);
            this.stack[this.stackSize - 1] = 5;
            return;
        }
        if (peek != 6) {
            if (peek != 7) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Nesting problem.");
                return;
            } else if (!this.lenient) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("JSON must have only one top-level value.");
                return;
            }
        }
        this.stack[this.stackSize - 1] = 7;
    }

    public void beginArray() {
        writeDeferredName();
        beforeValue();
        int i = this.stackSize;
        int[] iArr = this.stack;
        if (i == iArr.length) {
            iArr = Arrays.copyOf(iArr, i * 2);
            this.stack = iArr;
        }
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = 1;
        this.out.write(91);
    }

    public void beginObject() {
        writeDeferredName();
        beforeValue();
        int i = this.stackSize;
        int[] iArr = this.stack;
        if (i == iArr.length) {
            iArr = Arrays.copyOf(iArr, i * 2);
            this.stack = iArr;
        }
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = 3;
        this.out.write(123);
    }

    public final void close(char c, int i, int i2) {
        int peek = peek();
        if (peek != i2 && peek != i) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Nesting problem.");
            return;
        }
        if (this.deferredName != null) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Dangling name: ", this.deferredName);
            return;
        }
        this.stackSize--;
        if (peek == i2) {
            newline();
        }
        this.out.write(c);
    }

    public void endArray() {
        close(']', 1, 2);
    }

    public void endObject() {
        close('}', 3, 5);
    }

    public void flush() {
        if (this.stackSize != 0) {
            this.out.flush();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("JsonWriter is closed.");
        }
    }

    public void name(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.deferredName != null) {
            Gson$$ExternalSyntheticBUOutline0.m();
        } else if (this.stackSize != 0) {
            this.deferredName = str;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("JsonWriter is closed.");
        }
    }

    public JsonWriter nullValue() {
        if (this.deferredName != null) {
            if (!this.serializeNulls) {
                this.deferredName = null;
                return this;
            }
            writeDeferredName();
        }
        beforeValue();
        this.out.write("null");
        return this;
    }

    public final int peek() {
        int i = this.stackSize;
        if (i != 0) {
            return this.stack[i - 1];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("JsonWriter is closed.");
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void string(java.lang.String r8) {
        /*
            r7 = this;
            boolean r0 = r7.htmlSafe
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.HTML_SAFE_REPLACEMENT_CHARS
            goto L9
        L7:
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.REPLACEMENT_CHARS
        L9:
            java.io.Writer r7 = r7.out
            r1 = 34
            r7.write(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r2) goto L41
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L3e
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L3e
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L39
            int r6 = r3 - r4
            r7.write(r8, r4, r6)
        L39:
            r7.write(r5)
            int r4 = r3 + 1
        L3e:
            int r3 = r3 + 1
            goto L16
        L41:
            if (r4 >= r2) goto L47
            int r2 = r2 - r4
            r7.write(r8, r4, r2)
        L47:
            r7.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.string(java.lang.String):void");
    }

    public void value(Number number) {
        if (number == null) {
            nullValue();
            return;
        }
        writeDeferredName();
        String obj = number.toString();
        if (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !VALID_JSON_NUMBER_PATTERN.matcher(obj).matches()) {
                Utils$$ExternalSyntheticBUOutline0.m("String created by ", cls, " is not a valid JSON number: ", obj);
                return;
            }
        } else if (!this.lenient) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Numeric values must be finite, but was ".concat(obj));
            return;
        }
        beforeValue();
        this.out.append((CharSequence) obj);
    }

    public final void writeDeferredName() {
        if (this.deferredName != null) {
            int peek = peek();
            if (peek == 5) {
                this.out.write(44);
            } else if (peek != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Nesting problem.");
                return;
            }
            newline();
            this.stack[this.stackSize - 1] = 4;
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public final void newline() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out.close();
        int i = this.stackSize;
        if (i <= 1 && (i != 1 || this.stack[i - 1] == 7)) {
            this.stackSize = 0;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incomplete document");
        }
    }

    public void value(boolean z) {
        writeDeferredName();
        beforeValue();
        this.out.write(z ? "true" : "false");
    }

    public void value(Boolean bool) {
        if (bool == null) {
            nullValue();
            return;
        }
        writeDeferredName();
        beforeValue();
        this.out.write(bool.booleanValue() ? "true" : "false");
    }

    public void value(double d) {
        writeDeferredName();
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(d));
    }

    public void value(long j) {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
    }

    public void value(String str) {
        if (str == null) {
            nullValue();
            return;
        }
        writeDeferredName();
        beforeValue();
        string(str);
    }
}
