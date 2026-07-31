package kotlin.reflect.jvm.internal.impl.util;

import androidx.work.OperationKt;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitClassReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.text.Regex;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Checks {
    public final Function1 additionalCheck;
    public final Check[] checks;
    public final Name name;
    public final Collection nameList;
    public final Regex regex;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$2, reason: invalid class name */
    public final class AnonymousClass2 extends Lambda implements Function1 {
        public static final AnonymousClass2 INSTANCE;
        public static final AnonymousClass2 INSTANCE$1;
        public static final AnonymousClass2 INSTANCE$2;
        public static final AnonymousClass2 INSTANCE$3;
        public static final AnonymousClass2 INSTANCE$4;
        public static final AnonymousClass2 INSTANCE$5;
        public static final AnonymousClass2 INSTANCE$6;
        public static final AnonymousClass2 INSTANCE$7;
        public static final AnonymousClass2 INSTANCE$8;
        public final /* synthetic */ int $r8$classId;

        static {
            int i = 1;
            INSTANCE = new AnonymousClass2(i, 0);
            INSTANCE$1 = new AnonymousClass2(i, 1);
            INSTANCE$2 = new AnonymousClass2(i, 2);
            INSTANCE$3 = new AnonymousClass2(i, 3);
            INSTANCE$4 = new AnonymousClass2(i, 4);
            INSTANCE$5 = new AnonymousClass2(i, 5);
            INSTANCE$6 = new AnonymousClass2(i, 6);
            INSTANCE$7 = new AnonymousClass2(i, 7);
            INSTANCE$8 = new AnonymousClass2(i, 8);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(int i, int i2) {
            super(i);
            this.$r8$classId = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            SimpleType defaultType;
            UnwrappedType replaceArgumentsWithStarProjections;
            KotlinType returnType;
            ClassId classId;
            KotlinType returnType2;
            boolean z = false;
            switch (this.$r8$classId) {
                case 0:
                    ((FunctionDescriptor) obj).getClass();
                    return null;
                case 1:
                    ((FunctionDescriptor) obj).getClass();
                    return null;
                case 2:
                    ((FunctionDescriptor) obj).getClass();
                    return null;
                case 3:
                    FunctionDescriptor functionDescriptor = (FunctionDescriptor) obj;
                    functionDescriptor.getClass();
                    List valueParameters = functionDescriptor.getValueParameters();
                    valueParameters.getClass();
                    ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) CollectionsKt.lastOrNull(valueParameters);
                    boolean z2 = (valueParameterDescriptorImpl == null || DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptorImpl) || valueParameterDescriptorImpl.varargElementType != null) ? false : true;
                    List list = OperatorChecks.checks;
                    if (z2) {
                        return null;
                    }
                    return "last parameter should not have a default value or be a vararg";
                case 4:
                    FunctionDescriptor functionDescriptor2 = (FunctionDescriptor) obj;
                    functionDescriptor2.getClass();
                    List list2 = OperatorChecks.checks;
                    DeclarationDescriptor containingDeclaration = functionDescriptor2.getContainingDeclaration();
                    containingDeclaration.getClass();
                    if (containingDeclaration instanceof ModuleAwareClassDescriptor) {
                        Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                        if (KotlinBuiltIns.classFqNameEquals((ModuleAwareClassDescriptor) containingDeclaration, StandardNames.FqNames.any)) {
                            return null;
                        }
                    }
                    Collection overriddenDescriptors = functionDescriptor2.getOverriddenDescriptors();
                    overriddenDescriptors.getClass();
                    Collection collection = overriddenDescriptors;
                    if (!collection.isEmpty()) {
                        Iterator it = collection.iterator();
                        while (it.hasNext()) {
                            DeclarationDescriptor containingDeclaration2 = ((FunctionDescriptor) it.next()).getContainingDeclaration();
                            containingDeclaration2.getClass();
                            if (containingDeclaration2 instanceof ModuleAwareClassDescriptor) {
                                Name name2 = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                                if (KotlinBuiltIns.classFqNameEquals((ModuleAwareClassDescriptor) containingDeclaration2, StandardNames.FqNames.any)) {
                                    return null;
                                }
                            }
                        }
                    }
                    DeclarationDescriptor containingDeclaration3 = functionDescriptor2.getContainingDeclaration();
                    ModuleAwareClassDescriptor moduleAwareClassDescriptor = containingDeclaration3 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration3 : null;
                    if (moduleAwareClassDescriptor != null) {
                        if (!InlineClassesUtilsKt.isInlineClass(moduleAwareClassDescriptor) && !(moduleAwareClassDescriptor.getValueClassRepresentation() instanceof MultiFieldValueClassRepresentation)) {
                            moduleAwareClassDescriptor = null;
                        }
                        if (moduleAwareClassDescriptor != null && (defaultType = moduleAwareClassDescriptor.getDefaultType()) != null && (replaceArgumentsWithStarProjections = OperationKt.replaceArgumentsWithStarProjections(defaultType)) != null && (returnType = functionDescriptor2.getReturnType()) != null && Intrinsics.areEqual(((DeclarationDescriptorImpl) functionDescriptor2).getName(), OperatorNameConventions.EQUALS)) {
                            Name name3 = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                            if ((KotlinBuiltIns.isConstructedFromGivenClassAndNotNullable(returnType, StandardNames.FqNames._boolean) || KotlinBuiltIns.isNothing(returnType)) && functionDescriptor2.getValueParameters().size() == 1) {
                                KotlinType type = ((ValueParameterDescriptorImpl) functionDescriptor2.getValueParameters().get(0)).getType();
                                type.getClass();
                                if (Intrinsics.areEqual(OperationKt.replaceArgumentsWithStarProjections(type), replaceArgumentsWithStarProjections) && functionDescriptor2.getContextReceiverParameters().isEmpty() && functionDescriptor2.getExtensionReceiverParameter() == null) {
                                    return null;
                                }
                            }
                        }
                    }
                    StringBuilder sb = new StringBuilder("must override ''equals()'' in Any");
                    DeclarationDescriptor containingDeclaration4 = functionDescriptor2.getContainingDeclaration();
                    containingDeclaration4.getClass();
                    if (InlineClassesUtilsKt.isInlineClass(containingDeclaration4) || ((containingDeclaration4 instanceof ModuleAwareClassDescriptor) && (((ModuleAwareClassDescriptor) containingDeclaration4).getValueClassRepresentation() instanceof MultiFieldValueClassRepresentation))) {
                        DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.SHORT_NAMES_IN_TYPES;
                        DeclarationDescriptor containingDeclaration5 = functionDescriptor2.getContainingDeclaration();
                        containingDeclaration5.getClass();
                        SimpleType defaultType2 = ((ModuleAwareClassDescriptor) containingDeclaration5).getDefaultType();
                        defaultType2.getClass();
                        sb.append(" or define ''equals(other: " + descriptorRendererImpl.renderType(OperationKt.replaceArgumentsWithStarProjections(defaultType2)) + "): Boolean''");
                    }
                    return sb.toString();
                case 5:
                    FunctionDescriptor functionDescriptor3 = (FunctionDescriptor) obj;
                    functionDescriptor3.getClass();
                    ReceiverParameterDescriptorImpl dispatchReceiverParameter = functionDescriptor3.getDispatchReceiverParameter();
                    if (dispatchReceiverParameter == null) {
                        dispatchReceiverParameter = functionDescriptor3.getExtensionReceiverParameter();
                    }
                    List list3 = OperatorChecks.checks;
                    if (dispatchReceiverParameter != null) {
                        KotlinType returnType3 = functionDescriptor3.getReturnType();
                        if (returnType3 != null ? KotlinTypeChecker.DEFAULT.isSubtypeOf(returnType3, dispatchReceiverParameter.getType()) : false) {
                            return null;
                        }
                        ReceiverValue value = dispatchReceiverParameter.getValue();
                        value.getClass();
                        if (value instanceof ImplicitClassReceiver) {
                            ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = ((ImplicitClassReceiver) value).classDescriptor;
                            if (moduleAwareClassDescriptor2.isExpect() && (classId = DescriptorUtilsKt.getClassId(moduleAwareClassDescriptor2)) != null) {
                                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(moduleAwareClassDescriptor2);
                                containingModule.getClass();
                                ClassifierDescriptor findClassifierAcrossModuleDependencies = DescriptorUtilKt.findClassifierAcrossModuleDependencies(containingModule, classId);
                                DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = findClassifierAcrossModuleDependencies instanceof DeserializedTypeAliasDescriptor ? (DeserializedTypeAliasDescriptor) findClassifierAcrossModuleDependencies : null;
                                if (deserializedTypeAliasDescriptor != null && (returnType2 = functionDescriptor3.getReturnType()) != null) {
                                    z = KotlinTypeChecker.DEFAULT.isSubtypeOf(returnType2, deserializedTypeAliasDescriptor.getExpandedType());
                                }
                            }
                        }
                        if (z) {
                            return null;
                        }
                    }
                    return "receiver must be a supertype of the return type";
                case 6:
                    KotlinBuiltIns kotlinBuiltIns = (KotlinBuiltIns) obj;
                    kotlinBuiltIns.getClass();
                    return kotlinBuiltIns.getPrimitiveKotlinType(PrimitiveType.BOOLEAN);
                case 7:
                    KotlinBuiltIns kotlinBuiltIns2 = (KotlinBuiltIns) obj;
                    kotlinBuiltIns2.getClass();
                    return kotlinBuiltIns2.getPrimitiveKotlinType(PrimitiveType.INT);
                default:
                    KotlinBuiltIns kotlinBuiltIns3 = (KotlinBuiltIns) obj;
                    kotlinBuiltIns3.getClass();
                    return kotlinBuiltIns3.getUnitType();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Name name, Check[] checkArr, Function1 function1) {
        this(name, null, null, function1, (Check[]) Arrays.copyOf(checkArr, checkArr.length));
        name.getClass();
    }

    public /* synthetic */ Checks(Name name, Check[] checkArr) {
        this(name, checkArr, AnonymousClass2.INSTANCE);
    }

    public Checks(Name name, Regex regex, Collection collection, Function1 function1, Check... checkArr) {
        this.name = name;
        this.regex = regex;
        this.nameList = collection;
        this.additionalCheck = function1;
        this.checks = checkArr;
    }

    public /* synthetic */ Checks(Collection collection, Check[] checkArr) {
        this(collection, checkArr, AnonymousClass2.INSTANCE$2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Collection collection, Check[] checkArr, Function1 function1) {
        this(null, null, collection, function1, (Check[]) Arrays.copyOf(checkArr, checkArr.length));
        collection.getClass();
    }
}
