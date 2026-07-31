package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SignatureEnhancement$containsFunctionN$1 extends Lambda implements Function1 {
    public static final SignatureEnhancement$containsFunctionN$1 INSTANCE;
    public static final SignatureEnhancement$containsFunctionN$1 INSTANCE$1;
    public static final SignatureEnhancement$containsFunctionN$1 INSTANCE$2;
    public static final SignatureEnhancement$containsFunctionN$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new SignatureEnhancement$containsFunctionN$1(i, 0);
        INSTANCE$1 = new SignatureEnhancement$containsFunctionN$1(i, 1);
        INSTANCE$2 = new SignatureEnhancement$containsFunctionN$1(i, 2);
        INSTANCE$3 = new SignatureEnhancement$containsFunctionN$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SignatureEnhancement$containsFunctionN$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ClassifierDescriptor declarationDescriptor = ((UnwrappedType) obj).getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor == null) {
                    return Boolean.FALSE;
                }
                Name name = declarationDescriptor.getName();
                FqName fqName = JavaToKotlinClassMap.FUNCTION_N_FQ_NAME;
                return Boolean.valueOf(Intrinsics.areEqual(name, fqName.shortName()) && Intrinsics.areEqual(DescriptorUtilsKt.fqNameOrNull(declarationDescriptor), fqName));
            case 1:
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                callableMemberDescriptor.getClass();
                ReceiverParameterDescriptorImpl extensionReceiverParameter = callableMemberDescriptor.getExtensionReceiverParameter();
                extensionReceiverParameter.getClass();
                return extensionReceiverParameter.getType();
            case 2:
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor2.getClass();
                KotlinType returnType = callableMemberDescriptor2.getReturnType();
                returnType.getClass();
                return returnType;
            case 3:
                UnwrappedType unwrappedType = (UnwrappedType) obj;
                unwrappedType.getClass();
                return Boolean.valueOf(unwrappedType instanceof RawTypeImpl);
            default:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                String concat = "java/util/".concat("Spliterator");
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(concat, javaTypeQualifiers, javaTypeQualifiers);
                return Unit.INSTANCE;
        }
    }
}
