package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationCollector$EmptyCollector extends Annotated {
    public static final AnnotationCollector$EmptyCollector instance = new AnnotationCollector$EmptyCollector();

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotated addOrOverride(Annotation annotation) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        AnnotationCollector$OneCollector annotationCollector$OneCollector = new AnnotationCollector$OneCollector();
        annotationCollector$OneCollector._type = annotationType;
        annotationCollector$OneCollector._value = annotation;
        return annotationCollector$OneCollector;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final MemoryCacheService asAnnotationMap() {
        return new MemoryCacheService((char) 0, 16);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Annotations asAnnotations() {
        return Annotated.NO_ANNOTATIONS;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean isPresent(Annotation annotation) {
        return false;
    }
}
