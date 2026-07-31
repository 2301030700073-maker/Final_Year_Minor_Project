package com.google.gson.internal.bind;

import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import j$.util.Objects;
import java.io.Writer;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonTreeWriter extends JsonWriter {
    public String pendingName;
    public JsonElement product;
    public final ArrayList stack;
    public static final AnonymousClass1 UNWRITABLE_WRITER = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    public static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive("closed");

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
        this.stack = new ArrayList();
        this.product = JsonNull.INSTANCE;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void beginArray() {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void beginObject() {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList arrayList = this.stack;
        if (arrayList.isEmpty()) {
            arrayList.add(SENTINEL_CLOSED);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incomplete document");
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void endArray() {
        ArrayList arrayList = this.stack;
        if (arrayList.isEmpty() || this.pendingName != null) {
            Gson$$ExternalSyntheticBUOutline0.m();
        } else if (peek() instanceof JsonArray) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void endObject() {
        ArrayList arrayList = this.stack;
        if (arrayList.isEmpty() || this.pendingName != null) {
            Gson$$ExternalSyntheticBUOutline0.m();
        } else if (peek() instanceof JsonObject) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void name(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.stack.isEmpty() || this.pendingName != null) {
            Gson$$ExternalSyntheticBUOutline0.m();
        } else if (peek() instanceof JsonObject) {
            this.pendingName = str;
        } else {
            Gson$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter nullValue() {
        put(JsonNull.INSTANCE);
        return this;
    }

    public final JsonElement peek() {
        return (JsonElement) Animation.CC.m(1, this.stack);
    }

    public final void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!jsonElement.isJsonNull() || this.serializeNulls) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
            return;
        }
        if (this.stack.isEmpty()) {
            this.product = jsonElement;
            return;
        }
        JsonElement peek = peek();
        if (peek instanceof JsonArray) {
            ((JsonArray) peek).add(jsonElement);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(double d) {
        if (this.lenient || !(Double.isNaN(d) || Double.isInfinite(d))) {
            put(new JsonPrimitive(Double.valueOf(d)));
        } else {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
        }
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public final void flush() {
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(Number number) {
        if (number == null) {
            put(JsonNull.INSTANCE);
            return;
        }
        if (!this.lenient) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                Gson$$ExternalSyntheticBUOutline0.m("JSON forbids NaN and infinities: ", number);
                return;
            }
        }
        put(new JsonPrimitive(number));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(String str) {
        if (str == null) {
            put(JsonNull.INSTANCE);
        } else {
            put(new JsonPrimitive(str));
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(boolean z) {
        put(new JsonPrimitive(Boolean.valueOf(z)));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(long j) {
        put(new JsonPrimitive(Long.valueOf(j)));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(Boolean bool) {
        if (bool == null) {
            put(JsonNull.INSTANCE);
        } else {
            put(new JsonPrimitive(bool));
        }
    }
}
