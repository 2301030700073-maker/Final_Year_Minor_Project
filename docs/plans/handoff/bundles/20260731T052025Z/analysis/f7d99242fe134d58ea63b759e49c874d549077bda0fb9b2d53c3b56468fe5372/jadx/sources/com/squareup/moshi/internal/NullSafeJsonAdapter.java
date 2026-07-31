package com.squareup.moshi.internal;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonUtf8Reader;
import com.squareup.moshi.JsonUtf8Writer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NullSafeJsonAdapter extends JsonAdapter {
    public final JsonAdapter delegate;

    public NullSafeJsonAdapter(JsonAdapter jsonAdapter) {
        this.delegate = jsonAdapter;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        if (jsonUtf8Reader.peek() != 9) {
            return this.delegate.fromJson(jsonUtf8Reader);
        }
        jsonUtf8Reader.nextNull();
        return null;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        if (obj == null) {
            jsonUtf8Writer.nullValue();
        } else {
            this.delegate.toJson(jsonUtf8Writer, obj);
        }
    }

    public final String toString() {
        return this.delegate + ".nullSafe()";
    }
}
