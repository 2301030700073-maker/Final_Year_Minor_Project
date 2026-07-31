package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ModuleAwareClassDescriptor implements ClassOrPackageFragmentDescriptor, ClassifierDescriptorWithTypeParameters {
    public abstract Collection getConstructors();

    public abstract List getContextReceivers();

    public abstract List getDeclaredTypeParameters();

    public abstract SimpleType getDefaultType();

    public abstract ClassKind getKind();

    public abstract MemberScope getMemberScope(TypeSubstitution typeSubstitution);

    public abstract MemberScope getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner$Default kotlinTypeRefiner$Default);

    public abstract Modality getModality();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public abstract ModuleAwareClassDescriptor getOriginal();

    public abstract Collection getSealedSubclasses();

    public abstract MemberScope getStaticScope();

    public abstract ReceiverParameterDescriptorImpl getThisAsReceiverParameter();

    public abstract MemberScope getUnsubstitutedInnerClassesScope();

    public abstract MemberScope getUnsubstitutedMemberScope();

    public abstract MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default);

    public abstract ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor();

    public abstract ValueClassRepresentation getValueClassRepresentation();

    public abstract DescriptorVisibilities.AnonymousClass1 getVisibility();

    public abstract boolean isCompanionObject();

    public abstract boolean isData();

    public abstract boolean isFun();

    public abstract boolean isInline();

    public abstract boolean isValue();
}
