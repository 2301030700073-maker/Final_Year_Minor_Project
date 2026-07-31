package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface FunctionDescriptor extends CallableMemberDescriptor {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface CopyBuilder {
        FunctionDescriptor build();

        CopyBuilder putUserData();

        CopyBuilder setAdditionalAnnotations(Annotations annotations);

        CopyBuilder setCopyOverrides();

        CopyBuilder setDispatchReceiverParameter(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl);

        CopyBuilder setHiddenForResolutionEverywhereBesideSupercalls();

        CopyBuilder setHiddenToOvercomeSignatureClash();

        CopyBuilder setKind(CallableMemberDescriptor.Kind kind);

        CopyBuilder setModality(Modality modality);

        CopyBuilder setName(Name name);

        CopyBuilder setOwner(DeclarationDescriptor declarationDescriptor);

        CopyBuilder setPreserveSourceElement();

        CopyBuilder setReturnType(KotlinType kotlinType);

        CopyBuilder setSignatureChange();

        CopyBuilder setTypeParameters();

        CopyBuilder setValueParameters(List list);

        CopyBuilder setVisibility(DescriptorVisibilities.AnonymousClass1 anonymousClass1);
    }

    FunctionDescriptor getInitialSignatureDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    FunctionDescriptor getOriginal();

    boolean isHiddenForResolutionEverywhereBesideSupercalls();

    boolean isHiddenToOvercomeSignatureClash();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    boolean isTailrec();

    CopyBuilder newCopyBuilder();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    FunctionDescriptor substitute(TypeSubstitutor typeSubstitutor);
}
