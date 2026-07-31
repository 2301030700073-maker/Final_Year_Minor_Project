package com.fasterxml.jackson.databind;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationIntrospector$ReferenceProperty$Type {
    private static final /* synthetic */ AnnotationIntrospector$ReferenceProperty$Type[] $VALUES;
    public static final AnnotationIntrospector$ReferenceProperty$Type BACK_REFERENCE;
    public static final AnnotationIntrospector$ReferenceProperty$Type MANAGED_REFERENCE;

    static {
        AnnotationIntrospector$ReferenceProperty$Type annotationIntrospector$ReferenceProperty$Type = new AnnotationIntrospector$ReferenceProperty$Type("MANAGED_REFERENCE", 0);
        MANAGED_REFERENCE = annotationIntrospector$ReferenceProperty$Type;
        AnnotationIntrospector$ReferenceProperty$Type annotationIntrospector$ReferenceProperty$Type2 = new AnnotationIntrospector$ReferenceProperty$Type("BACK_REFERENCE", 1);
        BACK_REFERENCE = annotationIntrospector$ReferenceProperty$Type2;
        $VALUES = new AnnotationIntrospector$ReferenceProperty$Type[]{annotationIntrospector$ReferenceProperty$Type, annotationIntrospector$ReferenceProperty$Type2};
    }

    public static AnnotationIntrospector$ReferenceProperty$Type valueOf(String str) {
        return (AnnotationIntrospector$ReferenceProperty$Type) Enum.valueOf(AnnotationIntrospector$ReferenceProperty$Type.class, str);
    }

    public static AnnotationIntrospector$ReferenceProperty$Type[] values() {
        return (AnnotationIntrospector$ReferenceProperty$Type[]) $VALUES.clone();
    }
}
