package com.fasterxml.jackson.databind;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider$Impl;
import com.fasterxml.jackson.databind.ser.impl.FailingSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.TypeKey;
import java.text.DateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SerializerProvider {
    public static final FailingSerializer DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer(Object.class);
    public static final UnknownSerializer DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer(0, 6, Object.class);
    public transient ExceptionsKt _attributes;
    public final SerializationConfig _config;
    public DateFormat _dateFormat;
    public final ReadOnlyClassToSerializerMap _knownSerializers;
    public final FailingSerializer _nullKeySerializer;
    public final JsonSerializer _nullValueSerializer;
    public final AndroidSvg _serializerCache;
    public final UnsignedKt _serializerFactory;
    public final boolean _stdNullValueSerializer;
    public final UnknownSerializer _unknownTypeSerializer;

    public SerializerProvider(SerializerProvider serializerProvider, SerializationConfig serializationConfig, UnsignedKt unsignedKt) {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = RawSerializer.instance;
        FailingSerializer failingSerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._nullKeySerializer = failingSerializer;
        this._serializerFactory = unsignedKt;
        this._config = serializationConfig;
        AndroidSvg androidSvg = serializerProvider._serializerCache;
        this._serializerCache = androidSvg;
        this._unknownTypeSerializer = serializerProvider._unknownTypeSerializer;
        JsonSerializer jsonSerializer = serializerProvider._nullValueSerializer;
        this._nullValueSerializer = jsonSerializer;
        this._nullKeySerializer = serializerProvider._nullKeySerializer;
        this._stdNullValueSerializer = jsonSerializer == failingSerializer;
        serializationConfig.getClass();
        this._attributes = serializationConfig._attributes;
        ReadOnlyClassToSerializerMap readOnlyClassToSerializerMap = (ReadOnlyClassToSerializerMap) ((AtomicReference) androidSvg.renderOptions).get();
        if (readOnlyClassToSerializerMap == null) {
            synchronized (androidSvg) {
                readOnlyClassToSerializerMap = (ReadOnlyClassToSerializerMap) ((AtomicReference) androidSvg.renderOptions).get();
                if (readOnlyClassToSerializerMap == null) {
                    ReadOnlyClassToSerializerMap readOnlyClassToSerializerMap2 = new ReadOnlyClassToSerializerMap((HashMap) androidSvg.svg);
                    ((AtomicReference) androidSvg.renderOptions).set(readOnlyClassToSerializerMap2);
                    readOnlyClassToSerializerMap = readOnlyClassToSerializerMap2;
                }
            }
        }
        this._knownSerializers = readOnlyClassToSerializerMap;
    }

    public final JsonSerializer _createAndCacheUntypedSerializer(Class cls) {
        TypeBase constructType = this._config.constructType(cls);
        try {
            JsonSerializer _createUntypedSerializer = _createUntypedSerializer(constructType);
            if (_createUntypedSerializer == null) {
                return _createUntypedSerializer;
            }
            AndroidSvg androidSvg = this._serializerCache;
            synchronized (androidSvg) {
                try {
                    Object put = ((HashMap) androidSvg.svg).put(new TypeKey(cls, false), _createUntypedSerializer);
                    Object put2 = ((HashMap) androidSvg.svg).put(new TypeKey(constructType), _createUntypedSerializer);
                    if (put == null || put2 == null) {
                        ((AtomicReference) androidSvg.renderOptions).set(null);
                    }
                    if (_createUntypedSerializer instanceof BeanSerializerBase) {
                        ((BeanSerializerBase) _createUntypedSerializer).resolve(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return _createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            reportBadDefinition(ClassUtil.exceptionMessage(e));
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x066d, code lost:
    
        if (r0.startsWith("org.hibernate.proxy.") == false) goto L395;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0aff  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0b54  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0b96  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0c72  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0b40  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0593 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:701:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:702:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0c9a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0ca3 A[RETURN] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.io.Serializable, java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r3v143 */
    /* JADX WARN: Type inference failed for: r3v146 */
    /* JADX WARN: Type inference failed for: r3v80 */
    /* JADX WARN: Type inference failed for: r3v81, types: [com.fasterxml.jackson.databind.introspect.Annotated] */
    /* JADX WARN: Type inference failed for: r3v84 */
    /* JADX WARN: Type inference failed for: r3v85, types: [com.fasterxml.jackson.databind.introspect.Annotated] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer _createUntypedSerializer(com.fasterxml.jackson.databind.type.TypeBase r46) {
        /*
            Method dump skipped, instructions count: 3272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.SerializerProvider._createUntypedSerializer(com.fasterxml.jackson.databind.type.TypeBase):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public final DateFormat _dateFormat() {
        DateFormat dateFormat = this._dateFormat;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this._config._base._dateFormat.clone();
        this._dateFormat = dateFormat2;
        return dateFormat2;
    }

    public final TypeBase constructSpecializedType(TypeBase typeBase, Class cls) {
        return typeBase.hasRawClass(cls) ? typeBase : this._config._base._typeFactory.constructSpecializedType(typeBase, cls, true);
    }

    public final void converterInstance(Object obj) {
        if (!(obj instanceof Class)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(obj.getClass().getName(), "; expected type Converter or Class<Converter> instead", "AnnotationIntrospector returned Converter definition of type ");
            return;
        }
        Class cls = (Class) obj;
        if (cls == BeanUtil.class || ClassUtil.isBogusClass(cls)) {
            return;
        }
        if (!Converter.class.isAssignableFrom(cls)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(cls.getName(), "; expected Class<Converter>", "AnnotationIntrospector returned Class ");
            return;
        }
        SerializationConfig serializationConfig = this._config;
        serializationConfig.getClass();
        if (ClassUtil.createInstance(cls, serializationConfig.canOverrideAccessModifiers()) == null) {
            return;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
    }

    public final void defaultSerializeNull(JsonGenerator jsonGenerator) {
        if (this._stdNullValueSerializer) {
            jsonGenerator.writeNull();
        } else {
            this._nullValueSerializer.serialize(null, jsonGenerator, this);
        }
    }

    public final JsonSerializer findContentValueSerializer(Class cls, BeanProperty beanProperty) {
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        if (untypedValueSerializer == null) {
            AndroidSvg androidSvg = this._serializerCache;
            JsonSerializer untypedValueSerializer2 = androidSvg.untypedValueSerializer(cls);
            if (untypedValueSerializer2 == null) {
                untypedValueSerializer = androidSvg.untypedValueSerializer(this._config.constructType(cls));
                if (untypedValueSerializer == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(cls)) == null) {
                    return getUnknownTypeSerializer(cls);
                }
            } else {
                untypedValueSerializer = untypedValueSerializer2;
            }
        }
        return handleSecondaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final JsonSerializer findKeySerializer(TypeBase typeBase, BeanProperty beanProperty) {
        JsonSerializer createKeySerializer = this._serializerFactory.createKeySerializer(this, typeBase);
        if (createKeySerializer instanceof BeanSerializerBase) {
            ((BeanSerializerBase) createKeySerializer).resolve(this);
        }
        return handleSecondaryContextualization(createKeySerializer, beanProperty);
    }

    public abstract WritableObjectId findObjectId(Object obj, PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator);

    public final JsonSerializer findPrimaryPropertySerializer(Class cls, BeanProperty beanProperty) {
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        if (untypedValueSerializer == null) {
            AndroidSvg androidSvg = this._serializerCache;
            JsonSerializer untypedValueSerializer2 = androidSvg.untypedValueSerializer(cls);
            if (untypedValueSerializer2 == null) {
                untypedValueSerializer = androidSvg.untypedValueSerializer(this._config.constructType(cls));
                if (untypedValueSerializer == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(cls)) == null) {
                    return getUnknownTypeSerializer(cls);
                }
            } else {
                untypedValueSerializer = untypedValueSerializer2;
            }
        }
        return handlePrimaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final JsonSerializer findValueSerializer(TypeBase typeBase, BeanProperty beanProperty) {
        if (typeBase == null) {
            throw new JsonMappingException(((DefaultSerializerProvider$Impl) this)._generator, "Null passed for `valueType` of `findValueSerializer()`", null);
        }
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(typeBase);
        return (untypedValueSerializer == null && (untypedValueSerializer = this._serializerCache.untypedValueSerializer(typeBase)) == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(typeBase)) == null) ? getUnknownTypeSerializer(typeBase._class) : handleSecondaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final Object getAttribute(Object obj) {
        Object obj2;
        HashMap hashMap = ((ContextAttributes$Impl) this._attributes)._nonShared;
        if (hashMap == null || (obj2 = hashMap.get(obj)) == null) {
            return Collections.EMPTY_MAP.get(obj);
        }
        if (obj2 == ContextAttributes$Impl.NULL_SURROGATE) {
            return null;
        }
        return obj2;
    }

    public final TypeFactory getTypeFactory() {
        return this._config._base._typeFactory;
    }

    public final JsonSerializer getUnknownTypeSerializer(Class cls) {
        return cls == Object.class ? this._unknownTypeSerializer : new UnknownSerializer(0, 6, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JsonSerializer handlePrimaryContextualization(JsonSerializer jsonSerializer, BeanProperty beanProperty) {
        return (jsonSerializer == 0 || !(jsonSerializer instanceof ContextualSerializer)) ? jsonSerializer : ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JsonSerializer handleSecondaryContextualization(JsonSerializer jsonSerializer, BeanProperty beanProperty) {
        return (jsonSerializer == 0 || !(jsonSerializer instanceof ContextualSerializer)) ? jsonSerializer : ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
    }

    public abstract Object includeFilterInstance(Class cls);

    public abstract boolean includeFilterSuppressNulls(Object obj);

    public final PropertyBasedObjectIdGenerator objectIdGeneratorInstance(ObjectIdInfo objectIdInfo) {
        Class cls = objectIdInfo._generator;
        SerializationConfig serializationConfig = this._config;
        serializationConfig.getClass();
        ObjectIdGenerator objectIdGenerator = (ObjectIdGenerator) ClassUtil.createInstance(cls, serializationConfig.canOverrideAccessModifiers());
        Class cls2 = objectIdInfo._scope;
        PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator = (PropertyBasedObjectIdGenerator) objectIdGenerator;
        return cls2 == propertyBasedObjectIdGenerator._scope ? propertyBasedObjectIdGenerator : new PropertyBasedObjectIdGenerator(cls2, propertyBasedObjectIdGenerator._property);
    }

    public final Object reportBadDefinition(String str) {
        throw new InvalidDefinitionException(((DefaultSerializerProvider$Impl) this)._generator, str);
    }

    public final void reportBadPropertyDefinition(BasicBeanDescription basicBeanDescription, BeanPropertyDefinition beanPropertyDefinition, String str, Object... objArr) {
        String str2;
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        String name = beanPropertyDefinition.getName();
        if (name != null) {
            if (name.length() > 500) {
                name = name.substring(0, 500) + "]...[" + name.substring(name.length() - 500);
            }
            str2 = Animation.CC.m("\"", name, "\"");
        } else {
            str2 = "[N/A]";
        }
        StringBuilder m352m = Modifier.CC.m352m("Invalid definition for property ", str2, " (of type ", ClassUtil.nameOf(basicBeanDescription._type._class), "): ");
        m352m.append(str);
        throw new InvalidDefinitionException(((DefaultSerializerProvider$Impl) this)._generator, m352m.toString());
    }

    public final void reportBadTypeDefinition(BasicBeanDescription basicBeanDescription, String str, Object... objArr) {
        String nameOf = ClassUtil.nameOf(basicBeanDescription._type._class);
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new InvalidDefinitionException(((DefaultSerializerProvider$Impl) this)._generator, ViewSizeResolver$CC.m("Invalid type definition for type ", nameOf, ": ", str));
    }

    public abstract JsonSerializer serializerInstance(Annotated annotated, Object obj);

    public final JsonSerializer findContentValueSerializer(TypeBase typeBase, BeanProperty beanProperty) {
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(typeBase);
        if (untypedValueSerializer == null && (untypedValueSerializer = this._serializerCache.untypedValueSerializer(typeBase)) == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(typeBase)) == null) {
            return getUnknownTypeSerializer(typeBase._class);
        }
        return handleSecondaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final JsonSerializer findPrimaryPropertySerializer(TypeBase typeBase, BeanProperty beanProperty) {
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(typeBase);
        if (untypedValueSerializer == null && (untypedValueSerializer = this._serializerCache.untypedValueSerializer(typeBase)) == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(typeBase)) == null) {
            return getUnknownTypeSerializer(typeBase._class);
        }
        return handlePrimaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final JsonSerializer findValueSerializer(Class cls, BeanProperty beanProperty) {
        JsonSerializer untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        if (untypedValueSerializer == null) {
            AndroidSvg androidSvg = this._serializerCache;
            JsonSerializer untypedValueSerializer2 = androidSvg.untypedValueSerializer(cls);
            if (untypedValueSerializer2 == null) {
                untypedValueSerializer = androidSvg.untypedValueSerializer(this._config.constructType(cls));
                if (untypedValueSerializer == null && (untypedValueSerializer = _createAndCacheUntypedSerializer(cls)) == null) {
                    return getUnknownTypeSerializer(cls);
                }
            } else {
                untypedValueSerializer = untypedValueSerializer2;
            }
        }
        return handleSecondaryContextualization(untypedValueSerializer, beanProperty);
    }

    public final JsonSerializer _createAndCacheUntypedSerializer(TypeBase typeBase) {
        try {
            JsonSerializer _createUntypedSerializer = _createUntypedSerializer(typeBase);
            if (_createUntypedSerializer == null) {
                return _createUntypedSerializer;
            }
            AndroidSvg androidSvg = this._serializerCache;
            synchronized (androidSvg) {
                try {
                    if (((HashMap) androidSvg.svg).put(new TypeKey(typeBase), _createUntypedSerializer) == null) {
                        ((AtomicReference) androidSvg.renderOptions).set(null);
                    }
                    if (_createUntypedSerializer instanceof BeanSerializerBase) {
                        ((BeanSerializerBase) _createUntypedSerializer).resolve(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return _createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            throw new JsonMappingException(((DefaultSerializerProvider$Impl) this)._generator, ClassUtil.exceptionMessage(e), e);
        }
    }

    public SerializerProvider() {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = RawSerializer.instance;
        this._nullKeySerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._config = null;
        this._serializerFactory = null;
        this._serializerCache = new AndroidSvg(27);
        this._knownSerializers = null;
        this._attributes = null;
        this._stdNullValueSerializer = true;
    }
}
