package org.maplibre.geojson.internal.typeadapters;

import coil3.network.HttpException;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RuntimeTypeAdapterFactory<T> implements TypeAdapterFactory {
    private final Class<?> baseType;
    private final boolean maintainType;
    private final String typeFieldName;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    private final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();

    private RuntimeTypeAdapterFactory(Class<?> cls, String str, boolean z) {
        if (str == null || cls == null) {
            throw null;
        }
        this.baseType = cls;
        this.typeFieldName = str;
        this.maintainType = z;
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeTypeAdapterFactory<>(cls, "type", false);
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <R> TypeAdapter create(Gson gson, TypeToken typeToken) {
        if (typeToken.rawType != this.baseType) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, Class<?>> entry : this.labelToSubtype.entrySet()) {
            TypeAdapter delegateAdapter = gson.getDelegateAdapter(this, new TypeToken(entry.getValue()));
            linkedHashMap.put(entry.getKey(), delegateAdapter);
            linkedHashMap2.put(entry.getValue(), delegateAdapter);
        }
        return new TypeAdapter() { // from class: org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.1
            /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
            /* JADX WARN: Type inference failed for: r3v13, types: [R, java.lang.Object] */
            @Override // com.google.gson.TypeAdapter
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public R read(com.google.gson.stream.JsonReader r4) {
                /*
                    r3 = this;
                    r4.peek()     // Catch: java.lang.NumberFormatException -> Lf java.io.IOException -> L16 com.google.gson.stream.MalformedJsonException -> L1d java.io.EOFException -> L24
                    r0 = 0
                    com.google.gson.Gson$1 r1 = com.google.gson.internal.bind.TypeAdapters.JSON_ELEMENT     // Catch: java.io.EOFException -> Ld java.lang.NumberFormatException -> Lf java.io.IOException -> L16 com.google.gson.stream.MalformedJsonException -> L1d
                    java.lang.Object r4 = r1.read(r4)     // Catch: java.io.EOFException -> Ld java.lang.NumberFormatException -> Lf java.io.IOException -> L16 com.google.gson.stream.MalformedJsonException -> L1d
                    com.google.gson.JsonElement r4 = (com.google.gson.JsonElement) r4     // Catch: java.io.EOFException -> Ld java.lang.NumberFormatException -> Lf java.io.IOException -> L16 com.google.gson.stream.MalformedJsonException -> L1d
                    goto L2a
                Ld:
                    r4 = move-exception
                    goto L26
                Lf:
                    r3 = move-exception
                    com.google.gson.JsonIOException r4 = new com.google.gson.JsonIOException
                    r4.<init>(r3)
                    throw r4
                L16:
                    r3 = move-exception
                    com.google.gson.JsonIOException r4 = new com.google.gson.JsonIOException
                    r4.<init>(r3)
                    throw r4
                L1d:
                    r3 = move-exception
                    com.google.gson.JsonIOException r4 = new com.google.gson.JsonIOException
                    r4.<init>(r3)
                    throw r4
                L24:
                    r4 = move-exception
                    r0 = 1
                L26:
                    if (r0 == 0) goto Lb1
                    com.google.gson.JsonNull r4 = com.google.gson.JsonNull.INSTANCE
                L2a:
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r0 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    boolean r0 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$000(r0)
                    if (r0 == 0) goto L41
                    com.google.gson.JsonObject r0 = r4.getAsJsonObject()
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    java.lang.String r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$100(r1)
                    com.google.gson.JsonElement r0 = r0.get(r1)
                    goto L4f
                L41:
                    com.google.gson.JsonObject r0 = r4.getAsJsonObject()
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    java.lang.String r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$100(r1)
                    com.google.gson.JsonElement r0 = r0.remove(r1)
                L4f:
                    java.lang.String r1 = "cannot deserialize "
                    if (r0 == 0) goto L8b
                    java.lang.String r0 = r0.getAsString()
                    java.util.Map r2 = r2
                    java.lang.Object r2 = r2.get(r0)
                    com.google.gson.TypeAdapter r2 = (com.google.gson.TypeAdapter) r2
                    if (r2 == 0) goto L66
                    java.lang.Object r3 = r2.fromJsonTree(r4)
                    return r3
                L66:
                    coil3.network.HttpException r4 = new coil3.network.HttpException
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r3 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    java.lang.Class r3 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$200(r3)
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r2.<init>(r1)
                    r2.append(r3)
                    java.lang.String r3 = " subtype named "
                    r2.append(r3)
                    r2.append(r0)
                    java.lang.String r3 = "; did you forget to register a subtype?"
                    r2.append(r3)
                    java.lang.String r3 = r2.toString()
                    r4.<init>(r3)
                    throw r4
                L8b:
                    coil3.network.HttpException r4 = new coil3.network.HttpException
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>(r1)
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    java.lang.Class r1 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$200(r1)
                    r0.append(r1)
                    org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory r3 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.this
                    java.lang.String r3 = org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.access$100(r3)
                    java.lang.String r1 = " because it does not define a field named "
                    r0.append(r1)
                    r0.append(r3)
                    java.lang.String r3 = r0.toString()
                    r4.<init>(r3)
                    throw r4
                Lb1:
                    com.google.gson.JsonIOException r3 = new com.google.gson.JsonIOException
                    r3.<init>(r4)
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: org.maplibre.geojson.internal.typeadapters.RuntimeTypeAdapterFactory.AnonymousClass1.read(com.google.gson.stream.JsonReader):java.lang.Object");
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, R r) {
                Class<?> cls = r.getClass();
                TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap2.get(cls);
                if (typeAdapter == null) {
                    throw new HttpException("cannot serialize " + cls.getName() + "; did you forget to register a subtype?");
                }
                JsonObject asJsonObject = typeAdapter.toJsonTree(r).getAsJsonObject();
                if (RuntimeTypeAdapterFactory.this.maintainType) {
                    TypeAdapters.JSON_ELEMENT.getClass();
                    Gson.AnonymousClass1.write(jsonWriter, (JsonElement) asJsonObject);
                    return;
                }
                JsonObject jsonObject = new JsonObject();
                if (asJsonObject.has(RuntimeTypeAdapterFactory.this.typeFieldName)) {
                    throw new HttpException("cannot serialize " + cls.getName() + " because it already defines a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                jsonObject.add(RuntimeTypeAdapterFactory.this.typeFieldName, new JsonPrimitive((String) RuntimeTypeAdapterFactory.this.subtypeToLabel.get(cls)));
                for (Map.Entry<String, JsonElement> entry2 : asJsonObject.entrySet()) {
                    jsonObject.add(entry2.getKey(), entry2.getValue());
                }
                TypeAdapters.JSON_ELEMENT.getClass();
                Gson.AnonymousClass1.write(jsonWriter, (JsonElement) jsonObject);
            }
        }.nullSafe();
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls, String str) {
        if (cls == null) {
            throw null;
        }
        if (str == null) {
            throw null;
        }
        if (this.subtypeToLabel.containsKey(cls) || this.labelToSubtype.containsKey(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("types and labels must be unique");
            return null;
        }
        this.labelToSubtype.put(str, cls);
        this.subtypeToLabel.put(cls, str);
        return this;
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str) {
        return new RuntimeTypeAdapterFactory<>(cls, str, false);
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str, boolean z) {
        return new RuntimeTypeAdapterFactory<>(cls, str, z);
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }
}
