package com.google.gson;

import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.Serializable;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.geojson.GeoJson;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Gson {
    public final FormBody.Builder constructorConstructor;
    public final List factories;
    public final MapTypeAdapterFactory jsonAdapterFactory;
    public final ThreadLocal threadLocalAdapterResults = new ThreadLocal();
    public final ConcurrentHashMap typeTokenCache = new ConcurrentHashMap();
    public static final ToNumberPolicy DEFAULT_OBJECT_TO_NUMBER_STRATEGY = ToNumberPolicy.DOUBLE;
    public static final ToNumberPolicy DEFAULT_NUMBER_TO_NUMBER_STRATEGY = ToNumberPolicy.LAZILY_PARSED_NUMBER;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.Gson$4, reason: invalid class name */
    public final class AnonymousClass4 extends TypeAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ TypeAdapter val$longAdapter;

        public /* synthetic */ AnonymousClass4(TypeAdapter typeAdapter, int i) {
            this.$r8$classId = i;
            this.val$longAdapter = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapter
        public final Object read(JsonReader jsonReader) {
            int i = this.$r8$classId;
            TypeAdapter typeAdapter = this.val$longAdapter;
            switch (i) {
                case 0:
                    return new AtomicLong(((Number) typeAdapter.read(jsonReader)).longValue());
                case 1:
                    ArrayList arrayList = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(Long.valueOf(((Number) typeAdapter.read(jsonReader)).longValue()));
                    }
                    jsonReader.endArray();
                    int size = arrayList.size();
                    AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                    }
                    return atomicLongArray;
                default:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return typeAdapter.read(jsonReader);
                    }
                    jsonReader.nextNull();
                    return null;
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            int i = this.$r8$classId;
            TypeAdapter typeAdapter = this.val$longAdapter;
            switch (i) {
                case 0:
                    typeAdapter.write(jsonWriter, Long.valueOf(((AtomicLong) obj).get()));
                    break;
                case 1:
                    AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                    jsonWriter.beginArray();
                    int length = atomicLongArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        typeAdapter.write(jsonWriter, Long.valueOf(atomicLongArray.get(i2)));
                    }
                    jsonWriter.endArray();
                    break;
                default:
                    if (obj == null) {
                        jsonWriter.nullValue();
                        break;
                    } else {
                        typeAdapter.write(jsonWriter, obj);
                        break;
                    }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FutureTypeAdapter extends TypeAdapter {
        public TypeAdapter delegate;

        @Override // com.google.gson.TypeAdapter
        public final Object read(JsonReader jsonReader) {
            TypeAdapter typeAdapter = this.delegate;
            if (typeAdapter != null) {
                return typeAdapter.read(jsonReader);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Adapter for type with cyclic dependency has been used before dependency has been resolved");
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            TypeAdapter typeAdapter = this.delegate;
            if (typeAdapter != null) {
                typeAdapter.write(jsonWriter, obj);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Adapter for type with cyclic dependency has been used before dependency has been resolved");
            }
        }
    }

    public Gson(Excluder excluder, FieldNamingPolicy fieldNamingPolicy, HashMap hashMap, LongSerializationPolicy longSerializationPolicy, ArrayList arrayList, ArrayList arrayList2) {
        TypeAdapters.AnonymousClass33 anonymousClass33;
        FormBody.Builder builder = new FormBody.Builder(4, hashMap, arrayList2);
        this.constructorConstructor = builder;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        ToNumberPolicy toNumberPolicy = ToNumberPolicy.DOUBLE;
        int i = 2;
        ToNumberPolicy toNumberPolicy2 = DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
        if (toNumberPolicy2 == toNumberPolicy) {
            anonymousClass33 = ObjectTypeAdapter.DOUBLE_FACTORY;
        } else {
            TypeAdapters.AnonymousClass33 anonymousClass332 = ObjectTypeAdapter.DOUBLE_FACTORY;
            anonymousClass33 = new TypeAdapters.AnonymousClass33(i, toNumberPolicy2);
        }
        arrayList3.add(anonymousClass33);
        arrayList3.add(excluder);
        arrayList3.addAll(arrayList);
        arrayList3.add(TypeAdapters.STRING_FACTORY);
        arrayList3.add(TypeAdapters.INTEGER_FACTORY);
        arrayList3.add(TypeAdapters.BOOLEAN_FACTORY);
        arrayList3.add(TypeAdapters.BYTE_FACTORY);
        arrayList3.add(TypeAdapters.SHORT_FACTORY);
        AnonymousClass1 anonymousClass1 = longSerializationPolicy == LongSerializationPolicy.DEFAULT ? TypeAdapters.LONG : new AnonymousClass1(i);
        arrayList3.add(new TypeAdapters.AnonymousClass32(Long.TYPE, Long.class, anonymousClass1));
        int i2 = 0;
        arrayList3.add(new TypeAdapters.AnonymousClass32(Double.TYPE, Double.class, new AnonymousClass1(i2)));
        int i3 = 1;
        arrayList3.add(new TypeAdapters.AnonymousClass32(Float.TYPE, Float.class, new AnonymousClass1(i3)));
        ToNumberPolicy toNumberPolicy3 = ToNumberPolicy.LAZILY_PARSED_NUMBER;
        ToNumberPolicy toNumberPolicy4 = DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
        arrayList3.add(toNumberPolicy4 == toNumberPolicy3 ? NumberTypeAdapter.LAZILY_PARSED_NUMBER_FACTORY : new TypeAdapters.AnonymousClass33(i3, new NumberTypeAdapter(toNumberPolicy4)));
        arrayList3.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
        arrayList3.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
        arrayList3.add(new TypeAdapters.AnonymousClass31(AtomicLong.class, new AnonymousClass4(anonymousClass1, i2).nullSafe(), i2));
        arrayList3.add(new TypeAdapters.AnonymousClass31(AtomicLongArray.class, new AnonymousClass4(anonymousClass1, i3).nullSafe(), i2));
        arrayList3.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
        arrayList3.add(TypeAdapters.CHARACTER_FACTORY);
        arrayList3.add(TypeAdapters.STRING_BUILDER_FACTORY);
        arrayList3.add(TypeAdapters.STRING_BUFFER_FACTORY);
        arrayList3.add(new TypeAdapters.AnonymousClass31(BigDecimal.class, TypeAdapters.BIG_DECIMAL, i2));
        arrayList3.add(new TypeAdapters.AnonymousClass31(BigInteger.class, TypeAdapters.BIG_INTEGER, i2));
        arrayList3.add(new TypeAdapters.AnonymousClass31(LazilyParsedNumber.class, TypeAdapters.LAZILY_PARSED_NUMBER, i2));
        arrayList3.add(TypeAdapters.URL_FACTORY);
        arrayList3.add(TypeAdapters.URI_FACTORY);
        arrayList3.add(TypeAdapters.UUID_FACTORY);
        arrayList3.add(TypeAdapters.CURRENCY_FACTORY);
        arrayList3.add(TypeAdapters.LOCALE_FACTORY);
        arrayList3.add(TypeAdapters.INET_ADDRESS_FACTORY);
        arrayList3.add(TypeAdapters.BIT_SET_FACTORY);
        arrayList3.add(DateTypeAdapter.FACTORY);
        arrayList3.add(TypeAdapters.CALENDAR_FACTORY);
        if (SqlTypesSupport.SUPPORTS_SQL_TYPES) {
            arrayList3.add(SqlTypesSupport.TIME_FACTORY);
            arrayList3.add(SqlTypesSupport.DATE_FACTORY);
            arrayList3.add(SqlTypesSupport.TIMESTAMP_FACTORY);
        }
        arrayList3.add(ArrayTypeAdapter.FACTORY);
        arrayList3.add(TypeAdapters.CLASS_FACTORY);
        arrayList3.add(new MapTypeAdapterFactory(builder, i3));
        arrayList3.add(new MapTypeAdapterFactory(builder, i2));
        MapTypeAdapterFactory mapTypeAdapterFactory = new MapTypeAdapterFactory(builder, i);
        this.jsonAdapterFactory = mapTypeAdapterFactory;
        arrayList3.add(mapTypeAdapterFactory);
        arrayList3.add(TypeAdapters.ENUM_FACTORY);
        arrayList3.add(new ReflectiveTypeAdapterFactory(builder, fieldNamingPolicy, excluder, mapTypeAdapterFactory, arrayList2));
        this.factories = DesugarCollections.unmodifiableList(arrayList3);
    }

    public static void checkValidFloatingPoint(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fromJson(java.lang.Class r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.Gson.fromJson(java.lang.Class, java.lang.String):java.lang.Object");
    }

    public final TypeAdapter getAdapter(TypeToken typeToken) {
        boolean z;
        ConcurrentHashMap concurrentHashMap = this.typeTokenCache;
        TypeAdapter typeAdapter = (TypeAdapter) concurrentHashMap.get(typeToken);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        ThreadLocal threadLocal = this.threadLocalAdapterResults;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            TypeAdapter typeAdapter2 = (TypeAdapter) map.get(typeToken);
            if (typeAdapter2 != null) {
                return typeAdapter2;
            }
            z = false;
        }
        try {
            FutureTypeAdapter futureTypeAdapter = new FutureTypeAdapter();
            futureTypeAdapter.delegate = null;
            map.put(typeToken, futureTypeAdapter);
            Iterator it = this.factories.iterator();
            TypeAdapter typeAdapter3 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                typeAdapter3 = ((TypeAdapterFactory) it.next()).create(this, typeToken);
                if (typeAdapter3 != null) {
                    if (futureTypeAdapter.delegate != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    futureTypeAdapter.delegate = typeAdapter3;
                    map.put(typeToken, typeAdapter3);
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (typeAdapter3 == null) {
                Gson$$ExternalSyntheticBUOutline0.m("GSON (2.10.1) cannot handle ", typeToken);
                return null;
            }
            if (z) {
                concurrentHashMap.putAll(map);
            }
            return typeAdapter3;
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final TypeAdapter getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken typeToken) {
        List<TypeAdapterFactory> list = this.factories;
        if (!list.contains(typeAdapterFactory)) {
            typeAdapterFactory = this.jsonAdapterFactory;
        }
        boolean z = false;
        for (TypeAdapterFactory typeAdapterFactory2 : list) {
            if (z) {
                TypeAdapter create = typeAdapterFactory2.create(this, typeToken);
                if (create != null) {
                    return create;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                z = true;
            }
        }
        Gson$$ExternalSyntheticBUOutline0.m("GSON cannot serialize ", typeToken);
        return null;
    }

    public final void toJson(Serializable serializable, Class cls, JsonWriter jsonWriter) {
        TypeAdapter adapter = getAdapter(new TypeToken(cls));
        boolean z = jsonWriter.lenient;
        jsonWriter.lenient = true;
        boolean z2 = jsonWriter.htmlSafe;
        jsonWriter.htmlSafe = true;
        boolean z3 = jsonWriter.serializeNulls;
        jsonWriter.serializeNulls = false;
        try {
            try {
                try {
                    adapter.write(jsonWriter, serializable);
                } catch (IOException e) {
                    throw new JsonIOException(e);
                }
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e2.getMessage(), e2);
            }
        } finally {
            jsonWriter.lenient = z;
            jsonWriter.htmlSafe = z2;
            jsonWriter.serializeNulls = z3;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.factories + ",instanceCreators:" + this.constructorConstructor + "}";
    }

    public final String toJson(Serializable serializable, Class cls) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            jsonWriter.htmlSafe = true;
            jsonWriter.lenient = false;
            jsonWriter.serializeNulls = false;
            toJson(serializable, cls, jsonWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final String toJson(GeoJson geoJson) {
        return toJson(geoJson, geoJson.getClass());
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.Gson$1, reason: invalid class name */
    public final class AnonymousClass1 extends TypeAdapter {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        public static JsonElement readTerminal(JsonReader jsonReader, JsonToken jsonToken) {
            int i = TypeAdapters.AnonymousClass35.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()];
            if (i == 1) {
                return new JsonPrimitive(new LazilyParsedNumber(jsonReader.nextString()));
            }
            if (i == 2) {
                return new JsonPrimitive(jsonReader.nextString());
            }
            if (i == 3) {
                return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
            }
            if (i == 6) {
                jsonReader.nextNull();
                return JsonNull.INSTANCE;
            }
            Gson$$ExternalSyntheticBUOutline0.m$1("Unexpected token: ", jsonToken);
            return null;
        }

        public static JsonElement tryBeginNesting(JsonReader jsonReader, JsonToken jsonToken) {
            int i = TypeAdapters.AnonymousClass35.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()];
            if (i == 4) {
                jsonReader.beginArray();
                return new JsonArray();
            }
            if (i != 5) {
                return null;
            }
            jsonReader.beginObject();
            return new JsonObject();
        }

        @Override // com.google.gson.TypeAdapter
        public final Object read(JsonReader jsonReader) {
            boolean z;
            switch (this.$r8$classId) {
                case 0:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Double.valueOf(jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                case 1:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Float.valueOf((float) jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                case 2:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Long.valueOf(jsonReader.nextLong());
                    }
                    jsonReader.nextNull();
                    return null;
                case 3:
                    ArrayList arrayList = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        try {
                            arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                        } catch (NumberFormatException e) {
                            throw new JsonIOException(e);
                        }
                    }
                    jsonReader.endArray();
                    int size = arrayList.size();
                    AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                    for (int i = 0; i < size; i++) {
                        atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
                    }
                    return atomicIntegerArray;
                case 4:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    try {
                        return Long.valueOf(jsonReader.nextLong());
                    } catch (NumberFormatException e2) {
                        throw new JsonIOException(e2);
                    }
                case 5:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Float.valueOf((float) jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                case 6:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Double.valueOf(jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                case 7:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString = jsonReader.nextString();
                    if (nextString.length() == 1) {
                        return Character.valueOf(nextString.charAt(0));
                    }
                    StringBuilder m21m = Animation.CC.m21m("Expecting character, got: ", nextString, "; at ");
                    m21m.append(jsonReader.getPreviousPath());
                    throw new JsonIOException(m21m.toString());
                case 8:
                    JsonToken peek = jsonReader.peek();
                    if (peek != JsonToken.NULL) {
                        return peek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                    }
                    jsonReader.nextNull();
                    return null;
                case 9:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString2 = jsonReader.nextString();
                    try {
                        return new BigDecimal(nextString2);
                    } catch (NumberFormatException e3) {
                        Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString2, "' as BigDecimal; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e3);
                        return null;
                    }
                case 10:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString3 = jsonReader.nextString();
                    try {
                        return new BigInteger(nextString3);
                    } catch (NumberFormatException e4) {
                        Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString3, "' as BigInteger; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e4);
                        return null;
                    }
                case 11:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return new LazilyParsedNumber(jsonReader.nextString());
                    }
                    jsonReader.nextNull();
                    return null;
                case 12:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return new StringBuilder(jsonReader.nextString());
                    }
                    jsonReader.nextNull();
                    return null;
                case IMAGE_VALUE:
                    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return new StringBuffer(jsonReader.nextString());
                    }
                    jsonReader.nextNull();
                    return null;
                case 15:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString4 = jsonReader.nextString();
                    if ("null".equals(nextString4)) {
                        return null;
                    }
                    return new URL(nextString4);
                case LAZY_VERTICAL_GRID_VALUE:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    try {
                        String nextString5 = jsonReader.nextString();
                        if ("null".equals(nextString5)) {
                            return null;
                        }
                        return new URI(nextString5);
                    } catch (URISyntaxException e5) {
                        throw new JsonIOException(e5);
                    }
                case VERTICAL_GRID_ITEM_VALUE:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return InetAddress.getByName(jsonReader.nextString());
                    }
                    jsonReader.nextNull();
                    return null;
                case RADIO_GROUP_VALUE:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString6 = jsonReader.nextString();
                    try {
                        return UUID.fromString(nextString6);
                    } catch (IllegalArgumentException e6) {
                        Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString6, "' as UUID; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e6);
                        return null;
                    }
                case RADIO_BUTTON_VALUE:
                    String nextString7 = jsonReader.nextString();
                    try {
                        return Currency.getInstance(nextString7);
                    } catch (IllegalArgumentException e7) {
                        Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString7, "' as Currency; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e7);
                        return null;
                    }
                case RADIO_ROW_VALUE:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    jsonReader.beginObject();
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    while (jsonReader.peek() != JsonToken.END_OBJECT) {
                        String nextName = jsonReader.nextName();
                        int nextInt = jsonReader.nextInt();
                        if ("year".equals(nextName)) {
                            i2 = nextInt;
                        } else if ("month".equals(nextName)) {
                            i3 = nextInt;
                        } else if ("dayOfMonth".equals(nextName)) {
                            i4 = nextInt;
                        } else if ("hourOfDay".equals(nextName)) {
                            i5 = nextInt;
                        } else if ("minute".equals(nextName)) {
                            i6 = nextInt;
                        } else if ("second".equals(nextName)) {
                            i7 = nextInt;
                        }
                    }
                    jsonReader.endObject();
                    return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
                case RADIO_COLUMN_VALUE:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                    String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
                case SIZE_BOX_VALUE:
                    if (jsonReader instanceof JsonTreeReader) {
                        JsonTreeReader jsonTreeReader = (JsonTreeReader) jsonReader;
                        JsonToken peek2 = jsonTreeReader.peek();
                        if (peek2 == JsonToken.NAME || peek2 == JsonToken.END_ARRAY || peek2 == JsonToken.END_OBJECT || peek2 == JsonToken.END_DOCUMENT) {
                            TimeSource$Companion$$ExternalSyntheticLambda0.m$1(peek2, " when reading a JsonElement.", "Unexpected ");
                            return null;
                        }
                        JsonElement jsonElement = (JsonElement) jsonTreeReader.peekStack();
                        jsonTreeReader.skipValue();
                        return jsonElement;
                    }
                    JsonToken peek3 = jsonReader.peek();
                    JsonElement tryBeginNesting = tryBeginNesting(jsonReader, peek3);
                    if (tryBeginNesting == null) {
                        return readTerminal(jsonReader, peek3);
                    }
                    ArrayDeque arrayDeque = new ArrayDeque();
                    while (true) {
                        if (jsonReader.hasNext()) {
                            String nextName2 = tryBeginNesting instanceof JsonObject ? jsonReader.nextName() : null;
                            JsonToken peek4 = jsonReader.peek();
                            JsonElement tryBeginNesting2 = tryBeginNesting(jsonReader, peek4);
                            boolean z2 = tryBeginNesting2 != null;
                            if (tryBeginNesting2 == null) {
                                tryBeginNesting2 = readTerminal(jsonReader, peek4);
                            }
                            if (tryBeginNesting instanceof JsonArray) {
                                ((JsonArray) tryBeginNesting).add(tryBeginNesting2);
                            } else {
                                ((JsonObject) tryBeginNesting).add(nextName2, tryBeginNesting2);
                            }
                            if (z2) {
                                arrayDeque.addLast(tryBeginNesting);
                                tryBeginNesting = tryBeginNesting2;
                            }
                        } else {
                            if (tryBeginNesting instanceof JsonArray) {
                                jsonReader.endArray();
                            } else {
                                jsonReader.endObject();
                            }
                            if (arrayDeque.isEmpty()) {
                                return tryBeginNesting;
                            }
                            tryBeginNesting = (JsonElement) arrayDeque.removeLast();
                        }
                    }
                    break;
                case 23:
                    BitSet bitSet = new BitSet();
                    jsonReader.beginArray();
                    JsonToken peek5 = jsonReader.peek();
                    int i8 = 0;
                    while (peek5 != JsonToken.END_ARRAY) {
                        int i9 = TypeAdapters.AnonymousClass35.$SwitchMap$com$google$gson$stream$JsonToken[peek5.ordinal()];
                        if (i9 == 1 || i9 == 2) {
                            int nextInt2 = jsonReader.nextInt();
                            if (nextInt2 == 0) {
                                z = false;
                            } else {
                                if (nextInt2 != 1) {
                                    StringBuilder m20m = Animation.CC.m20m(nextInt2, "Invalid bitset value ", ", expected 0 or 1; at path ");
                                    m20m.append(jsonReader.getPreviousPath());
                                    throw new JsonIOException(m20m.toString());
                                }
                                z = true;
                            }
                        } else {
                            if (i9 != 3) {
                                StringBuilder sb = new StringBuilder("Invalid bitset value type: ");
                                sb.append(peek5);
                                String path = jsonReader.getPath();
                                sb.append("; at path ");
                                sb.append(path);
                                throw new JsonIOException(sb.toString());
                            }
                            z = jsonReader.nextBoolean();
                        }
                        if (z) {
                            bitSet.set(i8);
                        }
                        i8++;
                        peek5 = jsonReader.peek();
                    }
                    jsonReader.endArray();
                    return bitSet;
                case 24:
                    JsonToken peek6 = jsonReader.peek();
                    if (peek6 != JsonToken.NULL) {
                        return peek6 == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                    }
                    jsonReader.nextNull();
                    return null;
                case 25:
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Boolean.valueOf(jsonReader.nextString());
                    }
                    jsonReader.nextNull();
                    return null;
                case 26:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    try {
                        int nextInt3 = jsonReader.nextInt();
                        if (nextInt3 <= 255 && nextInt3 >= -128) {
                            return Byte.valueOf((byte) nextInt3);
                        }
                        StringBuilder m20m2 = Animation.CC.m20m(nextInt3, "Lossy conversion from ", " to byte; at path ");
                        m20m2.append(jsonReader.getPreviousPath());
                        throw new JsonIOException(m20m2.toString());
                    } catch (NumberFormatException e8) {
                        throw new JsonIOException(e8);
                    }
                case 27:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    try {
                        int nextInt4 = jsonReader.nextInt();
                        if (nextInt4 <= 65535 && nextInt4 >= -32768) {
                            return Short.valueOf((short) nextInt4);
                        }
                        StringBuilder m20m3 = Animation.CC.m20m(nextInt4, "Lossy conversion from ", " to short; at path ");
                        m20m3.append(jsonReader.getPreviousPath());
                        throw new JsonIOException(m20m3.toString());
                    } catch (NumberFormatException e9) {
                        throw new JsonIOException(e9);
                    }
                default:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    try {
                        return Integer.valueOf(jsonReader.nextInt());
                    } catch (NumberFormatException e10) {
                        throw new JsonIOException(e10);
                    }
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            int i = 0;
            switch (this.$r8$classId) {
                case 0:
                    Number number = (Number) obj;
                    if (number == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    double doubleValue = number.doubleValue();
                    Gson.checkValidFloatingPoint(doubleValue);
                    jsonWriter.value(doubleValue);
                    return;
                case 1:
                    Number number2 = (Number) obj;
                    if (number2 == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    float floatValue = number2.floatValue();
                    Gson.checkValidFloatingPoint(floatValue);
                    if (!(number2 instanceof Float)) {
                        number2 = Float.valueOf(floatValue);
                    }
                    jsonWriter.value(number2);
                    return;
                case 2:
                    Number number3 = (Number) obj;
                    if (number3 == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(number3.toString());
                        return;
                    }
                case 3:
                    jsonWriter.beginArray();
                    int length = ((AtomicIntegerArray) obj).length();
                    while (i < length) {
                        jsonWriter.value(r5.get(i));
                        i++;
                    }
                    jsonWriter.endArray();
                    return;
                case 4:
                    Number number4 = (Number) obj;
                    if (number4 == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(number4.longValue());
                        return;
                    }
                case 5:
                    Number number5 = (Number) obj;
                    if (number5 == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    if (!(number5 instanceof Float)) {
                        number5 = Float.valueOf(number5.floatValue());
                    }
                    jsonWriter.value(number5);
                    return;
                case 6:
                    Number number6 = (Number) obj;
                    if (number6 == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(number6.doubleValue());
                        return;
                    }
                case 7:
                    Character ch = (Character) obj;
                    jsonWriter.value(ch != null ? String.valueOf(ch) : null);
                    return;
                case 8:
                    jsonWriter.value((String) obj);
                    return;
                case 9:
                    jsonWriter.value((BigDecimal) obj);
                    return;
                case 10:
                    jsonWriter.value((BigInteger) obj);
                    return;
                case 11:
                    jsonWriter.value((LazilyParsedNumber) obj);
                    return;
                case 12:
                    StringBuilder sb = (StringBuilder) obj;
                    jsonWriter.value(sb != null ? sb.toString() : null);
                    return;
                case IMAGE_VALUE:
                    throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?");
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    StringBuffer stringBuffer = (StringBuffer) obj;
                    jsonWriter.value(stringBuffer != null ? stringBuffer.toString() : null);
                    return;
                case 15:
                    URL url = (URL) obj;
                    jsonWriter.value(url != null ? url.toExternalForm() : null);
                    return;
                case LAZY_VERTICAL_GRID_VALUE:
                    URI uri = (URI) obj;
                    jsonWriter.value(uri != null ? uri.toASCIIString() : null);
                    return;
                case VERTICAL_GRID_ITEM_VALUE:
                    InetAddress inetAddress = (InetAddress) obj;
                    jsonWriter.value(inetAddress != null ? inetAddress.getHostAddress() : null);
                    return;
                case RADIO_GROUP_VALUE:
                    UUID uuid = (UUID) obj;
                    jsonWriter.value(uuid != null ? uuid.toString() : null);
                    return;
                case RADIO_BUTTON_VALUE:
                    jsonWriter.value(((Currency) obj).getCurrencyCode());
                    return;
                case RADIO_ROW_VALUE:
                    if (((Calendar) obj) == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("year");
                    jsonWriter.value(r5.get(1));
                    jsonWriter.name("month");
                    jsonWriter.value(r5.get(2));
                    jsonWriter.name("dayOfMonth");
                    jsonWriter.value(r5.get(5));
                    jsonWriter.name("hourOfDay");
                    jsonWriter.value(r5.get(11));
                    jsonWriter.name("minute");
                    jsonWriter.value(r5.get(12));
                    jsonWriter.name("second");
                    jsonWriter.value(r5.get(13));
                    jsonWriter.endObject();
                    return;
                case RADIO_COLUMN_VALUE:
                    Locale locale = (Locale) obj;
                    jsonWriter.value(locale != null ? locale.toString() : null);
                    return;
                case SIZE_BOX_VALUE:
                    write(jsonWriter, (JsonElement) obj);
                    return;
                case 23:
                    BitSet bitSet = (BitSet) obj;
                    jsonWriter.beginArray();
                    int length2 = bitSet.length();
                    while (i < length2) {
                        jsonWriter.value(bitSet.get(i) ? 1L : 0L);
                        i++;
                    }
                    jsonWriter.endArray();
                    return;
                case 24:
                    jsonWriter.value((Boolean) obj);
                    return;
                case 25:
                    Boolean bool = (Boolean) obj;
                    jsonWriter.value(bool == null ? "null" : bool.toString());
                    return;
                case 26:
                    if (((Number) obj) == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(r5.byteValue());
                        return;
                    }
                case 27:
                    if (((Number) obj) == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(r5.shortValue());
                        return;
                    }
                default:
                    if (((Number) obj) == null) {
                        jsonWriter.nullValue();
                        return;
                    } else {
                        jsonWriter.value(r5.intValue());
                        return;
                    }
            }
        }

        public static void write(JsonWriter jsonWriter, JsonElement jsonElement) {
            if (jsonElement != null && !jsonElement.isJsonNull()) {
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                        return;
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                        return;
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                        return;
                    }
                }
                if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(jsonWriter, it.next());
                    }
                    jsonWriter.endArray();
                    return;
                }
                if (jsonElement.isJsonObject()) {
                    jsonWriter.beginObject();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                        jsonWriter.name(entry.getKey());
                        write(jsonWriter, entry.getValue());
                    }
                    jsonWriter.endObject();
                    return;
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m$2("Couldn't write ", jsonElement.getClass());
                return;
            }
            jsonWriter.nullValue();
        }
    }
}
