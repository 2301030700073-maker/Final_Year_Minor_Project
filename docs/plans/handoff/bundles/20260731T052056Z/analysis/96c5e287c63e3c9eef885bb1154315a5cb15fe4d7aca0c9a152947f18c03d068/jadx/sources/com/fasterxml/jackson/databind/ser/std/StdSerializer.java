package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StdSerializer extends JsonSerializer implements Serializable {
    public static final Object KEY_CONTENT_CONVERTER_LOCK = new Object();
    public final Class _handledType;

    public StdSerializer(StdSerializer stdSerializer) {
        this._handledType = stdSerializer._handledType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        return r4.handleSecondaryContextualization(r6, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.fasterxml.jackson.databind.JsonSerializer findContextualConvertingSerializer(com.fasterxml.jackson.databind.SerializerProvider r4, com.fasterxml.jackson.databind.BeanProperty r5, com.fasterxml.jackson.databind.JsonSerializer r6) {
        /*
            java.lang.Object r0 = com.fasterxml.jackson.databind.ser.std.StdSerializer.KEY_CONTENT_CONVERTER_LOCK
            java.lang.Object r1 = r4.getAttribute(r0)
            java.util.Map r1 = (java.util.Map) r1
            if (r1 == 0) goto L11
            java.lang.Object r0 = r1.get(r5)
            if (r0 == 0) goto L3b
            return r6
        L11:
            java.util.IdentityHashMap r1 = new java.util.IdentityHashMap
            r1.<init>()
            kotlin.ExceptionsKt r2 = r4._attributes
            com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl r2 = (com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl) r2
            com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl r3 = com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl.EMPTY
            r2.getClass()
            java.util.Map r3 = java.util.Collections.EMPTY_MAP
            java.util.HashMap r3 = r2._nonShared
            if (r3 != 0) goto L36
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            r2.put(r0, r1)
            com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl r0 = new com.fasterxml.jackson.databind.cfg.ContextAttributes$Impl
            r0.<init>()
            r0._nonShared = r2
            r2 = r0
            goto L39
        L36:
            r3.put(r0, r1)
        L39:
            r4._attributes = r2
        L3b:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r1.put(r5, r0)
            com.fasterxml.jackson.databind.SerializationConfig r0 = r4._config     // Catch: java.lang.Throwable -> L6f
            com.fasterxml.jackson.databind.PropertyNamingStrategy r0 = r0.getAnnotationIntrospector()     // Catch: java.lang.Throwable -> L6f
            if (r5 == 0) goto L4a
            r2 = 1
            goto L4b
        L4a:
            r2 = 0
        L4b:
            if (r2 == 0) goto L65
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r5.getMember()     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L65
            java.lang.Object r0 = r0.findSerializationContentConverter(r2)     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L5a
            goto L65
        L5a:
            r5.getMember()     // Catch: java.lang.Throwable -> L6f
            r4.converterInstance(r0)     // Catch: java.lang.Throwable -> L6f
            r4.getTypeFactory()     // Catch: java.lang.Throwable -> L6f
            r4 = 0
            throw r4     // Catch: java.lang.Throwable -> L6f
        L65:
            if (r6 == 0) goto L71
            com.fasterxml.jackson.databind.JsonSerializer r4 = r4.handleSecondaryContextualization(r6, r5)     // Catch: java.lang.Throwable -> L6f
            r1.remove(r5)
            return r4
        L6f:
            r4 = move-exception
            goto L75
        L71:
            r1.remove(r5)
            return r6
        L75:
            r1.remove(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.StdSerializer.findContextualConvertingSerializer(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.JsonSerializer):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public static JsonFormat.Value findFormatOverrides(SerializerProvider serializerProvider, BeanProperty beanProperty, Class cls) {
        if (beanProperty != null) {
            return beanProperty.findPropertyFormat(serializerProvider._config, cls);
        }
        serializerProvider._config.getClass();
        return JsonFormat.Value.EMPTY;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void wrapAndThrow(com.fasterxml.jackson.databind.SerializerProvider r1, java.lang.Exception r2, java.lang.Object r3, int r4) {
        /*
        L0:
            boolean r0 = r2 instanceof java.lang.reflect.InvocationTargetException
            if (r0 == 0) goto Lf
            java.lang.Throwable r0 = r2.getCause()
            if (r0 == 0) goto Lf
            java.lang.Throwable r2 = r2.getCause()
            goto L0
        Lf:
            java.lang.annotation.Annotation[] r0 = com.fasterxml.jackson.databind.util.ClassUtil.NO_ANNOTATIONS
            boolean r0 = r2 instanceof java.lang.Error
            if (r0 != 0) goto L45
            if (r1 == 0) goto L24
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRAP_EXCEPTIONS
            com.fasterxml.jackson.databind.SerializationConfig r1 = r1._config
            boolean r1 = r1.isEnabled(r0)
            if (r1 == 0) goto L22
            goto L24
        L22:
            r1 = 0
            goto L25
        L24:
            r1 = 1
        L25:
            boolean r0 = r2 instanceof java.io.IOException
            if (r0 == 0) goto L32
            if (r1 == 0) goto L2f
            boolean r1 = r2 instanceof com.fasterxml.jackson.core.JsonProcessingException
            if (r1 != 0) goto L37
        L2f:
            java.io.IOException r2 = (java.io.IOException) r2
            throw r2
        L32:
            if (r1 != 0) goto L37
            com.fasterxml.jackson.databind.util.ClassUtil.throwIfRTE(r2)
        L37:
            com.fasterxml.jackson.databind.JsonMappingException$Reference r1 = new com.fasterxml.jackson.databind.JsonMappingException$Reference
            r1.<init>()
            r1._from = r3
            r1._index = r4
            com.fasterxml.jackson.databind.JsonMappingException r1 = com.fasterxml.jackson.databind.JsonMappingException.wrapWithPath(r2, r1)
            throw r1
        L45:
            java.lang.Error r2 = (java.lang.Error) r2
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.StdSerializer.wrapAndThrow(com.fasterxml.jackson.databind.SerializerProvider, java.lang.Exception, java.lang.Object, int):void");
    }

    public final void findPropertyFilter(SerializerProvider serializerProvider, Object obj) {
        serializerProvider._config.getClass();
        String str = "Cannot resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured";
        Class cls = this._handledType;
        if (cls != null) {
            serializerProvider.getTypeFactory()._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS);
        }
        serializerProvider.reportBadDefinition(str);
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final Class handledType() {
        return this._handledType;
    }

    public StdSerializer(int i, Class cls) {
        this._handledType = cls;
    }

    public StdSerializer(TypeBase typeBase) {
        this._handledType = typeBase._class;
    }

    public StdSerializer(Class cls) {
        this._handledType = cls;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void wrapAndThrow(com.fasterxml.jackson.databind.SerializerProvider r1, java.lang.Exception r2, java.lang.Object r3, java.lang.String r4) {
        /*
        L0:
            boolean r0 = r2 instanceof java.lang.reflect.InvocationTargetException
            if (r0 == 0) goto Lf
            java.lang.Throwable r0 = r2.getCause()
            if (r0 == 0) goto Lf
            java.lang.Throwable r2 = r2.getCause()
            goto L0
        Lf:
            java.lang.annotation.Annotation[] r0 = com.fasterxml.jackson.databind.util.ClassUtil.NO_ANNOTATIONS
            boolean r0 = r2 instanceof java.lang.Error
            if (r0 != 0) goto L41
            if (r1 == 0) goto L24
            com.fasterxml.jackson.databind.SerializationFeature r0 = com.fasterxml.jackson.databind.SerializationFeature.WRAP_EXCEPTIONS
            com.fasterxml.jackson.databind.SerializationConfig r1 = r1._config
            boolean r1 = r1.isEnabled(r0)
            if (r1 == 0) goto L22
            goto L24
        L22:
            r1 = 0
            goto L25
        L24:
            r1 = 1
        L25:
            boolean r0 = r2 instanceof java.io.IOException
            if (r0 == 0) goto L32
            if (r1 == 0) goto L2f
            boolean r1 = r2 instanceof com.fasterxml.jackson.core.JsonProcessingException
            if (r1 != 0) goto L37
        L2f:
            java.io.IOException r2 = (java.io.IOException) r2
            throw r2
        L32:
            if (r1 != 0) goto L37
            com.fasterxml.jackson.databind.util.ClassUtil.throwIfRTE(r2)
        L37:
            com.fasterxml.jackson.databind.JsonMappingException$Reference r1 = new com.fasterxml.jackson.databind.JsonMappingException$Reference
            r1.<init>(r4, r3)
            com.fasterxml.jackson.databind.JsonMappingException r1 = com.fasterxml.jackson.databind.JsonMappingException.wrapWithPath(r2, r1)
            throw r1
        L41:
            java.lang.Error r2 = (java.lang.Error) r2
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.StdSerializer.wrapAndThrow(com.fasterxml.jackson.databind.SerializerProvider, java.lang.Exception, java.lang.Object, java.lang.String):void");
    }
}
