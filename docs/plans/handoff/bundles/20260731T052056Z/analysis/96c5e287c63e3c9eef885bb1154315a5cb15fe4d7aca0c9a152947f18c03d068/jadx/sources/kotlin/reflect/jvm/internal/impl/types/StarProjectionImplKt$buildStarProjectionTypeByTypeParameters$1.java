package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1 extends TypeConstructorSubstitution {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $typeParameters;

    public /* synthetic */ StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$typeParameters = obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateCapturedTypes() {
        switch (this.$r8$classId) {
            case 1:
                return false;
            default:
                return super.approximateCapturedTypes();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
    public final TypeProjectionBase get(TypeConstructor typeConstructor) {
        int i = this.$r8$classId;
        Object obj = this.$typeParameters;
        typeConstructor.getClass();
        switch (i) {
            case 0:
                if (!((ArrayList) obj).contains(typeConstructor)) {
                    return null;
                }
                ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
                declarationDescriptor.getClass();
                return TypeUtils.makeStarProjection((TypeParameterDescriptor) declarationDescriptor);
            default:
                return (TypeProjectionBase) ((Map) obj).get(typeConstructor);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        switch (this.$r8$classId) {
            case 1:
                return ((Map) this.$typeParameters).isEmpty();
            default:
                return super.isEmpty();
        }
    }
}
