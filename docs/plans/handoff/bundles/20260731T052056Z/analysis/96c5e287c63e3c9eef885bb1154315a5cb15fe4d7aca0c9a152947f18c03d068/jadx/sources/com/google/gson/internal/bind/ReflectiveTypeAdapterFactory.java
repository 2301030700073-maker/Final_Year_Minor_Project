package com.google.gson.internal.bind;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.HttpException;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.ReflectionAccessFilter$FilterResult;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    public final FormBody.Builder constructorConstructor;
    public final Excluder excluder;
    public final FieldNamingPolicy fieldNamingPolicy;
    public final ArrayList reflectionFilters;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final boolean deserialized;
        public final Field field;
        public final String fieldName;
        public final String name;
        public final boolean serialized;
        public final /* synthetic */ Method val$accessor;
        public final /* synthetic */ boolean val$blockInaccessible;
        public final /* synthetic */ Gson val$context;
        public final /* synthetic */ TypeToken val$fieldType;
        public final /* synthetic */ boolean val$isPrimitive;
        public final /* synthetic */ boolean val$isStaticFinalField;
        public final /* synthetic */ boolean val$jsonAdapterPresent;
        public final /* synthetic */ TypeAdapter val$typeAdapter;

        public AnonymousClass1(String str, Field field, boolean z, boolean z2, boolean z3, Method method, boolean z4, TypeAdapter typeAdapter, Gson gson, TypeToken typeToken, boolean z5, boolean z6) {
            this.val$blockInaccessible = z3;
            this.val$accessor = method;
            this.val$jsonAdapterPresent = z4;
            this.val$typeAdapter = typeAdapter;
            this.val$context = gson;
            this.val$fieldType = typeToken;
            this.val$isPrimitive = z5;
            this.val$isStaticFinalField = z6;
            this.name = str;
            this.field = field;
            this.fieldName = field.getName();
            this.serialized = z;
            this.deserialized = z2;
        }

        public final void write(JsonWriter jsonWriter, Object obj) {
            Object obj2;
            if (this.serialized) {
                boolean z = this.val$blockInaccessible;
                Field field = this.field;
                Method method = this.val$accessor;
                if (z) {
                    if (method == null) {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, field);
                    } else {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, method);
                    }
                }
                if (method != null) {
                    try {
                        obj2 = method.invoke(obj, null);
                    } catch (InvocationTargetException e) {
                        throw new JsonIOException(Animation.CC.m("Accessor ", ReflectionHelper.getAccessibleObjectDescription(method, false), " threw exception"), e.getCause());
                    }
                } else {
                    obj2 = field.get(obj);
                }
                if (obj2 == obj) {
                    return;
                }
                jsonWriter.name(this.name);
                boolean z2 = this.val$jsonAdapterPresent;
                TypeAdapter typeAdapter = this.val$typeAdapter;
                if (!z2) {
                    typeAdapter = new TypeAdapters.EnumTypeAdapter(this.val$context, typeAdapter, this.val$fieldType.type);
                }
                typeAdapter.write(jsonWriter, obj2);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Adapter extends TypeAdapter {
        public final LinkedHashMap boundFields;

        public Adapter(LinkedHashMap linkedHashMap) {
            this.boundFields = linkedHashMap;
        }

        public abstract Object createAccumulator();

        public abstract Object finalize(Object obj);

        @Override // com.google.gson.TypeAdapter
        public final Object read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Object createAccumulator = createAccumulator();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    AnonymousClass1 anonymousClass1 = (AnonymousClass1) this.boundFields.get(jsonReader.nextName());
                    if (anonymousClass1 != null && anonymousClass1.deserialized) {
                        readField(createAccumulator, jsonReader, anonymousClass1);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return finalize(createAccumulator);
            } catch (IllegalAccessException e) {
                UtilsKt utilsKt = ReflectionHelper.RECORD_HELPER;
                ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", (Throwable) e);
                return null;
            } catch (IllegalStateException e2) {
                throw new JsonIOException(e2);
            }
        }

        public abstract void readField(Object obj, JsonReader jsonReader, AnonymousClass1 anonymousClass1);

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator it = this.boundFields.values().iterator();
                while (it.hasNext()) {
                    ((AnonymousClass1) it.next()).write(jsonWriter, obj);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                UtilsKt utilsKt = ReflectionHelper.RECORD_HELPER;
                ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", (Throwable) e);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecordAdapter extends Adapter {
        public static final HashMap PRIMITIVE_DEFAULTS;
        public final HashMap componentIndices;
        public final Constructor constructor;
        public final Object[] constructorArgsDefaults;

        static {
            HashMap hashMap = new HashMap();
            hashMap.put(Byte.TYPE, (byte) 0);
            hashMap.put(Short.TYPE, (short) 0);
            hashMap.put(Integer.TYPE, 0);
            hashMap.put(Long.TYPE, 0L);
            hashMap.put(Float.TYPE, Float.valueOf(RecyclerView.DECELERATION_RATE));
            hashMap.put(Double.TYPE, Double.valueOf(0.0d));
            hashMap.put(Character.TYPE, (char) 0);
            hashMap.put(Boolean.TYPE, Boolean.FALSE);
            PRIMITIVE_DEFAULTS = hashMap;
        }

        public RecordAdapter(Class cls, LinkedHashMap linkedHashMap, boolean z) {
            super(linkedHashMap);
            this.componentIndices = new HashMap();
            UtilsKt utilsKt = ReflectionHelper.RECORD_HELPER;
            Constructor canonicalRecordConstructor = utilsKt.getCanonicalRecordConstructor(cls);
            this.constructor = canonicalRecordConstructor;
            if (z) {
                ReflectiveTypeAdapterFactory.checkAccessible(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = utilsKt.getRecordComponentNames(cls);
            for (int i = 0; i < recordComponentNames.length; i++) {
                this.componentIndices.put(recordComponentNames[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.constructor.getParameterTypes();
            this.constructorArgsDefaults = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.constructorArgsDefaults[i2] = PRIMITIVE_DEFAULTS.get(parameterTypes[i2]);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object createAccumulator() {
            return (Object[]) this.constructorArgsDefaults.clone();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object finalize(Object obj) {
            Object[] objArr = (Object[]) obj;
            Constructor constructor = this.constructor;
            try {
                return constructor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                UtilsKt utilsKt = ReflectionHelper.RECORD_HELPER;
                ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", (Throwable) e);
                return null;
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InstantiationException e3) {
                e = e3;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e4) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with args " + Arrays.toString(objArr), e4.getCause());
                return null;
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void readField(Object obj, JsonReader jsonReader, AnonymousClass1 anonymousClass1) {
            Object[] objArr = (Object[]) obj;
            String str = anonymousClass1.fieldName;
            Integer num = (Integer) this.componentIndices.get(str);
            if (num == null) {
                throw new IllegalStateException("Could not find the index in the constructor '" + ReflectionHelper.constructorToString(this.constructor) + "' for field with name '" + str + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
            }
            int intValue = num.intValue();
            Object read = anonymousClass1.val$typeAdapter.read(jsonReader);
            if (read != null || !anonymousClass1.val$isPrimitive) {
                objArr[intValue] = read;
            } else {
                StringBuilder m21m = Animation.CC.m21m("null is not allowed as value for record component '", str, "' of primitive type; at path ");
                m21m.append(jsonReader.getPath());
                throw new HttpException(m21m.toString());
            }
        }
    }

    public ReflectiveTypeAdapterFactory(FormBody.Builder builder, FieldNamingPolicy fieldNamingPolicy, Excluder excluder, MapTypeAdapterFactory mapTypeAdapterFactory, ArrayList arrayList) {
        this.constructorConstructor = builder;
        this.fieldNamingPolicy = fieldNamingPolicy;
        this.excluder = excluder;
        this.reflectionFilters = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void checkAccessible(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (!ReflectionAccessFilterHelper$AccessChecker.INSTANCE.canAccess(obj, accessibleObject)) {
            throw new JsonIOException(ReflectionHelper.getAccessibleObjectDescription(accessibleObject, true).concat(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(Gson gson, TypeToken typeToken) {
        Class cls = typeToken.rawType;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        ReflectionAccessFilter$FilterResult filterResult = C$Gson$Types.getFilterResult(this.reflectionFilters);
        if (filterResult != ReflectionAccessFilter$FilterResult.BLOCK_ALL) {
            boolean z = filterResult == ReflectionAccessFilter$FilterResult.BLOCK_INACCESSIBLE;
            return ReflectionHelper.RECORD_HELPER.isRecord(cls) ? new RecordAdapter(cls, getBoundFields(gson, typeToken, cls, z, true), z) : new FieldReflectionAdapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, cls, z, false));
        }
        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + cls + ". Register a TypeAdapter for this type or adjust the access filter.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f1  */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.LinkedHashMap getBoundFields(com.google.gson.Gson r28, com.google.gson.reflect.TypeToken r29, java.lang.Class r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.getBoundFields(com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.Class, boolean, boolean):java.util.LinkedHashMap");
    }

    public final boolean includeField(Field field, boolean z) {
        Class<?> type = field.getType();
        Excluder excluder = this.excluder;
        excluder.getClass();
        if (Excluder.isAnonymousOrNonStaticLocal(type)) {
            return false;
        }
        excluder.excludeClassInStrategy(z);
        if ((136 & field.getModifiers()) != 0 || field.isSynthetic() || Excluder.isAnonymousOrNonStaticLocal(field.getType())) {
            return false;
        }
        List list = z ? excluder.serializationStrategies : excluder.deserializationStrategies;
        if (list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
        return true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FieldReflectionAdapter extends Adapter {
        public final ObjectConstructor constructor;

        public FieldReflectionAdapter(ObjectConstructor objectConstructor, LinkedHashMap linkedHashMap) {
            super(linkedHashMap);
            this.constructor = objectConstructor;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object createAccumulator() {
            return this.constructor.construct();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void readField(Object obj, JsonReader jsonReader, AnonymousClass1 anonymousClass1) {
            Field field = anonymousClass1.field;
            Object read = anonymousClass1.val$typeAdapter.read(jsonReader);
            if (read == null && anonymousClass1.val$isPrimitive) {
                return;
            }
            if (anonymousClass1.val$blockInaccessible) {
                ReflectiveTypeAdapterFactory.checkAccessible(obj, field);
            } else if (anonymousClass1.val$isStaticFinalField) {
                throw new JsonIOException("Cannot set value of 'static final' ".concat(ReflectionHelper.getAccessibleObjectDescription(field, false)));
            }
            field.set(obj, read);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object finalize(Object obj) {
            return obj;
        }
    }
}
