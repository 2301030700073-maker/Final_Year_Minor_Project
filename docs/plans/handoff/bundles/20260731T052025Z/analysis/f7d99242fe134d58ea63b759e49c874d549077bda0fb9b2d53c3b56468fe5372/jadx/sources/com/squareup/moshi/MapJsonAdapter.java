package com.squareup.moshi;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.zxing.BinaryBitmap;
import com.squareup.moshi.ClassJsonAdapter;
import com.squareup.moshi.internal.NullSafeJsonAdapter;
import com.squareup.moshi.internal.Util;
import j$.util.DesugarCollections;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MapJsonAdapter extends JsonAdapter {
    public final /* synthetic */ int $r8$classId = 0;
    public final JsonAdapter keyAdapter;
    public final Object valueAdapter;
    public static final AnonymousClass1 FACTORY$1 = new AnonymousClass1(1);
    public static final AnonymousClass1 FACTORY = new AnonymousClass1(0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.squareup.moshi.MapJsonAdapter$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        public static void throwIfIsCollectionClass(Type type, Class cls) {
            Class<?> rawType = Types.getRawType(type);
            if (cls.isAssignableFrom(rawType)) {
                StringBuilder sb = new StringBuilder("No JsonAdapter for ");
                sb.append(type);
                String simpleName = cls.getSimpleName();
                String simpleName2 = rawType.getSimpleName();
                sb.append(", you should probably use ");
                sb.append(simpleName);
                sb.append(" instead of ");
                sb.append(simpleName2);
                sb.append(" (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        public final JsonAdapter create(Type type, Set set, final Moshi moshi) {
            Class rawType;
            Type[] typeArr;
            char c;
            JsonAdapter jsonAdapter;
            Types classFactory$1;
            Class cls;
            boolean z;
            Field[] fieldArr;
            int i;
            LinkedHashSet linkedHashSet;
            Json json;
            NullSafeJsonAdapter nullSafeJsonAdapter;
            Class<?> cls2;
            Constructor<?> declaredConstructor;
            Object[] objArr;
            Type type2 = type;
            int i2 = this.$r8$classId;
            Class cls3 = Integer.TYPE;
            int i3 = 0;
            LinkedHashSet linkedHashSet2 = null;
            switch (i2) {
                case 0:
                    if (set.isEmpty() && (rawType = Types.getRawType(type2)) == Map.class) {
                        if (type2 == Properties.class) {
                            typeArr = new Type[]{String.class, String.class};
                        } else if (Map.class.isAssignableFrom(rawType)) {
                            Type resolve = Util.resolve(type2, rawType, Util.getGenericSupertype(type2, rawType, Map.class), new LinkedHashSet());
                            if (!(resolve instanceof ParameterizedType)) {
                                c = 1;
                                typeArr = new Type[]{Object.class, Object.class};
                                return new MapJsonAdapter(moshi, typeArr[0], typeArr[c]).nullSafe();
                            }
                            typeArr = ((ParameterizedType) resolve).getActualTypeArguments();
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                        }
                        c = 1;
                        return new MapJsonAdapter(moshi, typeArr[0], typeArr[c]).nullSafe();
                    }
                    return null;
                case 1:
                    Type genericComponentType = type2 instanceof GenericArrayType ? ((GenericArrayType) type2).getGenericComponentType() : type2 instanceof Class ? ((Class) type2).getComponentType() : null;
                    if (genericComponentType != null && set.isEmpty()) {
                        return new MapJsonAdapter(Types.getRawType(genericComponentType), moshi.adapter(genericComponentType, Util.NO_ANNOTATIONS, null)).nullSafe();
                    }
                    return null;
                case 2:
                    if ((type2 instanceof Class) || (type2 instanceof ParameterizedType)) {
                        final Class rawType2 = Types.getRawType(type2);
                        if (!rawType2.isInterface() && !rawType2.isEnum() && set.isEmpty()) {
                            if (Util.isPlatformType(rawType2)) {
                                throwIfIsCollectionClass(type2, List.class);
                                throwIfIsCollectionClass(type2, Set.class);
                                throwIfIsCollectionClass(type2, Map.class);
                                throwIfIsCollectionClass(type2, Collection.class);
                                String str = "Platform " + rawType2;
                                if (type2 instanceof ParameterizedType) {
                                    str = str + " in " + type2;
                                }
                                UriKt$$ExternalSyntheticBUOutline0.m(str.concat(" requires explicit JsonAdapter to be registered"));
                                return null;
                            }
                            if (rawType2.isAnonymousClass()) {
                                UriKt$$ExternalSyntheticBUOutline0.m("Cannot serialize anonymous class ".concat(rawType2.getName()));
                                return null;
                            }
                            if (rawType2.isLocalClass()) {
                                UriKt$$ExternalSyntheticBUOutline0.m("Cannot serialize local class ".concat(rawType2.getName()));
                                return null;
                            }
                            if (rawType2.getEnclosingClass() != null && !Modifier.isStatic(rawType2.getModifiers())) {
                                UriKt$$ExternalSyntheticBUOutline0.m("Cannot serialize non-static nested class ".concat(rawType2.getName()));
                                return null;
                            }
                            if (Modifier.isAbstract(rawType2.getModifiers())) {
                                UriKt$$ExternalSyntheticBUOutline0.m("Cannot serialize abstract class ".concat(rawType2.getName()));
                                return null;
                            }
                            Class<? extends Annotation> cls4 = Util.METADATA;
                            if (cls4 != null && rawType2.isAnnotationPresent(cls4)) {
                                Regex$$ExternalSyntheticBUOutline0.m$1(rawType2.getName(), ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact.", "Cannot serialize Kotlin type ");
                                return null;
                            }
                            try {
                                try {
                                    try {
                                        try {
                                            Constructor declaredConstructor2 = rawType2.getDeclaredConstructor(null);
                                            declaredConstructor2.setAccessible(true);
                                            classFactory$1 = new ClassFactory$1(declaredConstructor2, rawType2);
                                        } catch (NoSuchMethodException unused) {
                                            Class<?> cls5 = Class.forName("sun.misc.Unsafe");
                                            Field declaredField = cls5.getDeclaredField("theUnsafe");
                                            declaredField.setAccessible(true);
                                            final Object obj = declaredField.get(null);
                                            final Method method = cls5.getMethod("allocateInstance", Class.class);
                                            classFactory$1 = new Types() { // from class: com.squareup.moshi.ClassFactory$2
                                                @Override // com.squareup.moshi.Types
                                                public final Object newInstance() {
                                                    return method.invoke(obj, rawType2);
                                                }

                                                public final String toString() {
                                                    return rawType2.getName();
                                                }
                                            };
                                        }
                                    } catch (Exception unused2) {
                                        jsonAdapter = null;
                                        UriKt$$ExternalSyntheticBUOutline0.m("cannot construct instances of ".concat(rawType2.getName()));
                                    }
                                } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused3) {
                                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                                    declaredMethod.setAccessible(true);
                                    final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                                    final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, cls3);
                                    declaredMethod2.setAccessible(true);
                                    classFactory$1 = new Types() { // from class: com.squareup.moshi.ClassFactory$3
                                        @Override // com.squareup.moshi.Types
                                        public final Object newInstance() {
                                            return declaredMethod2.invoke(null, rawType2, Integer.valueOf(intValue));
                                        }

                                        public final String toString() {
                                            return rawType2.getName();
                                        }
                                    };
                                } catch (IllegalAccessException unused4) {
                                    throw new AssertionError();
                                }
                            } catch (IllegalAccessException unused5) {
                                throw new AssertionError();
                            } catch (NoSuchMethodException unused6) {
                                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                                declaredMethod3.setAccessible(true);
                                classFactory$1 = new ClassFactory$1(declaredMethod3, rawType2);
                            } catch (InvocationTargetException e) {
                                Util.rethrowCause(e);
                                throw null;
                            }
                            TreeMap treeMap = new TreeMap();
                            while (type2 != Object.class) {
                                Class rawType3 = Types.getRawType(type2);
                                boolean isPlatformType = Util.isPlatformType(rawType3);
                                Field[] declaredFields = rawType3.getDeclaredFields();
                                int length = declaredFields.length;
                                int i4 = i3;
                                while (i4 < length) {
                                    Field field = declaredFields[i4];
                                    int modifiers = field.getModifiers();
                                    if (Modifier.isStatic(modifiers) || Modifier.isTransient(modifiers) || (!(Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers) || !isPlatformType) || ((json = (Json) field.getAnnotation(Json.class)) != null && json.ignore()))) {
                                        cls = rawType3;
                                        z = isPlatformType;
                                        fieldArr = declaredFields;
                                        i = i3;
                                        linkedHashSet = linkedHashSet2;
                                    } else {
                                        i = i3;
                                        Type resolve2 = Util.resolve(type2, rawType3, field.getGenericType(), new LinkedHashSet());
                                        Annotation[] annotations = field.getAnnotations();
                                        linkedHashSet = linkedHashSet2;
                                        int length2 = annotations.length;
                                        int i5 = i;
                                        LinkedHashSet linkedHashSet3 = linkedHashSet;
                                        while (i5 < length2) {
                                            Class cls6 = rawType3;
                                            Annotation annotation = annotations[i5];
                                            boolean z2 = isPlatformType;
                                            Field[] fieldArr2 = declaredFields;
                                            if (annotation.annotationType().isAnnotationPresent(JsonQualifier.class)) {
                                                LinkedHashSet linkedHashSet4 = linkedHashSet3 == null ? new LinkedHashSet() : linkedHashSet3;
                                                linkedHashSet4.add(annotation);
                                                linkedHashSet3 = linkedHashSet4;
                                            }
                                            i5++;
                                            rawType3 = cls6;
                                            isPlatformType = z2;
                                            declaredFields = fieldArr2;
                                        }
                                        cls = rawType3;
                                        z = isPlatformType;
                                        fieldArr = declaredFields;
                                        Set unmodifiableSet = linkedHashSet3 != null ? DesugarCollections.unmodifiableSet(linkedHashSet3) : Util.NO_ANNOTATIONS;
                                        String name = field.getName();
                                        JsonAdapter adapter = moshi.adapter(resolve2, unmodifiableSet, name);
                                        field.setAccessible(true);
                                        if (json != null) {
                                            String name2 = json.name();
                                            if (!WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR.equals(name2)) {
                                                name = name2;
                                            }
                                        }
                                        ClassJsonAdapter.FieldBinding fieldBinding = (ClassJsonAdapter.FieldBinding) treeMap.put(name, new ClassJsonAdapter.FieldBinding(name, field, adapter));
                                        if (fieldBinding != null) {
                                            throw new IllegalArgumentException("Conflicting fields:\n    " + fieldBinding.field + "\n    " + field);
                                        }
                                    }
                                    i4++;
                                    i3 = i;
                                    rawType3 = cls;
                                    isPlatformType = z;
                                    linkedHashSet2 = linkedHashSet;
                                    declaredFields = fieldArr;
                                }
                                Class rawType4 = Types.getRawType(type2);
                                type2 = Util.resolve(type2, rawType4, rawType4.getGenericSuperclass(), new LinkedHashSet());
                            }
                            return new ClassJsonAdapter(classFactory$1, treeMap).nullSafe();
                        }
                    }
                    jsonAdapter = null;
                    return jsonAdapter;
                case 3:
                    Class rawType5 = Types.getRawType(type2);
                    if (!set.isEmpty()) {
                        return null;
                    }
                    if (rawType5 == List.class || rawType5 == Collection.class) {
                        return new CollectionJsonAdapter$2(moshi.adapter(Types.collectionElementType(type2), Util.NO_ANNOTATIONS, null), 0).nullSafe();
                    }
                    if (rawType5 == Set.class) {
                        return new CollectionJsonAdapter$2(moshi.adapter(Types.collectionElementType(type2), Util.NO_ANNOTATIONS, null), 1).nullSafe();
                    }
                    return null;
                case 4:
                    return null;
                default:
                    if (!set.isEmpty()) {
                        return null;
                    }
                    Class cls7 = Boolean.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$2 = Types.BOOLEAN_JSON_ADAPTER;
                    if (type2 == cls7) {
                        return standardJsonAdapters$2;
                    }
                    Class cls8 = Byte.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$22 = Types.BYTE_JSON_ADAPTER;
                    if (type2 == cls8) {
                        return standardJsonAdapters$22;
                    }
                    Class cls9 = Character.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$23 = Types.CHARACTER_JSON_ADAPTER;
                    if (type2 == cls9) {
                        return standardJsonAdapters$23;
                    }
                    Class cls10 = Double.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$24 = Types.DOUBLE_JSON_ADAPTER;
                    if (type2 == cls10) {
                        return standardJsonAdapters$24;
                    }
                    Class cls11 = Float.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$25 = Types.FLOAT_JSON_ADAPTER;
                    if (type2 == cls11) {
                        return standardJsonAdapters$25;
                    }
                    StandardJsonAdapters$2 standardJsonAdapters$26 = Types.INTEGER_JSON_ADAPTER;
                    if (type2 == cls3) {
                        return standardJsonAdapters$26;
                    }
                    Class cls12 = Long.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$27 = Types.LONG_JSON_ADAPTER;
                    if (type2 == cls12) {
                        return standardJsonAdapters$27;
                    }
                    Class cls13 = Short.TYPE;
                    StandardJsonAdapters$2 standardJsonAdapters$28 = Types.SHORT_JSON_ADAPTER;
                    if (type2 == cls13) {
                        return standardJsonAdapters$28;
                    }
                    if (type2 == Boolean.class) {
                        return standardJsonAdapters$2.nullSafe();
                    }
                    if (type2 == Byte.class) {
                        return standardJsonAdapters$22.nullSafe();
                    }
                    if (type2 == Character.class) {
                        return standardJsonAdapters$23.nullSafe();
                    }
                    if (type2 == Double.class) {
                        return standardJsonAdapters$24.nullSafe();
                    }
                    if (type2 == Float.class) {
                        return standardJsonAdapters$25.nullSafe();
                    }
                    if (type2 == Integer.class) {
                        return standardJsonAdapters$26.nullSafe();
                    }
                    if (type2 == Long.class) {
                        return standardJsonAdapters$27.nullSafe();
                    }
                    if (type2 == Short.class) {
                        return standardJsonAdapters$28.nullSafe();
                    }
                    if (type2 == String.class) {
                        return Types.STRING_JSON_ADAPTER.nullSafe();
                    }
                    if (type2 == Object.class) {
                        return new JsonAdapter(moshi) { // from class: com.squareup.moshi.StandardJsonAdapters$ObjectJsonAdapter
                            public final JsonAdapter booleanAdapter;
                            public final JsonAdapter doubleAdapter;
                            public final JsonAdapter listJsonAdapter;
                            public final JsonAdapter mapAdapter;
                            public final Moshi moshi;
                            public final JsonAdapter stringAdapter;

                            {
                                this.moshi = moshi;
                                this.listJsonAdapter = moshi.adapter(List.class);
                                this.mapAdapter = moshi.adapter(Map.class);
                                this.stringAdapter = moshi.adapter(String.class);
                                this.doubleAdapter = moshi.adapter(Double.class);
                                this.booleanAdapter = moshi.adapter(Boolean.class);
                            }

                            @Override // com.squareup.moshi.JsonAdapter
                            public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
                                int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(jsonUtf8Reader.peek());
                                if (ordinal == 0) {
                                    return this.listJsonAdapter.fromJson(jsonUtf8Reader);
                                }
                                if (ordinal == 2) {
                                    return this.mapAdapter.fromJson(jsonUtf8Reader);
                                }
                                if (ordinal == 5) {
                                    return this.stringAdapter.fromJson(jsonUtf8Reader);
                                }
                                if (ordinal == 6) {
                                    return this.doubleAdapter.fromJson(jsonUtf8Reader);
                                }
                                if (ordinal == 7) {
                                    return this.booleanAdapter.fromJson(jsonUtf8Reader);
                                }
                                if (ordinal == 8) {
                                    jsonUtf8Reader.nextNull();
                                    return null;
                                }
                                Regex$$ExternalSyntheticBUOutline0.m("Expected a value but was ", Sink$CC.stringValueOf$2(jsonUtf8Reader.peek()), " at path ", jsonUtf8Reader.getPath());
                                return null;
                            }

                            /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
                            
                                if (r1.isAssignableFrom(r0) != false) goto L8;
                             */
                            @Override // com.squareup.moshi.JsonAdapter
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void toJson(com.squareup.moshi.JsonUtf8Writer r4, java.lang.Object r5) {
                                /*
                                    r3 = this;
                                    java.lang.Class r0 = r5.getClass()
                                    java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
                                    if (r0 != r1) goto L16
                                    r4.beginObject()
                                    r3 = 0
                                    r4.promoteValueToName = r3
                                    r3 = 5
                                    r5 = 125(0x7d, float:1.75E-43)
                                    r0 = 3
                                    r4.close(r5, r0, r3)
                                    return
                                L16:
                                    java.lang.Class<java.util.Map> r1 = java.util.Map.class
                                    boolean r2 = r1.isAssignableFrom(r0)
                                    if (r2 == 0) goto L20
                                L1e:
                                    r0 = r1
                                    goto L29
                                L20:
                                    java.lang.Class<java.util.Collection> r1 = java.util.Collection.class
                                    boolean r2 = r1.isAssignableFrom(r0)
                                    if (r2 == 0) goto L29
                                    goto L1e
                                L29:
                                    java.util.Set r1 = com.squareup.moshi.internal.Util.NO_ANNOTATIONS
                                    r2 = 0
                                    com.squareup.moshi.Moshi r3 = r3.moshi
                                    com.squareup.moshi.JsonAdapter r3 = r3.adapter(r0, r1, r2)
                                    r3.toJson(r4, r5)
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.StandardJsonAdapters$ObjectJsonAdapter.toJson(com.squareup.moshi.JsonUtf8Writer, java.lang.Object):void");
                            }

                            public final String toString() {
                                return "JsonAdapter(Object)";
                            }
                        }.nullSafe();
                    }
                    final Class rawType6 = Types.getRawType(type2);
                    Set set2 = Util.NO_ANNOTATIONS;
                    JsonClass jsonClass = (JsonClass) rawType6.getAnnotation(JsonClass.class);
                    if (jsonClass == null || !jsonClass.generateAdapter()) {
                        nullSafeJsonAdapter = null;
                    } else {
                        try {
                            try {
                                cls2 = Class.forName(rawType6.getName().replace("$", "_") + "JsonAdapter", true, rawType6.getClassLoader());
                            } catch (NoSuchMethodException e2) {
                                e = e2;
                                cls2 = null;
                            }
                            try {
                                if (type2 instanceof ParameterizedType) {
                                    Type[] actualTypeArguments = ((ParameterizedType) type2).getActualTypeArguments();
                                    try {
                                        declaredConstructor = cls2.getDeclaredConstructor(Moshi.class, Type[].class);
                                        objArr = new Object[]{moshi, actualTypeArguments};
                                    } catch (NoSuchMethodException unused7) {
                                        declaredConstructor = cls2.getDeclaredConstructor(Type[].class);
                                        objArr = new Object[]{actualTypeArguments};
                                    }
                                } else {
                                    try {
                                        declaredConstructor = cls2.getDeclaredConstructor(Moshi.class);
                                        objArr = new Object[]{moshi};
                                    } catch (NoSuchMethodException unused8) {
                                        declaredConstructor = cls2.getDeclaredConstructor(null);
                                        objArr = new Object[0];
                                    }
                                }
                                declaredConstructor.setAccessible(true);
                                nullSafeJsonAdapter = ((JsonAdapter) declaredConstructor.newInstance(objArr)).nullSafe();
                            } catch (NoSuchMethodException e3) {
                                e = e3;
                                if ((type2 instanceof ParameterizedType) || cls2.getTypeParameters().length == 0) {
                                    Regex$$ExternalSyntheticBUOutline0.m("Failed to find the generated JsonAdapter constructor for ", type2, e);
                                    return null;
                                }
                                StringBuilder sb = new StringBuilder("Failed to find the generated JsonAdapter constructor for '");
                                sb.append(type2);
                                String canonicalName = cls2.getCanonicalName();
                                sb.append("'. Suspiciously, the type was not parameterized but the target class '");
                                sb.append(canonicalName);
                                sb.append("' is generic. Consider using Types#newParameterizedType() to define these missing type variables.");
                                throw new RuntimeException(sb.toString(), e);
                            }
                        } catch (ClassNotFoundException e4) {
                            Regex$$ExternalSyntheticBUOutline0.m("Failed to find the generated JsonAdapter class for ", type2, e4);
                            return null;
                        } catch (IllegalAccessException e5) {
                            Regex$$ExternalSyntheticBUOutline0.m("Failed to access the generated JsonAdapter for ", type2, e5);
                            return null;
                        } catch (InstantiationException e6) {
                            Regex$$ExternalSyntheticBUOutline0.m("Failed to instantiate the generated JsonAdapter for ", type2, e6);
                            return null;
                        } catch (InvocationTargetException e7) {
                            Util.rethrowCause(e7);
                            throw null;
                        }
                    }
                    if (nullSafeJsonAdapter != null) {
                        return nullSafeJsonAdapter;
                    }
                    if (rawType6.isEnum()) {
                        return new JsonAdapter(rawType6) { // from class: com.squareup.moshi.StandardJsonAdapters$EnumJsonAdapter
                            public final Enum[] constants;
                            public final Class enumType;
                            public final String[] nameStrings;
                            public final BinaryBitmap options;

                            {
                                this.enumType = rawType6;
                                try {
                                    Enum[] enumArr = (Enum[]) rawType6.getEnumConstants();
                                    this.constants = enumArr;
                                    this.nameStrings = new String[enumArr.length];
                                    int i6 = 0;
                                    while (true) {
                                        Enum[] enumArr2 = this.constants;
                                        if (i6 >= enumArr2.length) {
                                            this.options = BinaryBitmap.of(this.nameStrings);
                                            return;
                                        }
                                        String name3 = enumArr2[i6].name();
                                        String[] strArr = this.nameStrings;
                                        Field field2 = rawType6.getField(name3);
                                        Set set3 = Util.NO_ANNOTATIONS;
                                        Json json2 = (Json) field2.getAnnotation(Json.class);
                                        if (json2 != null) {
                                            String name4 = json2.name();
                                            if (!WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR.equals(name4)) {
                                                name3 = name4;
                                            }
                                        }
                                        strArr[i6] = name3;
                                        i6++;
                                    }
                                } catch (NoSuchFieldException e8) {
                                    throw new AssertionError("Missing field in ".concat(rawType6.getName()), e8);
                                }
                            }

                            @Override // com.squareup.moshi.JsonAdapter
                            public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
                                int i6;
                                int i7 = jsonUtf8Reader.peeked;
                                if (i7 == 0) {
                                    i7 = jsonUtf8Reader.doPeek();
                                }
                                if (i7 < 8 || i7 > 11) {
                                    i6 = -1;
                                } else {
                                    BinaryBitmap binaryBitmap = this.options;
                                    if (i7 == 11) {
                                        i6 = jsonUtf8Reader.findString(jsonUtf8Reader.peekedString, binaryBitmap);
                                    } else {
                                        i6 = jsonUtf8Reader.source.select((Options) binaryBitmap.matrix);
                                        if (i6 != -1) {
                                            jsonUtf8Reader.peeked = 0;
                                            int[] iArr = jsonUtf8Reader.pathIndices;
                                            int i8 = jsonUtf8Reader.stackSize - 1;
                                            iArr[i8] = iArr[i8] + 1;
                                        } else {
                                            String nextString = jsonUtf8Reader.nextString();
                                            int findString = jsonUtf8Reader.findString(nextString, binaryBitmap);
                                            if (findString == -1) {
                                                jsonUtf8Reader.peeked = 11;
                                                jsonUtf8Reader.peekedString = nextString;
                                                jsonUtf8Reader.pathIndices[jsonUtf8Reader.stackSize - 1] = r0[r1] - 1;
                                            }
                                            i6 = findString;
                                        }
                                    }
                                }
                                if (i6 != -1) {
                                    return this.constants[i6];
                                }
                                String path = jsonUtf8Reader.getPath();
                                String nextString2 = jsonUtf8Reader.nextString();
                                throw new JsonDataException("Expected one of " + Arrays.asList(this.nameStrings) + " but was " + nextString2 + " at path " + path);
                            }

                            @Override // com.squareup.moshi.JsonAdapter
                            public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj2) {
                                jsonUtf8Writer.value(this.nameStrings[((Enum) obj2).ordinal()]);
                            }

                            public final String toString() {
                                return "JsonAdapter(" + this.enumType.getName() + ")";
                            }
                        }.nullSafe();
                    }
                    return null;
            }
        }
    }

    public MapJsonAdapter(Moshi moshi, Type type, Type type2) {
        Set set = Util.NO_ANNOTATIONS;
        this.keyAdapter = moshi.adapter(type, set, null);
        this.valueAdapter = moshi.adapter(type2, set, null);
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        int i = this.$r8$classId;
        Object obj = this.valueAdapter;
        JsonAdapter jsonAdapter = this.keyAdapter;
        switch (i) {
            case 0:
                LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
                jsonUtf8Reader.beginObject();
                while (jsonUtf8Reader.hasNext()) {
                    if (jsonUtf8Reader.hasNext()) {
                        jsonUtf8Reader.peekedString = jsonUtf8Reader.nextName();
                        jsonUtf8Reader.peeked = 11;
                    }
                    Object fromJson = jsonAdapter.fromJson(jsonUtf8Reader);
                    Object fromJson2 = ((JsonAdapter) obj).fromJson(jsonUtf8Reader);
                    Object put = linkedHashTreeMap.put(fromJson, fromJson2);
                    if (put != null) {
                        StringBuilder sb = new StringBuilder("Map key '");
                        sb.append(fromJson);
                        String path = jsonUtf8Reader.getPath();
                        sb.append("' has multiple values at path ");
                        sb.append(path);
                        sb.append(": ");
                        sb.append(put);
                        sb.append(" and ");
                        sb.append(fromJson2);
                        throw new JsonDataException(sb.toString());
                    }
                }
                jsonUtf8Reader.endObject();
                return linkedHashTreeMap;
            default:
                ArrayList arrayList = new ArrayList();
                jsonUtf8Reader.beginArray();
                while (jsonUtf8Reader.hasNext()) {
                    arrayList.add(jsonAdapter.fromJson(jsonUtf8Reader));
                }
                jsonUtf8Reader.endArray();
                Object newInstance = Array.newInstance((Class<?>) obj, arrayList.size());
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    Array.set(newInstance, i2, arrayList.get(i2));
                }
                return newInstance;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        int i = this.$r8$classId;
        JsonAdapter jsonAdapter = this.keyAdapter;
        switch (i) {
            case 0:
                jsonUtf8Writer.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (entry.getKey() == null) {
                        throw new JsonDataException("Map key is null at ".concat(jsonUtf8Writer.getPath()));
                    }
                    int peekScope = jsonUtf8Writer.peekScope();
                    if (peekScope != 5 && peekScope != 3) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Nesting problem.");
                        return;
                    } else {
                        jsonUtf8Writer.promoteValueToName = true;
                        jsonAdapter.toJson(jsonUtf8Writer, entry.getKey());
                        ((JsonAdapter) this.valueAdapter).toJson(jsonUtf8Writer, entry.getValue());
                    }
                }
                jsonUtf8Writer.promoteValueToName = false;
                jsonUtf8Writer.close('}', 3, 5);
                return;
            default:
                jsonUtf8Writer.beginArray();
                int length = Array.getLength(obj);
                for (int i2 = 0; i2 < length; i2++) {
                    jsonAdapter.toJson(jsonUtf8Writer, Array.get(obj, i2));
                }
                jsonUtf8Writer.close(']', 1, 2);
                return;
        }
    }

    public final String toString() {
        int i = this.$r8$classId;
        JsonAdapter jsonAdapter = this.keyAdapter;
        switch (i) {
            case 0:
                return "JsonAdapter(" + jsonAdapter + "=" + ((JsonAdapter) this.valueAdapter) + ")";
            default:
                return jsonAdapter + ".array()";
        }
    }

    public MapJsonAdapter(Class cls, JsonAdapter jsonAdapter) {
        this.valueAdapter = cls;
        this.keyAdapter = jsonAdapter;
    }
}
