package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InlineClassesUtilsKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        ClassId.topLevel(new FqName("kotlin.jvm.JvmInline"));
    }

    public static final boolean isInlineClass(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        return (declarationDescriptor instanceof ModuleAwareClassDescriptor) && (((ModuleAwareClassDescriptor) declarationDescriptor).getValueClassRepresentation() instanceof InlineClassRepresentation);
    }

    public static final boolean isInlineClassType(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor != null) {
            return isInlineClass(declarationDescriptor);
        }
        return false;
    }

    public static final boolean isUnderlyingPropertyOfInlineClass(VariableDescriptor variableDescriptor) {
        if (variableDescriptor.getExtensionReceiverParameter() != null) {
            return false;
        }
        DeclarationDescriptor containingDeclaration = variableDescriptor.getContainingDeclaration();
        Name name = null;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = containingDeclaration instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration : null;
        if (moduleAwareClassDescriptor != null) {
            int i = DescriptorUtilsKt.$r8$clinit;
            ValueClassRepresentation valueClassRepresentation = moduleAwareClassDescriptor.getValueClassRepresentation();
            InlineClassRepresentation inlineClassRepresentation = valueClassRepresentation instanceof InlineClassRepresentation ? (InlineClassRepresentation) valueClassRepresentation : null;
            if (inlineClassRepresentation != null) {
                name = inlineClassRepresentation.underlyingPropertyName;
            }
        }
        return Intrinsics.areEqual(name, variableDescriptor.getName());
    }

    public static final SimpleType unsubstitutedUnderlyingType(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
        if (moduleAwareClassDescriptor != null) {
            int i = DescriptorUtilsKt.$r8$clinit;
            ValueClassRepresentation valueClassRepresentation = moduleAwareClassDescriptor.getValueClassRepresentation();
            InlineClassRepresentation inlineClassRepresentation = valueClassRepresentation instanceof InlineClassRepresentation ? (InlineClassRepresentation) valueClassRepresentation : null;
            if (inlineClassRepresentation != null) {
                return (SimpleType) inlineClassRepresentation.underlyingType;
            }
        }
        return null;
    }
}
