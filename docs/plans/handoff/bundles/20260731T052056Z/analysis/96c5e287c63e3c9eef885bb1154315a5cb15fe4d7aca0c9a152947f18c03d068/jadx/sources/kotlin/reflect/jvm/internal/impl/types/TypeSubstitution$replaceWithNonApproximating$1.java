package kotlin.reflect.jvm.internal.impl.types;

import coil3.util.ContextsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeSubstitution$replaceWithNonApproximating$1 extends TypeSubstitution {
    public final /* synthetic */ int $r8$classId;
    public final TypeSubstitution this$0;

    public /* synthetic */ TypeSubstitution$replaceWithNonApproximating$1(TypeSubstitution typeSubstitution, int i) {
        this.$r8$classId = i;
        this.this$0 = typeSubstitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateCapturedTypes() {
        switch (this.$r8$classId) {
            case 1:
                return this.this$0.approximateCapturedTypes();
            default:
                return super.approximateCapturedTypes();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateContravariantCapturedTypes() {
        switch (this.$r8$classId) {
            case 1:
                return true;
            default:
                return super.approximateContravariantCapturedTypes();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final Annotations filterAnnotations(Annotations annotations) {
        int i = this.$r8$classId;
        TypeSubstitution typeSubstitution = this.this$0;
        annotations.getClass();
        switch (i) {
        }
        return typeSubstitution.filterAnnotations(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjectionBase get(KotlinType kotlinType) {
        int i = this.$r8$classId;
        TypeSubstitution typeSubstitution = this.this$0;
        switch (i) {
            case 0:
                return typeSubstitution.get(kotlinType);
            default:
                TypeProjectionBase typeProjectionBase = typeSubstitution.get(kotlinType);
                if (typeProjectionBase == null) {
                    return null;
                }
                ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                return ContextsKt.createCapturedIfNeeded(typeProjectionBase, declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean isEmpty() {
        int i = this.$r8$classId;
        TypeSubstitution typeSubstitution = this.this$0;
        switch (i) {
        }
        return typeSubstitution.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final KotlinType prepareTopLevelType(KotlinType kotlinType, Variance variance) {
        int i = this.$r8$classId;
        TypeSubstitution typeSubstitution = this.this$0;
        kotlinType.getClass();
        variance.getClass();
        switch (i) {
        }
        return typeSubstitution.prepareTopLevelType(kotlinType, variance);
    }
}
