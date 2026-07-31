package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import java.util.ArrayList;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory$RuntimeSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class JavaPropertyDescriptor extends PropertyDescriptorImpl implements JavaCallableMemberDescriptor {
    public final boolean isStaticFinal;
    public final Pair singleUserData;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case RADIO_GROUP_VALUE:
                objArr[0] = "source";
                break;
            case 6:
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case IMAGE_VALUE:
                objArr[0] = "newOwner";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[0] = "newName";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case RADIO_ROW_VALUE:
                objArr[0] = "enhancedReturnType";
                break;
            case RADIO_COLUMN_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
            case SIZE_BOX_VALUE:
                objArr[0] = "inType";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
                objArr[2] = "createSubstitutedCopy";
                break;
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
                objArr[2] = "enhance";
                break;
            case RADIO_COLUMN_VALUE:
                break;
            case SIZE_BOX_VALUE:
                objArr[2] = "setInType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i == 21) {
            throw new IllegalStateException(format);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaPropertyDescriptor(DeclarationDescriptor declarationDescriptor, Annotations annotations, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, boolean z, Name name, SourceElement sourceElement, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, boolean z2, Pair pair) {
        super(declarationDescriptor, propertyDescriptor, annotations, modality, anonymousClass1, z, name, kind, sourceElement, false, false, false, false, false);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        this.isStaticFinal = z2;
        this.singleUserData = pair;
    }

    public static JavaPropertyDescriptor create(DeclarationDescriptor declarationDescriptor, LazyJavaAnnotations lazyJavaAnnotations, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, boolean z, Name name, RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement, boolean z2) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (name != null) {
            return new JavaPropertyDescriptor(declarationDescriptor, lazyJavaAnnotations, modality, anonymousClass1, z, name, runtimeSourceElementFactory$RuntimeSourceElement, null, CallableMemberDescriptor.Kind.DECLARATION, z2, null);
        }
        $$$reportNull$$$0(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final PropertyDescriptorImpl createSubstitutedCopy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, Name name) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(13);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(14);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(16);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(17);
            throw null;
        }
        return new JavaPropertyDescriptor(declarationDescriptor, getAnnotations(), modality, anonymousClass1, this.isVar, name, SourceElement.NO_SOURCE, propertyDescriptor, kind, this.isStaticFinal, this.singleUserData);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    public final JavaCallableMemberDescriptor enhance(KotlinType kotlinType, ArrayList arrayList, KotlinType kotlinType2, Pair pair) {
        KotlinType kotlinType3;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        PropertyDescriptor original = getOriginal() == this ? null : getOriginal();
        JavaPropertyDescriptor javaPropertyDescriptor = new JavaPropertyDescriptor(getContainingDeclaration(), getAnnotations(), getModality(), getVisibility(), this.isVar, getName(), getSource(), original, getKind(), this.isStaticFinal, pair);
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl2 = this.getter;
        if (propertyGetterDescriptorImpl2 != null) {
            PropertyGetterDescriptorImpl propertyGetterDescriptorImpl3 = new PropertyGetterDescriptorImpl(javaPropertyDescriptor, propertyGetterDescriptorImpl2.getAnnotations(), propertyGetterDescriptorImpl2.getModality(), propertyGetterDescriptorImpl2.getVisibility(), propertyGetterDescriptorImpl2.isDefault, propertyGetterDescriptorImpl2.isExternal, propertyGetterDescriptorImpl2.isInline, getKind(), original == null ? null : original.getGetter(), propertyGetterDescriptorImpl2.getSource());
            propertyGetterDescriptorImpl3.initialSignatureDescriptor = propertyGetterDescriptorImpl2.initialSignatureDescriptor;
            kotlinType3 = kotlinType2;
            propertyGetterDescriptorImpl3.returnType = kotlinType3;
            propertyGetterDescriptorImpl = propertyGetterDescriptorImpl3;
        } else {
            kotlinType3 = kotlinType2;
            propertyGetterDescriptorImpl = null;
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl2 = this.setter;
        if (propertySetterDescriptorImpl2 != null) {
            propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(javaPropertyDescriptor, propertySetterDescriptorImpl2.getAnnotations(), propertySetterDescriptorImpl2.getModality(), propertySetterDescriptorImpl2.getVisibility(), propertySetterDescriptorImpl2.isDefault, propertySetterDescriptorImpl2.isExternal, propertySetterDescriptorImpl2.isInline, getKind(), original == null ? null : original.getSetter(), propertySetterDescriptorImpl2.getSource());
            propertySetterDescriptorImpl.initialSignatureDescriptor = propertySetterDescriptorImpl.initialSignatureDescriptor;
            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) propertySetterDescriptorImpl2.getValueParameters().get(0);
            if (valueParameterDescriptorImpl == null) {
                PropertySetterDescriptorImpl.$$$reportNull$$$0(6);
                throw null;
            }
            propertySetterDescriptorImpl.parameter = valueParameterDescriptorImpl;
        } else {
            propertySetterDescriptorImpl = null;
        }
        javaPropertyDescriptor.initialize(propertyGetterDescriptorImpl, propertySetterDescriptorImpl, this.backingField, this.delegateField);
        Function0 function0 = this.compileTimeInitializerFactory;
        if (function0 != null) {
            javaPropertyDescriptor.setCompileTimeInitializer(this.compileTimeInitializer, function0);
        }
        javaPropertyDescriptor.setOverriddenDescriptors(getOverriddenDescriptors());
        javaPropertyDescriptor.setType(kotlinType3, getTypeParameters(), this.dispatchReceiverParameter, kotlinType != null ? DescriptorFactory.createExtensionReceiverParameterForCallable(this, kotlinType, Annotations.Companion.EMPTY) : null, EmptyList.INSTANCE);
        return javaPropertyDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Object getUserData(CallableDescriptor.UserDataKey userDataKey) {
        Pair pair = this.singleUserData;
        if (pair == null || !((CallableDescriptor.UserDataKey) pair.first).equals(userDataKey)) {
            return null;
        }
        return pair.second;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final boolean hasSynthesizedParameterNames() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean isConst() {
        KotlinType type = getType();
        if (!this.isStaticFinal) {
            return false;
        }
        type.getClass();
        if (((!KotlinBuiltIns.isPrimitiveType(type) && !UnsignedTypes.isUnsignedType(type)) || TypeUtils.isNullableType(type)) && !KotlinBuiltIns.isString(type)) {
            return false;
        }
        AnnotationsImpl annotationsImpl = TypeEnhancementKt.ENHANCED_NULLABILITY_ANNOTATIONS;
        FqName fqName = JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION;
        fqName.getClass();
        return !UtilsKt.hasAnnotation(type, fqName) || KotlinBuiltIns.isString(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final void setInType(KotlinType kotlinType) {
    }
}
