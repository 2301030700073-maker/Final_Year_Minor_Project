package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.UnsafeLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationCollector$OneCollector extends Annotated {
    public Class _type;
    public Annotation _value;

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotated addOrOverride(final Annotation annotation) {
        final Class<? extends Annotation> annotationType = annotation.annotationType();
        final Class<? extends Annotation> cls = this._type;
        if (cls == annotationType) {
            this._value = annotation;
            return this;
        }
        final Annotation annotation2 = this._value;
        return new Annotated(cls, annotation2, annotationType, annotation) { // from class: com.fasterxml.jackson.databind.introspect.AnnotationCollector$NCollector
            public final HashMap _annotations;

            {
                HashMap hashMap = new HashMap();
                this._annotations = hashMap;
                hashMap.put(cls, annotation2);
                hashMap.put(annotationType, annotation);
            }

            @Override // com.fasterxml.jackson.databind.introspect.Annotated
            public final Annotated addOrOverride(Annotation annotation3) {
                this._annotations.put(annotation3.annotationType(), annotation3);
                return this;
            }

            @Override // com.fasterxml.jackson.databind.introspect.Annotated
            public final MemoryCacheService asAnnotationMap() {
                MemoryCacheService memoryCacheService = new MemoryCacheService((char) 0, 16);
                for (Annotation annotation3 : this._annotations.values()) {
                    HashMap hashMap = (HashMap) memoryCacheService.imageLoader;
                    if (hashMap == null) {
                        hashMap = new HashMap();
                        memoryCacheService.imageLoader = hashMap;
                    }
                    Annotation annotation4 = (Annotation) hashMap.put(annotation3.annotationType(), annotation3);
                    if (annotation4 != null) {
                        annotation4.equals(annotation3);
                    }
                }
                return memoryCacheService;
            }

            @Override // com.fasterxml.jackson.databind.introspect.Annotated
            public final Annotations asAnnotations() {
                HashMap hashMap = this._annotations;
                if (hashMap.size() != 2) {
                    return new MemoryCacheService(16, hashMap);
                }
                Iterator it = hashMap.entrySet().iterator();
                Map.Entry entry = (Map.Entry) it.next();
                Map.Entry entry2 = (Map.Entry) it.next();
                return new AnnotationCollector$TwoAnnotations((Class) entry.getKey(), (Annotation) entry.getValue(), (Class) entry2.getKey(), (Annotation) entry2.getValue());
            }

            @Override // com.fasterxml.jackson.databind.introspect.Annotated
            public final boolean isPresent(Annotation annotation3) {
                return this._annotations.containsKey(annotation3.annotationType());
            }
        };
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final MemoryCacheService asAnnotationMap() {
        Class cls = this._type;
        Annotation annotation = this._value;
        HashMap hashMap = new HashMap(4);
        hashMap.put(cls, annotation);
        return new MemoryCacheService(16, hashMap);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotations asAnnotations() {
        return new UnsafeLazyImpl(this._type, this._value);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean isPresent(Annotation annotation) {
        return annotation.annotationType() == this._type;
    }
}
