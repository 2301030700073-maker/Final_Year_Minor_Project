package kotlin.reflect.jvm.internal;

import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.work.OperationKt;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Method;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutinesInternalError;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KFunctionImpl extends KCallableImpl implements FunctionBase, KFunction, Function0, Function1, Function10, Function11, Function12, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function2, Function20, Function21, Function22, Function3, Function4, Function5, Function6, Function7, Function8, Function9 {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final Lazy caller$delegate;
    public final KDeclarationContainerImpl container;
    public final Lazy defaultCaller$delegate;
    public final ReflectProperties$LazySoftVal descriptor$delegate;
    public final Object rawBoundReceiver;
    public final String signature;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"))};
    }

    public KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, FunctionDescriptor functionDescriptor, Object obj) {
        this.container = kDeclarationContainerImpl;
        this.signature = str2;
        this.rawBoundReceiver = obj;
        this.descriptor$delegate = KPropertyImplKt.lazySoft(functionDescriptor, new KTypeImpl$arguments$2(12, this, str));
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this.caller$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$caller$2
            public final /* synthetic */ KFunctionImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CallerImpl boundStatic;
                CallerImpl boundJvmStaticInObject;
                GenericDeclaration declaredConstructor;
                CallerImpl callerImpl;
                CallerImpl boundStatic2;
                int i2 = i;
                KFunctionImpl kFunctionImpl = this.this$0;
                Object obj2 = null;
                switch (i2) {
                    case 0:
                        ClassId classId = RuntimeTypeMapper.JAVA_LANG_VOID;
                        Object obj3 = kFunctionImpl.rawBoundReceiver;
                        FunctionDescriptor descriptor = kFunctionImpl.getDescriptor();
                        KDeclarationContainerImpl kDeclarationContainerImpl2 = kFunctionImpl.container;
                        KPropertyImplKt mapSignature = RuntimeTypeMapper.mapSignature(descriptor);
                        if (mapSignature instanceof JvmFunctionSignature$KotlinConstructor) {
                            if (kFunctionImpl.isAnnotationConstructor()) {
                                Class jClass = kDeclarationContainerImpl2.getJClass();
                                List parameters = kFunctionImpl.getParameters();
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
                                Iterator it = parameters.iterator();
                                while (it.hasNext()) {
                                    String name = ((KParameterImpl) it.next()).getName();
                                    name.getClass();
                                    arrayList.add(name);
                                }
                                return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN);
                            }
                            String str3 = ((JvmFunctionSignature$KotlinConstructor) mapSignature).signature.desc;
                            kDeclarationContainerImpl2.getClass();
                            str3.getClass();
                            Class jClass2 = kDeclarationContainerImpl2.getJClass();
                            try {
                                Class[] clsArr = (Class[]) kDeclarationContainerImpl2.loadParameterTypes(str3).toArray(new Class[0]);
                                obj2 = jClass2.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                            } catch (NoSuchMethodException unused) {
                            }
                        } else if (mapSignature instanceof JvmFunctionSignature$KotlinFunction) {
                            JvmMemberSignature$Method jvmMemberSignature$Method = ((JvmFunctionSignature$KotlinFunction) mapSignature).signature;
                            obj2 = kDeclarationContainerImpl2.findMethodBySignature(jvmMemberSignature$Method.name, jvmMemberSignature$Method.desc);
                        } else if (mapSignature instanceof JvmFunctionSignature$JavaMethod) {
                            obj2 = ((JvmFunctionSignature$JavaMethod) mapSignature).method;
                        } else {
                            if (!(mapSignature instanceof JvmFunctionSignature$JavaConstructor)) {
                                if (!(mapSignature instanceof JvmFunctionSignature$FakeJavaAnnotationConstructor)) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                List list = ((JvmFunctionSignature$FakeJavaAnnotationConstructor) mapSignature).methods;
                                Class jClass3 = kDeclarationContainerImpl2.getJClass();
                                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                                Iterator it2 = list.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(((Method) it2.next()).getName());
                                }
                                return new AnnotationConstructorCaller(jClass3, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, list);
                            }
                            obj2 = ((JvmFunctionSignature$JavaConstructor) mapSignature).constructor;
                        }
                        if (obj2 instanceof Constructor) {
                            boundJvmStaticInObject = kFunctionImpl.createConstructorCaller((Constructor) obj2, kFunctionImpl.getDescriptor(), false);
                        } else {
                            if (!(obj2 instanceof Method)) {
                                throw new CoroutinesInternalError("Could not compute caller for function: " + kFunctionImpl.getDescriptor() + " (member = " + obj2 + ')');
                            }
                            Method method = (Method) obj2;
                            if (!Modifier.isStatic(method.getModifiers())) {
                                boundStatic = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundInstance(method, OperationKt.coerceToExpectedReceiverType(obj3, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 1, method, false);
                            } else if (((BasePreferenceLoader) kFunctionImpl.getDescriptor()).getAnnotations().findAnnotation(UtilKt.JVM_STATIC) != null) {
                                boundJvmStaticInObject = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method, false, 4) : new CallerImpl.Method.Static(4, 2, method, true);
                            } else {
                                boundStatic = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundStatic(method, OperationKt.coerceToExpectedReceiverType(obj3, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 0, method, false);
                            }
                            boundJvmStaticInObject = boundStatic;
                        }
                        return OperationKt.createInlineClassAwareCallerIfNeeded(boundJvmStaticInObject, kFunctionImpl.getDescriptor(), false);
                    default:
                        ClassId classId2 = RuntimeTypeMapper.JAVA_LANG_VOID;
                        FunctionDescriptor descriptor2 = kFunctionImpl.getDescriptor();
                        KDeclarationContainerImpl kDeclarationContainerImpl3 = kFunctionImpl.container;
                        KPropertyImplKt mapSignature2 = RuntimeTypeMapper.mapSignature(descriptor2);
                        if (mapSignature2 instanceof JvmFunctionSignature$KotlinFunction) {
                            JvmMemberSignature$Method jvmMemberSignature$Method2 = ((JvmFunctionSignature$KotlinFunction) mapSignature2).signature;
                            String str4 = jvmMemberSignature$Method2.name;
                            String str5 = jvmMemberSignature$Method2.desc;
                            Member member = kFunctionImpl.getCaller().getMember();
                            member.getClass();
                            boolean isStatic = Modifier.isStatic(member.getModifiers());
                            boolean z = !isStatic;
                            kDeclarationContainerImpl3.getClass();
                            str4.getClass();
                            str5.getClass();
                            if (!str4.equals("<init>")) {
                                ArrayList arrayList3 = new ArrayList();
                                if (!isStatic) {
                                    arrayList3.add(kDeclarationContainerImpl3.getJClass());
                                }
                                kDeclarationContainerImpl3.addParametersAndMasks(arrayList3, str5, false);
                                declaredConstructor = KDeclarationContainerImpl.lookupMethod(kDeclarationContainerImpl3.getMethodOwner(), str4.concat("$default"), (Class[]) arrayList3.toArray(new Class[0]), kDeclarationContainerImpl3.parseType(StringsKt.indexOf$default(str5, ')', 0, 6) + 1, str5.length(), str5), z);
                            }
                            declaredConstructor = null;
                        } else {
                            if (mapSignature2 instanceof JvmFunctionSignature$KotlinConstructor) {
                                if (kFunctionImpl.isAnnotationConstructor()) {
                                    Class jClass4 = kDeclarationContainerImpl3.getJClass();
                                    List parameters2 = kFunctionImpl.getParameters();
                                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters2, 10));
                                    Iterator it3 = parameters2.iterator();
                                    while (it3.hasNext()) {
                                        String name2 = ((KParameterImpl) it3.next()).getName();
                                        name2.getClass();
                                        arrayList4.add(name2);
                                    }
                                    return new AnnotationConstructorCaller(jClass4, arrayList4, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN);
                                }
                                String str6 = ((JvmFunctionSignature$KotlinConstructor) mapSignature2).signature.desc;
                                kDeclarationContainerImpl3.getClass();
                                str6.getClass();
                                Class jClass5 = kDeclarationContainerImpl3.getJClass();
                                ArrayList arrayList5 = new ArrayList();
                                kDeclarationContainerImpl3.addParametersAndMasks(arrayList5, str6, true);
                                try {
                                    Class[] clsArr2 = (Class[]) arrayList5.toArray(new Class[0]);
                                    declaredConstructor = jClass5.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr2, clsArr2.length));
                                } catch (NoSuchMethodException unused2) {
                                }
                            } else if (mapSignature2 instanceof JvmFunctionSignature$FakeJavaAnnotationConstructor) {
                                List list2 = ((JvmFunctionSignature$FakeJavaAnnotationConstructor) mapSignature2).methods;
                                Class jClass6 = kDeclarationContainerImpl3.getJClass();
                                ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                                Iterator it4 = list2.iterator();
                                while (it4.hasNext()) {
                                    arrayList6.add(((Method) it4.next()).getName());
                                }
                                return new AnnotationConstructorCaller(jClass6, arrayList6, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, list2);
                            }
                            declaredConstructor = null;
                        }
                        if (declaredConstructor instanceof Constructor) {
                            callerImpl = kFunctionImpl.createConstructorCaller((Constructor) declaredConstructor, kFunctionImpl.getDescriptor(), true);
                        } else if (declaredConstructor instanceof Method) {
                            if (((BasePreferenceLoader) kFunctionImpl.getDescriptor()).getAnnotations().findAnnotation(UtilKt.JVM_STATIC) != null) {
                                DeclarationDescriptor containingDeclaration = kFunctionImpl.getDescriptor().getContainingDeclaration();
                                containingDeclaration.getClass();
                                if (!((ModuleAwareClassDescriptor) containingDeclaration).isCompanionObject()) {
                                    Method method2 = (Method) declaredConstructor;
                                    boundStatic2 = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method2, false, 4) : new CallerImpl.Method.Static(4, 2, method2, true);
                                    callerImpl = boundStatic2;
                                }
                            }
                            Method method3 = (Method) declaredConstructor;
                            boundStatic2 = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundStatic(method3, OperationKt.coerceToExpectedReceiverType(kFunctionImpl.rawBoundReceiver, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 0, method3, false);
                            callerImpl = boundStatic2;
                        } else {
                            callerImpl = null;
                        }
                        if (callerImpl != null) {
                            return OperationKt.createInlineClassAwareCallerIfNeeded(callerImpl, kFunctionImpl.getDescriptor(), true);
                        }
                        return null;
                }
            }
        });
        final int i2 = 1;
        this.defaultCaller$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$caller$2
            public final /* synthetic */ KFunctionImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CallerImpl boundStatic;
                CallerImpl boundJvmStaticInObject;
                GenericDeclaration declaredConstructor;
                CallerImpl callerImpl;
                CallerImpl boundStatic2;
                int i22 = i2;
                KFunctionImpl kFunctionImpl = this.this$0;
                Object obj2 = null;
                switch (i22) {
                    case 0:
                        ClassId classId = RuntimeTypeMapper.JAVA_LANG_VOID;
                        Object obj3 = kFunctionImpl.rawBoundReceiver;
                        FunctionDescriptor descriptor = kFunctionImpl.getDescriptor();
                        KDeclarationContainerImpl kDeclarationContainerImpl2 = kFunctionImpl.container;
                        KPropertyImplKt mapSignature = RuntimeTypeMapper.mapSignature(descriptor);
                        if (mapSignature instanceof JvmFunctionSignature$KotlinConstructor) {
                            if (kFunctionImpl.isAnnotationConstructor()) {
                                Class jClass = kDeclarationContainerImpl2.getJClass();
                                List parameters = kFunctionImpl.getParameters();
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
                                Iterator it = parameters.iterator();
                                while (it.hasNext()) {
                                    String name = ((KParameterImpl) it.next()).getName();
                                    name.getClass();
                                    arrayList.add(name);
                                }
                                return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN);
                            }
                            String str3 = ((JvmFunctionSignature$KotlinConstructor) mapSignature).signature.desc;
                            kDeclarationContainerImpl2.getClass();
                            str3.getClass();
                            Class jClass2 = kDeclarationContainerImpl2.getJClass();
                            try {
                                Class[] clsArr = (Class[]) kDeclarationContainerImpl2.loadParameterTypes(str3).toArray(new Class[0]);
                                obj2 = jClass2.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                            } catch (NoSuchMethodException unused) {
                            }
                        } else if (mapSignature instanceof JvmFunctionSignature$KotlinFunction) {
                            JvmMemberSignature$Method jvmMemberSignature$Method = ((JvmFunctionSignature$KotlinFunction) mapSignature).signature;
                            obj2 = kDeclarationContainerImpl2.findMethodBySignature(jvmMemberSignature$Method.name, jvmMemberSignature$Method.desc);
                        } else if (mapSignature instanceof JvmFunctionSignature$JavaMethod) {
                            obj2 = ((JvmFunctionSignature$JavaMethod) mapSignature).method;
                        } else {
                            if (!(mapSignature instanceof JvmFunctionSignature$JavaConstructor)) {
                                if (!(mapSignature instanceof JvmFunctionSignature$FakeJavaAnnotationConstructor)) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                List list = ((JvmFunctionSignature$FakeJavaAnnotationConstructor) mapSignature).methods;
                                Class jClass3 = kDeclarationContainerImpl2.getJClass();
                                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                                Iterator it2 = list.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(((Method) it2.next()).getName());
                                }
                                return new AnnotationConstructorCaller(jClass3, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, list);
                            }
                            obj2 = ((JvmFunctionSignature$JavaConstructor) mapSignature).constructor;
                        }
                        if (obj2 instanceof Constructor) {
                            boundJvmStaticInObject = kFunctionImpl.createConstructorCaller((Constructor) obj2, kFunctionImpl.getDescriptor(), false);
                        } else {
                            if (!(obj2 instanceof Method)) {
                                throw new CoroutinesInternalError("Could not compute caller for function: " + kFunctionImpl.getDescriptor() + " (member = " + obj2 + ')');
                            }
                            Method method = (Method) obj2;
                            if (!Modifier.isStatic(method.getModifiers())) {
                                boundStatic = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundInstance(method, OperationKt.coerceToExpectedReceiverType(obj3, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 1, method, false);
                            } else if (((BasePreferenceLoader) kFunctionImpl.getDescriptor()).getAnnotations().findAnnotation(UtilKt.JVM_STATIC) != null) {
                                boundJvmStaticInObject = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method, false, 4) : new CallerImpl.Method.Static(4, 2, method, true);
                            } else {
                                boundStatic = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundStatic(method, OperationKt.coerceToExpectedReceiverType(obj3, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 0, method, false);
                            }
                            boundJvmStaticInObject = boundStatic;
                        }
                        return OperationKt.createInlineClassAwareCallerIfNeeded(boundJvmStaticInObject, kFunctionImpl.getDescriptor(), false);
                    default:
                        ClassId classId2 = RuntimeTypeMapper.JAVA_LANG_VOID;
                        FunctionDescriptor descriptor2 = kFunctionImpl.getDescriptor();
                        KDeclarationContainerImpl kDeclarationContainerImpl3 = kFunctionImpl.container;
                        KPropertyImplKt mapSignature2 = RuntimeTypeMapper.mapSignature(descriptor2);
                        if (mapSignature2 instanceof JvmFunctionSignature$KotlinFunction) {
                            JvmMemberSignature$Method jvmMemberSignature$Method2 = ((JvmFunctionSignature$KotlinFunction) mapSignature2).signature;
                            String str4 = jvmMemberSignature$Method2.name;
                            String str5 = jvmMemberSignature$Method2.desc;
                            Member member = kFunctionImpl.getCaller().getMember();
                            member.getClass();
                            boolean isStatic = Modifier.isStatic(member.getModifiers());
                            boolean z = !isStatic;
                            kDeclarationContainerImpl3.getClass();
                            str4.getClass();
                            str5.getClass();
                            if (!str4.equals("<init>")) {
                                ArrayList arrayList3 = new ArrayList();
                                if (!isStatic) {
                                    arrayList3.add(kDeclarationContainerImpl3.getJClass());
                                }
                                kDeclarationContainerImpl3.addParametersAndMasks(arrayList3, str5, false);
                                declaredConstructor = KDeclarationContainerImpl.lookupMethod(kDeclarationContainerImpl3.getMethodOwner(), str4.concat("$default"), (Class[]) arrayList3.toArray(new Class[0]), kDeclarationContainerImpl3.parseType(StringsKt.indexOf$default(str5, ')', 0, 6) + 1, str5.length(), str5), z);
                            }
                            declaredConstructor = null;
                        } else {
                            if (mapSignature2 instanceof JvmFunctionSignature$KotlinConstructor) {
                                if (kFunctionImpl.isAnnotationConstructor()) {
                                    Class jClass4 = kDeclarationContainerImpl3.getJClass();
                                    List parameters2 = kFunctionImpl.getParameters();
                                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters2, 10));
                                    Iterator it3 = parameters2.iterator();
                                    while (it3.hasNext()) {
                                        String name2 = ((KParameterImpl) it3.next()).getName();
                                        name2.getClass();
                                        arrayList4.add(name2);
                                    }
                                    return new AnnotationConstructorCaller(jClass4, arrayList4, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN);
                                }
                                String str6 = ((JvmFunctionSignature$KotlinConstructor) mapSignature2).signature.desc;
                                kDeclarationContainerImpl3.getClass();
                                str6.getClass();
                                Class jClass5 = kDeclarationContainerImpl3.getJClass();
                                ArrayList arrayList5 = new ArrayList();
                                kDeclarationContainerImpl3.addParametersAndMasks(arrayList5, str6, true);
                                try {
                                    Class[] clsArr2 = (Class[]) arrayList5.toArray(new Class[0]);
                                    declaredConstructor = jClass5.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr2, clsArr2.length));
                                } catch (NoSuchMethodException unused2) {
                                }
                            } else if (mapSignature2 instanceof JvmFunctionSignature$FakeJavaAnnotationConstructor) {
                                List list2 = ((JvmFunctionSignature$FakeJavaAnnotationConstructor) mapSignature2).methods;
                                Class jClass6 = kDeclarationContainerImpl3.getJClass();
                                ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                                Iterator it4 = list2.iterator();
                                while (it4.hasNext()) {
                                    arrayList6.add(((Method) it4.next()).getName());
                                }
                                return new AnnotationConstructorCaller(jClass6, arrayList6, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, list2);
                            }
                            declaredConstructor = null;
                        }
                        if (declaredConstructor instanceof Constructor) {
                            callerImpl = kFunctionImpl.createConstructorCaller((Constructor) declaredConstructor, kFunctionImpl.getDescriptor(), true);
                        } else if (declaredConstructor instanceof Method) {
                            if (((BasePreferenceLoader) kFunctionImpl.getDescriptor()).getAnnotations().findAnnotation(UtilKt.JVM_STATIC) != null) {
                                DeclarationDescriptor containingDeclaration = kFunctionImpl.getDescriptor().getContainingDeclaration();
                                containingDeclaration.getClass();
                                if (!((ModuleAwareClassDescriptor) containingDeclaration).isCompanionObject()) {
                                    Method method2 = (Method) declaredConstructor;
                                    boundStatic2 = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method2, false, 4) : new CallerImpl.Method.Static(4, 2, method2, true);
                                    callerImpl = boundStatic2;
                                }
                            }
                            Method method3 = (Method) declaredConstructor;
                            boundStatic2 = kFunctionImpl.isBound() ? new CallerImpl.Method.BoundStatic(method3, OperationKt.coerceToExpectedReceiverType(kFunctionImpl.rawBoundReceiver, kFunctionImpl.getDescriptor())) : new CallerImpl.Method.Static(6, 0, method3, false);
                            callerImpl = boundStatic2;
                        } else {
                            callerImpl = null;
                        }
                        if (callerImpl != null) {
                            return OperationKt.createInlineClassAwareCallerIfNeeded(callerImpl, kFunctionImpl.getDescriptor(), true);
                        }
                        return null;
                }
            }
        });
    }

    public final CallerImpl createConstructorCaller(Constructor constructor, FunctionDescriptor functionDescriptor, boolean z) {
        Object obj = this.rawBoundReceiver;
        if (!z) {
            ClassConstructorDescriptorImpl classConstructorDescriptorImpl = functionDescriptor instanceof ClassConstructorDescriptorImpl ? (ClassConstructorDescriptorImpl) functionDescriptor : null;
            if (classConstructorDescriptorImpl != null && !DescriptorVisibilities.isPrivate(classConstructorDescriptorImpl.getVisibility())) {
                ModuleAwareClassDescriptor constructedClass = classConstructorDescriptorImpl.getConstructedClass();
                constructedClass.getClass();
                if (!InlineClassesUtilsKt.isInlineClass(constructedClass) && !DescriptorUtils.isSealedClass(classConstructorDescriptorImpl.getConstructedClass())) {
                    List valueParameters = classConstructorDescriptorImpl.getValueParameters();
                    valueParameters.getClass();
                    if (!valueParameters.isEmpty()) {
                        Iterator it = valueParameters.iterator();
                        while (it.hasNext()) {
                            KotlinType type = ((ValueParameterDescriptorImpl) it.next()).getType();
                            type.getClass();
                            if (ResultKt.requiresFunctionNameManglingInParameterTypes(type)) {
                                if (isBound()) {
                                    return new CallerImpl.BoundConstructor(constructor, OperationKt.coerceToExpectedReceiverType(obj, getDescriptor()), 1);
                                }
                                Class declaringClass = constructor.getDeclaringClass();
                                declaringClass.getClass();
                                Type[] genericParameterTypes = constructor.getGenericParameterTypes();
                                genericParameterTypes.getClass();
                                return new CallerImpl.Constructor(constructor, declaringClass, null, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : ArraysKt___ArraysKt.copyOfRange(genericParameterTypes, 0, genericParameterTypes.length - 1)), 1);
                            }
                        }
                    }
                }
            }
        }
        if (isBound()) {
            return new CallerImpl.BoundConstructor(constructor, OperationKt.coerceToExpectedReceiverType(obj, getDescriptor()), 0);
        }
        Class declaringClass2 = constructor.getDeclaringClass();
        declaringClass2.getClass();
        Class declaringClass3 = constructor.getDeclaringClass();
        Class<?> declaringClass4 = declaringClass3.getDeclaringClass();
        Class<?> cls = (declaringClass4 == null || Modifier.isStatic(declaringClass3.getModifiers())) ? null : declaringClass4;
        Type[] genericParameterTypes2 = constructor.getGenericParameterTypes();
        genericParameterTypes2.getClass();
        return new CallerImpl.Constructor(constructor, declaringClass2, cls, genericParameterTypes2, 0);
    }

    public final boolean equals(Object obj) {
        KFunctionImpl asKFunctionImpl = UtilKt.asKFunctionImpl(obj);
        return asKFunctionImpl != null && Intrinsics.areEqual(this.container, asKFunctionImpl.container) && getName().equals(asKFunctionImpl.getName()) && Intrinsics.areEqual(this.signature, asKFunctionImpl.signature) && Intrinsics.areEqual(this.rawBoundReceiver, asKFunctionImpl.rawBoundReceiver);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int getArity() {
        Caller caller = getCaller();
        caller.getClass();
        return caller.getParameterTypes().size();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final Caller getCaller() {
        return (Caller) this.caller$delegate.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final KDeclarationContainerImpl getContainer() {
        return this.container;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final Caller getDefaultCaller() {
        return (Caller) this.defaultCaller$delegate.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final FunctionDescriptor getDescriptor() {
        KProperty kProperty = $$delegatedProperties[0];
        Object invoke = this.descriptor$delegate.invoke();
        invoke.getClass();
        return (FunctionDescriptor) invoke;
    }

    @Override // kotlin.reflect.KCallable
    public final String getName() {
        String asString = ((DeclarationDescriptorImpl) getDescriptor()).getName().asString();
        asString.getClass();
        return asString;
    }

    public final int hashCode() {
        return this.signature.hashCode() + ((getName().hashCode() + (this.container.hashCode() * 31)) * 31);
    }

    @Override // kotlin.jvm.functions.Function8
    public final Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, Integer num) {
        return call(Modifier.Companion.$$INSTANCE, obj, bool, obj2, obj3, obj4, gapComposer, num);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final boolean isBound() {
        return !Intrinsics.areEqual(this.rawBoundReceiver, CallableReference.NoReceiver.INSTANCE);
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return getDescriptor().isSuspend();
    }

    public final String toString() {
        DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
        return ReflectionObjectRenderer.renderFunction(getDescriptor());
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return call(obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return call(obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return call(obj, obj2, obj3);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return call(obj, obj2, obj3, obj4);
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return call(obj, obj2, obj3, obj4, obj5);
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return call(obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return call(new Object[0]);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KFunctionImpl(kotlin.reflect.jvm.internal.KDeclarationContainerImpl r8, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r9) {
        /*
            r7 = this;
            r9.getClass()
            r0 = r9
            kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl) r0
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r0.getName()
            java.lang.String r3 = r0.asString()
            r3.getClass()
            kotlin.reflect.jvm.internal.KPropertyImplKt r0 = kotlin.reflect.jvm.internal.RuntimeTypeMapper.mapSignature(r9)
            java.lang.String r4 = r0.asString()
            kotlin.jvm.internal.CallableReference$NoReceiver r6 = kotlin.jvm.internal.CallableReference.NoReceiver.INSTANCE
            r1 = r7
            r2 = r8
            r5 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KFunctionImpl.<init>(kotlin.reflect.jvm.internal.KDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor):void");
    }
}
