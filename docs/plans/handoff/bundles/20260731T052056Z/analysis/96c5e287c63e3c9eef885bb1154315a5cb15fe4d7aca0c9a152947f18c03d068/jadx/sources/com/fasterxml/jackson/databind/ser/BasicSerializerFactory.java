package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.ClassSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.FileSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers$LongSerializer;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers$AtomicBooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers$AtomicIntegerSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers$AtomicLongSerializer;
import com.fasterxml.jackson.databind.ser.std.StdScalarSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.UUIDSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.File;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BasicSerializerFactory extends UnsignedKt implements Serializable {
    public static final HashMap _concrete;
    public static final HashMap _concreteLazy;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.BasicSerializerFactory$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.USE_DEFAULTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr2;
            try {
                iArr2[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i = 0;
        hashMap2.put(String.class.getName(), new StringSerializer(0));
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        hashMap2.put(StringBuffer.class.getName(), toStringSerializer);
        hashMap2.put(StringBuilder.class.getName(), toStringSerializer);
        hashMap2.put(Character.class.getName(), toStringSerializer);
        hashMap2.put(Character.TYPE.getName(), toStringSerializer);
        int i2 = 5;
        hashMap2.put(Integer.class.getName(), new NumberSerializers$LongSerializer(i2, Integer.class));
        Class cls = Integer.TYPE;
        hashMap2.put(cls.getName(), new NumberSerializers$LongSerializer(i2, cls));
        hashMap2.put(Long.class.getName(), new NumberSerializers$LongSerializer(i, Long.class));
        Class cls2 = Long.TYPE;
        hashMap2.put(cls2.getName(), new NumberSerializers$LongSerializer(i, cls2));
        String name = Byte.class.getName();
        NumberSerializers$LongSerializer numberSerializers$LongSerializer = NumberSerializers$LongSerializer.instance$1;
        hashMap2.put(name, numberSerializers$LongSerializer);
        hashMap2.put(Byte.TYPE.getName(), numberSerializers$LongSerializer);
        String name2 = Short.class.getName();
        NumberSerializers$LongSerializer numberSerializers$LongSerializer2 = NumberSerializers$LongSerializer.instance$2;
        hashMap2.put(name2, numberSerializers$LongSerializer2);
        hashMap2.put(Short.TYPE.getName(), numberSerializers$LongSerializer2);
        int i3 = 4;
        hashMap2.put(Double.class.getName(), new NumberSerializers$LongSerializer(i3, Double.class));
        Class cls3 = Double.TYPE;
        hashMap2.put(cls3.getName(), new NumberSerializers$LongSerializer(i3, cls3));
        String name3 = Float.class.getName();
        NumberSerializers$LongSerializer numberSerializers$LongSerializer3 = NumberSerializers$LongSerializer.instance;
        hashMap2.put(name3, numberSerializers$LongSerializer3);
        hashMap2.put(Float.TYPE.getName(), numberSerializers$LongSerializer3);
        hashMap2.put(Boolean.TYPE.getName(), new BooleanSerializer(0, true));
        hashMap2.put(Boolean.class.getName(), new BooleanSerializer(0, false));
        hashMap2.put(BigInteger.class.getName(), new NumberSerializer(BigInteger.class));
        hashMap2.put(BigDecimal.class.getName(), new NumberSerializer(BigDecimal.class));
        hashMap2.put(Calendar.class.getName(), CalendarSerializer.instance);
        hashMap2.put(Date.class.getName(), DateSerializer.instance);
        HashMap hashMap3 = new HashMap();
        hashMap3.put(URL.class, new ToStringSerializer(i, URL.class));
        hashMap3.put(URI.class, new ToStringSerializer(i, URI.class));
        hashMap3.put(Currency.class, new ToStringSerializer(i, Currency.class));
        hashMap3.put(UUID.class, new UUIDSerializer(null));
        hashMap3.put(Pattern.class, new ToStringSerializer(i, Pattern.class));
        hashMap3.put(Locale.class, new ToStringSerializer(i, Locale.class));
        hashMap3.put(AtomicBoolean.class, StdJdkSerializers$AtomicBooleanSerializer.class);
        hashMap3.put(AtomicInteger.class, StdJdkSerializers$AtomicIntegerSerializer.class);
        hashMap3.put(AtomicLong.class, StdJdkSerializers$AtomicLongSerializer.class);
        hashMap3.put(File.class, FileSerializer.class);
        hashMap3.put(Class.class, ClassSerializer.class);
        RawSerializer rawSerializer = RawSerializer.instance;
        hashMap3.put(Void.class, rawSerializer);
        hashMap3.put(Void.TYPE, rawSerializer);
        for (Map.Entry entry : hashMap3.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof JsonSerializer) {
                hashMap2.put(((Class) entry.getKey()).getName(), (JsonSerializer) value);
            } else {
                hashMap.put(((Class) entry.getKey()).getName(), (Class) value);
            }
        }
        hashMap.put(TokenBuffer.class.getName(), StdScalarSerializer.class);
        _concrete = hashMap2;
        _concreteLazy = hashMap;
    }

    public static JsonInclude.Value _findInclusionWithContent(SerializerProvider serializerProvider, BasicBeanDescription basicBeanDescription, TypeBase typeBase, Class cls) {
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Value value = (JsonInclude.Value) serializerProvider._config._configOverrides.value;
        PropertyNamingStrategy propertyNamingStrategy = basicBeanDescription._annotationIntrospector;
        if (propertyNamingStrategy != null && (findPropertyInclusion = propertyNamingStrategy.findPropertyInclusion(basicBeanDescription._classInfo)) != null) {
            value = value == null ? findPropertyInclusion : value.withOverrides(findPropertyInclusion);
        }
        Class cls2 = typeBase._class;
        return value;
    }

    public static JsonSerializer findSerializerFromAnnotation(SerializerProvider serializerProvider, Annotated annotated) {
        SerializationConfig serializationConfig = serializerProvider._config;
        Object findSerializer = serializationConfig.getAnnotationIntrospector().findSerializer(annotated);
        if (findSerializer == null) {
            return null;
        }
        JsonSerializer serializerInstance = serializerProvider.serializerInstance(annotated, findSerializer);
        Object findSerializationConverter = serializationConfig.getAnnotationIntrospector().findSerializationConverter(annotated);
        if (findSerializationConverter == null) {
            return serializerInstance;
        }
        serializerProvider.converterInstance(findSerializationConverter);
        return serializerInstance;
    }

    public static boolean usesStaticTyping(SerializationConfig serializationConfig, BasicBeanDescription basicBeanDescription) {
        JsonSerialize.Typing findSerializationTyping = serializationConfig.getAnnotationIntrospector().findSerializationTyping(basicBeanDescription._classInfo);
        return (findSerializationTyping == null || findSerializationTyping == JsonSerialize.Typing.DEFAULT_TYPING) ? MapperFeature.USE_STATIC_TYPING.enabledIn(serializationConfig._mapperFeatures) : findSerializationTyping == JsonSerialize.Typing.STATIC;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0178  */
    @Override // kotlin.UnsignedKt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createKeySerializer(com.fasterxml.jackson.databind.SerializerProvider r11, com.fasterxml.jackson.databind.type.TypeBase r12) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.BasicSerializerFactory.createKeySerializer(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.type.TypeBase):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // kotlin.UnsignedKt
    public final TypeSerializerBase createTypeSerializer(SerializationConfig serializationConfig, TypeBase typeBase) {
        ArrayList arrayList;
        TypeBase constructType = serializationConfig.constructType(typeBase._class);
        ((BasicClassIntrospector) serializationConfig._base._classIntrospector).getClass();
        BasicBeanDescription _findStdTypeDesc = BasicClassIntrospector._findStdTypeDesc(serializationConfig, constructType);
        if (_findStdTypeDesc == null) {
            _findStdTypeDesc = BasicBeanDescription.forOtherUse(serializationConfig, constructType, PropertyBuilder.resolve(serializationConfig, constructType, serializationConfig));
        }
        AnnotatedClass annotatedClass = _findStdTypeDesc._classInfo;
        StdTypeResolverBuilder findTypeResolver = serializationConfig.getAnnotationIntrospector().findTypeResolver(serializationConfig, annotatedClass, typeBase);
        if (findTypeResolver == null) {
            arrayList = null;
            findTypeResolver = null;
        } else {
            PropertyNamingStrategy annotationIntrospector = serializationConfig.getAnnotationIntrospector();
            HashMap hashMap = new HashMap();
            StdSubtypeResolver._collectAndResolve(annotatedClass, new NamedType(annotatedClass._class, null), serializationConfig, annotationIntrospector, hashMap);
            arrayList = new ArrayList(hashMap.values());
        }
        if (findTypeResolver == null) {
            return null;
        }
        return findTypeResolver.buildTypeSerializer(serializationConfig, typeBase, arrayList);
    }

    public final StdSerializer findSerializerByAnnotations(SerializerProvider serializerProvider, TypeBase typeBase, BasicBeanDescription basicBeanDescription) {
        SerializationConfig serializationConfig = serializerProvider._config;
        if (JsonSerializable.class.isAssignableFrom(typeBase._class)) {
            return RawSerializer.instance$1;
        }
        AnnotatedMember findJsonValueAccessor = basicBeanDescription.findJsonValueAccessor();
        if (findJsonValueAccessor == null) {
            return null;
        }
        if (serializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(findJsonValueAccessor.getMember(), MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS.enabledIn(serializationConfig._mapperFeatures));
        }
        TypeBase type = findJsonValueAccessor.getType();
        JsonSerializer findSerializerFromAnnotation = findSerializerFromAnnotation(serializerProvider, findJsonValueAccessor);
        if (findSerializerFromAnnotation == null) {
            findSerializerFromAnnotation = (JsonSerializer) type._valueHandler;
        }
        TypeSerializer typeSerializer = (TypeSerializer) type._typeHandler;
        if (typeSerializer == null) {
            typeSerializer = createTypeSerializer(serializationConfig, type);
        }
        return new JsonValueSerializer(findJsonValueAccessor, typeSerializer, findSerializerFromAnnotation);
    }
}
