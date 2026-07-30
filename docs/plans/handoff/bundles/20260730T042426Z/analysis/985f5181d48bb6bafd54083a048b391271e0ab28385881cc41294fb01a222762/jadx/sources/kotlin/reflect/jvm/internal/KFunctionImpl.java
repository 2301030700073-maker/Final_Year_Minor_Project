package kotlin.reflect.jvm.internal;

import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.FunctionWithAllInvokes;
import kotlin.reflect.jvm.internal.JvmFunctionSignature;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.calls.CallerKt;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: KFunctionImpl.kt */
/* loaded from: classes2.dex */
public final class KFunctionImpl extends KCallableImpl implements FunctionBase, KFunction, FunctionWithAllInvokes {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"))};
    private final Lazy caller$delegate;
    private final KDeclarationContainerImpl container;
    private final Lazy defaultCaller$delegate;
    private final ReflectProperties.LazySoftVal descriptor$delegate;
    private final Object rawBoundReceiver;
    private final String signature;

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function3
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3);
    }

    @Override // kotlin.jvm.functions.Function4
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4);
    }

    @Override // kotlin.jvm.functions.Function5
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4, obj5);
    }

    @Override // kotlin.jvm.functions.Function6
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public KDeclarationContainerImpl getContainer() {
        return this.container;
    }

    /* synthetic */ KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, FunctionDescriptor functionDescriptor, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kDeclarationContainerImpl, str, str2, functionDescriptor, (i & 16) != 0 ? CallableReference.NO_RECEIVER : obj);
    }

    private KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, final String str, String str2, FunctionDescriptor functionDescriptor, Object obj) {
        this.container = kDeclarationContainerImpl;
        this.signature = str2;
        this.rawBoundReceiver = obj;
        this.descriptor$delegate = ReflectProperties.lazySoft(functionDescriptor, new Function0(this, str) { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$$Lambda$0
            private final KFunctionImpl arg$0;
            private final String arg$1;

            {
                this.arg$0 = this;
                this.arg$1 = str;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                FunctionDescriptor descriptor_delegate$lambda$0;
                descriptor_delegate$lambda$0 = KFunctionImpl.descriptor_delegate$lambda$0(this.arg$0, this.arg$1);
                return descriptor_delegate$lambda$0;
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.caller$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$$Lambda$1
            private final KFunctionImpl arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Caller caller_delegate$lambda$4;
                caller_delegate$lambda$4 = KFunctionImpl.caller_delegate$lambda$4(this.arg$0);
                return caller_delegate$lambda$4;
            }
        });
        this.defaultCaller$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$$Lambda$2
            private final KFunctionImpl arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Caller defaultCaller_delegate$lambda$10;
                defaultCaller_delegate$lambda$10 = KFunctionImpl.defaultCaller_delegate$lambda$10(this.arg$0);
                return defaultCaller_delegate$lambda$10;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KFunctionImpl(kotlin.reflect.jvm.internal.KDeclarationContainerImpl r10, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r11) {
        /*
            r9 = this;
            java.lang.String r0 = "container"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "descriptor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r11.getName()
            java.lang.String r3 = r0.asString()
            java.lang.String r0 = "asString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            kotlin.reflect.jvm.internal.RuntimeTypeMapper r0 = kotlin.reflect.jvm.internal.RuntimeTypeMapper.INSTANCE
            kotlin.reflect.jvm.internal.JvmFunctionSignature r0 = r0.mapSignature(r11)
            java.lang.String r4 = r0.asString()
            r7 = 16
            r8 = 0
            r6 = 0
            r1 = r9
            r2 = r10
            r5 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KFunctionImpl.<init>(kotlin.reflect.jvm.internal.KDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor):void");
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean isBound() {
        return this.rawBoundReceiver != CallableReference.NO_RECEIVER;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public FunctionDescriptor getDescriptor() {
        Object value = this.descriptor$delegate.getValue(this, $$delegatedProperties[0]);
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (FunctionDescriptor) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FunctionDescriptor descriptor_delegate$lambda$0(KFunctionImpl kFunctionImpl, String str) {
        return kFunctionImpl.getContainer().findFunctionDescriptor(str, kFunctionImpl.signature);
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        String asString = getDescriptor().getName().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString(...)");
        return asString;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller getCaller() {
        return (Caller) this.caller$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Caller caller_delegate$lambda$4(KFunctionImpl kFunctionImpl) {
        Object constructor;
        CallerImpl createInstanceMethodCaller;
        JvmFunctionSignature mapSignature = RuntimeTypeMapper.INSTANCE.mapSignature(kFunctionImpl.getDescriptor());
        if (mapSignature instanceof JvmFunctionSignature.KotlinConstructor) {
            if (kFunctionImpl.isAnnotationConstructor()) {
                Class jClass = kFunctionImpl.getContainer().getJClass();
                List parameters = kFunctionImpl.getParameters();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(parameters, 10));
                Iterator it = parameters.iterator();
                while (it.hasNext()) {
                    String name = ((KParameter) it.next()).getName();
                    Intrinsics.checkNotNull(name);
                    arrayList.add(name);
                }
                return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
            }
            constructor = kFunctionImpl.getContainer().findConstructorBySignature(((JvmFunctionSignature.KotlinConstructor) mapSignature).getConstructorDesc());
        } else if (mapSignature instanceof JvmFunctionSignature.KotlinFunction) {
            FunctionDescriptor descriptor = kFunctionImpl.getDescriptor();
            DeclarationDescriptor containingDeclaration = descriptor.getContainingDeclaration();
            Intrinsics.checkNotNullExpressionValue(containingDeclaration, "getContainingDeclaration(...)");
            if (InlineClassesUtilsKt.isMultiFieldValueClass(containingDeclaration) && (descriptor instanceof ConstructorDescriptor) && ((ConstructorDescriptor) descriptor).isPrimary()) {
                FunctionDescriptor descriptor2 = kFunctionImpl.getDescriptor();
                KDeclarationContainerImpl container = kFunctionImpl.getContainer();
                String methodDesc = ((JvmFunctionSignature.KotlinFunction) mapSignature).getMethodDesc();
                List valueParameters = kFunctionImpl.getDescriptor().getValueParameters();
                Intrinsics.checkNotNullExpressionValue(valueParameters, "getValueParameters(...)");
                return new ValueClassAwareCaller.MultiFieldValueClassPrimaryConstructorCaller(descriptor2, container, methodDesc, valueParameters);
            }
            JvmFunctionSignature.KotlinFunction kotlinFunction = (JvmFunctionSignature.KotlinFunction) mapSignature;
            constructor = kFunctionImpl.getContainer().findMethodBySignature(kotlinFunction.getMethodName(), kotlinFunction.getMethodDesc());
        } else if (mapSignature instanceof JvmFunctionSignature.JavaMethod) {
            constructor = ((JvmFunctionSignature.JavaMethod) mapSignature).getMethod();
            Intrinsics.checkNotNull(constructor, "null cannot be cast to non-null type java.lang.reflect.Member");
        } else {
            if (!(mapSignature instanceof JvmFunctionSignature.JavaConstructor)) {
                if (!(mapSignature instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor)) {
                    throw new NoWhenBranchMatchedException();
                }
                List methods = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) mapSignature).getMethods();
                Class jClass2 = kFunctionImpl.getContainer().getJClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(methods, 10));
                Iterator it2 = methods.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((Method) it2.next()).getName());
                }
                return new AnnotationConstructorCaller(jClass2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, methods);
            }
            constructor = ((JvmFunctionSignature.JavaConstructor) mapSignature).getConstructor();
            Intrinsics.checkNotNull(constructor, "null cannot be cast to non-null type java.lang.reflect.Member");
        }
        if (constructor instanceof Constructor) {
            createInstanceMethodCaller = kFunctionImpl.createConstructorCaller((Constructor) constructor, kFunctionImpl.getDescriptor(), false);
        } else {
            if (!(constructor instanceof Method)) {
                throw new KotlinReflectionInternalError("Could not compute caller for function: " + kFunctionImpl.getDescriptor() + " (member = " + constructor + CoreConstants.RIGHT_PARENTHESIS_CHAR);
            }
            Method method = (Method) constructor;
            createInstanceMethodCaller = !Modifier.isStatic(method.getModifiers()) ? kFunctionImpl.createInstanceMethodCaller(method) : kFunctionImpl.getDescriptor().getAnnotations().mo2756findAnnotation(UtilKt.getJVM_STATIC()) != null ? kFunctionImpl.createJvmStaticInObjectCaller(method) : kFunctionImpl.createStaticMethodCaller(method);
        }
        return ValueClassAwareCallerKt.createValueClassAwareCallerIfNeeded$default(createInstanceMethodCaller, kFunctionImpl.getDescriptor(), false, 2, null);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller getDefaultCaller() {
        return (Caller) this.defaultCaller$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Caller defaultCaller_delegate$lambda$10(KFunctionImpl kFunctionImpl) {
        GenericDeclaration genericDeclaration;
        CallerImpl callerImpl;
        RuntimeTypeMapper runtimeTypeMapper = RuntimeTypeMapper.INSTANCE;
        JvmFunctionSignature mapSignature = runtimeTypeMapper.mapSignature(kFunctionImpl.getDescriptor());
        if (mapSignature instanceof JvmFunctionSignature.KotlinFunction) {
            FunctionDescriptor descriptor = kFunctionImpl.getDescriptor();
            DeclarationDescriptor containingDeclaration = descriptor.getContainingDeclaration();
            Intrinsics.checkNotNullExpressionValue(containingDeclaration, "getContainingDeclaration(...)");
            if (InlineClassesUtilsKt.isMultiFieldValueClass(containingDeclaration) && (descriptor instanceof ConstructorDescriptor) && ((ConstructorDescriptor) descriptor).isPrimary()) {
                throw new KotlinReflectionInternalError(kFunctionImpl.getDescriptor().getContainingDeclaration() + " cannot have default arguments");
            }
            FunctionDescriptor functionWithDefaultParametersForValueClassOverride = kFunctionImpl.getFunctionWithDefaultParametersForValueClassOverride(kFunctionImpl.getDescriptor());
            if (functionWithDefaultParametersForValueClassOverride != null) {
                JvmFunctionSignature mapSignature2 = runtimeTypeMapper.mapSignature(functionWithDefaultParametersForValueClassOverride);
                Intrinsics.checkNotNull(mapSignature2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.JvmFunctionSignature.KotlinFunction");
                JvmFunctionSignature.KotlinFunction kotlinFunction = (JvmFunctionSignature.KotlinFunction) mapSignature2;
                genericDeclaration = kFunctionImpl.getContainer().findDefaultMethod(kotlinFunction.getMethodName(), kotlinFunction.getMethodDesc(), true);
            } else {
                KDeclarationContainerImpl container = kFunctionImpl.getContainer();
                JvmFunctionSignature.KotlinFunction kotlinFunction2 = (JvmFunctionSignature.KotlinFunction) mapSignature;
                String methodName = kotlinFunction2.getMethodName();
                String methodDesc = kotlinFunction2.getMethodDesc();
                Intrinsics.checkNotNull(kFunctionImpl.getCaller().mo2753getMember());
                genericDeclaration = container.findDefaultMethod(methodName, methodDesc, !Modifier.isStatic(r5.getModifiers()));
            }
        } else if (mapSignature instanceof JvmFunctionSignature.KotlinConstructor) {
            if (kFunctionImpl.isAnnotationConstructor()) {
                Class jClass = kFunctionImpl.getContainer().getJClass();
                List parameters = kFunctionImpl.getParameters();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(parameters, 10));
                Iterator it = parameters.iterator();
                while (it.hasNext()) {
                    String name = ((KParameter) it.next()).getName();
                    Intrinsics.checkNotNull(name);
                    arrayList.add(name);
                }
                return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
            }
            genericDeclaration = kFunctionImpl.getContainer().findDefaultConstructor(((JvmFunctionSignature.KotlinConstructor) mapSignature).getConstructorDesc());
        } else {
            if (mapSignature instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                List methods = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) mapSignature).getMethods();
                Class jClass2 = kFunctionImpl.getContainer().getJClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(methods, 10));
                Iterator it2 = methods.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((Method) it2.next()).getName());
                }
                return new AnnotationConstructorCaller(jClass2, arrayList2, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, methods);
            }
            genericDeclaration = null;
        }
        if (genericDeclaration instanceof Constructor) {
            callerImpl = kFunctionImpl.createConstructorCaller((Constructor) genericDeclaration, kFunctionImpl.getDescriptor(), true);
        } else if (genericDeclaration instanceof Method) {
            if (kFunctionImpl.getDescriptor().getAnnotations().mo2756findAnnotation(UtilKt.getJVM_STATIC()) != null) {
                DeclarationDescriptor containingDeclaration2 = kFunctionImpl.getDescriptor().getContainingDeclaration();
                Intrinsics.checkNotNull(containingDeclaration2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                if (!((ClassDescriptor) containingDeclaration2).isCompanionObject()) {
                    callerImpl = kFunctionImpl.createJvmStaticInObjectCaller((Method) genericDeclaration);
                }
            }
            callerImpl = kFunctionImpl.createStaticMethodCaller((Method) genericDeclaration);
        } else {
            callerImpl = null;
        }
        if (callerImpl != null) {
            return ValueClassAwareCallerKt.createValueClassAwareCallerIfNeeded(callerImpl, kFunctionImpl.getDescriptor(), true);
        }
        return null;
    }

    private final FunctionDescriptor getFunctionWithDefaultParametersForValueClassOverride(FunctionDescriptor functionDescriptor) {
        Object obj;
        List valueParameters = functionDescriptor.getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters, "getValueParameters(...)");
        if (!(valueParameters instanceof Collection) || !valueParameters.isEmpty()) {
            Iterator it = valueParameters.iterator();
            while (it.hasNext()) {
                if (((ValueParameterDescriptor) it.next()).declaresDefaultValue()) {
                    return null;
                }
            }
        }
        DeclarationDescriptor containingDeclaration = functionDescriptor.getContainingDeclaration();
        Intrinsics.checkNotNullExpressionValue(containingDeclaration, "getContainingDeclaration(...)");
        if (!InlineClassesUtilsKt.isValueClass(containingDeclaration)) {
            return null;
        }
        Member mo2753getMember = getCaller().mo2753getMember();
        Intrinsics.checkNotNull(mo2753getMember);
        if (!Modifier.isStatic(mo2753getMember.getModifiers())) {
            return null;
        }
        Iterator it2 = DescriptorUtilsKt.overriddenTreeAsSequence(functionDescriptor, false).iterator();
        loop0: while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            List valueParameters2 = ((CallableMemberDescriptor) obj).getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters2, "getValueParameters(...)");
            if (!(valueParameters2 instanceof Collection) || !valueParameters2.isEmpty()) {
                Iterator it3 = valueParameters2.iterator();
                while (it3.hasNext()) {
                    if (((ValueParameterDescriptor) it3.next()).declaresDefaultValue()) {
                        break loop0;
                    }
                }
            }
        }
        if (obj instanceof FunctionDescriptor) {
            return (FunctionDescriptor) obj;
        }
        return null;
    }

    private final Object getBoundReceiver() {
        return ValueClassAwareCallerKt.coerceToExpectedReceiverType(this.rawBoundReceiver, getDescriptor());
    }

    private final boolean useBoxedBoundReceiver(Method method) {
        KotlinType type;
        ReceiverParameterDescriptor dispatchReceiverParameter = getDescriptor().getDispatchReceiverParameter();
        if (dispatchReceiverParameter != null && (type = dispatchReceiverParameter.getType()) != null && InlineClassesUtilsKt.isInlineClassType(type)) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
            Class cls = (Class) ArraysKt.firstOrNull(parameterTypes);
            if (cls != null && cls.isInterface()) {
                return true;
            }
        }
        return false;
    }

    private final CallerImpl.Method createStaticMethodCaller(Method method) {
        if (isBound()) {
            return new CallerImpl.Method.BoundStatic(method, useBoxedBoundReceiver(method) ? this.rawBoundReceiver : getBoundReceiver());
        }
        return new CallerImpl.Method.Static(method);
    }

    private final CallerImpl.Method createJvmStaticInObjectCaller(Method method) {
        return isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method) : new CallerImpl.Method.JvmStaticInObject(method);
    }

    private final CallerImpl.Method createInstanceMethodCaller(Method method) {
        return isBound() ? new CallerImpl.Method.BoundInstance(method, getBoundReceiver()) : new CallerImpl.Method.Instance(method);
    }

    private final CallerImpl createConstructorCaller(Constructor constructor, FunctionDescriptor functionDescriptor, boolean z) {
        if (!z && InlineClassManglingRulesKt.shouldHideConstructorDueToValueClassTypeValueParameters(functionDescriptor)) {
            if (isBound()) {
                return new CallerImpl.AccessorForHiddenBoundConstructor(constructor, getBoundReceiver());
            }
            return new CallerImpl.AccessorForHiddenConstructor(constructor);
        }
        if (isBound()) {
            return new CallerImpl.BoundConstructor(constructor, getBoundReceiver());
        }
        return new CallerImpl.Constructor(constructor);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return CallerKt.getArity(getCaller());
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInline() {
        return getDescriptor().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isExternal() {
        return getDescriptor().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isOperator() {
        return getDescriptor().isOperator();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInfix() {
        return getDescriptor().isInfix();
    }

    @Override // kotlin.reflect.KCallable, kotlin.reflect.KFunction
    public boolean isSuspend() {
        return getDescriptor().isSuspend();
    }

    public boolean equals(Object obj) {
        KFunctionImpl asKFunctionImpl = UtilKt.asKFunctionImpl(obj);
        return asKFunctionImpl != null && Intrinsics.areEqual(getContainer(), asKFunctionImpl.getContainer()) && Intrinsics.areEqual(getName(), asKFunctionImpl.getName()) && Intrinsics.areEqual(this.signature, asKFunctionImpl.signature) && Intrinsics.areEqual(this.rawBoundReceiver, asKFunctionImpl.rawBoundReceiver);
    }

    public int hashCode() {
        return (((getContainer().hashCode() * 31) + getName().hashCode()) * 31) + this.signature.hashCode();
    }

    public String toString() {
        return ReflectionObjectRenderer.INSTANCE.renderFunction(getDescriptor());
    }
}
