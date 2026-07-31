package com.fasterxml.jackson.databind.ser;

import androidx.compose.ui.Modifier;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultSerializerProvider$Impl extends SerializerProvider implements Serializable {
    public transient WriterBasedJsonGenerator _generator;
    public transient ArrayList _objectIdGenerators;
    public transient AbstractMap _seenObjectIds;

    public static IOException _wrapAsIOE(WriterBasedJsonGenerator writerBasedJsonGenerator, Exception exc) {
        if (exc instanceof IOException) {
            return (IOException) exc;
        }
        String exceptionMessage = ClassUtil.exceptionMessage(exc);
        if (exceptionMessage == null) {
            exceptionMessage = "[no message for " + exc.getClass().getName() + "]";
        }
        return new JsonMappingException(writerBasedJsonGenerator, exceptionMessage, exc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.fasterxml.jackson.annotation.ObjectIdGenerator] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public final WritableObjectId findObjectId(Object obj, PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator) {
        ?? r3;
        AbstractMap abstractMap = this._seenObjectIds;
        if (abstractMap == null) {
            this._seenObjectIds = this._config.isEnabled(SerializationFeature.USE_EQUALITY_FOR_OBJECT_ID) ? new HashMap() : new IdentityHashMap();
        } else {
            WritableObjectId writableObjectId = (WritableObjectId) abstractMap.get(obj);
            if (writableObjectId != null) {
                return writableObjectId;
            }
        }
        ArrayList arrayList = this._objectIdGenerators;
        if (arrayList == null) {
            this._objectIdGenerators = new ArrayList(8);
        } else {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                r3 = (ObjectIdGenerator) this._objectIdGenerators.get(i);
                PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator2 = (PropertyBasedObjectIdGenerator) r3;
                propertyBasedObjectIdGenerator2.getClass();
                if (propertyBasedObjectIdGenerator._scope == propertyBasedObjectIdGenerator2._scope && propertyBasedObjectIdGenerator._property == propertyBasedObjectIdGenerator2._property) {
                    break;
                }
            }
        }
        r3 = 0;
        if (r3 == 0) {
            this._objectIdGenerators.add(propertyBasedObjectIdGenerator);
        } else {
            propertyBasedObjectIdGenerator = r3;
        }
        WritableObjectId writableObjectId2 = new WritableObjectId(propertyBasedObjectIdGenerator);
        this._seenObjectIds.put(obj, writableObjectId2);
        return writableObjectId2;
    }

    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public final Object includeFilterInstance(Class cls) {
        if (cls == null) {
            return null;
        }
        SerializationConfig serializationConfig = this._config;
        serializationConfig.getClass();
        return ClassUtil.createInstance(cls, serializationConfig.canOverrideAccessModifiers());
    }

    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public final boolean includeFilterSuppressNulls(Object obj) {
        try {
            return obj.equals(null);
        } catch (Throwable th) {
            String name = obj.getClass().getName();
            String name2 = th.getClass().getName();
            String exceptionMessage = ClassUtil.exceptionMessage(th);
            StringBuilder m352m = Modifier.CC.m352m("Problem determining whether filter of type '", name, "' should filter out `null` values: (", name2, ") ");
            m352m.append(exceptionMessage);
            String sb = m352m.toString();
            Class<?> cls = obj.getClass();
            WriterBasedJsonGenerator writerBasedJsonGenerator = this._generator;
            this.getTypeFactory()._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS);
            InvalidDefinitionException invalidDefinitionException = new InvalidDefinitionException(writerBasedJsonGenerator, sb);
            invalidDefinitionException.initCause(th);
            throw invalidDefinitionException;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serializeValue(com.fasterxml.jackson.core.json.WriterBasedJsonGenerator r7, java.lang.Object r8) {
        /*
            r6 = this;
            r6._generator = r7
            java.lang.Class r0 = r8.getClass()
            com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap r1 = r6._knownSerializers
            okhttp3.Cache$RealCacheRequest[] r2 = r1._buckets
            java.lang.String r3 = r0.getName()
            int r3 = r3.hashCode()
            r4 = 1
            int r3 = r3 + r4
            int r1 = r1._mask
            r1 = r1 & r3
            r1 = r2[r1]
            r2 = 0
            if (r1 != 0) goto L1e
        L1c:
            r1 = r2
            goto L41
        L1e:
            java.lang.Object r3 = r1.body
            java.lang.Class r3 = (java.lang.Class) r3
            if (r3 != r0) goto L2d
            boolean r3 = r1.done
            if (r3 == 0) goto L2d
            java.lang.Object r1 = r1.editor
            com.fasterxml.jackson.databind.JsonSerializer r1 = (com.fasterxml.jackson.databind.JsonSerializer) r1
            goto L41
        L2d:
            java.lang.Object r1 = r1.cacheOut
            okhttp3.Cache$RealCacheRequest r1 = (okhttp3.Cache.RealCacheRequest) r1
            if (r1 == 0) goto L1c
            java.lang.Object r3 = r1.body
            java.lang.Class r3 = (java.lang.Class) r3
            if (r3 != r0) goto L2d
            boolean r3 = r1.done
            if (r3 == 0) goto L2d
            java.lang.Object r1 = r1.editor
            com.fasterxml.jackson.databind.JsonSerializer r1 = (com.fasterxml.jackson.databind.JsonSerializer) r1
        L41:
            if (r1 == 0) goto L44
            goto L7c
        L44:
            coil3.svg.internal.AndroidSvg r1 = r6._serializerCache
            monitor-enter(r1)
            java.lang.Object r3 = r1.svg     // Catch: java.lang.Throwable -> Lc5
            java.util.HashMap r3 = (java.util.HashMap) r3     // Catch: java.lang.Throwable -> Lc5
            com.fasterxml.jackson.databind.util.TypeKey r5 = new com.fasterxml.jackson.databind.util.TypeKey     // Catch: java.lang.Throwable -> Lc5
            r5.<init>(r0, r4)     // Catch: java.lang.Throwable -> Lc5
            java.lang.Object r3 = r3.get(r5)     // Catch: java.lang.Throwable -> Lc5
            com.fasterxml.jackson.databind.JsonSerializer r3 = (com.fasterxml.jackson.databind.JsonSerializer) r3     // Catch: java.lang.Throwable -> Lc5
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L5b
            r1 = r3
            goto L7c
        L5b:
            com.fasterxml.jackson.databind.JsonSerializer r1 = r6.findValueSerializer(r0, r2)
            kotlin.UnsignedKt r3 = r6._serializerFactory
            com.fasterxml.jackson.databind.SerializationConfig r4 = r6._config
            com.fasterxml.jackson.databind.type.TypeBase r5 = r4.constructType(r0)
            com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase r3 = r3.createTypeSerializer(r4, r5)
            if (r3 == 0) goto L77
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r2 = r3.forProperty(r2)
            com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer r3 = new com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer
            r3.<init>(r2, r1)
            r1 = r3
        L77:
            coil3.svg.internal.AndroidSvg r2 = r6._serializerCache
            r2.addTypedSerializer(r0, r1)
        L7c:
            com.fasterxml.jackson.databind.SerializationConfig r2 = r6._config
            r2.getClass()
            com.fasterxml.jackson.databind.SerializationFeature r3 = com.fasterxml.jackson.databind.SerializationFeature.WRAP_ROOT_VALUE
            boolean r2 = r2.isEnabled(r3)
            if (r2 == 0) goto Lbb
            com.fasterxml.jackson.databind.SerializationConfig r2 = r6._config
            com.fasterxml.jackson.databind.PropertyName r0 = r2.findRootName(r0)
            r7.writeStartObject()     // Catch: java.lang.Exception -> Lb5
            com.fasterxml.jackson.databind.SerializationConfig r2 = r6._config     // Catch: java.lang.Exception -> Lb5
            java.lang.String r3 = r0._simpleName     // Catch: java.lang.Exception -> Lb5
            com.fasterxml.jackson.core.io.SerializedString r4 = r0._encodedSimple     // Catch: java.lang.Exception -> Lb5
            if (r4 != 0) goto Lab
            if (r2 != 0) goto La3
            com.fasterxml.jackson.core.io.SerializedString r2 = new com.fasterxml.jackson.core.io.SerializedString     // Catch: java.lang.Exception -> Lb5
            r2.<init>(r3)     // Catch: java.lang.Exception -> Lb5
        La1:
            r4 = r2
            goto La9
        La3:
            com.fasterxml.jackson.core.io.SerializedString r2 = new com.fasterxml.jackson.core.io.SerializedString     // Catch: java.lang.Exception -> Lb5
            r2.<init>(r3)     // Catch: java.lang.Exception -> Lb5
            goto La1
        La9:
            r0._encodedSimple = r4     // Catch: java.lang.Exception -> Lb5
        Lab:
            r7.writeFieldName(r4)     // Catch: java.lang.Exception -> Lb5
            r1.serialize(r8, r7, r6)     // Catch: java.lang.Exception -> Lb5
            r7.writeEndObject()     // Catch: java.lang.Exception -> Lb5
            return
        Lb5:
            r6 = move-exception
            java.io.IOException r6 = _wrapAsIOE(r7, r6)
            throw r6
        Lbb:
            r1.serialize(r8, r7, r6)     // Catch: java.lang.Exception -> Lbf
            return
        Lbf:
            r6 = move-exception
            java.io.IOException r6 = _wrapAsIOE(r7, r6)
            throw r6
        Lc5:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc5
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.DefaultSerializerProvider$Impl.serializeValue(com.fasterxml.jackson.core.json.WriterBasedJsonGenerator, java.lang.Object):void");
    }

    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public final JsonSerializer serializerInstance(Annotated annotated, Object obj) {
        JsonSerializer jsonSerializer;
        if (obj instanceof JsonSerializer) {
            jsonSerializer = (JsonSerializer) obj;
        } else {
            if (!(obj instanceof Class)) {
                annotated.getType();
                reportBadDefinition("AnnotationIntrospector returned serializer definition of type " + obj.getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
                throw null;
            }
            Class cls = (Class) obj;
            if (cls == JsonSerializer.None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (!JsonSerializer.class.isAssignableFrom(cls)) {
                annotated.getType();
                reportBadDefinition("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonSerializer>");
                throw null;
            }
            SerializationConfig serializationConfig = this._config;
            serializationConfig.getClass();
            jsonSerializer = (JsonSerializer) ClassUtil.createInstance(cls, serializationConfig.canOverrideAccessModifiers());
        }
        if (jsonSerializer instanceof BeanSerializerBase) {
            ((BeanSerializerBase) jsonSerializer).resolve(this);
        }
        return jsonSerializer;
    }
}
