package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeSubstitution {
    public static final TypeSubstitution$Companion$EMPTY$1 EMPTY = new TypeSubstitution$Companion$EMPTY$1();

    public boolean approximateCapturedTypes() {
        return false;
    }

    public boolean approximateContravariantCapturedTypes() {
        return false;
    }

    public Annotations filterAnnotations(Annotations annotations) {
        annotations.getClass();
        return annotations;
    }

    public abstract TypeProjectionBase get(KotlinType kotlinType);

    public boolean isEmpty() {
        return this instanceof TypeSubstitution$Companion$EMPTY$1;
    }

    public KotlinType prepareTopLevelType(KotlinType kotlinType, Variance variance) {
        kotlinType.getClass();
        variance.getClass();
        return kotlinType;
    }
}
