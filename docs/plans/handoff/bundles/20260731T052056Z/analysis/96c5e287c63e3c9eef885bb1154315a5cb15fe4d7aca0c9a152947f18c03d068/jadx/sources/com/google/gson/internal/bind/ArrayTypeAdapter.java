package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayTypeAdapter extends TypeAdapter {
    public static final TypeAdapters.AnonymousClass29 FACTORY = new TypeAdapters.AnonymousClass29(1);
    public final /* synthetic */ int $r8$classId = 0;
    public final Object componentType;
    public final Object componentTypeAdapter;

    public ArrayTypeAdapter(Gson gson, TypeAdapter typeAdapter, Class cls) {
        this.componentTypeAdapter = new TypeAdapters.EnumTypeAdapter(gson, typeAdapter, cls);
        this.componentType = cls;
    }

    @Override // com.google.gson.TypeAdapter
    public final Object read(JsonReader jsonReader) {
        int i = this.$r8$classId;
        Collection collection = null;
        Object obj = this.componentTypeAdapter;
        Object obj2 = this.componentType;
        switch (i) {
            case 0:
                Class cls = (Class) obj2;
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(((TypeAdapter) ((TypeAdapters.EnumTypeAdapter) obj).stringToConstant).read(jsonReader));
                }
                jsonReader.endArray();
                int size = arrayList.size();
                if (!cls.isPrimitive()) {
                    return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
                }
                Object newInstance = Array.newInstance((Class<?>) cls, size);
                for (int i2 = 0; i2 < size; i2++) {
                    Array.set(newInstance, i2, arrayList.get(i2));
                }
                return newInstance;
            case 1:
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    collection = (Collection) ((ObjectConstructor) obj2).construct();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        collection.add(((TypeAdapter) ((TypeAdapters.EnumTypeAdapter) obj).stringToConstant).read(jsonReader));
                    }
                    jsonReader.endArray();
                }
                return collection;
            default:
                Class cls2 = (Class) obj2;
                Object read = ((TypeAdapters.AnonymousClass31) obj).val$typeAdapter.read(jsonReader);
                if (read == null || cls2.isInstance(read)) {
                    return read;
                }
                throw new JsonIOException("Expected a " + cls2.getName() + " but was " + read.getClass().getName() + "; at path " + jsonReader.getPreviousPath());
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.componentTypeAdapter;
        switch (i) {
            case 0:
                if (obj == null) {
                    jsonWriter.nullValue();
                    break;
                } else {
                    jsonWriter.beginArray();
                    int length = Array.getLength(obj);
                    for (int i2 = 0; i2 < length; i2++) {
                        ((TypeAdapters.EnumTypeAdapter) obj2).write(jsonWriter, Array.get(obj, i2));
                    }
                    jsonWriter.endArray();
                    break;
                }
            case 1:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    jsonWriter.nullValue();
                    break;
                } else {
                    jsonWriter.beginArray();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        ((TypeAdapters.EnumTypeAdapter) obj2).write(jsonWriter, it.next());
                    }
                    jsonWriter.endArray();
                    break;
                }
            default:
                ((TypeAdapters.AnonymousClass31) obj2).val$typeAdapter.write(jsonWriter, obj);
                break;
        }
    }

    public ArrayTypeAdapter(Gson gson, Type type, TypeAdapter typeAdapter, ObjectConstructor objectConstructor) {
        this.componentTypeAdapter = new TypeAdapters.EnumTypeAdapter(gson, typeAdapter, type);
        this.componentType = objectConstructor;
    }

    public ArrayTypeAdapter(TypeAdapters.AnonymousClass31 anonymousClass31, Class cls) {
        this.componentTypeAdapter = anonymousClass31;
        this.componentType = cls;
    }
}
