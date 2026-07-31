package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.DpKt;
import androidx.datastore.core.SimpleActor$1;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$size$3$1;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import java.lang.annotation.Annotation;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationAsAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassObjectAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaLiteralAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaForKotlinOverridePropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassMemberScope extends LazyJavaScope {
    public final LockBasedStorageManager.LockBasedNotNullLazyValue constructors;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue enumEntryIndex;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue generatedNestedClassNames;
    public final ReflectJavaClass jClass;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue nestedClassIndex;
    public final ViewSizeResolver$size$3$1 nestedClasses;
    public final ModuleAwareClassDescriptor ownerDescriptor;
    public final boolean skipRefinement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope(Request.Builder builder, ModuleAwareClassDescriptor moduleAwareClassDescriptor, ReflectJavaClass reflectJavaClass, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(builder, lazyJavaClassMemberScope);
        builder.getClass();
        reflectJavaClass.getClass();
        this.ownerDescriptor = moduleAwareClassDescriptor;
        this.jClass = reflectJavaClass;
        this.skipRefinement = z;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView;
        this.constructors = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaClassMemberScope$constructors$1(this, builder));
        this.nestedClassIndex = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaClassMemberScope$enumEntryIndex$1(this, 1));
        this.generatedNestedClassNames = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaClassMemberScope$constructors$1(builder, this));
        this.enumEntryIndex = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LazyJavaClassMemberScope$enumEntryIndex$1(this, 0));
        this.nestedClasses = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new SimpleActor$1(14, this, builder));
    }

    public static SimpleFunctionDescriptorImpl createHiddenCopyIfBuiltinAlreadyAccidentallyOverridden(SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl, FunctionDescriptor functionDescriptor, AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return simpleFunctionDescriptorImpl;
        }
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2 = (SimpleFunctionDescriptorImpl) it.next();
            if (!simpleFunctionDescriptorImpl.equals(simpleFunctionDescriptorImpl2) && simpleFunctionDescriptorImpl2.initialSignatureDescriptor == null && doesOverride(simpleFunctionDescriptorImpl2, functionDescriptor)) {
                FunctionDescriptor build = simpleFunctionDescriptorImpl.newCopyBuilder().setHiddenToOvercomeSignatureClash().build();
                build.getClass();
                return (SimpleFunctionDescriptorImpl) build;
            }
        }
        return simpleFunctionDescriptorImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl createSuspendView(kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl r4) {
        /*
            java.util.List r0 = r4.getValueParameters()
            r0.getClass()
            java.lang.Object r0 = kotlin.collections.CollectionsKt.lastOrNull(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl) r0
            r1 = 0
            if (r0 == 0) goto L7b
            kotlin.reflect.jvm.internal.impl.types.KotlinType r2 = r0.getType()
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r2 = r2.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r2 = r2.getDeclarationDescriptor()
            if (r2 == 0) goto L36
            int r3 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.$r8$clinit
            kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe r2 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.getFqName(r2)
            r2.getClass()
            boolean r3 = r2.isSafe()
            if (r3 == 0) goto L2e
            goto L2f
        L2e:
            r2 = r1
        L2f:
            if (r2 == 0) goto L36
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = r2.toSafe()
            goto L37
        L36:
            r2 = r1
        L37:
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.builtins.StandardNames.CONTINUATION_INTERFACE_FQ_NAME
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L40
            goto L41
        L40:
            r0 = r1
        L41:
            if (r0 != 0) goto L44
            goto L7b
        L44:
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor$CopyBuilder r1 = r4.newCopyBuilder()
            java.util.List r4 = r4.getValueParameters()
            r4.getClass()
            java.util.List r4 = kotlin.collections.CollectionsKt.dropLast(r4)
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor$CopyBuilder r4 = r1.setValueParameters(r4)
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            java.util.List r0 = r0.getArguments()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase r0 = (kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase) r0
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor$CopyBuilder r4 = r4.setReturnType(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r4 = r4.build()
            kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl r4 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl) r4
            if (r4 != 0) goto L77
            return r4
        L77:
            r0 = 1
            r4.isSuspend = r0
            return r4
        L7b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.createSuspendView(kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl):kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl");
    }

    public static boolean doesOverride(FunctionDescriptor functionDescriptor, FunctionDescriptor functionDescriptor2) {
        OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.DEFAULT.isOverridableByWithoutExternalConditions(functionDescriptor2, functionDescriptor, true).getResult();
        result.getClass();
        return result == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE && !ExceptionsKt.doesJavaOverrideHaveIncompatibleValueParameterKinds(functionDescriptor2, functionDescriptor);
    }

    public static boolean doesOverrideRenamedDescriptor(SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl, SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2) {
        int i = BuiltinMethodsWithDifferentJvmName.$r8$clinit;
        simpleFunctionDescriptorImpl.getClass();
        if (Intrinsics.areEqual(simpleFunctionDescriptorImpl.getName().asString(), "removeAt") && Intrinsics.areEqual(RegexKt.computeJvmSignature(simpleFunctionDescriptorImpl), SpecialGenericSignatures.REMOVE_AT_NAME_AND_SIGNATURE.signature)) {
            simpleFunctionDescriptorImpl2 = simpleFunctionDescriptorImpl2.getOriginal();
        }
        simpleFunctionDescriptorImpl2.getClass();
        return doesOverride(simpleFunctionDescriptorImpl2, simpleFunctionDescriptorImpl);
    }

    public static SimpleFunctionDescriptorImpl findGetterByName(PropertyDescriptor propertyDescriptor, String str, Function1 function1) {
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl;
        Iterator it = ((Iterable) function1.invoke(Name.identifier(str))).iterator();
        do {
            simpleFunctionDescriptorImpl = null;
            if (!it.hasNext()) {
                break;
            }
            SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2 = (SimpleFunctionDescriptorImpl) it.next();
            if (simpleFunctionDescriptorImpl2.getValueParameters().size() == 0) {
                NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = KotlinTypeChecker.DEFAULT;
                KotlinType kotlinType = simpleFunctionDescriptorImpl2.unsubstitutedReturnType;
                if (kotlinType == null ? false : newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType, propertyDescriptor.getType())) {
                    simpleFunctionDescriptorImpl = simpleFunctionDescriptorImpl2;
                }
            }
        } while (simpleFunctionDescriptorImpl == null);
        return simpleFunctionDescriptorImpl;
    }

    public static SimpleFunctionDescriptorImpl findSetterOverride(PropertyDescriptor propertyDescriptor, Function1 function1) {
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl;
        KotlinType kotlinType;
        String asString = propertyDescriptor.getName().asString();
        asString.getClass();
        Iterator it = ((Iterable) function1.invoke(Name.identifier("set".concat(JvmAbi.startsWithIsPrefix(asString) ? asString.substring(2) : ResultKt.capitalizeAsciiOnly(asString))))).iterator();
        do {
            simpleFunctionDescriptorImpl = null;
            if (!it.hasNext()) {
                break;
            }
            SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2 = (SimpleFunctionDescriptorImpl) it.next();
            if (simpleFunctionDescriptorImpl2.getValueParameters().size() == 1 && (kotlinType = simpleFunctionDescriptorImpl2.unsubstitutedReturnType) != null) {
                Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                if (KotlinBuiltIns.isNotNullConstructedFromGivenClass(kotlinType, StandardNames.FqNames.unit)) {
                    NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = KotlinTypeChecker.DEFAULT;
                    List valueParameters = simpleFunctionDescriptorImpl2.getValueParameters();
                    valueParameters.getClass();
                    if (newKotlinTypeCheckerImpl.equalTypes(((ValueParameterDescriptorImpl) CollectionsKt.single(valueParameters)).getType(), propertyDescriptor.getType())) {
                        simpleFunctionDescriptorImpl = simpleFunctionDescriptorImpl2;
                    }
                }
            }
        } while (simpleFunctionDescriptorImpl == null);
        return simpleFunctionDescriptorImpl;
    }

    public static boolean hasSameJvmDescriptorButDoesNotOverride(SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl, FunctionDescriptor functionDescriptor) {
        String computeJvmDescriptor$default = RegexKt.computeJvmDescriptor$default(simpleFunctionDescriptorImpl, 2);
        FunctionDescriptor original = functionDescriptor.getOriginal();
        original.getClass();
        return computeJvmDescriptor$default.equals(RegexKt.computeJvmDescriptor$default(original, 2)) && !doesOverride(simpleFunctionDescriptorImpl, functionDescriptor);
    }

    public final void addAnnotationValueParameter(ArrayList arrayList, JavaClassConstructorDescriptor javaClassConstructorDescriptor, int i, ReflectJavaMethod reflectJavaMethod, KotlinType kotlinType, KotlinType kotlinType2) {
        ReflectJavaAnnotationArgument reflectJavaAnnotationArgument;
        Name name = reflectJavaMethod.getName();
        if (kotlinType == null) {
            TypeUtils.$$$reportNull$$$0(2);
            throw null;
        }
        UnwrappedType makeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(kotlinType, false);
        Object defaultValue = reflectJavaMethod.member.getDefaultValue();
        if (defaultValue != null) {
            Class<?> cls = defaultValue.getClass();
            List list = ReflectClassUtilKt.PRIMITIVE_CLASSES;
            reflectJavaAnnotationArgument = Enum.class.isAssignableFrom(cls) ? new ReflectJavaEnumValueAnnotationArgument(null, (Enum) defaultValue) : defaultValue instanceof Annotation ? new ReflectJavaAnnotationAsAnnotationArgument(null, (Annotation) defaultValue) : defaultValue instanceof Object[] ? new ReflectJavaArrayAnnotationArgument(null, (Object[]) defaultValue) : defaultValue instanceof Class ? new ReflectJavaClassObjectAnnotationArgument(null, (Class) defaultValue) : new ReflectJavaLiteralAnnotationArgument(null, defaultValue);
        } else {
            reflectJavaAnnotationArgument = null;
        }
        boolean z = reflectJavaAnnotationArgument != null;
        UnwrappedType makeNullableAsSpecified2 = kotlinType2 != null ? TypeUtils.makeNullableAsSpecified(kotlinType2, false) : null;
        Object obj = this.c.url;
        arrayList.add(new ValueParameterDescriptorImpl(javaClassConstructorDescriptor, null, i, Annotations.Companion.EMPTY, name, makeNullableAsSpecified, z, false, false, makeNullableAsSpecified2, RuntimeErrorReporter.source(reflectJavaMethod)));
    }

    public final void addFunctionFromSupertypes(LinkedHashSet linkedHashSet, Name name, ArrayList arrayList, boolean z) {
        ActivityPageBinding activityPageBinding = (ActivityPageBinding) this.c.url;
        LinkedHashSet<SimpleFunctionDescriptorImpl> resolveOverridesForNonStaticMembers = UtilsKt.resolveOverridesForNonStaticMembers(name, arrayList, linkedHashSet, this.ownerDescriptor, RuntimeErrorReporter.INSTANCE, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) activityPageBinding.pageToolbarContainer)).overridingUtil);
        if (!z) {
            linkedHashSet.addAll(resolveOverridesForNonStaticMembers);
            return;
        }
        ArrayList plus = CollectionsKt.plus((Collection) linkedHashSet, (Iterable) resolveOverridesForNonStaticMembers);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(resolveOverridesForNonStaticMembers, 10));
        for (SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl : resolveOverridesForNonStaticMembers) {
            SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2 = (SimpleFunctionDescriptorImpl) ResultKt.getOverriddenSpecialBuiltin(simpleFunctionDescriptorImpl);
            if (simpleFunctionDescriptorImpl2 != null) {
                simpleFunctionDescriptorImpl = createHiddenCopyIfBuiltinAlreadyAccidentallyOverridden(simpleFunctionDescriptorImpl, simpleFunctionDescriptorImpl2, plus);
            }
            arrayList2.add(simpleFunctionDescriptorImpl);
        }
        linkedHashSet.addAll(arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addOverriddenSpecialMethods(kotlin.reflect.jvm.internal.impl.name.Name r9, java.util.LinkedHashSet r10, java.util.LinkedHashSet r11, java.util.AbstractSet r12, kotlin.jvm.functions.Function1 r13) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.addOverriddenSpecialMethods(kotlin.reflect.jvm.internal.impl.name.Name, java.util.LinkedHashSet, java.util.LinkedHashSet, java.util.AbstractSet, kotlin.jvm.functions.Function1):void");
    }

    public final void addPropertyOverrideByMethod(Set set, AbstractCollection abstractCollection, SmartSet smartSet, Function1 function1) {
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        JavaForKotlinOverridePropertyDescriptor javaForKotlinOverridePropertyDescriptor;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) it.next();
            if (doesClassOverridesProperty(propertyDescriptor, function1)) {
                SimpleFunctionDescriptorImpl findGetterOverride = findGetterOverride(propertyDescriptor, function1);
                findGetterOverride.getClass();
                if (propertyDescriptor.isVar()) {
                    simpleFunctionDescriptorImpl = findSetterOverride(propertyDescriptor, function1);
                    simpleFunctionDescriptorImpl.getClass();
                } else {
                    simpleFunctionDescriptorImpl = null;
                }
                if (simpleFunctionDescriptorImpl != null) {
                    simpleFunctionDescriptorImpl.getModality();
                    findGetterOverride.getModality();
                }
                ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.ownerDescriptor;
                moduleAwareClassDescriptor.getClass();
                JavaForKotlinOverridePropertyDescriptor javaForKotlinOverridePropertyDescriptor2 = new JavaForKotlinOverridePropertyDescriptor(moduleAwareClassDescriptor, Annotations.Companion.EMPTY, findGetterOverride.getModality(), findGetterOverride.getVisibility(), simpleFunctionDescriptorImpl != null, propertyDescriptor.getName(), findGetterOverride.getSource(), null, CallableMemberDescriptor.Kind.DECLARATION, false, null);
                KotlinType kotlinType = findGetterOverride.unsubstitutedReturnType;
                kotlinType.getClass();
                ReceiverParameterDescriptorImpl dispatchReceiverParameter = getDispatchReceiverParameter();
                EmptyList emptyList = EmptyList.INSTANCE;
                javaForKotlinOverridePropertyDescriptor2.setType(kotlinType, emptyList, dispatchReceiverParameter, null, emptyList);
                PropertyGetterDescriptorImpl createGetter = DescriptorFactory.createGetter(javaForKotlinOverridePropertyDescriptor2, findGetterOverride.getAnnotations(), false, findGetterOverride.getSource());
                createGetter.initialSignatureDescriptor = findGetterOverride;
                createGetter.initialize(javaForKotlinOverridePropertyDescriptor2.getType());
                if (simpleFunctionDescriptorImpl != null) {
                    List valueParameters = simpleFunctionDescriptorImpl.getValueParameters();
                    valueParameters.getClass();
                    ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) CollectionsKt.firstOrNull(valueParameters);
                    if (valueParameterDescriptorImpl == null) {
                        VisualTransformation$Companion$$ExternalSyntheticLambda0.m("No parameter found for ", simpleFunctionDescriptorImpl);
                        return;
                    } else {
                        propertySetterDescriptorImpl = DescriptorFactory.createSetter(javaForKotlinOverridePropertyDescriptor2, simpleFunctionDescriptorImpl.getAnnotations(), valueParameterDescriptorImpl.getAnnotations(), false, simpleFunctionDescriptorImpl.getVisibility(), simpleFunctionDescriptorImpl.getSource());
                        propertySetterDescriptorImpl.initialSignatureDescriptor = simpleFunctionDescriptorImpl;
                    }
                } else {
                    propertySetterDescriptorImpl = null;
                }
                javaForKotlinOverridePropertyDescriptor2.initialize(createGetter, propertySetterDescriptorImpl, null, null);
                javaForKotlinOverridePropertyDescriptor = javaForKotlinOverridePropertyDescriptor2;
            } else {
                javaForKotlinOverridePropertyDescriptor = null;
            }
            if (javaForKotlinOverridePropertyDescriptor != null) {
                abstractCollection.add(javaForKotlinOverridePropertyDescriptor);
                if (smartSet != null) {
                    smartSet.add(propertyDescriptor);
                    return;
                }
                return;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeClassNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return UuidKt.plus((Set) this.nestedClassIndex.invoke(), (Iterable) ((Map) this.enumEntryIndex.invoke()).keySet());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeFunctionNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.ownerDescriptor;
        Collection supertypes = moduleAwareClassDescriptor.getTypeConstructor().getSupertypes();
        supertypes.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = supertypes.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(linkedHashSet, ((KotlinType) it.next()).getMemberScope().getFunctionNames());
        }
        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = this.declaredMemberIndex;
        linkedHashSet.addAll(((DeclaredMemberIndex) lockBasedNotNullLazyValue.invoke()).getMethodNames());
        linkedHashSet.addAll(((DeclaredMemberIndex) lockBasedNotNullLazyValue.invoke()).getRecordComponentNames());
        linkedHashSet.addAll(computeClassNames(descriptorKindFilter, function1));
        Request.Builder builder = this.c;
        Object obj = ((ActivityPageBinding) builder.url).wikiArticleCardView;
        builder.getClass();
        moduleAwareClassDescriptor.getClass();
        linkedHashSet.addAll(new ArrayList());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeImplicitlyDeclaredFunctions(ArrayList arrayList, Name name) {
        boolean isRecord = this.jClass.isRecord();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.ownerDescriptor;
        Request.Builder builder = this.c;
        if (isRecord) {
            LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = this.declaredMemberIndex;
            if (((DeclaredMemberIndex) lockBasedNotNullLazyValue.invoke()).findRecordComponentByName(name) != null) {
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((SimpleFunctionDescriptorImpl) it.next()).getValueParameters().isEmpty()) {
                            break;
                        }
                    }
                }
                ReflectJavaRecordComponent findRecordComponentByName = ((DeclaredMemberIndex) lockBasedNotNullLazyValue.invoke()).findRecordComponentByName(name);
                findRecordComponentByName.getClass();
                JavaMethodDescriptor createJavaMethod = JavaMethodDescriptor.createJavaMethod(moduleAwareClassDescriptor, UuidKt.resolveAnnotations(builder, findRecordComponentByName), findRecordComponentByName.getName(), RuntimeErrorReporter.source(findRecordComponentByName), true);
                KotlinType transformJavaType = ((MultipartBody.Builder) builder.tags).transformJavaType(findRecordComponentByName.getType(), OperationKt.toAttributes$default(TypeUsage.COMMON, false, null, 6));
                ReceiverParameterDescriptorImpl dispatchReceiverParameter = getDispatchReceiverParameter();
                Modality.Companion.getClass();
                Modality modality = Modality.OPEN;
                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
                EmptyList emptyList = EmptyList.INSTANCE;
                createJavaMethod.initialize(null, dispatchReceiverParameter, emptyList, emptyList, emptyList, transformJavaType, modality, anonymousClass1, null);
                createJavaMethod.setParameterNamesStatus(false, false);
                arrayList.add(createJavaMethod);
            }
        }
        Object obj = builder.url;
        moduleAwareClassDescriptor.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex computeMemberIndex() {
        return new ClassDeclaredMemberIndex(this.jClass, LazyJavaClassMemberScope$computeMemberIndex$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeNonDeclaredFunctions(LinkedHashSet linkedHashSet, Name name) {
        LinkedHashSet functionsFromSupertypes = getFunctionsFromSupertypes(name);
        if (!SpecialGenericSignatures.ORIGINAL_SHORT_NAMES.contains(name)) {
            int i = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
            if (!SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES.contains(name)) {
                if (!functionsFromSupertypes.isEmpty()) {
                    Iterator it = functionsFromSupertypes.iterator();
                    while (it.hasNext()) {
                        if (((FunctionDescriptor) it.next()).isSuspend()) {
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : functionsFromSupertypes) {
                    if (isVisibleAsFunctionInCurrentClass((SimpleFunctionDescriptorImpl) obj)) {
                        arrayList.add(obj);
                    }
                }
                addFunctionFromSupertypes(linkedHashSet, name, arrayList, false);
                return;
            }
        }
        SmartSet smartSet = new SmartSet();
        LinkedHashSet resolveOverridesForNonStaticMembers = UtilsKt.resolveOverridesForNonStaticMembers(name, functionsFromSupertypes, EmptyList.INSTANCE, this.ownerDescriptor, ErrorReporter.DO_NOTHING, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityPageBinding) this.c.url).pageToolbarContainer)).overridingUtil);
        addOverriddenSpecialMethods(name, linkedHashSet, resolveOverridesForNonStaticMembers, linkedHashSet, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(1, 0, this));
        addOverriddenSpecialMethods(name, linkedHashSet, resolveOverridesForNonStaticMembers, smartSet, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(1, 1, this));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : functionsFromSupertypes) {
            if (isVisibleAsFunctionInCurrentClass((SimpleFunctionDescriptorImpl) obj2)) {
                arrayList2.add(obj2);
            }
        }
        addFunctionFromSupertypes(linkedHashSet, name, CollectionsKt.plus((Collection) arrayList2, (Iterable) smartSet), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeNonDeclaredProperties(ArrayList arrayList, Name name) {
        ReflectJavaMethod reflectJavaMethod;
        boolean isAnnotation = this.jClass.klass.isAnnotation();
        final int i = 0;
        Request.Builder builder = this.c;
        if (isAnnotation && (reflectJavaMethod = (ReflectJavaMethod) CollectionsKt.singleOrNull(((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).findMethodsByName(name))) != null) {
            JavaPropertyDescriptor create = JavaPropertyDescriptor.create(this.ownerDescriptor, UuidKt.resolveAnnotations(builder, reflectJavaMethod), Modality.FINAL, UnsignedKt.toDescriptorVisibility(reflectJavaMethod.getVisibility()), false, reflectJavaMethod.getName(), RuntimeErrorReporter.source(reflectJavaMethod), false);
            PropertyGetterDescriptorImpl createDefaultGetter = DescriptorFactory.createDefaultGetter(create, Annotations.Companion.EMPTY);
            create.initialize(createDefaultGetter, null, null, null);
            builder.getClass();
            KotlinType computeMethodReturnType = LazyJavaScope.computeMethodReturnType(reflectJavaMethod, new Request.Builder((ActivityPageBinding) builder.url, new Dispatcher(builder, create, reflectJavaMethod, 0), (Lazy) builder.headers));
            ReceiverParameterDescriptorImpl dispatchReceiverParameter = getDispatchReceiverParameter();
            EmptyList emptyList = EmptyList.INSTANCE;
            create.setType(computeMethodReturnType, emptyList, dispatchReceiverParameter, null, emptyList);
            createDefaultGetter.returnType = computeMethodReturnType;
            arrayList.add(create);
        }
        Set propertiesFromSupertypes = getPropertiesFromSupertypes(name);
        if (propertiesFromSupertypes.isEmpty()) {
            return;
        }
        SmartSet smartSet = new SmartSet();
        SmartSet smartSet2 = new SmartSet();
        addPropertyOverrideByMethod(propertiesFromSupertypes, arrayList, smartSet, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeNonDeclaredProperties$1
            public final /* synthetic */ LazyJavaClassMemberScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                LazyJavaClassMemberScope lazyJavaClassMemberScope = this.this$0;
                switch (i2) {
                    case 0:
                        Name name2 = (Name) obj;
                        name2.getClass();
                        return lazyJavaClassMemberScope.searchMethodsByNameWithoutBuiltinMagic(name2);
                    default:
                        Name name3 = (Name) obj;
                        name3.getClass();
                        return lazyJavaClassMemberScope.searchMethodsInSupertypesWithoutBuiltinMagic(name3);
                }
            }
        });
        final int i2 = 1;
        addPropertyOverrideByMethod(UuidKt.minus(propertiesFromSupertypes, (AbstractCollection) smartSet), smartSet2, null, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeNonDeclaredProperties$1
            public final /* synthetic */ LazyJavaClassMemberScope this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                LazyJavaClassMemberScope lazyJavaClassMemberScope = this.this$0;
                switch (i22) {
                    case 0:
                        Name name2 = (Name) obj;
                        name2.getClass();
                        return lazyJavaClassMemberScope.searchMethodsByNameWithoutBuiltinMagic(name2);
                    default:
                        Name name3 = (Name) obj;
                        name3.getClass();
                        return lazyJavaClassMemberScope.searchMethodsInSupertypesWithoutBuiltinMagic(name3);
                }
            }
        });
        arrayList.addAll(UtilsKt.resolveOverridesForNonStaticMembers(name, UuidKt.plus(propertiesFromSupertypes, (Iterable) smartSet2), arrayList, this.ownerDescriptor, RuntimeErrorReporter.INSTANCE, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityPageBinding) builder.url).pageToolbarContainer)).overridingUtil));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computePropertyNames(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        if (this.jClass.klass.isAnnotation()) {
            return getFunctionNames();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).getFieldNames());
        Collection supertypes = this.ownerDescriptor.getTypeConstructor().getSupertypes();
        supertypes.getClass();
        Iterator it = supertypes.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(linkedHashSet, ((KotlinType) it.next()).getMemberScope().getVariableNames());
        }
        return linkedHashSet;
    }

    public final Collection computeSupertypes() {
        boolean z = this.skipRefinement;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.ownerDescriptor;
        if (z) {
            Collection supertypes = moduleAwareClassDescriptor.getTypeConstructor().getSupertypes();
            supertypes.getClass();
            return supertypes;
        }
        Object obj = this.c.url;
        moduleAwareClassDescriptor.getClass();
        Collection supertypes2 = moduleAwareClassDescriptor.getTypeConstructor().getSupertypes();
        supertypes2.getClass();
        return supertypes2;
    }

    public final boolean doesClassOverridesProperty(PropertyDescriptor propertyDescriptor, Function1 function1) {
        if (DpKt.isJavaField(propertyDescriptor)) {
            return false;
        }
        SimpleFunctionDescriptorImpl findGetterOverride = findGetterOverride(propertyDescriptor, function1);
        SimpleFunctionDescriptorImpl findSetterOverride = findSetterOverride(propertyDescriptor, function1);
        if (findGetterOverride == null) {
            return false;
        }
        if (propertyDescriptor.isVar()) {
            return findSetterOverride != null && findSetterOverride.getModality() == findGetterOverride.getModality();
        }
        return true;
    }

    public final SimpleFunctionDescriptorImpl findGetterOverride(PropertyDescriptor propertyDescriptor, Function1 function1) {
        Name name;
        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
        String str = null;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl = getter != null ? (PropertyGetterDescriptorImpl) ResultKt.getOverriddenBuiltinWithDifferentJvmName(getter) : null;
        if (propertyGetterDescriptorImpl != null) {
            KotlinBuiltIns.isBuiltIn(propertyGetterDescriptorImpl);
            CallableMemberDescriptor firstOverridden$default = DescriptorUtilsKt.firstOverridden$default(DescriptorUtilsKt.getPropertyIfAccessor(propertyGetterDescriptorImpl), SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$3);
            if (firstOverridden$default != null && (name = (Name) BuiltinSpecialProperties.PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP.get(DescriptorUtilsKt.getFqNameSafe(firstOverridden$default))) != null) {
                str = name.asString();
            }
        }
        if (str != null && !ResultKt.hasRealKotlinSuperClassWithOverrideOf(this.ownerDescriptor, propertyGetterDescriptorImpl)) {
            return findGetterByName(propertyDescriptor, str, function1);
        }
        String asString = propertyDescriptor.getName().asString();
        asString.getClass();
        return findGetterByName(propertyDescriptor, JvmAbi.getterName(asString), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        ViewSizeResolver$size$3$1 viewSizeResolver$size$3$1;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor;
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = (LazyJavaClassMemberScope) this.mainScope;
        return (lazyJavaClassMemberScope == null || (viewSizeResolver$size$3$1 = lazyJavaClassMemberScope.nestedClasses) == null || (moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) viewSizeResolver$size$3$1.invoke(name)) == null) ? (ClassifierDescriptor) this.nestedClasses.invoke(name) : moduleAwareClassDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        return super.getContributedFunctions(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        return super.getContributedVariables(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final ReceiverParameterDescriptorImpl getDispatchReceiverParameter() {
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.ownerDescriptor;
        if (moduleAwareClassDescriptor != null) {
            int i = DescriptorUtils.$r8$clinit;
            return moduleAwareClassDescriptor.getThisAsReceiverParameter();
        }
        DescriptorUtils.$$$reportNull$$$0(0);
        throw null;
    }

    public final LinkedHashSet getFunctionsFromSupertypes(Name name) {
        Collection computeSupertypes = computeSupertypes();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = computeSupertypes.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(linkedHashSet, ((KotlinType) it.next()).getMemberScope().getContributedFunctions(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor getOwnerDescriptor() {
        return this.ownerDescriptor;
    }

    public final Set getPropertiesFromSupertypes(Name name) {
        Collection computeSupertypes = computeSupertypes();
        ArrayList arrayList = new ArrayList();
        Iterator it = computeSupertypes.iterator();
        while (it.hasNext()) {
            Collection contributedVariables = ((KotlinType) it.next()).getMemberScope().getContributedVariables(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(contributedVariables, 10));
            Iterator it2 = contributedVariables.iterator();
            while (it2.hasNext()) {
                arrayList2.add((PropertyDescriptor) it2.next());
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        return CollectionsKt.toSet(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final boolean isVisibleAsFunction(JavaMethodDescriptor javaMethodDescriptor) {
        if (this.jClass.klass.isAnnotation()) {
            return false;
        }
        return isVisibleAsFunctionInCurrentClass(javaMethodDescriptor);
    }

    public final boolean isVisibleAsFunctionInCurrentClass(SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl) {
        Collection listOfNotNull;
        Name name = simpleFunctionDescriptorImpl.getName();
        name.getClass();
        String asString = name.asString();
        asString.getClass();
        FqName fqName = JvmAbi.JVM_FIELD_ANNOTATION_FQ_NAME;
        if (StringsKt__StringsJVMKt.startsWith(asString, "get", false) || StringsKt__StringsJVMKt.startsWith(asString, "is", false)) {
            Name propertyNameFromAccessorMethodName$default = ContextsKt.propertyNameFromAccessorMethodName$default(name, "get", null, 12);
            if (propertyNameFromAccessorMethodName$default == null) {
                propertyNameFromAccessorMethodName$default = ContextsKt.propertyNameFromAccessorMethodName$default(name, "is", null, 8);
            }
            listOfNotNull = Room.listOfNotNull(propertyNameFromAccessorMethodName$default);
        } else if (StringsKt__StringsJVMKt.startsWith(asString, "set", false)) {
            listOfNotNull = ArraysKt___ArraysKt.filterNotNull(new Name[]{ContextsKt.propertyNameFromAccessorMethodName$default(name, "set", null, 4), ContextsKt.propertyNameFromAccessorMethodName$default(name, "set", "is", 4)});
        } else {
            listOfNotNull = (List) BuiltinSpecialProperties.GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP.get(name);
            if (listOfNotNull == null) {
                listOfNotNull = EmptyList.INSTANCE;
            }
        }
        if (!listOfNotNull.isEmpty()) {
            Iterator it = listOfNotNull.iterator();
            loop0: while (it.hasNext()) {
                Set<PropertyDescriptor> propertiesFromSupertypes = getPropertiesFromSupertypes((Name) it.next());
                if (!(propertiesFromSupertypes instanceof Collection) || !propertiesFromSupertypes.isEmpty()) {
                    for (PropertyDescriptor propertyDescriptor : propertiesFromSupertypes) {
                        if (doesClassOverridesProperty(propertyDescriptor, new SimpleActor$1(13, simpleFunctionDescriptorImpl, this))) {
                            if (propertyDescriptor.isVar()) {
                                break loop0;
                            }
                            String asString2 = simpleFunctionDescriptorImpl.getName().asString();
                            asString2.getClass();
                            if (!StringsKt__StringsJVMKt.startsWith(asString2, "set", false)) {
                                break loop0;
                            }
                        }
                    }
                }
            }
        }
        ArrayList arrayList = SpecialGenericSignatures.ERASED_COLLECTION_PARAMETER_NAME_AND_SIGNATURES;
        Name name2 = simpleFunctionDescriptorImpl.getName();
        name2.getClass();
        Name name3 = (Name) SpecialGenericSignatures.JVM_SHORT_NAME_TO_BUILTIN_SHORT_NAMES_MAP.get(name2);
        if (name3 != null) {
            LinkedHashSet functionsFromSupertypes = getFunctionsFromSupertypes(name3);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : functionsFromSupertypes) {
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl2 = (SimpleFunctionDescriptorImpl) obj;
                simpleFunctionDescriptorImpl2.getClass();
                if (ResultKt.getOverriddenBuiltinWithDifferentJvmName(simpleFunctionDescriptorImpl2) != null) {
                    arrayList2.add(obj);
                }
            }
            if (!arrayList2.isEmpty()) {
                FunctionDescriptor.CopyBuilder newCopyBuilder = simpleFunctionDescriptorImpl.newCopyBuilder();
                newCopyBuilder.setName(name3);
                newCopyBuilder.setSignatureChange();
                newCopyBuilder.setPreserveSourceElement();
                FunctionDescriptor build = newCopyBuilder.build();
                build.getClass();
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl3 = (SimpleFunctionDescriptorImpl) build;
                if (!arrayList2.isEmpty()) {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        if (doesOverrideRenamedDescriptor((SimpleFunctionDescriptorImpl) it2.next(), simpleFunctionDescriptorImpl3)) {
                            break;
                        }
                    }
                }
            }
        }
        int i = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
        Name name4 = simpleFunctionDescriptorImpl.getName();
        name4.getClass();
        if (SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES.contains(name4)) {
            Name name5 = simpleFunctionDescriptorImpl.getName();
            name5.getClass();
            LinkedHashSet functionsFromSupertypes2 = getFunctionsFromSupertypes(name5);
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = functionsFromSupertypes2.iterator();
            while (it3.hasNext()) {
                FunctionDescriptor overriddenBuiltinFunctionWithErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava((SimpleFunctionDescriptorImpl) it3.next());
                if (overriddenBuiltinFunctionWithErasedValueParametersInJava != null) {
                    arrayList3.add(overriddenBuiltinFunctionWithErasedValueParametersInJava);
                }
            }
            if (!arrayList3.isEmpty()) {
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    if (hasSameJvmDescriptorButDoesNotOverride(simpleFunctionDescriptorImpl, (FunctionDescriptor) it4.next())) {
                        break;
                    }
                }
            }
        }
        SimpleFunctionDescriptorImpl createSuspendView = createSuspendView(simpleFunctionDescriptorImpl);
        if (createSuspendView != null) {
            Name name6 = simpleFunctionDescriptorImpl.getName();
            name6.getClass();
            LinkedHashSet<SimpleFunctionDescriptorImpl> functionsFromSupertypes3 = getFunctionsFromSupertypes(name6);
            if (!functionsFromSupertypes3.isEmpty()) {
                for (SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl4 : functionsFromSupertypes3) {
                    if (simpleFunctionDescriptorImpl4.isSuspend() && doesOverride(createSuspendView, simpleFunctionDescriptorImpl4)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final void recordLookup(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        Object obj = this.c.url;
        this.ownerDescriptor.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final LazyJavaScope.MethodSignatureData resolveMethodSignature(ReflectJavaMethod reflectJavaMethod, ArrayList arrayList, KotlinType kotlinType, List list) {
        reflectJavaMethod.getClass();
        Object obj = this.c.url;
        if (this.ownerDescriptor != null) {
            List list2 = Collections.EMPTY_LIST;
            if (list2 != null) {
                return new LazyJavaScope.MethodSignatureData(kotlinType, list, arrayList, list2);
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m("Argument for @NotNull parameter '%s' of %s.%s must not be null", new Object[]{"signatureErrors", "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature", "<init>"});
            return null;
        }
        Object[] objArr = new Object[3];
        switch (1) {
            case 1:
                objArr[0] = "owner";
                break;
            case 2:
                objArr[0] = "returnType";
                break;
            case 3:
                objArr[0] = "valueParameters";
                break;
            case 4:
                objArr[0] = "typeParameters";
                break;
            case 5:
                objArr[0] = "descriptor";
                break;
            case 6:
                objArr[0] = "signatureErrors";
                break;
            default:
                objArr[0] = "method";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1";
        objArr[2] = "resolvePropagatedSignature";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public final ArrayList searchMethodsByNameWithoutBuiltinMagic(Name name) {
        Collection findMethodsByName = ((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).findMethodsByName(name);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(findMethodsByName, 10));
        Iterator it = findMethodsByName.iterator();
        while (it.hasNext()) {
            arrayList.add(resolveMethodToFunctionDescriptor((ReflectJavaMethod) it.next()));
        }
        return arrayList;
    }

    public final ArrayList searchMethodsInSupertypesWithoutBuiltinMagic(Name name) {
        LinkedHashSet functionsFromSupertypes = getFunctionsFromSupertypes(name);
        ArrayList arrayList = new ArrayList();
        for (Object obj : functionsFromSupertypes) {
            SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) obj;
            simpleFunctionDescriptorImpl.getClass();
            if (ResultKt.getOverriddenBuiltinWithDifferentJvmName(simpleFunctionDescriptorImpl) == null && BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(simpleFunctionDescriptorImpl) == null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final String toString() {
        return "Lazy Java member scope for " + this.jClass.getFqName();
    }
}
