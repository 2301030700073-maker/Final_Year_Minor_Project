package com.squareup.moshi;

import com.squareup.moshi.internal.NullSafeJsonAdapter;
import java.io.IOException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JsonAdapter {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.squareup.moshi.JsonAdapter$1, reason: invalid class name */
    public final class AnonymousClass1 extends JsonAdapter {
        public AnonymousClass1() {
        }

        @Override // com.squareup.moshi.JsonAdapter
        public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
            return JsonAdapter.this.fromJson(jsonUtf8Reader);
        }

        @Override // com.squareup.moshi.JsonAdapter
        public final boolean isLenient() {
            return JsonAdapter.this.isLenient();
        }

        @Override // com.squareup.moshi.JsonAdapter
        public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
            boolean z = jsonUtf8Writer.serializeNulls;
            jsonUtf8Writer.serializeNulls = true;
            try {
                JsonAdapter.this.toJson(jsonUtf8Writer, obj);
            } finally {
                jsonUtf8Writer.serializeNulls = z;
            }
        }

        public final String toString() {
            return JsonAdapter.this + ".serializeNulls()";
        }
    }

    public abstract Object fromJson(JsonUtf8Reader jsonUtf8Reader);

    public final Object fromJson(String str) {
        Buffer buffer = new Buffer();
        buffer.m1057writeUtf8(str);
        JsonUtf8Reader jsonUtf8Reader = new JsonUtf8Reader(buffer);
        Object fromJson = fromJson(jsonUtf8Reader);
        if (isLenient() || jsonUtf8Reader.peek() == 10) {
            return fromJson;
        }
        throw new JsonDataException("JSON document was not fully consumed.");
    }

    public boolean isLenient() {
        return false;
    }

    public final NullSafeJsonAdapter nullSafe() {
        return this instanceof NullSafeJsonAdapter ? (NullSafeJsonAdapter) this : new NullSafeJsonAdapter(this);
    }

    public final String toJson(Object obj) {
        Buffer buffer = new Buffer();
        try {
            toJson(new JsonUtf8Writer(buffer), obj);
            return buffer.readUtf8();
        } catch (IOException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
            return null;
        }
    }

    public abstract void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj);
}
