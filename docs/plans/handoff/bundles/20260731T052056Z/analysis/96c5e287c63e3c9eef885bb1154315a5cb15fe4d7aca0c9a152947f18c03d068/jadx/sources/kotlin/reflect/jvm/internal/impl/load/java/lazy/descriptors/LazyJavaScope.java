package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.DpKt;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$size$3$1;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaValueParameter;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.Dispatcher;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyJavaScope extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.AnonymousClass4 allDescriptors;
    public final Request.Builder c;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue classNamesLazy$delegate;
    public final ViewSizeResolver$size$3$1 declaredField;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull declaredFunctions;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue declaredMemberIndex;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue functionNamesLazy$delegate;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull functions;
    public final LazyJavaScope mainScope;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull properties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue propertyNamesLazy$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MethodSignatureData {
        public final List errors;
        public final KotlinType returnType;
        public final ArrayList typeParameters;
        public final List valueParameters;

        public MethodSignatureData(KotlinType kotlinType, List list, ArrayList arrayList, List list2) {
            this.returnType = kotlinType;
            this.valueParameters = list;
            this.typeParameters = arrayList;
            this.errors = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodSignatureData)) {
                return false;
            }
            MethodSignatureData methodSignatureData = (MethodSignatureData) obj;
            return this.returnType.equals(methodSignatureData.returnType) && this.valueParameters.equals(methodSignatureData.valueParameters) && this.typeParameters.equals(methodSignatureData.typeParameters) && this.errors.equals(methodSignatureData.errors);
        }

        public final int hashCode() {
            return this.errors.hashCode() + ((this.typeParameters.hashCode() + Modifier.CC.m(this.returnType.hashCode() * 961, 31, this.valueParameters)) * 961);
        }

        public final String toString() {
            return "MethodSignatureData(returnType=" + this.returnType + ", receiverType=null, valueParameters=" + this.valueParameters + ", typeParameters=" + this.typeParameters + ", hasStableParameterNames=false, errors=" + this.errors + ')';
        }
    }

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    }

    public LazyJavaScope(Request.Builder builder, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        builder.getClass();
        this.c = builder;
        this.mainScope = lazyJavaClassMemberScope;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView;
        final int i = 0;
        this.allDescriptors = new LockBasedStorageManager.AnonymousClass4(lockBasedStorageManager, new LazyJavaScope$allDescriptors$1(this, i));
        final int i2 = 2;
        this.declaredMemberIndex = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaScope$allDescriptors$1(this, i2));
        this.declaredFunctions = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1
            public final /* synthetic */ LazyJavaScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            /* JADX WARN: Code restructure failed: missing block: B:69:0x01f1, code lost:
            
                if (kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes.isUnsignedType(r5) == false) goto L81;
             */
            /* JADX WARN: Removed duplicated region for block: B:54:0x01a9  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x01fd  */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(java.lang.Object r23) {
                /*
                    Method dump skipped, instructions count: 654
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1.invoke(java.lang.Object):java.lang.Object");
            }
        });
        final int i3 = 1;
        this.declaredField = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1
            public final /* synthetic */ LazyJavaScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 654
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1.invoke(java.lang.Object):java.lang.Object");
            }
        });
        this.functions = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1
            public final /* synthetic */ LazyJavaScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 654
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1.invoke(java.lang.Object):java.lang.Object");
            }
        });
        final int i4 = 3;
        this.functionNamesLazy$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaScope$allDescriptors$1(this, i4));
        this.propertyNamesLazy$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaScope$allDescriptors$1(this, 4));
        this.classNamesLazy$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaScope$allDescriptors$1(this, i3));
        this.properties = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1
            public final /* synthetic */ LazyJavaScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 654
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1.invoke(java.lang.Object):java.lang.Object");
            }
        });
    }

    public static KotlinType computeMethodReturnType(ReflectJavaMethod reflectJavaMethod, Request.Builder builder) {
        reflectJavaMethod.getClass();
        Class<?> declaringClass = ((Method) reflectJavaMethod.getMember()).getDeclaringClass();
        declaringClass.getClass();
        return ((MultipartBody.Builder) builder.tags).transformJavaType(reflectJavaMethod.getReturnType$1(), OperationKt.toAttributes$default(TypeUsage.COMMON, declaringClass.isAnnotation(), null, 6));
    }

    public static Composer resolveValueParameters(Request.Builder builder, FunctionDescriptorImpl functionDescriptorImpl, List list) {
        Pair pair;
        KotlinType kotlinType;
        Name name;
        Name identifier;
        MultipartBody.Builder builder2 = (MultipartBody.Builder) builder.tags;
        ModuleDescriptorImpl moduleDescriptorImpl = (ModuleDescriptorImpl) ((ActivityPageBinding) builder.url).pageToolbarButtonNotifications;
        IndexingIterable withIndex = CollectionsKt.withIndex(list);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(withIndex, 10));
        Iterator it = withIndex.iterator();
        boolean z = false;
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.iterator.hasNext()) {
                return new Composer(CollectionsKt.toList(arrayList), z, 5);
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            int i = indexedValue.index;
            ReflectJavaValueParameter reflectJavaValueParameter = (ReflectJavaValueParameter) indexedValue.value;
            LazyJavaAnnotations resolveAnnotations = UuidKt.resolveAnnotations(builder, reflectJavaValueParameter);
            JavaTypeAttributes attributes$default = OperationKt.toAttributes$default(TypeUsage.COMMON, false, null, 7);
            boolean z2 = reflectJavaValueParameter.isVararg;
            ReflectJavaType reflectJavaType = reflectJavaValueParameter.type;
            if (z2) {
                ReflectJavaArrayType reflectJavaArrayType = reflectJavaType instanceof ReflectJavaArrayType ? (ReflectJavaArrayType) reflectJavaType : null;
                if (reflectJavaArrayType == null) {
                    VisualTransformation$Companion$$ExternalSyntheticLambda0.m("Vararg parameter should be an array: ", reflectJavaValueParameter);
                    return null;
                }
                UnwrappedType transformArrayType = builder2.transformArrayType(reflectJavaArrayType, attributes$default, true);
                pair = new Pair(transformArrayType, moduleDescriptorImpl.builtIns.getArrayElementType(transformArrayType));
            } else {
                pair = new Pair(builder2.transformJavaType(reflectJavaType, attributes$default), null);
            }
            KotlinType kotlinType2 = (KotlinType) pair.first;
            KotlinType kotlinType3 = (KotlinType) pair.second;
            if (Intrinsics.areEqual(functionDescriptorImpl.getName().asString(), "equals") && list.size() == 1 && moduleDescriptorImpl.builtIns.getNullableAnyType().equals(kotlinType2)) {
                identifier = Name.identifier("other");
            } else {
                String str = reflectJavaValueParameter.reflectName;
                Name guessByFirstCharacter = str != null ? Name.guessByFirstCharacter(str) : null;
                if (guessByFirstCharacter == null) {
                    z = true;
                }
                if (guessByFirstCharacter == null) {
                    identifier = Name.identifier("p" + i);
                } else {
                    kotlinType = kotlinType2;
                    name = guessByFirstCharacter;
                    arrayList.add(new ValueParameterDescriptorImpl(functionDescriptorImpl, null, i, resolveAnnotations, name, kotlinType, false, false, false, kotlinType3, RuntimeErrorReporter.source(reflectJavaValueParameter)));
                }
            }
            kotlinType = kotlinType2;
            name = identifier;
            arrayList.add(new ValueParameterDescriptorImpl(functionDescriptorImpl, null, i, resolveAnnotations, name, kotlinType, false, false, false, kotlinType3, RuntimeErrorReporter.source(reflectJavaValueParameter)));
        }
    }

    public abstract Set computeClassNames(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    public abstract Set computeFunctionNames(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    public abstract DeclaredMemberIndex computeMemberIndex();

    public abstract void computeNonDeclaredFunctions(LinkedHashSet linkedHashSet, Name name);

    public abstract void computeNonDeclaredProperties(ArrayList arrayList, Name name);

    public abstract Set computePropertyNames(DescriptorKindFilter descriptorKindFilter);

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        return (Set) DpKt.getValue(this.classNamesLazy$delegate, $$delegatedProperties[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return (Collection) this.allDescriptors.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return !getFunctionNames().contains(name) ? EmptyList.INSTANCE : (Collection) this.functions.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return !getVariableNames().contains(name) ? EmptyList.INSTANCE : (Collection) this.properties.invoke(name);
    }

    public abstract ReceiverParameterDescriptorImpl getDispatchReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        return (Set) DpKt.getValue(this.functionNamesLazy$delegate, $$delegatedProperties[0]);
    }

    public abstract DeclarationDescriptor getOwnerDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        return (Set) DpKt.getValue(this.propertyNamesLazy$delegate, $$delegatedProperties[1]);
    }

    public boolean isVisibleAsFunction(JavaMethodDescriptor javaMethodDescriptor) {
        return true;
    }

    public abstract MethodSignatureData resolveMethodSignature(ReflectJavaMethod reflectJavaMethod, ArrayList arrayList, KotlinType kotlinType, List list);

    public final JavaMethodDescriptor resolveMethodToFunctionDescriptor(ReflectJavaMethod reflectJavaMethod) {
        reflectJavaMethod.getClass();
        Request.Builder builder = this.c;
        JavaMethodDescriptor createJavaMethod = JavaMethodDescriptor.createJavaMethod(getOwnerDescriptor(), UuidKt.resolveAnnotations(builder, reflectJavaMethod), reflectJavaMethod.getName(), RuntimeErrorReporter.source(reflectJavaMethod), ((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).findRecordComponentByName(reflectJavaMethod.getName()) != null && ((ArrayList) reflectJavaMethod.getValueParameters()).isEmpty());
        builder.getClass();
        Request.Builder builder2 = new Request.Builder((ActivityPageBinding) builder.url, new Dispatcher(builder, createJavaMethod, reflectJavaMethod, 0), (Lazy) builder.headers);
        ArrayList typeParameters = reflectJavaMethod.getTypeParameters();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(typeParameters, 10));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            TypeParameterDescriptor resolveTypeParameter = ((TypeParameterResolver) builder2.method).resolveTypeParameter((ReflectJavaTypeParameter) it.next());
            resolveTypeParameter.getClass();
            arrayList.add(resolveTypeParameter);
        }
        Composer resolveValueParameters = resolveValueParameters(builder2, createJavaMethod, reflectJavaMethod.getValueParameters());
        MethodSignatureData resolveMethodSignature = resolveMethodSignature(reflectJavaMethod, arrayList, computeMethodReturnType(reflectJavaMethod, builder2), (List) resolveValueParameters.writer);
        List list = resolveMethodSignature.errors;
        ReceiverParameterDescriptorImpl dispatchReceiverParameter = getDispatchReceiverParameter();
        ArrayList arrayList2 = resolveMethodSignature.typeParameters;
        List list2 = resolveMethodSignature.valueParameters;
        KotlinType kotlinType = resolveMethodSignature.returnType;
        Modality.Companion companion = Modality.Companion;
        boolean isAbstract = java.lang.reflect.Modifier.isAbstract(((Method) reflectJavaMethod.getMember()).getModifiers());
        boolean isFinal = java.lang.reflect.Modifier.isFinal(((Method) reflectJavaMethod.getMember()).getModifiers());
        companion.getClass();
        createJavaMethod.initialize(null, dispatchReceiverParameter, EmptyList.INSTANCE, arrayList2, list2, kotlinType, isAbstract ? Modality.ABSTRACT : !isFinal ? Modality.OPEN : Modality.FINAL, UnsignedKt.toDescriptorVisibility(reflectJavaMethod.getVisibility()), EmptyMap.INSTANCE);
        createJavaMethod.setParameterNamesStatus(false, resolveValueParameters.writingFirst);
        if (list.isEmpty()) {
            return createJavaMethod;
        }
        Gson$$ExternalSyntheticBUOutline0.m("Should not be called");
        return null;
    }

    public String toString() {
        return "Lazy scope for " + getOwnerDescriptor();
    }

    public void computeImplicitlyDeclaredFunctions(ArrayList arrayList, Name name) {
    }
}
