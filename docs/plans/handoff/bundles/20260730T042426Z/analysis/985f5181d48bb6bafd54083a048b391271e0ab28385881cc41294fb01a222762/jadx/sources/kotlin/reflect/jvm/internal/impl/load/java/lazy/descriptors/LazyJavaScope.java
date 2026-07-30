package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* compiled from: LazyJavaScope.kt */
/* loaded from: classes2.dex */
public abstract class LazyJavaScope extends MemberScopeImpl {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    private final NotNullLazyValue allDescriptors;
    private final LazyJavaResolverContext c;
    private final NotNullLazyValue classNamesLazy$delegate;
    private final MemoizedFunctionToNullable declaredField;
    private final MemoizedFunctionToNotNull declaredFunctions;
    private final NotNullLazyValue declaredMemberIndex;
    private final NotNullLazyValue functionNamesLazy$delegate;
    private final MemoizedFunctionToNotNull functions;
    private final LazyJavaScope mainScope;
    private final MemoizedFunctionToNotNull properties;
    private final NotNullLazyValue propertyNamesLazy$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    public static final CallableDescriptor retainMostSpecificMethods$lambda$6(SimpleFunctionDescriptor selectMostSpecificInEachOverridableGroup) {
        Intrinsics.checkNotNullParameter(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
        return selectMostSpecificInEachOverridableGroup;
    }

    protected abstract Set computeClassNames(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    protected abstract Set computeFunctionNames(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    protected void computeImplicitlyDeclaredFunctions(Collection result, Name name) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract DeclaredMemberIndex computeMemberIndex();

    protected abstract void computeNonDeclaredFunctions(Collection collection, Name name);

    protected abstract void computeNonDeclaredProperties(Name name, Collection collection);

    protected abstract Set computePropertyNames(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    protected abstract ReceiverParameterDescriptor getDispatchReceiverParameter();

    protected abstract DeclarationDescriptor getOwnerDescriptor();

    protected boolean isVisibleAsFunction(JavaMethodDescriptor javaMethodDescriptor) {
        Intrinsics.checkNotNullParameter(javaMethodDescriptor, "<this>");
        return true;
    }

    protected abstract MethodSignatureData resolveMethodSignature(JavaMethod javaMethod, List list, KotlinType kotlinType, List list2);

    public /* synthetic */ LazyJavaScope(LazyJavaResolverContext lazyJavaResolverContext, LazyJavaScope lazyJavaScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, (i & 2) != 0 ? null : lazyJavaScope);
    }

    protected final LazyJavaResolverContext getC() {
        return this.c;
    }

    protected final LazyJavaScope getMainScope() {
        return this.mainScope;
    }

    public LazyJavaScope(LazyJavaResolverContext c, LazyJavaScope lazyJavaScope) {
        Intrinsics.checkNotNullParameter(c, "c");
        this.c = c;
        this.mainScope = lazyJavaScope;
        this.allDescriptors = c.getStorageManager().createRecursionTolerantLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$0
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Collection allDescriptors$lambda$0;
                allDescriptors$lambda$0 = LazyJavaScope.allDescriptors$lambda$0(this.arg$0);
                return allDescriptors$lambda$0;
            }
        }, CollectionsKt.emptyList());
        this.declaredMemberIndex = c.getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$1
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                DeclaredMemberIndex computeMemberIndex;
                computeMemberIndex = this.arg$0.computeMemberIndex();
                return computeMemberIndex;
            }
        });
        this.declaredFunctions = c.getStorageManager().createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$2
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public Object invoke(Object obj) {
                Collection declaredFunctions$lambda$2;
                declaredFunctions$lambda$2 = LazyJavaScope.declaredFunctions$lambda$2(this.arg$0, (Name) obj);
                return declaredFunctions$lambda$2;
            }
        });
        this.declaredField = c.getStorageManager().createMemoizedFunctionWithNullableValues(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$3
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public Object invoke(Object obj) {
                PropertyDescriptor declaredField$lambda$3;
                declaredField$lambda$3 = LazyJavaScope.declaredField$lambda$3(this.arg$0, (Name) obj);
                return declaredField$lambda$3;
            }
        });
        this.functions = c.getStorageManager().createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$4
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public Object invoke(Object obj) {
                Collection functions$lambda$4;
                functions$lambda$4 = LazyJavaScope.functions$lambda$4(this.arg$0, (Name) obj);
                return functions$lambda$4;
            }
        });
        this.functionNamesLazy$delegate = c.getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$5
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Set functionNamesLazy_delegate$lambda$10;
                functionNamesLazy_delegate$lambda$10 = LazyJavaScope.functionNamesLazy_delegate$lambda$10(this.arg$0);
                return functionNamesLazy_delegate$lambda$10;
            }
        });
        this.propertyNamesLazy$delegate = c.getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$6
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Set propertyNamesLazy_delegate$lambda$11;
                propertyNamesLazy_delegate$lambda$11 = LazyJavaScope.propertyNamesLazy_delegate$lambda$11(this.arg$0);
                return propertyNamesLazy_delegate$lambda$11;
            }
        });
        this.classNamesLazy$delegate = c.getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$7
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Set classNamesLazy_delegate$lambda$12;
                classNamesLazy_delegate$lambda$12 = LazyJavaScope.classNamesLazy_delegate$lambda$12(this.arg$0);
                return classNamesLazy_delegate$lambda$12;
            }
        });
        this.properties = c.getStorageManager().createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$8
            private final LazyJavaScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public Object invoke(Object obj) {
                List properties$lambda$13;
                properties$lambda$13 = LazyJavaScope.properties$lambda$13(this.arg$0, (Name) obj);
                return properties$lambda$13;
            }
        });
    }

    protected final NotNullLazyValue getAllDescriptors() {
        return this.allDescriptors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Collection allDescriptors$lambda$0(LazyJavaScope lazyJavaScope) {
        return lazyJavaScope.computeDescriptors(DescriptorKindFilter.ALL, MemberScope.Companion.getALL_NAME_FILTER());
    }

    protected final NotNullLazyValue getDeclaredMemberIndex() {
        return this.declaredMemberIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Collection declaredFunctions$lambda$2(LazyJavaScope lazyJavaScope, Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        LazyJavaScope lazyJavaScope2 = lazyJavaScope.mainScope;
        if (lazyJavaScope2 != null) {
            return (Collection) lazyJavaScope2.declaredFunctions.invoke(name);
        }
        ArrayList arrayList = new ArrayList();
        for (JavaMethod javaMethod : ((DeclaredMemberIndex) lazyJavaScope.declaredMemberIndex.invoke()).findMethodsByName(name)) {
            JavaMethodDescriptor resolveMethodToFunctionDescriptor = lazyJavaScope.resolveMethodToFunctionDescriptor(javaMethod);
            if (lazyJavaScope.isVisibleAsFunction(resolveMethodToFunctionDescriptor)) {
                lazyJavaScope.c.getComponents().getJavaResolverCache().recordMethod(javaMethod, resolveMethodToFunctionDescriptor);
                arrayList.add(resolveMethodToFunctionDescriptor);
            }
        }
        lazyJavaScope.computeImplicitlyDeclaredFunctions(arrayList, name);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PropertyDescriptor declaredField$lambda$3(LazyJavaScope lazyJavaScope, Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        LazyJavaScope lazyJavaScope2 = lazyJavaScope.mainScope;
        if (lazyJavaScope2 != null) {
            return (PropertyDescriptor) lazyJavaScope2.declaredField.invoke(name);
        }
        JavaField findFieldByName = ((DeclaredMemberIndex) lazyJavaScope.declaredMemberIndex.invoke()).findFieldByName(name);
        if (findFieldByName == null || findFieldByName.isEnumEntry()) {
            return null;
        }
        return lazyJavaScope.resolveProperty(findFieldByName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Collection functions$lambda$4(LazyJavaScope lazyJavaScope, Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) lazyJavaScope.declaredFunctions.invoke(name));
        lazyJavaScope.retainMostSpecificMethods(linkedHashSet);
        lazyJavaScope.computeNonDeclaredFunctions(linkedHashSet, name);
        return CollectionsKt.toList(lazyJavaScope.c.getComponents().getSignatureEnhancement().enhanceSignatures(lazyJavaScope.c, linkedHashSet));
    }

    private final void retainMostSpecificMethods(Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String computeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default((SimpleFunctionDescriptor) obj, false, false, 2, null);
            Object obj2 = linkedHashMap.get(computeJvmDescriptor$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(computeJvmDescriptor$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                Collection selectMostSpecificInEachOverridableGroup = OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(list, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$9
                    @Override // kotlin.jvm.functions.Function1
                    public Object invoke(Object obj3) {
                        CallableDescriptor retainMostSpecificMethods$lambda$6;
                        retainMostSpecificMethods$lambda$6 = LazyJavaScope.retainMostSpecificMethods$lambda$6((SimpleFunctionDescriptor) obj3);
                        return retainMostSpecificMethods$lambda$6;
                    }
                });
                set.removeAll(list);
                set.addAll(selectMostSpecificInEachOverridableGroup);
            }
        }
    }

    /* compiled from: LazyJavaScope.kt */
    protected static final class MethodSignatureData {
        private final List errors;
        private final boolean hasStableParameterNames;
        private final KotlinType receiverType;
        private final KotlinType returnType;
        private final List typeParameters;
        private final List valueParameters;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodSignatureData)) {
                return false;
            }
            MethodSignatureData methodSignatureData = (MethodSignatureData) obj;
            return Intrinsics.areEqual(this.returnType, methodSignatureData.returnType) && Intrinsics.areEqual(this.receiverType, methodSignatureData.receiverType) && Intrinsics.areEqual(this.valueParameters, methodSignatureData.valueParameters) && Intrinsics.areEqual(this.typeParameters, methodSignatureData.typeParameters) && this.hasStableParameterNames == methodSignatureData.hasStableParameterNames && Intrinsics.areEqual(this.errors, methodSignatureData.errors);
        }

        public int hashCode() {
            int hashCode = this.returnType.hashCode() * 31;
            KotlinType kotlinType = this.receiverType;
            return ((((((((hashCode + (kotlinType == null ? 0 : kotlinType.hashCode())) * 31) + this.valueParameters.hashCode()) * 31) + this.typeParameters.hashCode()) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.hasStableParameterNames)) * 31) + this.errors.hashCode();
        }

        public String toString() {
            return "MethodSignatureData(returnType=" + this.returnType + ", receiverType=" + this.receiverType + ", valueParameters=" + this.valueParameters + ", typeParameters=" + this.typeParameters + ", hasStableParameterNames=" + this.hasStableParameterNames + ", errors=" + this.errors + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public MethodSignatureData(KotlinType returnType, KotlinType kotlinType, List valueParameters, List typeParameters, boolean z, List errors) {
            Intrinsics.checkNotNullParameter(returnType, "returnType");
            Intrinsics.checkNotNullParameter(valueParameters, "valueParameters");
            Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
            Intrinsics.checkNotNullParameter(errors, "errors");
            this.returnType = returnType;
            this.receiverType = kotlinType;
            this.valueParameters = valueParameters;
            this.typeParameters = typeParameters;
            this.hasStableParameterNames = z;
            this.errors = errors;
        }

        public final KotlinType getReturnType() {
            return this.returnType;
        }

        public final KotlinType getReceiverType() {
            return this.receiverType;
        }

        public final List getValueParameters() {
            return this.valueParameters;
        }

        public final List getTypeParameters() {
            return this.typeParameters;
        }

        public final boolean getHasStableParameterNames() {
            return this.hasStableParameterNames;
        }

        public final List getErrors() {
            return this.errors;
        }
    }

    protected final JavaMethodDescriptor resolveMethodToFunctionDescriptor(JavaMethod method) {
        Map emptyMap;
        Intrinsics.checkNotNullParameter(method, "method");
        JavaMethodDescriptor createJavaMethod = JavaMethodDescriptor.createJavaMethod(getOwnerDescriptor(), LazyJavaAnnotationsKt.resolveAnnotations(this.c, method), method.getName(), this.c.getComponents().getSourceElementFactory().source(method), ((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).findRecordComponentByName(method.getName()) != null && method.getValueParameters().isEmpty());
        Intrinsics.checkNotNullExpressionValue(createJavaMethod, "createJavaMethod(...)");
        LazyJavaResolverContext childForMethod$default = ContextKt.childForMethod$default(this.c, createJavaMethod, method, 0, 4, null);
        List typeParameters = method.getTypeParameters();
        List arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(typeParameters, 10));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            TypeParameterDescriptor resolveTypeParameter = childForMethod$default.getTypeParameterResolver().resolveTypeParameter((JavaTypeParameter) it.next());
            Intrinsics.checkNotNull(resolveTypeParameter);
            arrayList.add(resolveTypeParameter);
        }
        ResolvedValueParameters resolveValueParameters = resolveValueParameters(childForMethod$default, createJavaMethod, method.getValueParameters());
        MethodSignatureData resolveMethodSignature = resolveMethodSignature(method, arrayList, computeMethodReturnType(method, childForMethod$default), resolveValueParameters.getDescriptors());
        KotlinType receiverType = resolveMethodSignature.getReceiverType();
        ReceiverParameterDescriptor createExtensionReceiverParameterForCallable = receiverType != null ? DescriptorFactory.createExtensionReceiverParameterForCallable(createJavaMethod, receiverType, Annotations.Companion.getEMPTY()) : null;
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        List emptyList = CollectionsKt.emptyList();
        List typeParameters2 = resolveMethodSignature.getTypeParameters();
        List valueParameters = resolveMethodSignature.getValueParameters();
        KotlinType returnType = resolveMethodSignature.getReturnType();
        Modality convertFromFlags = Modality.Companion.convertFromFlags(false, method.isAbstract(), true ^ method.isFinal());
        DescriptorVisibility descriptorVisibility = UtilsKt.toDescriptorVisibility(method.getVisibility());
        if (resolveMethodSignature.getReceiverType() != null) {
            emptyMap = MapsKt.mapOf(TuplesKt.to(JavaMethodDescriptor.ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER, CollectionsKt.first(resolveValueParameters.getDescriptors())));
        } else {
            emptyMap = MapsKt.emptyMap();
        }
        createJavaMethod.initialize(createExtensionReceiverParameterForCallable, dispatchReceiverParameter, emptyList, typeParameters2, valueParameters, returnType, convertFromFlags, descriptorVisibility, emptyMap);
        createJavaMethod.setParameterNamesStatus(resolveMethodSignature.getHasStableParameterNames(), resolveValueParameters.getHasSynthesizedNames());
        if (!resolveMethodSignature.getErrors().isEmpty()) {
            childForMethod$default.getComponents().getSignaturePropagator().reportSignatureErrors(createJavaMethod, resolveMethodSignature.getErrors());
        }
        return createJavaMethod;
    }

    protected final KotlinType computeMethodReturnType(JavaMethod method, LazyJavaResolverContext c) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(c, "c");
        return c.getTypeResolver().transformJavaType(method.getReturnType(), JavaTypeAttributesKt.toAttributes$default(TypeUsage.COMMON, method.getContainingClass().isAnnotationType(), false, null, 6, null));
    }

    /* compiled from: LazyJavaScope.kt */
    protected static final class ResolvedValueParameters {
        private final List descriptors;
        private final boolean hasSynthesizedNames;

        public ResolvedValueParameters(List descriptors, boolean z) {
            Intrinsics.checkNotNullParameter(descriptors, "descriptors");
            this.descriptors = descriptors;
            this.hasSynthesizedNames = z;
        }

        public final List getDescriptors() {
            return this.descriptors;
        }

        public final boolean getHasSynthesizedNames() {
            return this.hasSynthesizedNames;
        }
    }

    protected final ResolvedValueParameters resolveValueParameters(LazyJavaResolverContext lazyJavaResolverContext, FunctionDescriptor function, List jValueParameters) {
        Pair pair;
        Name name;
        LazyJavaResolverContext c = lazyJavaResolverContext;
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(function, "function");
        Intrinsics.checkNotNullParameter(jValueParameters, "jValueParameters");
        Iterable<IndexedValue> withIndex = CollectionsKt.withIndex(jValueParameters);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(withIndex, 10));
        boolean z = false;
        for (IndexedValue indexedValue : withIndex) {
            int component1 = indexedValue.component1();
            JavaValueParameter javaValueParameter = (JavaValueParameter) indexedValue.component2();
            Annotations resolveAnnotations = LazyJavaAnnotationsKt.resolveAnnotations(c, javaValueParameter);
            JavaTypeAttributes attributes$default = JavaTypeAttributesKt.toAttributes$default(TypeUsage.COMMON, false, false, null, 7, null);
            if (javaValueParameter.isVararg()) {
                JavaType type = javaValueParameter.getType();
                JavaArrayType javaArrayType = type instanceof JavaArrayType ? (JavaArrayType) type : null;
                if (javaArrayType == null) {
                    throw new AssertionError("Vararg parameter should be an array: " + javaValueParameter);
                }
                KotlinType transformArrayType = lazyJavaResolverContext.getTypeResolver().transformArrayType(javaArrayType, attributes$default, true);
                pair = TuplesKt.to(transformArrayType, lazyJavaResolverContext.getModule().getBuiltIns().getArrayElementType(transformArrayType));
            } else {
                pair = TuplesKt.to(lazyJavaResolverContext.getTypeResolver().transformJavaType(javaValueParameter.getType(), attributes$default), null);
            }
            KotlinType kotlinType = (KotlinType) pair.component1();
            KotlinType kotlinType2 = (KotlinType) pair.component2();
            if (Intrinsics.areEqual(function.getName().asString(), "equals") && jValueParameters.size() == 1 && Intrinsics.areEqual(lazyJavaResolverContext.getModule().getBuiltIns().getNullableAnyType(), kotlinType)) {
                name = Name.identifier("other");
            } else {
                name = javaValueParameter.getName();
                if (name == null) {
                    z = true;
                }
                if (name == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('p');
                    sb.append(component1);
                    name = Name.identifier(sb.toString());
                    Intrinsics.checkNotNullExpressionValue(name, "identifier(...)");
                }
            }
            boolean z2 = z;
            Name name2 = name;
            Intrinsics.checkNotNull(name2);
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(function, null, component1, resolveAnnotations, name2, kotlinType, false, false, false, kotlinType2, lazyJavaResolverContext.getComponents().getSourceElementFactory().source(javaValueParameter)));
            arrayList = arrayList2;
            z = z2;
            c = lazyJavaResolverContext;
        }
        return new ResolvedValueParameters(CollectionsKt.toList(arrayList), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set functionNamesLazy_delegate$lambda$10(LazyJavaScope lazyJavaScope) {
        return lazyJavaScope.computeFunctionNames(DescriptorKindFilter.FUNCTIONS, null);
    }

    private final Set getFunctionNamesLazy() {
        return (Set) StorageKt.getValue(this.functionNamesLazy$delegate, this, $$delegatedProperties[0]);
    }

    private final Set getPropertyNamesLazy() {
        return (Set) StorageKt.getValue(this.propertyNamesLazy$delegate, this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set propertyNamesLazy_delegate$lambda$11(LazyJavaScope lazyJavaScope) {
        return lazyJavaScope.computePropertyNames(DescriptorKindFilter.VARIABLES, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set classNamesLazy_delegate$lambda$12(LazyJavaScope lazyJavaScope) {
        return lazyJavaScope.computeClassNames(DescriptorKindFilter.CLASSIFIERS, null);
    }

    private final Set getClassNamesLazy() {
        return (Set) StorageKt.getValue(this.classNamesLazy$delegate, this, $$delegatedProperties[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getFunctionNames() {
        return getFunctionNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getVariableNames() {
        return getPropertyNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getClassifierNames() {
        return getClassNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedFunctions(Name name, LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return !getFunctionNames().contains(name) ? CollectionsKt.emptyList() : (Collection) this.functions.invoke(name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List properties$lambda$13(LazyJavaScope lazyJavaScope, Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        ArrayList arrayList = new ArrayList();
        kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.addIfNotNull(arrayList, lazyJavaScope.declaredField.invoke(name));
        lazyJavaScope.computeNonDeclaredProperties(name, arrayList);
        if (DescriptorUtils.isAnnotationClass(lazyJavaScope.getOwnerDescriptor())) {
            return CollectionsKt.toList(arrayList);
        }
        return CollectionsKt.toList(lazyJavaScope.c.getComponents().getSignatureEnhancement().enhanceSignatures(lazyJavaScope.c, arrayList));
    }

    private final PropertyDescriptor resolveProperty(final JavaField javaField) {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        PropertyDescriptorImpl createPropertyDescriptor = createPropertyDescriptor(javaField);
        ref$ObjectRef.element = createPropertyDescriptor;
        createPropertyDescriptor.initialize(null, null, null, null);
        ((PropertyDescriptorImpl) ref$ObjectRef.element).setType(getPropertyType(javaField), CollectionsKt.emptyList(), getDispatchReceiverParameter(), null, CollectionsKt.emptyList());
        DeclarationDescriptor ownerDescriptor = getOwnerDescriptor();
        ClassDescriptor classDescriptor = ownerDescriptor instanceof ClassDescriptor ? (ClassDescriptor) ownerDescriptor : null;
        if (classDescriptor != null) {
            ref$ObjectRef.element = this.c.getComponents().getSyntheticPartsProvider().modifyField(classDescriptor, (PropertyDescriptorImpl) ref$ObjectRef.element, this.c);
        }
        Object obj = ref$ObjectRef.element;
        if (DescriptorUtils.shouldRecordInitializerForProperty((VariableDescriptor) obj, ((PropertyDescriptorImpl) obj).getType())) {
            ((PropertyDescriptorImpl) ref$ObjectRef.element).setCompileTimeInitializerFactory(new Function0(this, javaField, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$10
                private final LazyJavaScope arg$0;
                private final JavaField arg$1;
                private final Ref$ObjectRef arg$2;

                {
                    this.arg$0 = this;
                    this.arg$1 = javaField;
                    this.arg$2 = ref$ObjectRef;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    NullableLazyValue resolveProperty$lambda$16;
                    resolveProperty$lambda$16 = LazyJavaScope.resolveProperty$lambda$16(this.arg$0, this.arg$1, this.arg$2);
                    return resolveProperty$lambda$16;
                }
            });
        }
        this.c.getComponents().getJavaResolverCache().recordField(javaField, (PropertyDescriptor) ref$ObjectRef.element);
        return (PropertyDescriptor) ref$ObjectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NullableLazyValue resolveProperty$lambda$16(final LazyJavaScope lazyJavaScope, final JavaField javaField, final Ref$ObjectRef ref$ObjectRef) {
        return lazyJavaScope.c.getStorageManager().createNullableLazyValue(new Function0(lazyJavaScope, javaField, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$11
            private final LazyJavaScope arg$0;
            private final JavaField arg$1;
            private final Ref$ObjectRef arg$2;

            {
                this.arg$0 = lazyJavaScope;
                this.arg$1 = javaField;
                this.arg$2 = ref$ObjectRef;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                ConstantValue resolveProperty$lambda$16$lambda$15;
                resolveProperty$lambda$16$lambda$15 = LazyJavaScope.resolveProperty$lambda$16$lambda$15(this.arg$0, this.arg$1, this.arg$2);
                return resolveProperty$lambda$16$lambda$15;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConstantValue resolveProperty$lambda$16$lambda$15(LazyJavaScope lazyJavaScope, JavaField javaField, Ref$ObjectRef ref$ObjectRef) {
        return lazyJavaScope.c.getComponents().getJavaPropertyInitializerEvaluator().getInitializerConstant(javaField, (PropertyDescriptor) ref$ObjectRef.element);
    }

    private final PropertyDescriptorImpl createPropertyDescriptor(JavaField javaField) {
        JavaPropertyDescriptor create = JavaPropertyDescriptor.create(getOwnerDescriptor(), LazyJavaAnnotationsKt.resolveAnnotations(this.c, javaField), Modality.FINAL, UtilsKt.toDescriptorVisibility(javaField.getVisibility()), !javaField.isFinal(), javaField.getName(), this.c.getComponents().getSourceElementFactory().source(javaField), isFinalStatic(javaField));
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    private final boolean isFinalStatic(JavaField javaField) {
        return javaField.isFinal() && javaField.isStatic();
    }

    private final KotlinType getPropertyType(JavaField javaField) {
        KotlinType transformJavaType = this.c.getTypeResolver().transformJavaType(javaField.getType(), JavaTypeAttributesKt.toAttributes$default(TypeUsage.COMMON, false, false, null, 7, null));
        if ((!KotlinBuiltIns.isPrimitiveType(transformJavaType) && !KotlinBuiltIns.isString(transformJavaType)) || !isFinalStatic(javaField) || !javaField.getHasConstantNotNullInitializer()) {
            return transformJavaType;
        }
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(transformJavaType);
        Intrinsics.checkNotNullExpressionValue(makeNotNullable, "makeNotNullable(...)");
        return makeNotNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedVariables(Name name, LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return !getVariableNames().contains(name) ? CollectionsKt.emptyList() : (Collection) this.properties.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection getContributedDescriptors(DescriptorKindFilter kindFilter, Function1 nameFilter) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        return (Collection) this.allDescriptors.invoke();
    }

    protected final List computeDescriptors(DescriptorKindFilter kindFilter, Function1 nameFilter) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getCLASSIFIERS_MASK())) {
            for (Name name : computeClassNames(kindFilter, nameFilter)) {
                if (((Boolean) nameFilter.invoke(name)).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.addIfNotNull(linkedHashSet, mo2791getContributedClassifier(name, noLookupLocation));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK()) && !kindFilter.getExcludes().contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
            for (Name name2 : computeFunctionNames(kindFilter, nameFilter)) {
                if (((Boolean) nameFilter.invoke(name2)).booleanValue()) {
                    linkedHashSet.addAll(getContributedFunctions(name2, noLookupLocation));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK()) && !kindFilter.getExcludes().contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
            for (Name name3 : computePropertyNames(kindFilter, nameFilter)) {
                if (((Boolean) nameFilter.invoke(name3)).booleanValue()) {
                    linkedHashSet.addAll(getContributedVariables(name3, noLookupLocation));
                }
            }
        }
        return CollectionsKt.toList(linkedHashSet);
    }

    public String toString() {
        return "Lazy scope for " + getOwnerDescriptor();
    }
}
