package com.google.gson.internal;

import androidx.compose.ui.Modifier;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT;
    public List deserializationStrategies;
    public List serializationStrategies;

    static {
        Excluder excluder = new Excluder();
        List list = Collections.EMPTY_LIST;
        excluder.serializationStrategies = list;
        excluder.deserializationStrategies = list;
        DEFAULT = excluder;
    }

    public static boolean isAnonymousOrNonStaticLocal(Class cls) {
        if (Enum.class.isAssignableFrom(cls) || (cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    public final Object clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(final Gson gson, final TypeToken typeToken) {
        final boolean z;
        final boolean z2;
        boolean isAnonymousOrNonStaticLocal = isAnonymousOrNonStaticLocal(typeToken.rawType);
        if (isAnonymousOrNonStaticLocal) {
            z = true;
        } else {
            excludeClassInStrategy(true);
            z = false;
        }
        if (isAnonymousOrNonStaticLocal) {
            z2 = true;
        } else {
            excludeClassInStrategy(false);
            z2 = false;
        }
        if (z || z2) {
            return new TypeAdapter() { // from class: com.google.gson.internal.Excluder.1
                public TypeAdapter delegate;

                @Override // com.google.gson.TypeAdapter
                public final Object read(JsonReader jsonReader) {
                    if (z2) {
                        jsonReader.skipValue();
                        return null;
                    }
                    TypeAdapter typeAdapter = this.delegate;
                    if (typeAdapter == null) {
                        typeAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                        this.delegate = typeAdapter;
                    }
                    return typeAdapter.read(jsonReader);
                }

                @Override // com.google.gson.TypeAdapter
                public final void write(JsonWriter jsonWriter, Object obj) {
                    if (z) {
                        jsonWriter.nullValue();
                        return;
                    }
                    TypeAdapter typeAdapter = this.delegate;
                    if (typeAdapter == null) {
                        typeAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                        this.delegate = typeAdapter;
                    }
                    typeAdapter.write(jsonWriter, obj);
                }
            };
        }
        return null;
    }

    public final void excludeClassInStrategy(boolean z) {
        Iterator it = (z ? this.serializationStrategies : this.deserializationStrategies).iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
    }
}
