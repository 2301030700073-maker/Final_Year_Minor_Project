package kotlin.reflect.jvm.internal.calls;

import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* compiled from: ValueClassAwareCaller.kt */
/* loaded from: classes2.dex */
public abstract class ValueClassAwareCallerKt {
    public static final String toJvmDescriptor(ClassifierDescriptor classifierDescriptor) {
        Intrinsics.checkNotNullParameter(classifierDescriptor, "<this>");
        ClassId classId = DescriptorUtilsKt.getClassId(classifierDescriptor);
        Intrinsics.checkNotNull(classId);
        return ClassMapperLite.mapClass(classId.asString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getValueClassUnboxMethods(SimpleType simpleType, CallableMemberDescriptor callableMemberDescriptor) {
        Method inlineClassUnboxMethod;
        List mfvcUnboxMethods = getMfvcUnboxMethods(simpleType);
        if (mfvcUnboxMethods != null) {
            return mfvcUnboxMethods;
        }
        Class inlineClass = toInlineClass(simpleType);
        if (inlineClass == null || (inlineClassUnboxMethod = getInlineClassUnboxMethod(inlineClass, callableMemberDescriptor)) == null) {
            return null;
        }
        return CollectionsKt.listOf(inlineClassUnboxMethod);
    }

    private static final List getMfvcUnboxMethods$getUnboxMethodNameSuffixes(SimpleType simpleType) {
        Collection listOf;
        if (!InlineClassesUtilsKt.needsMfvcFlattening(simpleType)) {
            return null;
        }
        ClassifierDescriptor mo2789getDeclarationDescriptor = simpleType.getConstructor().mo2789getDeclarationDescriptor();
        Intrinsics.checkNotNull(mo2789getDeclarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        MultiFieldValueClassRepresentation multiFieldValueClassRepresentation = DescriptorUtilsKt.getMultiFieldValueClassRepresentation((ClassDescriptor) mo2789getDeclarationDescriptor);
        Intrinsics.checkNotNull(multiFieldValueClassRepresentation);
        List<Pair> underlyingPropertyNamesToTypes = multiFieldValueClassRepresentation.getUnderlyingPropertyNamesToTypes();
        ArrayList arrayList = new ArrayList();
        for (Pair pair : underlyingPropertyNamesToTypes) {
            Name name = (Name) pair.component1();
            List mfvcUnboxMethods$getUnboxMethodNameSuffixes = getMfvcUnboxMethods$getUnboxMethodNameSuffixes((SimpleType) pair.component2());
            if (mfvcUnboxMethods$getUnboxMethodNameSuffixes == null) {
                listOf = CollectionsKt.listOf(name.getIdentifier());
            } else {
                listOf = new ArrayList(CollectionsKt.collectionSizeOrDefault(mfvcUnboxMethods$getUnboxMethodNameSuffixes, 10));
                Iterator it = mfvcUnboxMethods$getUnboxMethodNameSuffixes.iterator();
                while (it.hasNext()) {
                    listOf.add(name.getIdentifier() + CoreConstants.DASH_CHAR + ((String) it.next()));
                }
            }
            CollectionsKt.addAll(arrayList, listOf);
        }
        return arrayList;
    }

    public static final List getMfvcUnboxMethods(SimpleType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        List mfvcUnboxMethods$getUnboxMethodNameSuffixes = getMfvcUnboxMethods$getUnboxMethodNameSuffixes(TypeSubstitutionKt.asSimpleType(type));
        if (mfvcUnboxMethods$getUnboxMethodNameSuffixes == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(mfvcUnboxMethods$getUnboxMethodNameSuffixes, 10));
        Iterator it = mfvcUnboxMethods$getUnboxMethodNameSuffixes.iterator();
        while (it.hasNext()) {
            arrayList.add("unbox-impl-" + ((String) it.next()));
        }
        ClassifierDescriptor mo2789getDeclarationDescriptor = type.getConstructor().mo2789getDeclarationDescriptor();
        Intrinsics.checkNotNull(mo2789getDeclarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        Class javaClass = UtilKt.toJavaClass((ClassDescriptor) mo2789getDeclarationDescriptor);
        Intrinsics.checkNotNull(javaClass);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(javaClass.getDeclaredMethod((String) it2.next(), null));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkParametersSize(Caller caller, int i, CallableMemberDescriptor callableMemberDescriptor, boolean z) {
        if (CallerKt.getArity(caller) == i) {
            return;
        }
        throw new KotlinReflectionInternalError("Inconsistent number of parameters in the descriptor and Java reflection object: " + CallerKt.getArity(caller) + " != " + i + "\nCalling: " + callableMemberDescriptor + "\nParameter types: " + caller.getParameterTypes() + ")\nDefault: " + z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List makeKotlinParameterTypes(CallableMemberDescriptor callableMemberDescriptor, Member member, Function1 function1) {
        ArrayList arrayList = new ArrayList();
        ReceiverParameterDescriptor extensionReceiverParameter = callableMemberDescriptor.getExtensionReceiverParameter();
        KotlinType type = extensionReceiverParameter != null ? extensionReceiverParameter.getType() : null;
        if (type != null) {
            arrayList.add(type);
        } else if (callableMemberDescriptor instanceof ConstructorDescriptor) {
            ClassDescriptor constructedClass = ((ConstructorDescriptor) callableMemberDescriptor).getConstructedClass();
            Intrinsics.checkNotNullExpressionValue(constructedClass, "getConstructedClass(...)");
            if (constructedClass.isInner()) {
                DeclarationDescriptor containingDeclaration = constructedClass.getContainingDeclaration();
                Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                arrayList.add(((ClassDescriptor) containingDeclaration).getDefaultType());
            }
        } else {
            DeclarationDescriptor containingDeclaration2 = callableMemberDescriptor.getContainingDeclaration();
            Intrinsics.checkNotNullExpressionValue(containingDeclaration2, "getContainingDeclaration(...)");
            if ((containingDeclaration2 instanceof ClassDescriptor) && ((Boolean) function1.invoke(containingDeclaration2)).booleanValue()) {
                if (member != null && acceptsBoxedReceiverParameter(member)) {
                    SimpleType defaultType = ((ClassDescriptor) containingDeclaration2).getDefaultType();
                    Intrinsics.checkNotNullExpressionValue(defaultType, "getDefaultType(...)");
                    arrayList.add(TypeUtilsKt.makeNullable(defaultType));
                } else {
                    arrayList.add(((ClassDescriptor) containingDeclaration2).getDefaultType());
                }
            }
        }
        List valueParameters = callableMemberDescriptor.getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters, "getValueParameters(...)");
        Iterator it = valueParameters.iterator();
        while (it.hasNext()) {
            arrayList.add(((ValueParameterDescriptor) it.next()).getType());
        }
        return arrayList;
    }

    private static final boolean acceptsBoxedReceiverParameter(Member member) {
        if (member.getDeclaringClass() == null) {
            return false;
        }
        return !JvmClassMappingKt.getKotlinClass(r0).isValue();
    }

    public static /* synthetic */ Caller createValueClassAwareCallerIfNeeded$default(Caller caller, CallableMemberDescriptor callableMemberDescriptor, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return createValueClassAwareCallerIfNeeded(caller, callableMemberDescriptor, z);
    }

    public static final Caller createValueClassAwareCallerIfNeeded(Caller caller, CallableMemberDescriptor descriptor, boolean z) {
        Intrinsics.checkNotNullParameter(caller, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!InlineClassesUtilsKt.isGetterOfUnderlyingPropertyOfValueClass(descriptor)) {
            List contextReceiverParameters = descriptor.getContextReceiverParameters();
            Intrinsics.checkNotNullExpressionValue(contextReceiverParameters, "getContextReceiverParameters(...)");
            if (!(contextReceiverParameters instanceof Collection) || !contextReceiverParameters.isEmpty()) {
                Iterator it = contextReceiverParameters.iterator();
                while (it.hasNext()) {
                    KotlinType type = ((ReceiverParameterDescriptor) it.next()).getType();
                    Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                    if (InlineClassesUtilsKt.isValueClassType(type)) {
                        break;
                    }
                }
            }
            List valueParameters = descriptor.getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters, "getValueParameters(...)");
            if (!(valueParameters instanceof Collection) || !valueParameters.isEmpty()) {
                Iterator it2 = valueParameters.iterator();
                while (it2.hasNext()) {
                    KotlinType type2 = ((ValueParameterDescriptor) it2.next()).getType();
                    Intrinsics.checkNotNullExpressionValue(type2, "getType(...)");
                    if (InlineClassesUtilsKt.isValueClassType(type2)) {
                        break;
                    }
                }
            }
            KotlinType returnType = descriptor.getReturnType();
            if ((returnType == null || !InlineClassesUtilsKt.isInlineClassType(returnType)) && !hasValueClassReceiver(descriptor)) {
                return caller;
            }
        }
        return new ValueClassAwareCaller(descriptor, caller, z);
    }

    private static final boolean hasValueClassReceiver(CallableMemberDescriptor callableMemberDescriptor) {
        KotlinType expectedReceiverType = getExpectedReceiverType(callableMemberDescriptor);
        return expectedReceiverType != null && InlineClassesUtilsKt.isValueClassType(expectedReceiverType);
    }

    public static final Method getInlineClassUnboxMethod(Class cls, CallableMemberDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        try {
            return cls.getDeclaredMethod("unbox-impl", null);
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No unbox method found in inline class: " + cls + " (calling " + descriptor + CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Method getBoxMethod(Class cls, CallableMemberDescriptor callableMemberDescriptor) {
        try {
            return cls.getDeclaredMethod("box-impl", getInlineClassUnboxMethod(cls, callableMemberDescriptor).getReturnType());
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No box method found in inline class: " + cls + " (calling " + callableMemberDescriptor + CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Class toInlineClass(KotlinType kotlinType) {
        Class inlineClass = toInlineClass(kotlinType.getConstructor().mo2789getDeclarationDescriptor());
        if (inlineClass == null) {
            return null;
        }
        if (!TypeUtils.isNullableType(kotlinType)) {
            return inlineClass;
        }
        KotlinType unsubstitutedUnderlyingType = InlineClassesUtilsKt.unsubstitutedUnderlyingType(kotlinType);
        if (unsubstitutedUnderlyingType == null || TypeUtils.isNullableType(unsubstitutedUnderlyingType) || KotlinBuiltIns.isPrimitiveType(unsubstitutedUnderlyingType)) {
            return null;
        }
        return inlineClass;
    }

    public static final Class toInlineClass(DeclarationDescriptor declarationDescriptor) {
        if (!(declarationDescriptor instanceof ClassDescriptor) || !InlineClassesUtilsKt.isInlineClass(declarationDescriptor)) {
            return null;
        }
        ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
        Class javaClass = UtilKt.toJavaClass(classDescriptor);
        if (javaClass != null) {
            return javaClass;
        }
        throw new KotlinReflectionInternalError("Class object for the class " + classDescriptor.getName() + " cannot be found (classId=" + DescriptorUtilsKt.getClassId((ClassifierDescriptor) declarationDescriptor) + CoreConstants.RIGHT_PARENTHESIS_CHAR);
    }

    private static final KotlinType getExpectedReceiverType(CallableMemberDescriptor callableMemberDescriptor) {
        ReceiverParameterDescriptor extensionReceiverParameter = callableMemberDescriptor.getExtensionReceiverParameter();
        ReceiverParameterDescriptor dispatchReceiverParameter = callableMemberDescriptor.getDispatchReceiverParameter();
        if (extensionReceiverParameter != null) {
            return extensionReceiverParameter.getType();
        }
        if (dispatchReceiverParameter != null) {
            if (callableMemberDescriptor instanceof ConstructorDescriptor) {
                return dispatchReceiverParameter.getType();
            }
            DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
            ClassDescriptor classDescriptor = containingDeclaration instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration : null;
            if (classDescriptor != null) {
                return classDescriptor.getDefaultType();
            }
        }
        return null;
    }

    public static final Object coerceToExpectedReceiverType(Object obj, CallableMemberDescriptor descriptor) {
        KotlinType expectedReceiverType;
        Class inlineClass;
        Method inlineClassUnboxMethod;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return (((descriptor instanceof PropertyDescriptor) && InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass((VariableDescriptor) descriptor)) || (expectedReceiverType = getExpectedReceiverType(descriptor)) == null || (inlineClass = toInlineClass(expectedReceiverType)) == null || (inlineClassUnboxMethod = getInlineClassUnboxMethod(inlineClass, descriptor)) == null) ? obj : inlineClassUnboxMethod.invoke(obj, null);
    }
}
