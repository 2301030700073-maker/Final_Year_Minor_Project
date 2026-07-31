package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaIncompatibilityRulesOverridabilityCondition implements ExternalOverridabilityCondition {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Contract getContract() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures.ORIGINAL_SHORT_NAMES.contains(r0) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009d, code lost:
    
        if (r4.equals(kotlin.text.RegexKt.computeJvmDescriptor$default(r0, 2)) != false) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r5, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r6, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r7) {
        /*
            r4 = this;
            r5.getClass()
            r6.getClass()
            boolean r4 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
            if (r4 == 0) goto La3
            boolean r4 = r6 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r4 == 0) goto La3
            boolean r4 = kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.isBuiltIn(r6)
            if (r4 == 0) goto L16
            goto La3
        L16:
            int r4 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature.$r8$clinit
            r4 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r4
            r0 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl) r0
            kotlin.reflect.jvm.internal.impl.name.Name r1 = r0.getName()
            r1.getClass()
            java.util.Set r2 = kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES
            boolean r1 = r2.contains(r1)
            if (r1 != 0) goto L3e
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r0.getName()
            r0.getClass()
            java.util.ArrayList r1 = kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures.ORIGINAL_SHORT_NAMES
            boolean r0 = r1.contains(r0)
            if (r0 != 0) goto L3e
            goto La3
        L3e:
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r0
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r0 = kotlin.ResultKt.getOverriddenSpecialBuiltin(r0)
            boolean r1 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r1 == 0) goto L4d
            r2 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r2
            goto L4e
        L4d:
            r2 = 0
        L4e:
            if (r2 == 0) goto L5b
            boolean r3 = r4.isHiddenToOvercomeSignatureClash()
            boolean r2 = r2.isHiddenToOvercomeSignatureClash()
            if (r3 != r2) goto L5b
            goto L64
        L5b:
            if (r0 == 0) goto La0
            boolean r2 = r4.isHiddenToOvercomeSignatureClash()
            if (r2 != 0) goto L64
            goto La0
        L64:
            boolean r2 = r7 instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor
            if (r2 == 0) goto La3
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r2 = r4.getInitialSignatureDescriptor()
            if (r2 == 0) goto L6f
            goto La3
        L6f:
            if (r0 == 0) goto La3
            boolean r7 = kotlin.ResultKt.hasRealKotlinSuperClassWithOverrideOf(r7, r0)
            if (r7 == 0) goto L78
            goto La3
        L78:
            boolean r7 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r7 == 0) goto La0
            if (r1 == 0) goto La0
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r0
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r7 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(r0)
            if (r7 == 0) goto La0
            r7 = 2
            java.lang.String r4 = kotlin.text.RegexKt.computeJvmDescriptor$default(r4, r7)
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r0
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = r0.getOriginal()
            r0.getClass()
            java.lang.String r7 = kotlin.text.RegexKt.computeJvmDescriptor$default(r0, r7)
            boolean r4 = r4.equals(r7)
            if (r4 == 0) goto La0
            goto La3
        La0:
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.INCOMPATIBLE
            return r4
        La3:
            boolean r4 = kotlin.ExceptionsKt.doesJavaOverrideHaveIncompatibleValueParameterKinds(r5, r6)
            if (r4 == 0) goto Lac
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.INCOMPATIBLE
            return r4
        Lac:
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.UNKNOWN
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor):kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result");
    }
}
