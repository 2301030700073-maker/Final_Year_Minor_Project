package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CollectorBase {
    public final PropertyNamingStrategy _intr;
    public static final MemoryCacheService[] NO_ANNOTATION_MAPS = new MemoryCacheService[0];
    public static final Annotation[] NO_ANNOTATIONS = new Annotation[0];

    public CollectorBase(PropertyNamingStrategy propertyNamingStrategy) {
        this._intr = propertyNamingStrategy;
    }

    public final Annotated collectAnnotations(Annotation[] annotationArr) {
        Annotated annotated = AnnotationCollector$EmptyCollector.instance;
        for (Annotation annotation : annotationArr) {
            annotated = annotated.addOrOverride(annotation);
            if (this._intr.isAnnotationBundle(annotation)) {
                annotated = collectFromBundle(annotated, annotation);
            }
        }
        return annotated;
    }

    public final Annotated collectDefaultAnnotations(Annotated annotated, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            if (!annotated.isPresent(annotation)) {
                annotated = annotated.addOrOverride(annotation);
                PropertyNamingStrategy propertyNamingStrategy = this._intr;
                if (propertyNamingStrategy.isAnnotationBundle(annotation)) {
                    for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
                        if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention) && !annotated.isPresent(annotation2)) {
                            annotated = annotated.addOrOverride(annotation2);
                            if (propertyNamingStrategy.isAnnotationBundle(annotation2)) {
                                annotated = collectFromBundle(annotated, annotation2);
                            }
                        }
                    }
                }
            }
        }
        return annotated;
    }

    public final Annotated collectFromBundle(Annotated annotated, Annotation annotation) {
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention)) {
                if (!this._intr.isAnnotationBundle(annotation2)) {
                    annotated = annotated.addOrOverride(annotation2);
                } else if (!annotated.isPresent(annotation2)) {
                    annotated = collectFromBundle(annotated.addOrOverride(annotation2), annotation2);
                }
            }
        }
        return annotated;
    }

    public final Annotated collectAnnotations(Annotated annotated, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            annotated = annotated.addOrOverride(annotation);
            if (this._intr.isAnnotationBundle(annotation)) {
                annotated = collectFromBundle(annotated, annotation);
            }
        }
        return annotated;
    }
}
