package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedTypeAliasDescriptor extends DeclarationDescriptorNonRootImpl implements DeserializedMemberDescriptor, ClassifierDescriptorWithTypeParameters {
    public final DeserializedContainerSource containerSource;
    public List declaredTypeParametersImpl;
    public SimpleType defaultTypeImpl;
    public SimpleType expandedType;
    public final NameResolver nameResolver;
    public final ProtoBuf$TypeAlias proto;
    public final LockBasedStorageManager storageManager;
    public final AbstractTypeAliasDescriptor$typeConstructor$1 typeConstructor;
    public List typeConstructorParameters;
    public final Dispatcher$promoteAndExecute$Effects typeTable;
    public SimpleType underlyingType;
    public final VersionRequirementTable versionRequirementTable;
    public final DescriptorVisibilities.AnonymousClass1 visibilityImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedTypeAliasDescriptor(LockBasedStorageManager lockBasedStorageManager, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, DescriptorVisibilities.AnonymousClass1 anonymousClass1, ProtoBuf$TypeAlias protoBuf$TypeAlias, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, VersionRequirementTable versionRequirementTable, DeserializedContainerSource deserializedContainerSource) {
        super(declarationDescriptor, annotations, name, SourceElement.NO_SOURCE);
        lockBasedStorageManager.getClass();
        declarationDescriptor.getClass();
        nameResolver.getClass();
        versionRequirementTable.getClass();
        this.visibilityImpl = anonymousClass1;
        this.typeConstructor = new AbstractTypeAliasDescriptor$typeConstructor$1(this);
        this.storageManager = lockBasedStorageManager;
        this.proto = protoBuf$TypeAlias;
        this.nameResolver = nameResolver;
        this.typeTable = dispatcher$promoteAndExecute$Effects;
        this.versionRequirementTable = versionRequirementTable;
        this.containerSource = deserializedContainerSource;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        switch (connectionPool.$r8$classId) {
            case 2:
                return null;
            default:
                StringBuilder sb = (StringBuilder) obj;
                DescriptorRendererImpl descriptorRendererImpl = (DescriptorRendererImpl) connectionPool.delegate;
                descriptorRendererImpl.getClass();
                descriptorRendererImpl.renderAnnotations(sb, this, null);
                descriptorRendererImpl.renderVisibility(this.visibilityImpl, sb);
                descriptorRendererImpl.renderMemberModifiers(this, sb);
                sb.append(descriptorRendererImpl.renderKeyword("typealias"));
                sb.append(" ");
                descriptorRendererImpl.renderName(this, sb, true);
                descriptorRendererImpl.renderTypeParameters(sb, getDeclaredTypeParameters(), false);
                descriptorRendererImpl.renderCapturedTypeParametersIfRequired(this, sb);
                sb.append(" = ");
                sb.append(descriptorRendererImpl.renderType(getUnderlyingType()));
                return Unit.INSTANCE;
        }
    }

    public final ModuleAwareClassDescriptor getClassDescriptor() {
        if (KotlinTypeKt.isError(getExpandedType())) {
            return null;
        }
        ClassifierDescriptor declarationDescriptor = getExpandedType().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
            return (ModuleAwareClassDescriptor) declarationDescriptor;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final DeserializedContainerSource getContainerSource() {
        return this.containerSource;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        List list = this.declaredTypeParametersImpl;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("declaredTypeParametersImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType getDefaultType() {
        SimpleType simpleType = this.defaultTypeImpl;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("defaultTypeImpl");
        throw null;
    }

    public final SimpleType getExpandedType() {
        SimpleType simpleType = this.expandedType;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("expandedType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final NameResolver getNameResolver() {
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final Dispatcher$promoteAndExecute$Effects getTypeTable() {
        throw null;
    }

    public final SimpleType getUnderlyingType() {
        SimpleType simpleType = this.underlyingType;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("underlyingType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        return this.visibilityImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0197 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initialize(java.util.List r23, kotlin.reflect.jvm.internal.impl.types.SimpleType r24, kotlin.reflect.jvm.internal.impl.types.SimpleType r25) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor.initialize(java.util.List, kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.SimpleType):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return TypeUtils.contains(getUnderlyingType(), new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(4, this), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot substitute(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        if (typeSubstitutor.substitution.isEmpty()) {
            return this;
        }
        DeclarationDescriptor containingDeclaration = getContainingDeclaration();
        containingDeclaration.getClass();
        Annotations annotations = getAnnotations();
        annotations.getClass();
        Name name = getName();
        name.getClass();
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor(this.storageManager, containingDeclaration, annotations, name, this.visibilityImpl, this.proto, this.nameResolver, this.typeTable, this.versionRequirementTable, this.containerSource);
        List declaredTypeParameters = getDeclaredTypeParameters();
        SimpleType underlyingType = getUnderlyingType();
        Variance variance = Variance.INVARIANT;
        deserializedTypeAliasDescriptor.initialize(declaredTypeParameters, KotlinTypeKt.asSimpleType(typeSubstitutor.safeSubstitute(underlyingType, variance)), KotlinTypeKt.asSimpleType(typeSubstitutor.safeSubstitute(getExpandedType(), variance)));
        return deserializedTypeAliasDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public final String toString() {
        return "typealias " + getName().asString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptorNonRoot getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ClassifierDescriptor getOriginal() {
        return this;
    }
}
