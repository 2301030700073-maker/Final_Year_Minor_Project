package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BuiltinMethodsWithSpecialGenericSignature extends SpecialGenericSignatures {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static final FunctionDescriptor getOverriddenBuiltinFunctionWithErasedValueParametersInJava(FunctionDescriptor functionDescriptor) {
        functionDescriptor.getClass();
        Name name = ((DeclarationDescriptorImpl) functionDescriptor).getName();
        name.getClass();
        if (SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES.contains(name)) {
            return (FunctionDescriptor) DescriptorUtilsKt.firstOverridden$default(functionDescriptor, SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$1);
        }
        return null;
    }
}
