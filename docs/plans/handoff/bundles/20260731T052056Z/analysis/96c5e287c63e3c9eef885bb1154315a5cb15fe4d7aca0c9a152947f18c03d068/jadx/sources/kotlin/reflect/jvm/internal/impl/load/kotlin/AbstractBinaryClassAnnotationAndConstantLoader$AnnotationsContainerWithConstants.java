package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants {
    public final HashMap annotationParametersDefaultValues;
    public final HashMap memberAnnotations;
    public final HashMap propertyConstants;

    public AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants(HashMap hashMap, HashMap hashMap2, HashMap hashMap3) {
        this.memberAnnotations = hashMap;
        this.propertyConstants = hashMap2;
        this.annotationParametersDefaultValues = hashMap3;
    }
}
