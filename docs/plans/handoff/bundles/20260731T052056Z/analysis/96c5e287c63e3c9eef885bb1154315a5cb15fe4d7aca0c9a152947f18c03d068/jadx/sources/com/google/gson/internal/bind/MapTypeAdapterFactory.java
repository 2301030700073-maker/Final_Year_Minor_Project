package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    public final /* synthetic */ int $r8$classId;
    public final FormBody.Builder constructorConstructor;

    public /* synthetic */ MapTypeAdapterFactory(FormBody.Builder builder, int i) {
        this.$r8$classId = i;
        this.constructorConstructor = builder;
    }

    public static TypeAdapter getTypeAdapter(FormBody.Builder builder, Gson gson, TypeToken typeToken, JsonAdapter jsonAdapter) {
        TypeAdapter create;
        Object construct = builder.get(new TypeToken(jsonAdapter.value())).construct();
        boolean nullSafe = jsonAdapter.nullSafe();
        if (construct instanceof TypeAdapter) {
            create = (TypeAdapter) construct;
        } else {
            if (!(construct instanceof TypeAdapterFactory)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + construct.getClass().getName() + " as a @JsonAdapter for " + C$Gson$Types.typeToString(typeToken.type) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            create = ((TypeAdapterFactory) construct).create(gson, typeToken);
        }
        return (create == null || !nullSafe) ? create : create.nullSafe();
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(Gson gson, TypeToken typeToken) {
        Class cls;
        Type[] actualTypeArguments;
        int i = this.$r8$classId;
        cls = Object.class;
        FormBody.Builder builder = this.constructorConstructor;
        switch (i) {
            case 0:
                Type type = typeToken.type;
                Class cls2 = typeToken.rawType;
                if (!Map.class.isAssignableFrom(cls2)) {
                    return null;
                }
                if (type == Properties.class) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    if (type instanceof WildcardType) {
                        type = ((WildcardType) type).getUpperBounds()[0];
                    }
                    C$Gson$Types.checkArgument(Map.class.isAssignableFrom(cls2));
                    Type resolve = C$Gson$Types.resolve(type, cls2, C$Gson$Types.getGenericSupertype(type, cls2, Map.class), new HashMap());
                    actualTypeArguments = resolve instanceof ParameterizedType ? ((ParameterizedType) resolve).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type2 = actualTypeArguments[0];
                return new TypeAdapters.EnumTypeAdapter(this, gson, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? TypeAdapters.BOOLEAN_AS_STRING : gson.getAdapter(new TypeToken(type2)), actualTypeArguments[1], gson.getAdapter(new TypeToken(actualTypeArguments[1])), builder.get(typeToken));
            case 1:
                Type type3 = typeToken.type;
                Class cls3 = typeToken.rawType;
                if (!Collection.class.isAssignableFrom(cls3)) {
                    return null;
                }
                if (type3 instanceof WildcardType) {
                    type3 = ((WildcardType) type3).getUpperBounds()[0];
                }
                C$Gson$Types.checkArgument(Collection.class.isAssignableFrom(cls3));
                Type resolve2 = C$Gson$Types.resolve(type3, cls3, C$Gson$Types.getGenericSupertype(type3, cls3, Collection.class), new HashMap());
                cls = resolve2 instanceof ParameterizedType ? ((ParameterizedType) resolve2).getActualTypeArguments()[0] : Object.class;
                return new ArrayTypeAdapter(gson, cls, gson.getAdapter(new TypeToken(cls)), builder.get(typeToken));
            default:
                JsonAdapter jsonAdapter = (JsonAdapter) typeToken.rawType.getAnnotation(JsonAdapter.class);
                if (jsonAdapter == null) {
                    return null;
                }
                return getTypeAdapter(builder, gson, typeToken, jsonAdapter);
        }
    }
}
