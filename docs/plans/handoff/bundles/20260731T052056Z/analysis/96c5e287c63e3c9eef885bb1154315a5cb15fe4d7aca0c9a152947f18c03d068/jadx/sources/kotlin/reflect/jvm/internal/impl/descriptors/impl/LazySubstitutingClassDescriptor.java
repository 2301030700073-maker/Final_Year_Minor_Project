package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import okhttp3.ConnectionPool;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazySubstitutingClassDescriptor extends ModuleAwareClassDescriptor {
    public ArrayList declaredTypeParameters;
    public TypeSubstitutor newSubstitutor;
    public final ModuleAwareClassDescriptor original;
    public final TypeSubstitutor originalSubstitutor;
    public ClassTypeConstructorImpl typeConstructor;
    public ArrayList typeConstructorParameters;

    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r15) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazySubstitutingClassDescriptor.$$$reportNull$$$0(int):void");
    }

    public LazySubstitutingClassDescriptor(ModuleAwareClassDescriptor moduleAwareClassDescriptor, TypeSubstitutor typeSubstitutor) {
        this.original = moduleAwareClassDescriptor;
        this.originalSubstitutor = typeSubstitutor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        return connectionPool.visitClassDescriptor(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        Annotations annotations = this.original.getAnnotations();
        if (annotations != null) {
            return annotations;
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getConstructors() {
        Collection<ClassConstructorDescriptorImpl> constructors = this.original.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.size());
        for (ClassConstructorDescriptorImpl classConstructorDescriptorImpl : constructors) {
            classConstructorDescriptorImpl.getClass();
            FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = classConstructorDescriptorImpl.newCopyBuilder(TypeSubstitutor.EMPTY);
            newCopyBuilder.original = classConstructorDescriptorImpl.getOriginal();
            newCopyBuilder.setModality(classConstructorDescriptorImpl.getModality());
            newCopyBuilder.setVisibility(classConstructorDescriptorImpl.getVisibility());
            newCopyBuilder.setKind(classConstructorDescriptorImpl.getKind());
            newCopyBuilder.copyOverrides = false;
            arrayList.add(((ClassConstructorDescriptorImpl) newCopyBuilder.this$0.doSubstitute(newCopyBuilder)).substitute(getSubstitutor()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        DeclarationDescriptor containingDeclaration = this.original.getContainingDeclaration();
        if (containingDeclaration != null) {
            return containingDeclaration;
        }
        $$$reportNull$$$0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final List getContextReceivers() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        getSubstitutor();
        ArrayList arrayList = this.declaredTypeParameters;
        if (arrayList != null) {
            return arrayList;
        }
        $$$reportNull$$$0(30);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType getDefaultType() {
        TypeAttributes create;
        List defaultTypeProjections = TypeUtils.getDefaultTypeProjections(getTypeConstructor().getParameters());
        Annotations annotations = getAnnotations();
        if (annotations.isEmpty()) {
            TypeAttributes.Companion.getClass();
            create = TypeAttributes.Empty;
        } else {
            FormBody.Builder builder = TypeAttributes.Companion;
            List listOf = Room.listOf(new AnnotationsTypeAttribute(annotations));
            builder.getClass();
            create = FormBody.Builder.create(listOf);
        }
        return KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(defaultTypeProjections, getUnsubstitutedMemberScope(), create, getTypeConstructor(), false);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassKind getKind() {
        ClassKind kind = this.original.getKind();
        if (kind != null) {
            return kind;
        }
        $$$reportNull$$$0(25);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        MemberScope memberScope = this.original.getMemberScope(typeSubstitution, kotlinTypeRefiner$Default);
        if (!this.originalSubstitutor.substitution.isEmpty()) {
            return new SubstitutingScope(memberScope, getSubstitutor());
        }
        if (memberScope != null) {
            return memberScope;
        }
        $$$reportNull$$$0(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        Modality modality = this.original.getModality();
        if (modality != null) {
            return modality;
        }
        $$$reportNull$$$0(26);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Name getName() {
        Name name = this.original.getName();
        if (name != null) {
            return name;
        }
        $$$reportNull$$$0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ModuleAwareClassDescriptor getOriginal() {
        ModuleAwareClassDescriptor original = this.original.getOriginal();
        if (original != null) {
            return original;
        }
        $$$reportNull$$$0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getSealedSubclasses() {
        Collection sealedSubclasses = this.original.getSealedSubclasses();
        if (sealedSubclasses != null) {
            return sealedSubclasses;
        }
        $$$reportNull$$$0(31);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot
    public final SourceElement getSource() {
        return SourceElement.NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getStaticScope() {
        MemberScope staticScope = this.original.getStaticScope();
        if (staticScope != null) {
            return staticScope;
        }
        $$$reportNull$$$0(15);
        throw null;
    }

    public final TypeSubstitutor getSubstitutor() {
        if (this.newSubstitutor == null) {
            TypeSubstitutor typeSubstitutor = this.originalSubstitutor;
            if (typeSubstitutor.substitution.isEmpty()) {
                this.newSubstitutor = typeSubstitutor;
            } else {
                List parameters = this.original.getTypeConstructor().getParameters();
                ArrayList arrayList = new ArrayList(parameters.size());
                this.typeConstructorParameters = arrayList;
                this.newSubstitutor = KotlinTypeKt.substituteTypeParameters(parameters, typeSubstitutor.substitution, this, arrayList);
                ArrayList arrayList2 = this.typeConstructorParameters;
                arrayList2.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!((TypeParameterDescriptor) next).isCapturedFromOuterDeclaration()) {
                        arrayList3.add(next);
                    }
                }
                this.declaredTypeParameters = arrayList3;
            }
        }
        return this.newSubstitutor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ReceiverParameterDescriptorImpl getThisAsReceiverParameter() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.original.getTypeConstructor();
        if (this.originalSubstitutor.substitution.isEmpty()) {
            if (typeConstructor != null) {
                return typeConstructor;
            }
            $$$reportNull$$$0(0);
            throw null;
        }
        ClassTypeConstructorImpl classTypeConstructorImpl = this.typeConstructor;
        if (classTypeConstructorImpl != null) {
            return classTypeConstructorImpl;
        }
        TypeSubstitutor substitutor = getSubstitutor();
        Collection supertypes = typeConstructor.getSupertypes();
        ArrayList arrayList = new ArrayList(supertypes.size());
        Iterator it = supertypes.iterator();
        while (it.hasNext()) {
            arrayList.add(substitutor.substitute((KotlinType) it.next(), Variance.INVARIANT));
        }
        ClassTypeConstructorImpl classTypeConstructorImpl2 = new ClassTypeConstructorImpl(this, this.typeConstructorParameters, arrayList, LockBasedStorageManager.NO_LOCKS);
        this.typeConstructor = classTypeConstructorImpl2;
        return classTypeConstructorImpl2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedInnerClassesScope() {
        MemberScope unsubstitutedInnerClassesScope = this.original.getUnsubstitutedInnerClassesScope();
        if (unsubstitutedInnerClassesScope != null) {
            return unsubstitutedInnerClassesScope;
        }
        $$$reportNull$$$0(28);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        MemberScope unsubstitutedMemberScope = this.original.getUnsubstitutedMemberScope(kotlinTypeRefiner$Default);
        if (!this.originalSubstitutor.substitution.isEmpty()) {
            return new SubstitutingScope(unsubstitutedMemberScope, getSubstitutor());
        }
        if (unsubstitutedMemberScope != null) {
            return unsubstitutedMemberScope;
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
        return this.original.getUnsubstitutedPrimaryConstructor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ValueClassRepresentation getValueClassRepresentation() {
        ValueClassRepresentation valueClassRepresentation = this.original.getValueClassRepresentation();
        if (valueClassRepresentation == null) {
            return null;
        }
        boolean z = valueClassRepresentation instanceof InlineClassRepresentation;
        TypeSubstitutor typeSubstitutor = this.originalSubstitutor;
        if (z) {
            InlineClassRepresentation inlineClassRepresentation = (InlineClassRepresentation) valueClassRepresentation;
            Name name = inlineClassRepresentation.underlyingPropertyName;
            SimpleType simpleType = (SimpleType) inlineClassRepresentation.underlyingType;
            if (simpleType != null && !typeSubstitutor.substitution.isEmpty()) {
                simpleType = (SimpleType) getSubstitutor().substitute(simpleType, Variance.INVARIANT);
            }
            return new InlineClassRepresentation(name, simpleType);
        }
        if (!(valueClassRepresentation instanceof MultiFieldValueClassRepresentation)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        ArrayList arrayList = ((MultiFieldValueClassRepresentation) valueClassRepresentation).underlyingPropertyNamesToTypes;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            Name name2 = (Name) pair.first;
            SimpleType simpleType2 = (SimpleType) ((SimpleTypeMarker) pair.second);
            if (simpleType2 != null && !typeSubstitutor.substitution.isEmpty()) {
                simpleType2 = (SimpleType) getSubstitutor().substitute(simpleType2, Variance.INVARIANT);
            }
            arrayList2.add(new Pair(name2, simpleType2));
        }
        return new MultiFieldValueClassRepresentation(arrayList2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 visibility = this.original.getVisibility();
        if (visibility != null) {
            return visibility;
        }
        $$$reportNull$$$0(27);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return this.original.isActual();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isCompanionObject() {
        return this.original.isCompanionObject();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isData() {
        return this.original.isData();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return this.original.isExpect();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return this.original.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isFun() {
        return this.original.isFun();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isInline() {
        return this.original.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return this.original.isInner();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isValue() {
        return this.original.isValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            TypeSubstitution typeSubstitution = typeSubstitutor.substitution;
            return typeSubstitution.isEmpty() ? this : new LazySubstitutingClassDescriptor(this, TypeSubstitutor.createChainedSubstitutor(typeSubstitution, getSubstitutor().substitution));
        }
        $$$reportNull$$$0(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getMemberScope(TypeSubstitution typeSubstitution) {
        DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this));
        return getMemberScope(typeSubstitution, KotlinTypeRefiner$Default.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope() {
        DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this.original));
        return getUnsubstitutedMemberScope(KotlinTypeRefiner$Default.INSTANCE);
    }
}
