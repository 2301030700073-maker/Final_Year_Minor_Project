package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DescriptorUtilsKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Name.identifier("value");
    }

    public static final boolean declaresOrInheritsDefaultValue(ValueParameterDescriptorImpl valueParameterDescriptorImpl) {
        Boolean ifAny = DFS.ifAny(Room.listOf(valueParameterDescriptorImpl), DescriptorUtilsKt$$Lambda$0.INSTANCE, DescriptorUtilsKt$declaresOrInheritsDefaultValue$2.INSTANCE);
        ifAny.getClass();
        return ifAny.booleanValue();
    }

    public static CallableMemberDescriptor firstOverridden$default(CallableMemberDescriptor callableMemberDescriptor, Function1 function1) {
        callableMemberDescriptor.getClass();
        return (CallableMemberDescriptor) DFS.dfs(Room.listOf(callableMemberDescriptor), new DescriptorUtilsKt$$Lambda$0(1), new DFS.AnonymousClass1(new Ref$ObjectRef(), function1));
    }

    public static final FqName fqNameOrNull(DeclarationDescriptor declarationDescriptor) {
        FqNameUnsafe fqName = DescriptorUtils.getFqName(declarationDescriptor);
        fqName.getClass();
        if (!fqName.isSafe()) {
            fqName = null;
        }
        if (fqName != null) {
            return fqName.toSafe();
        }
        return null;
    }

    public static final ModuleAwareClassDescriptor getAnnotationClass(AnnotationDescriptor annotationDescriptor) {
        annotationDescriptor.getClass();
        ClassifierDescriptor declarationDescriptor = annotationDescriptor.getType().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
            return (ModuleAwareClassDescriptor) declarationDescriptor;
        }
        return null;
    }

    public static final KotlinBuiltIns getBuiltIns(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(declarationDescriptor);
        containingModule.getClass();
        return containingModule.getBuiltIns();
    }

    public static final ClassId getClassId(ClassifierDescriptor classifierDescriptor) {
        DeclarationDescriptor containingDeclaration;
        ClassId classId;
        if (classifierDescriptor == null || (containingDeclaration = classifierDescriptor.getContainingDeclaration()) == null) {
            return null;
        }
        if (containingDeclaration instanceof PackageFragmentDescriptor) {
            return new ClassId(((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) containingDeclaration)).fqName, classifierDescriptor.getName());
        }
        if (!(containingDeclaration instanceof ClassifierDescriptorWithTypeParameters) || (classId = getClassId((ClassifierDescriptor) containingDeclaration)) == null) {
            return null;
        }
        return classId.createNestedClassId(classifierDescriptor.getName());
    }

    public static final FqName getFqNameSafe(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        FqName fqNameSafeIfPossible = DescriptorUtils.getFqNameSafeIfPossible(declarationDescriptor);
        return fqNameSafeIfPossible != null ? fqNameSafeIfPossible : DescriptorUtils.getFqName(declarationDescriptor.getContainingDeclaration()).child(declarationDescriptor.getName()).toSafe();
    }

    public static final void getKotlinTypeRefiner(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        if (moduleDescriptor.getCapability(UtilsKt.REFINER_CAPABILITY) == null) {
            return;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
    }

    public static final CallableMemberDescriptor getPropertyIfAccessor(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        return callableMemberDescriptor instanceof PropertyAccessorDescriptorImpl ? ((PropertyAccessorDescriptorImpl) callableMemberDescriptor).correspondingProperty : callableMemberDescriptor;
    }
}
