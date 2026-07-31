package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageViewDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeAliasConstructorDescriptorImpl extends FunctionDescriptorImpl implements ConstructorDescriptor {
    public static final PackageViewDescriptorFactory.Companion Companion;
    public final LockBasedStorageManager storageManager;
    public final DeserializedTypeAliasDescriptor typeAliasDescriptor;
    public ClassConstructorDescriptorImpl underlyingConstructorDescriptor;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(TypeAliasConstructorDescriptorImpl.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"));
        Companion = new PackageViewDescriptorFactory.Companion();
    }

    public TypeAliasConstructorDescriptorImpl(LockBasedStorageManager lockBasedStorageManager, DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor, ClassConstructorDescriptorImpl classConstructorDescriptorImpl, TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl, Annotations annotations, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        super(kind, deserializedTypeAliasDescriptor, typeAliasConstructorDescriptorImpl, sourceElement, annotations, SpecialNames.INIT);
        this.storageManager = lockBasedStorageManager;
        this.typeAliasDescriptor = deserializedTypeAliasDescriptor;
        KTypeImpl$arguments$2 kTypeImpl$arguments$2 = new KTypeImpl$arguments$2(18, this, classConstructorDescriptorImpl);
        lockBasedStorageManager.getClass();
        new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, kTypeImpl$arguments$2);
        this.underlyingConstructorDescriptor = classConstructorDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind) {
        anonymousClass1.getClass();
        kind.getClass();
        FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
        newCopyBuilder.newOwner = declarationDescriptor;
        newCopyBuilder.newModality = modality;
        newCopyBuilder.newVisibility = anonymousClass1;
        newCopyBuilder.kind = kind;
        newCopyBuilder.copyOverrides = false;
        FunctionDescriptorImpl doSubstitute = newCopyBuilder.this$0.doSubstitute(newCopyBuilder);
        doSubstitute.getClass();
        return (TypeAliasConstructorDescriptorImpl) doSubstitute;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        declarationDescriptor.getClass();
        kind.getClass();
        annotations.getClass();
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind != kind2) {
            CallableMemberDescriptor.Kind kind3 = CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return new TypeAliasConstructorDescriptorImpl(this.storageManager, this.typeAliasDescriptor, this.underlyingConstructorDescriptor, this, annotations, kind2, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
    public final ModuleAwareClassDescriptor getConstructedClass() {
        ModuleAwareClassDescriptor constructedClass = this.underlyingConstructorDescriptor.getConstructedClass();
        constructedClass.getClass();
        return constructedClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ClassifierDescriptorWithTypeParameters getContainingDeclaration() {
        return this.typeAliasDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final CallableDescriptor getOriginal() {
        FunctionDescriptor original = super.getOriginal();
        original.getClass();
        return (TypeAliasConstructorDescriptorImpl) original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final KotlinType getReturnType() {
        KotlinType kotlinType = this.unsubstitutedReturnType;
        kotlinType.getClass();
        return kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final TypeAliasConstructorDescriptorImpl substitute(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        FunctionDescriptor substitute = super.substitute(typeSubstitutor);
        substitute.getClass();
        TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) substitute;
        KotlinType kotlinType = typeAliasConstructorDescriptorImpl.unsubstitutedReturnType;
        kotlinType.getClass();
        ClassConstructorDescriptorImpl substitute2 = this.underlyingConstructorDescriptor.getOriginal().substitute(TypeSubstitutor.create(kotlinType));
        if (substitute2 == null) {
            return null;
        }
        typeAliasConstructorDescriptorImpl.underlyingConstructorDescriptor = substitute2;
        return typeAliasConstructorDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        return this.typeAliasDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final CallableMemberDescriptor getOriginal() {
        FunctionDescriptor original = super.getOriginal();
        original.getClass();
        return (TypeAliasConstructorDescriptorImpl) original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getOriginal() {
        FunctionDescriptor original = super.getOriginal();
        original.getClass();
        return (TypeAliasConstructorDescriptorImpl) original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptorNonRoot getOriginal() {
        FunctionDescriptor original = super.getOriginal();
        original.getClass();
        return (TypeAliasConstructorDescriptorImpl) original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final FunctionDescriptor getOriginal() {
        FunctionDescriptor original = super.getOriginal();
        original.getClass();
        return (TypeAliasConstructorDescriptorImpl) original;
    }
}
