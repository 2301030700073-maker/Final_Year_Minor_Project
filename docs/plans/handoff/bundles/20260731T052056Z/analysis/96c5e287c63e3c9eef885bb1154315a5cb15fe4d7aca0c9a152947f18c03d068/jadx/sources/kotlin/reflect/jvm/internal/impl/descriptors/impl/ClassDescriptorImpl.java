package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ClassDescriptorImpl extends ClassDescriptorBase {
    public Set constructors;
    public final ClassKind kind;
    public final Modality modality;
    public ClassConstructorDescriptorImpl primaryConstructor;
    public final ClassTypeConstructorImpl typeConstructor;
    public MemberScope unsubstitutedMemberScope;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case 9:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 9:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "supertypes";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 8:
                objArr[0] = "constructors";
                break;
            case 9:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 12:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 9:
                objArr[1] = "getAnnotations";
                break;
            case 10:
                objArr[1] = "getTypeConstructor";
                break;
            case 11:
                objArr[1] = "getConstructors";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case IMAGE_VALUE:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[1] = "getStaticScope";
                break;
            case 15:
                objArr[1] = "getKind";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[1] = "getModality";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[1] = "getVisibility";
                break;
            case RADIO_GROUP_VALUE:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                break;
            case 12:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 9:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                throw new IllegalStateException(format);
            case 12:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClassDescriptorImpl(DeclarationDescriptor declarationDescriptor, Name name, Modality modality, ClassKind classKind, Collection collection, LockBasedStorageManager lockBasedStorageManager) {
        super(lockBasedStorageManager, declarationDescriptor, name, SourceElement.NO_SOURCE);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (classKind == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        this.modality = modality;
        this.kind = classKind;
        this.typeConstructor = new ClassTypeConstructorImpl(this, Collections.EMPTY_LIST, collection, lockBasedStorageManager);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return Annotations.Companion.EMPTY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getConstructors() {
        Set set = this.constructors;
        if (set != null) {
            return set;
        }
        $$$reportNull$$$0(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassKind getKind() {
        ClassKind classKind = this.kind;
        if (classKind != null) {
            return classKind;
        }
        $$$reportNull$$$0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        Modality modality = this.modality;
        if (modality != null) {
            return modality;
        }
        $$$reportNull$$$0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getSealedSubclasses() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getStaticScope() {
        return MemberScope.Empty.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        ClassTypeConstructorImpl classTypeConstructorImpl = this.typeConstructor;
        if (classTypeConstructorImpl != null) {
            return classTypeConstructorImpl;
        }
        $$$reportNull$$$0(10);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        MemberScope memberScope = this.unsubstitutedMemberScope;
        if (memberScope != null) {
            return memberScope;
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
        return this.primaryConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ValueClassRepresentation getValueClassRepresentation() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    public final void initialize(MemberScope memberScope, Set set, ClassConstructorDescriptorImpl classConstructorDescriptorImpl) {
        this.unsubstitutedMemberScope = memberScope;
        this.constructors = set;
        this.primaryConstructor = classConstructorDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isValue() {
        return false;
    }

    public String toString() {
        return "class " + getName();
    }
}
