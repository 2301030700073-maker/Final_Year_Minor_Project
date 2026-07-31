package com.google.gson;

import com.google.gson.Gson;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeAdapter {
    public final Object fromJson(Reader reader) {
        return read(new JsonReader(reader));
    }

    public final Object fromJsonTree(JsonElement jsonElement) {
        try {
            JsonTreeReader jsonTreeReader = new JsonTreeReader(JsonTreeReader.UNREADABLE_READER);
            jsonTreeReader.stack = new Object[32];
            jsonTreeReader.stackSize = 0;
            jsonTreeReader.pathNames = new String[32];
            jsonTreeReader.pathIndices = new int[32];
            jsonTreeReader.push(jsonElement);
            return read(jsonTreeReader);
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final TypeAdapter nullSafe() {
        return new Gson.AnonymousClass4(this, 2);
    }

    public abstract Object read(JsonReader jsonReader);

    public final String toJson(Object obj) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, obj);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final JsonElement toJsonTree(Object obj) {
        try {
            JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, obj);
            ArrayList arrayList = jsonTreeWriter.stack;
            if (arrayList.isEmpty()) {
                return jsonTreeWriter.product;
            }
            throw new IllegalStateException("Expected one JSON element but was " + arrayList);
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public abstract void write(JsonWriter jsonWriter, Object obj);

    public final Object fromJson(String str) {
        return fromJson(new StringReader(str));
    }

    public final void toJson(Writer writer, Object obj) {
        write(new JsonWriter(writer), obj);
    }
}
