package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.work.Operation$State;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.text.RegexKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 extends Lambda implements Function1 {
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$1;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$2;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$3;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$4;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$5;
    public static final SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2 INSTANCE$6;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 1);
        INSTANCE$2 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 2);
        INSTANCE$3 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 3);
        INSTANCE$4 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 4);
        INSTANCE$5 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 5);
        INSTANCE$6 = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 6);
        INSTANCE = new SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CallableMemberDescriptor firstOverridden$default;
        String computeJvmSignature;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                callableMemberDescriptor.getClass();
                if (KotlinBuiltIns.isBuiltIn(callableMemberDescriptor)) {
                    int i = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
                    SpecialGenericSignatures.SpecialSignatureInfo specialSignatureInfo = null;
                    if (SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES.contains(callableMemberDescriptor.getName()) && (firstOverridden$default = DescriptorUtilsKt.firstOverridden$default(callableMemberDescriptor, INSTANCE$2)) != null && (computeJvmSignature = RegexKt.computeJvmSignature(firstOverridden$default)) != null) {
                        specialSignatureInfo = SpecialGenericSignatures.ERASED_COLLECTION_PARAMETER_SIGNATURES.contains(computeJvmSignature) ? SpecialGenericSignatures.SpecialSignatureInfo.ONE_COLLECTION_PARAMETER : ((SpecialGenericSignatures.TypeSafeBarrierDescription) MapsKt__MapsKt.getValue(computeJvmSignature, SpecialGenericSignatures.SIGNATURE_TO_DEFAULT_VALUES_MAP)) == SpecialGenericSignatures.TypeSafeBarrierDescription.NULL ? SpecialGenericSignatures.SpecialSignatureInfo.OBJECT_PARAMETER_GENERIC : SpecialGenericSignatures.SpecialSignatureInfo.OBJECT_PARAMETER_NON_GENERIC;
                    }
                    if (specialSignatureInfo != null) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 1:
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor2.getClass();
                int i2 = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
                return Boolean.valueOf(CollectionsKt.contains(SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SIGNATURES, RegexKt.computeJvmSignature(callableMemberDescriptor2)));
            case 2:
                CallableMemberDescriptor callableMemberDescriptor3 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor3.getClass();
                if (callableMemberDescriptor3 instanceof FunctionDescriptor) {
                    int i3 = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
                    if (CollectionsKt.contains(SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SIGNATURES, RegexKt.computeJvmSignature(callableMemberDescriptor3))) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 3:
                CallableMemberDescriptor callableMemberDescriptor4 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor4.getClass();
                return Boolean.valueOf(Operation$State.hasBuiltinSpecialPropertyFqName(callableMemberDescriptor4));
            case 4:
                return ((ValueParameterDescriptorImpl) obj).getType();
            case 5:
                CallableMemberDescriptor callableMemberDescriptor5 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor5.getClass();
                return Boolean.valueOf(Operation$State.hasBuiltinSpecialPropertyFqName(DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptor5)));
            default:
                CallableMemberDescriptor callableMemberDescriptor6 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor6.getClass();
                int i4 = BuiltinMethodsWithDifferentJvmName.$r8$clinit;
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) callableMemberDescriptor6;
                if (KotlinBuiltIns.isBuiltIn(simpleFunctionDescriptorImpl) && DescriptorUtilsKt.firstOverridden$default(simpleFunctionDescriptorImpl, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(7, simpleFunctionDescriptorImpl)) != null) {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
