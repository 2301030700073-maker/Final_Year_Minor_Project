package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbstractSignatureParts$TypeAndDefaultQualifiers {
    public final JavaTypeQualifiersByElementType defaultQualifiers;
    public final KotlinTypeMarker type;
    public final TypeParameterDescriptor typeParameterForArgument;

    public AbstractSignatureParts$TypeAndDefaultQualifiers(KotlinTypeMarker kotlinTypeMarker, JavaTypeQualifiersByElementType javaTypeQualifiersByElementType, TypeParameterDescriptor typeParameterDescriptor) {
        this.type = kotlinTypeMarker;
        this.defaultQualifiers = javaTypeQualifiersByElementType;
        this.typeParameterForArgument = typeParameterDescriptor;
    }
}
