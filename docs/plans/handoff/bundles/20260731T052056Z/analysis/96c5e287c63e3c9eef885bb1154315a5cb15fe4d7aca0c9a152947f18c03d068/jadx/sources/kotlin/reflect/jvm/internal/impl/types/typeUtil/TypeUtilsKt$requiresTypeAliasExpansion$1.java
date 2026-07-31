package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeUtilsKt$requiresTypeAliasExpansion$1 extends Lambda implements Function1 {
    public static final TypeUtilsKt$requiresTypeAliasExpansion$1 INSTANCE;
    public static final TypeUtilsKt$requiresTypeAliasExpansion$1 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new TypeUtilsKt$requiresTypeAliasExpansion$1(i, 1);
        INSTANCE = new TypeUtilsKt$requiresTypeAliasExpansion$1(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TypeUtilsKt$requiresTypeAliasExpansion$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                UnwrappedType unwrappedType = (UnwrappedType) obj;
                unwrappedType.getClass();
                ClassifierDescriptor declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor != null) {
                    if (!(declarationDescriptor instanceof DeserializedTypeAliasDescriptor) && !(declarationDescriptor instanceof TypeParameterDescriptor)) {
                        r0 = false;
                    }
                    z = r0;
                }
                return Boolean.valueOf(z);
            default:
                UnwrappedType unwrappedType2 = (UnwrappedType) obj;
                unwrappedType2.getClass();
                ClassifierDescriptor declarationDescriptor2 = unwrappedType2.getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor2 != null) {
                    z = (declarationDescriptor2 instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) declarationDescriptor2).getContainingDeclaration() instanceof DeserializedTypeAliasDescriptor);
                }
                return Boolean.valueOf(z);
        }
    }
}
