package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.ToNumberPolicy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.sql.SqlDateTypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import org.maplibre.geojson.gson.BoundingBoxTypeAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeAdapters {
    public static final AnonymousClass31 ATOMIC_BOOLEAN_FACTORY;
    public static final AnonymousClass31 ATOMIC_INTEGER_ARRAY_FACTORY;
    public static final AnonymousClass31 ATOMIC_INTEGER_FACTORY;
    public static final Gson.AnonymousClass1 BIG_DECIMAL;
    public static final Gson.AnonymousClass1 BIG_INTEGER;
    public static final AnonymousClass31 BIT_SET_FACTORY;
    public static final Gson.AnonymousClass1 BOOLEAN_AS_STRING;
    public static final AnonymousClass32 BOOLEAN_FACTORY;
    public static final AnonymousClass32 BYTE_FACTORY;
    public static final AnonymousClass33 CALENDAR_FACTORY;
    public static final AnonymousClass32 CHARACTER_FACTORY;
    public static final AnonymousClass31 CLASS_FACTORY;
    public static final AnonymousClass31 CURRENCY_FACTORY;
    public static final AnonymousClass29 ENUM_FACTORY;
    public static final AnonymousClass31 INET_ADDRESS_FACTORY;
    public static final AnonymousClass32 INTEGER_FACTORY;
    public static final Gson.AnonymousClass1 JSON_ELEMENT;
    public static final AnonymousClass31 JSON_ELEMENT_FACTORY;
    public static final Gson.AnonymousClass1 LAZILY_PARSED_NUMBER;
    public static final AnonymousClass31 LOCALE_FACTORY;
    public static final Gson.AnonymousClass1 LONG;
    public static final AnonymousClass32 SHORT_FACTORY;
    public static final AnonymousClass31 STRING_BUFFER_FACTORY;
    public static final AnonymousClass31 STRING_BUILDER_FACTORY;
    public static final AnonymousClass31 STRING_FACTORY;
    public static final AnonymousClass31 URI_FACTORY;
    public static final AnonymousClass31 URL_FACTORY;
    public static final AnonymousClass31 UUID_FACTORY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$29, reason: invalid class name */
    public final class AnonymousClass29 implements TypeAdapterFactory {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass29(int i) {
            this.$r8$classId = i;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter create(Gson gson, TypeToken typeToken) {
            switch (this.$r8$classId) {
                case 0:
                    Class cls = typeToken.rawType;
                    if (!Enum.class.isAssignableFrom(cls) || cls == Enum.class) {
                        return null;
                    }
                    if (!cls.isEnum()) {
                        cls = cls.getSuperclass();
                    }
                    return new EnumTypeAdapter(cls);
                case 1:
                    Type type = typeToken.type;
                    boolean z = type instanceof GenericArrayType;
                    if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
                        return null;
                    }
                    Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
                    return new ArrayTypeAdapter(gson, gson.getAdapter(new TypeToken(genericComponentType)), C$Gson$Types.getRawType(genericComponentType));
                case 2:
                    if (typeToken.rawType == Date.class) {
                        return new DateTypeAdapter();
                    }
                    return null;
                case 3:
                    if (typeToken.rawType == java.sql.Date.class) {
                        return new SqlDateTypeAdapter(0);
                    }
                    return null;
                case 4:
                    if (typeToken.rawType == Time.class) {
                        return new SqlDateTypeAdapter(1);
                    }
                    return null;
                default:
                    if (typeToken.rawType == Timestamp.class) {
                        return new SqlDateTypeAdapter(gson.getAdapter(new TypeToken(Date.class)));
                    }
                    return null;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$31, reason: invalid class name */
    public final class AnonymousClass31 implements TypeAdapterFactory {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$type;
        public final /* synthetic */ TypeAdapter val$typeAdapter;

        public /* synthetic */ AnonymousClass31(Object obj, TypeAdapter typeAdapter, int i) {
            this.$r8$classId = i;
            this.val$type = obj;
            this.val$typeAdapter = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter create(Gson gson, TypeToken typeToken) {
            int i = this.$r8$classId;
            TypeAdapter typeAdapter = this.val$typeAdapter;
            Object obj = this.val$type;
            switch (i) {
                case 0:
                    if (typeToken.rawType == ((Class) obj)) {
                        return typeAdapter;
                    }
                    return null;
                case 1:
                    Class<?> cls = typeToken.rawType;
                    if (((Class) obj).isAssignableFrom(cls)) {
                        return new ArrayTypeAdapter(this, cls);
                    }
                    return null;
                default:
                    if (typeToken.equals((TypeToken) obj)) {
                        return (BoundingBoxTypeAdapter) typeAdapter;
                    }
                    return null;
            }
        }

        public String toString() {
            int i = this.$r8$classId;
            TypeAdapter typeAdapter = this.val$typeAdapter;
            Object obj = this.val$type;
            switch (i) {
                case 0:
                    return "Factory[type=" + ((Class) obj).getName() + ",adapter=" + typeAdapter + "]";
                case 1:
                    return "Factory[typeHierarchy=" + ((Class) obj).getName() + ",adapter=" + typeAdapter + "]";
                default:
                    return super.toString();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$32, reason: invalid class name */
    public final class AnonymousClass32 implements TypeAdapterFactory {
        public final /* synthetic */ Class val$boxed;
        public final /* synthetic */ TypeAdapter val$typeAdapter;
        public final /* synthetic */ Class val$unboxed;

        public AnonymousClass32(Class cls, Class cls2, TypeAdapter typeAdapter) {
            this.val$unboxed = cls;
            this.val$boxed = cls2;
            this.val$typeAdapter = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter create(Gson gson, TypeToken typeToken) {
            Class cls = typeToken.rawType;
            if (cls == this.val$unboxed || cls == this.val$boxed) {
                return this.val$typeAdapter;
            }
            return null;
        }

        public final String toString() {
            return "Factory[type=" + this.val$boxed.getName() + "+" + this.val$unboxed.getName() + ",adapter=" + this.val$typeAdapter + "]";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$33, reason: invalid class name */
    public final class AnonymousClass33 implements TypeAdapterFactory {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$typeAdapter;

        public /* synthetic */ AnonymousClass33(int i, Object obj) {
            this.$r8$classId = i;
            this.val$typeAdapter = obj;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter create(Gson gson, TypeToken typeToken) {
            int i = this.$r8$classId;
            Object obj = this.val$typeAdapter;
            switch (i) {
                case 0:
                    Class cls = typeToken.rawType;
                    if (cls == Calendar.class || cls == GregorianCalendar.class) {
                        return (Gson.AnonymousClass1) obj;
                    }
                    return null;
                case 1:
                    if (typeToken.rawType == Number.class) {
                        return (NumberTypeAdapter) obj;
                    }
                    return null;
                default:
                    if (typeToken.rawType == Object.class) {
                        return new ObjectTypeAdapter(gson, (ToNumberPolicy) obj);
                    }
                    return null;
            }
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((Gson.AnonymousClass1) this.val$typeAdapter) + "]";
                default:
                    return super.toString();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$35, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass35 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        int i = 0;
        CLASS_FACTORY = new AnonymousClass31(Class.class, new Gson.AnonymousClass1(13).nullSafe(), i);
        BIT_SET_FACTORY = new AnonymousClass31(BitSet.class, new Gson.AnonymousClass1(23).nullSafe(), i);
        Gson.AnonymousClass1 anonymousClass1 = new Gson.AnonymousClass1(24);
        BOOLEAN_AS_STRING = new Gson.AnonymousClass1(25);
        BOOLEAN_FACTORY = new AnonymousClass32(Boolean.TYPE, Boolean.class, anonymousClass1);
        BYTE_FACTORY = new AnonymousClass32(Byte.TYPE, Byte.class, new Gson.AnonymousClass1(26));
        SHORT_FACTORY = new AnonymousClass32(Short.TYPE, Short.class, new Gson.AnonymousClass1(27));
        INTEGER_FACTORY = new AnonymousClass32(Integer.TYPE, Integer.class, new Gson.AnonymousClass1(28));
        final int i2 = 1;
        int i3 = 0;
        ATOMIC_INTEGER_FACTORY = new AnonymousClass31(AtomicInteger.class, new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            public final Object read(JsonReader jsonReader) {
                switch (i2) {
                    case 0:
                        return new AtomicBoolean(jsonReader.nextBoolean());
                    default:
                        try {
                            return new AtomicInteger(jsonReader.nextInt());
                        } catch (NumberFormatException e) {
                            throw new JsonIOException(e);
                        }
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void write(JsonWriter jsonWriter, Object obj) {
                switch (i2) {
                    case 0:
                        jsonWriter.value(((AtomicBoolean) obj).get());
                        break;
                    default:
                        jsonWriter.value(((AtomicInteger) obj).get());
                        break;
                }
            }
        }.nullSafe(), i3);
        final int i4 = 0;
        ATOMIC_BOOLEAN_FACTORY = new AnonymousClass31(AtomicBoolean.class, new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            public final Object read(JsonReader jsonReader) {
                switch (i4) {
                    case 0:
                        return new AtomicBoolean(jsonReader.nextBoolean());
                    default:
                        try {
                            return new AtomicInteger(jsonReader.nextInt());
                        } catch (NumberFormatException e) {
                            throw new JsonIOException(e);
                        }
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void write(JsonWriter jsonWriter, Object obj) {
                switch (i4) {
                    case 0:
                        jsonWriter.value(((AtomicBoolean) obj).get());
                        break;
                    default:
                        jsonWriter.value(((AtomicInteger) obj).get());
                        break;
                }
            }
        }.nullSafe(), i3);
        ATOMIC_INTEGER_ARRAY_FACTORY = new AnonymousClass31(AtomicIntegerArray.class, new Gson.AnonymousClass1(3).nullSafe(), i3);
        LONG = new Gson.AnonymousClass1(4);
        CHARACTER_FACTORY = new AnonymousClass32(Character.TYPE, Character.class, new Gson.AnonymousClass1(7));
        Gson.AnonymousClass1 anonymousClass12 = new Gson.AnonymousClass1(8);
        BIG_DECIMAL = new Gson.AnonymousClass1(9);
        BIG_INTEGER = new Gson.AnonymousClass1(10);
        LAZILY_PARSED_NUMBER = new Gson.AnonymousClass1(11);
        int i5 = 0;
        STRING_FACTORY = new AnonymousClass31(String.class, anonymousClass12, i5);
        STRING_BUILDER_FACTORY = new AnonymousClass31(StringBuilder.class, new Gson.AnonymousClass1(12), i5);
        STRING_BUFFER_FACTORY = new AnonymousClass31(StringBuffer.class, new Gson.AnonymousClass1(14), i5);
        URL_FACTORY = new AnonymousClass31(URL.class, new Gson.AnonymousClass1(15), i5);
        URI_FACTORY = new AnonymousClass31(URI.class, new Gson.AnonymousClass1(16), i5);
        INET_ADDRESS_FACTORY = new AnonymousClass31(InetAddress.class, new Gson.AnonymousClass1(17), 1);
        int i6 = 0;
        UUID_FACTORY = new AnonymousClass31(UUID.class, new Gson.AnonymousClass1(18), i6);
        CURRENCY_FACTORY = new AnonymousClass31(Currency.class, new Gson.AnonymousClass1(19).nullSafe(), i6);
        CALENDAR_FACTORY = new AnonymousClass33(i6, new Gson.AnonymousClass1(20));
        LOCALE_FACTORY = new AnonymousClass31(Locale.class, new Gson.AnonymousClass1(21), i6);
        Gson.AnonymousClass1 anonymousClass13 = new Gson.AnonymousClass1(22);
        JSON_ELEMENT = anonymousClass13;
        JSON_ELEMENT_FACTORY = new AnonymousClass31(JsonElement.class, anonymousClass13, 1);
        ENUM_FACTORY = new AnonymousClass29(0);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnumTypeAdapter extends TypeAdapter {
        public final /* synthetic */ int $r8$classId;
        public final Object constantToName;
        public final Object nameToConstant;
        public final Object stringToConstant;

        public EnumTypeAdapter(final Class cls) {
            this.$r8$classId = 0;
            this.nameToConstant = new HashMap();
            this.stringToConstant = new HashMap();
            this.constantToName = new HashMap();
            try {
                for (Field field : (Field[]) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.google.gson.internal.bind.TypeAdapters.EnumTypeAdapter.1
                    @Override // java.security.PrivilegedAction
                    public final Object run() {
                        Field[] declaredFields = cls.getDeclaredFields();
                        ArrayList arrayList = new ArrayList(declaredFields.length);
                        for (Field field2 : declaredFields) {
                            if (field2.isEnumConstant()) {
                                arrayList.add(field2);
                            }
                        }
                        Field[] fieldArr = (Field[]) arrayList.toArray(new Field[0]);
                        AccessibleObject.setAccessible(fieldArr, true);
                        return fieldArr;
                    }
                })) {
                    Enum r4 = (Enum) field.get(null);
                    String name = r4.name();
                    String str = r4.toString();
                    SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        name = serializedName.value();
                        for (String str2 : serializedName.alternate()) {
                            ((HashMap) this.nameToConstant).put(str2, r4);
                        }
                    }
                    ((HashMap) this.nameToConstant).put(name, r4);
                    ((HashMap) this.stringToConstant).put(str, r4);
                    ((HashMap) this.constantToName).put(r4, name);
                }
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final Object read(JsonReader jsonReader) {
            int i = this.$r8$classId;
            Map map = null;
            Object obj = this.nameToConstant;
            Object obj2 = this.stringToConstant;
            switch (i) {
                case 0:
                    if (jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.nextNull();
                        return null;
                    }
                    String nextString = jsonReader.nextString();
                    Enum r1 = (Enum) ((HashMap) obj).get(nextString);
                    return r1 == null ? (Enum) ((HashMap) obj2).get(nextString) : r1;
                case 1:
                    TypeAdapter typeAdapter = (TypeAdapter) ((EnumTypeAdapter) obj2).stringToConstant;
                    TypeAdapter typeAdapter2 = (TypeAdapter) ((EnumTypeAdapter) obj).stringToConstant;
                    JsonToken peek = jsonReader.peek();
                    if (peek == JsonToken.NULL) {
                        jsonReader.nextNull();
                    } else {
                        map = (Map) ((ObjectConstructor) this.constantToName).construct();
                        if (peek == JsonToken.BEGIN_ARRAY) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginArray();
                                Object read = typeAdapter2.read(jsonReader);
                                if (map.put(read, typeAdapter.read(jsonReader)) != null) {
                                    throw new JsonIOException("duplicate key: " + read);
                                }
                                jsonReader.endArray();
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                JsonReader.AnonymousClass1.INSTANCE.getClass();
                                JsonReader.AnonymousClass1.promoteNameToValue(jsonReader);
                                Object read2 = typeAdapter2.read(jsonReader);
                                if (map.put(read2, typeAdapter.read(jsonReader)) != null) {
                                    throw new JsonIOException("duplicate key: " + read2);
                                }
                            }
                            jsonReader.endObject();
                        }
                    }
                    return map;
                default:
                    return ((TypeAdapter) obj2).read(jsonReader);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
        
            if ((r0 instanceof com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter) != false) goto L29;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.reflect.Type] */
        @Override // com.google.gson.TypeAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void write(com.google.gson.stream.JsonWriter r5, java.lang.Object r6) {
            /*
                r4 = this;
                int r0 = r4.$r8$classId
                r1 = 0
                java.lang.Object r2 = r4.constantToName
                java.lang.Object r3 = r4.stringToConstant
                switch(r0) {
                    case 0: goto L8c;
                    case 1: goto L54;
                    default: goto La;
                }
            La:
                com.google.gson.TypeAdapter r3 = (com.google.gson.TypeAdapter) r3
                java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
                if (r6 == 0) goto L1d
                boolean r0 = r2 instanceof java.lang.Class
                if (r0 != 0) goto L18
                boolean r0 = r2 instanceof java.lang.reflect.TypeVariable
                if (r0 == 0) goto L1d
            L18:
                java.lang.Class r0 = r6.getClass()
                goto L1e
            L1d:
                r0 = r2
            L1e:
                if (r0 == r2) goto L50
                java.lang.Object r4 = r4.nameToConstant
                com.google.gson.Gson r4 = (com.google.gson.Gson) r4
                com.google.gson.reflect.TypeToken r2 = new com.google.gson.reflect.TypeToken
                r2.<init>(r0)
                com.google.gson.TypeAdapter r4 = r4.getAdapter(r2)
                boolean r0 = r4 instanceof com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
                if (r0 != 0) goto L32
                goto L4f
            L32:
                r0 = r3
            L33:
                boolean r2 = r0 instanceof com.google.gson.Gson.FutureTypeAdapter
                if (r2 == 0) goto L4a
                r2 = r0
                com.google.gson.Gson$FutureTypeAdapter r2 = (com.google.gson.Gson.FutureTypeAdapter) r2
                com.google.gson.TypeAdapter r2 = r2.delegate
                if (r2 == 0) goto L3f
                goto L45
            L3f:
                java.lang.String r2 = "Adapter for type with cyclic dependency has been used before dependency has been resolved"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
                r2 = r1
            L45:
                if (r2 != r0) goto L48
                goto L4a
            L48:
                r0 = r2
                goto L33
            L4a:
                boolean r0 = r0 instanceof com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
                if (r0 != 0) goto L4f
                goto L50
            L4f:
                r3 = r4
            L50:
                r3.write(r5, r6)
                return
            L54:
                java.util.Map r6 = (java.util.Map) r6
                com.google.gson.internal.bind.TypeAdapters$EnumTypeAdapter r3 = (com.google.gson.internal.bind.TypeAdapters.EnumTypeAdapter) r3
                if (r6 != 0) goto L5e
                r5.nullValue()
                goto L8b
            L5e:
                r5.beginObject()
                java.util.Set r4 = r6.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L69:
                boolean r6 = r4.hasNext()
                if (r6 == 0) goto L88
                java.lang.Object r6 = r4.next()
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6
                java.lang.Object r0 = r6.getKey()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5.name(r0)
                java.lang.Object r6 = r6.getValue()
                r3.write(r5, r6)
                goto L69
            L88:
                r5.endObject()
            L8b:
                return
            L8c:
                java.lang.Enum r6 = (java.lang.Enum) r6
                if (r6 != 0) goto L91
                goto L9a
            L91:
                java.util.HashMap r2 = (java.util.HashMap) r2
                java.lang.Object r4 = r2.get(r6)
                r1 = r4
                java.lang.String r1 = (java.lang.String) r1
            L9a:
                r5.value(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.EnumTypeAdapter.write(com.google.gson.stream.JsonWriter, java.lang.Object):void");
        }

        public EnumTypeAdapter(MapTypeAdapterFactory mapTypeAdapterFactory, Gson gson, Type type, TypeAdapter typeAdapter, Type type2, TypeAdapter typeAdapter2, ObjectConstructor objectConstructor) {
            this.$r8$classId = 1;
            this.nameToConstant = new EnumTypeAdapter(gson, typeAdapter, type);
            this.stringToConstant = new EnumTypeAdapter(gson, typeAdapter2, type2);
            this.constantToName = objectConstructor;
        }

        public EnumTypeAdapter(Gson gson, TypeAdapter typeAdapter, Type type) {
            this.$r8$classId = 2;
            this.nameToConstant = gson;
            this.stringToConstant = typeAdapter;
            this.constantToName = type;
        }
    }
}
