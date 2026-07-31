package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.room.Room;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.LinesSequence;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OverridingUtil.OverrideCompatibilityInfo.Result.values().length];
            try {
                iArr[OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Contract getContract() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Result isOverridable(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        callableDescriptor.getClass();
        callableDescriptor2.getClass();
        if (callableDescriptor2 instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) callableDescriptor2;
            if (javaMethodDescriptor.getTypeParameters().isEmpty()) {
                OverridingUtil.OverrideCompatibilityInfo basicOverridabilityProblem = OverridingUtil.getBasicOverridabilityProblem(callableDescriptor, callableDescriptor2);
                if ((basicOverridabilityProblem != null ? basicOverridabilityProblem.getResult() : null) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List valueParameters = javaMethodDescriptor.getValueParameters();
                valueParameters.getClass();
                TransformingSequence transformingSequence = new TransformingSequence(new LinesSequence(2, valueParameters), SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$4);
                KotlinType kotlinType = javaMethodDescriptor.unsubstitutedReturnType;
                kotlinType.getClass();
                FlatteningSequence flatten = SequencesKt.flatten(ArraysKt___ArraysKt.asSequence(new Sequence[]{transformingSequence, new LinesSequence(5, kotlinType)}));
                ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl = javaMethodDescriptor.extensionReceiverParameter;
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt.flatten(ArraysKt___ArraysKt.asSequence(new Sequence[]{flatten, new LinesSequence(2, Room.listOfNotNull(receiverParameterDescriptorImpl != null ? receiverParameterDescriptorImpl.getType() : null))})));
                while (filteringSequence$iterator$1.hasNext()) {
                    KotlinType kotlinType2 = (KotlinType) filteringSequence$iterator$1.next();
                    if (!kotlinType2.getArguments().isEmpty() && !(kotlinType2.unwrap() instanceof RawTypeImpl)) {
                        return ExternalOverridabilityCondition.Result.UNKNOWN;
                    }
                }
                CallableDescriptor callableDescriptor3 = (CallableDescriptor) callableDescriptor.substitute(new TypeSubstitutor(new RawSubstitution()));
                if (callableDescriptor3 == null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                if (callableDescriptor3 instanceof SimpleFunctionDescriptorImpl) {
                    SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) callableDescriptor3;
                    if (!simpleFunctionDescriptorImpl.getTypeParameters().isEmpty()) {
                        callableDescriptor3 = simpleFunctionDescriptorImpl.newCopyBuilder().setTypeParameters().build();
                        callableDescriptor3.getClass();
                    }
                }
                OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.DEFAULT.isOverridableByWithoutExternalConditions(callableDescriptor3, callableDescriptor2, false).getResult();
                result.getClass();
                return WhenMappings.$EnumSwitchMapping$0[result.ordinal()] == 1 ? ExternalOverridabilityCondition.Result.OVERRIDABLE : ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
