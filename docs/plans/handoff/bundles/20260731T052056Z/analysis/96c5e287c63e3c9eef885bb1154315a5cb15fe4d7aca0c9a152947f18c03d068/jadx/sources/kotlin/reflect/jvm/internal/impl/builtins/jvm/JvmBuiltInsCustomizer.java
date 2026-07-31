package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import coil3.util.UtilsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilterKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.text.RegexKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltInsCustomizer implements AdditionalClassPartsProvider, PlatformDependentDeclarationFilter {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue cloneableType$delegate;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull javaAnalogueClassesWithCustomSupertypeCache;
    public final SimpleType mockSerializableType;
    public final ModuleDescriptorImpl moduleDescriptor;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue notConsideredDeprecation$delegate;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue settings$delegate;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JDKMemberStatus {
        private static final /* synthetic */ JDKMemberStatus[] $VALUES;
        public static final JDKMemberStatus DROP;
        public static final JDKMemberStatus HIDDEN;
        public static final JDKMemberStatus NOT_CONSIDERED;
        public static final JDKMemberStatus VISIBLE;

        static {
            JDKMemberStatus jDKMemberStatus = new JDKMemberStatus("HIDDEN", 0);
            HIDDEN = jDKMemberStatus;
            JDKMemberStatus jDKMemberStatus2 = new JDKMemberStatus("VISIBLE", 1);
            VISIBLE = jDKMemberStatus2;
            JDKMemberStatus jDKMemberStatus3 = new JDKMemberStatus("NOT_CONSIDERED", 2);
            NOT_CONSIDERED = jDKMemberStatus3;
            JDKMemberStatus jDKMemberStatus4 = new JDKMemberStatus("DROP", 3);
            DROP = jDKMemberStatus4;
            $VALUES = new JDKMemberStatus[]{jDKMemberStatus, jDKMemberStatus2, jDKMemberStatus3, jDKMemberStatus4};
        }

        public static JDKMemberStatus valueOf(String str) {
            return (JDKMemberStatus) Enum.valueOf(JDKMemberStatus.class, str);
        }

        public static JDKMemberStatus[] values() {
            return (JDKMemberStatus[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[JDKMemberStatus.values().length];
            try {
                iArr[JDKMemberStatus.HIDDEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JDKMemberStatus.NOT_CONSIDERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JDKMemberStatus.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[JDKMemberStatus.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmBuiltInsCustomizer.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmBuiltInsCustomizer.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmBuiltInsCustomizer.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};
    }

    public JvmBuiltInsCustomizer(ModuleDescriptorImpl moduleDescriptorImpl, LockBasedStorageManager lockBasedStorageManager, LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
        this.moduleDescriptor = moduleDescriptorImpl;
        this.settings$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, layoutNode$_foldedChildren$1);
        final int i = 1;
        ClassDescriptorImpl classDescriptorImpl = new ClassDescriptorImpl(new EmptyPackageFragmentDescriptor(moduleDescriptorImpl, new FqName("java.io"), 1), Name.identifier("Serializable"), Modality.ABSTRACT, ClassKind.INTERFACE, Room.listOf(new LazyWrappedType(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$notConsideredDeprecation$2
            public final /* synthetic */ JvmBuiltInsCustomizer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                JvmBuiltInsCustomizer jvmBuiltInsCustomizer = this.this$0;
                switch (i2) {
                    case 0:
                        KotlinBuiltIns kotlinBuiltIns = jvmBuiltInsCustomizer.moduleDescriptor.builtIns;
                        Name name = AnnotationUtilKt.DEPRECATED_MESSAGE_NAME;
                        kotlinBuiltIns.getClass();
                        List listOf = Room.listOf(new BuiltInAnnotationDescriptor(kotlinBuiltIns, StandardNames.FqNames.deprecated, MapsKt__MapsKt.mapOf(new Pair(AnnotationUtilKt.DEPRECATED_MESSAGE_NAME, new StringValue("This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version")), new Pair(AnnotationUtilKt.DEPRECATED_REPLACE_WITH_NAME, new AnnotationValue((Object) new BuiltInAnnotationDescriptor(kotlinBuiltIns, StandardNames.FqNames.replaceWith, MapsKt__MapsKt.mapOf(new Pair(AnnotationUtilKt.REPLACE_WITH_EXPRESSION_NAME, new StringValue("")), new Pair(AnnotationUtilKt.REPLACE_WITH_IMPORTS_NAME, new ArrayValue(EmptyList.INSTANCE, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(3, kotlinBuiltIns))))))), new Pair(AnnotationUtilKt.DEPRECATED_LEVEL_NAME, new EnumValue(ClassId.topLevel(StandardNames.FqNames.deprecationLevel), Name.identifier("WARNING"))))));
                        return listOf.isEmpty() ? Annotations.Companion.EMPTY : new AnnotationsImpl(0, listOf);
                    default:
                        return jvmBuiltInsCustomizer.moduleDescriptor.builtIns.getAnyType();
                }
            }
        })), lockBasedStorageManager);
        classDescriptorImpl.initialize(MemberScope.Empty.INSTANCE, EmptySet.INSTANCE, null);
        this.mockSerializableType = classDescriptorImpl.getDefaultType();
        this.cloneableType$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new KTypeImpl$arguments$2(16, this, lockBasedStorageManager));
        this.javaAnalogueClassesWithCustomSupertypeCache = new LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull(lockBasedStorageManager, new ConcurrentHashMap(3, 1.0f, 2), new LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1(), 1);
        final int i2 = 0;
        this.notConsideredDeprecation$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$notConsideredDeprecation$2
            public final /* synthetic */ JvmBuiltInsCustomizer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                JvmBuiltInsCustomizer jvmBuiltInsCustomizer = this.this$0;
                switch (i22) {
                    case 0:
                        KotlinBuiltIns kotlinBuiltIns = jvmBuiltInsCustomizer.moduleDescriptor.builtIns;
                        Name name = AnnotationUtilKt.DEPRECATED_MESSAGE_NAME;
                        kotlinBuiltIns.getClass();
                        List listOf = Room.listOf(new BuiltInAnnotationDescriptor(kotlinBuiltIns, StandardNames.FqNames.deprecated, MapsKt__MapsKt.mapOf(new Pair(AnnotationUtilKt.DEPRECATED_MESSAGE_NAME, new StringValue("This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version")), new Pair(AnnotationUtilKt.DEPRECATED_REPLACE_WITH_NAME, new AnnotationValue((Object) new BuiltInAnnotationDescriptor(kotlinBuiltIns, StandardNames.FqNames.replaceWith, MapsKt__MapsKt.mapOf(new Pair(AnnotationUtilKt.REPLACE_WITH_EXPRESSION_NAME, new StringValue("")), new Pair(AnnotationUtilKt.REPLACE_WITH_IMPORTS_NAME, new ArrayValue(EmptyList.INSTANCE, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(3, kotlinBuiltIns))))))), new Pair(AnnotationUtilKt.DEPRECATED_LEVEL_NAME, new EnumValue(ClassId.topLevel(StandardNames.FqNames.deprecationLevel), Name.identifier("WARNING"))))));
                        return listOf.isEmpty() ? Annotations.Companion.EMPTY : new AnnotationsImpl(0, listOf);
                    default:
                        return jvmBuiltInsCustomizer.moduleDescriptor.builtIns.getAnyType();
                }
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection getConstructors(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        FqNameUnsafe fqNameUnsafe;
        if (moduleAwareClassDescriptor.getKind() == ClassKind.CLASS) {
            getSettings().getClass();
            LazyJavaClassDescriptor javaAnalogue = getJavaAnalogue(moduleAwareClassDescriptor);
            if (javaAnalogue != null) {
                FqName fqNameSafe = DescriptorUtilsKt.getFqNameSafe(javaAnalogue);
                FallbackBuiltIns fallbackBuiltIns = FallbackBuiltIns.Instance;
                fallbackBuiltIns.getClass();
                String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(fqNameSafe);
                ModuleAwareClassDescriptor builtInClassByFqName = mapJavaToKotlin != null ? fallbackBuiltIns.getBuiltInClassByFqName(mapJavaToKotlin.asSingleFqName()) : null;
                if (builtInClassByFqName != null) {
                    TypeSubstitutor typeSubstitutor = new TypeSubstitutor(TuplesKt.createMappedTypeParametersSubstitution(builtInClassByFqName, javaAnalogue));
                    List list = (List) javaAnalogue.unsubstitutedMemberScope.constructors.invoke();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        ClassConstructorDescriptorImpl classConstructorDescriptorImpl = (ClassConstructorDescriptorImpl) obj;
                        if (classConstructorDescriptorImpl.getVisibility().delegate.mTitleOptionalHint) {
                            Collection constructors = builtInClassByFqName.getConstructors();
                            constructors.getClass();
                            Collection<ClassConstructorDescriptorImpl> collection = constructors;
                            if (!(collection instanceof Collection) || !collection.isEmpty()) {
                                for (ClassConstructorDescriptorImpl classConstructorDescriptorImpl2 : collection) {
                                    classConstructorDescriptorImpl2.getClass();
                                    if (OverridingUtil.getBothWaysOverridability(classConstructorDescriptorImpl2, classConstructorDescriptorImpl.substitute(typeSubstitutor)) == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                                        break;
                                    }
                                }
                            }
                            if (classConstructorDescriptorImpl.getValueParameters().size() == 1) {
                                List valueParameters = classConstructorDescriptorImpl.getValueParameters();
                                valueParameters.getClass();
                                ClassifierDescriptor declarationDescriptor = ((ValueParameterDescriptorImpl) CollectionsKt.single(valueParameters)).getType().getConstructor().getDeclarationDescriptor();
                                if (declarationDescriptor != null) {
                                    int i = DescriptorUtilsKt.$r8$clinit;
                                    fqNameUnsafe = DescriptorUtils.getFqName(declarationDescriptor);
                                    fqNameUnsafe.getClass();
                                } else {
                                    fqNameUnsafe = null;
                                }
                                FqNameUnsafe fqName = DescriptorUtils.getFqName(moduleAwareClassDescriptor);
                                fqName.getClass();
                                if (Intrinsics.areEqual(fqNameUnsafe, fqName)) {
                                }
                            }
                            if (!KotlinBuiltIns.isDeprecated(classConstructorDescriptorImpl) && !JvmBuiltInsSignatures.HIDDEN_CONSTRUCTOR_SIGNATURES.contains(UtilsKt.signature(javaAnalogue, RegexKt.computeJvmDescriptor$default(classConstructorDescriptorImpl, 3)))) {
                                arrayList.add(obj);
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ClassConstructorDescriptorImpl classConstructorDescriptorImpl3 = (ClassConstructorDescriptorImpl) it.next();
                        classConstructorDescriptorImpl3.getClass();
                        FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = classConstructorDescriptorImpl3.newCopyBuilder(TypeSubstitutor.EMPTY);
                        newCopyBuilder.newOwner = moduleAwareClassDescriptor;
                        newCopyBuilder.setReturnType(moduleAwareClassDescriptor.getDefaultType());
                        newCopyBuilder.preserveSourceElement = true;
                        newCopyBuilder.substitution = typeSubstitutor.substitution;
                        if (!JvmBuiltInsSignatures.VISIBLE_CONSTRUCTOR_SIGNATURES.contains(UtilsKt.signature(javaAnalogue, RegexKt.computeJvmDescriptor$default(classConstructorDescriptorImpl3, 3)))) {
                            newCopyBuilder.setAdditionalAnnotations((Annotations) DpKt.getValue(this.notConsideredDeprecation$delegate, $$delegatedProperties[2]));
                        }
                        FunctionDescriptorImpl doSubstitute = newCopyBuilder.this$0.doSubstitute(newCopyBuilder);
                        doSubstitute.getClass();
                        arrayList2.add((ClassConstructorDescriptorImpl) doSubstitute);
                    }
                    return arrayList2;
                }
            }
        }
        return EmptyList.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02b4, code lost:
    
        if (r3 != 3) goto L103;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection getFunctions(kotlin.reflect.jvm.internal.impl.name.Name r14, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r15) {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer.getFunctions(kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection getFunctionsNames(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        Set set;
        moduleAwareClassDescriptor.getClass();
        getSettings().getClass();
        LazyJavaClassDescriptor javaAnalogue = getJavaAnalogue(moduleAwareClassDescriptor);
        if (javaAnalogue == null || (set = javaAnalogue.getUnsubstitutedMemberScope$1().getFunctionNames()) == null) {
            set = EmptySet.INSTANCE;
        }
        return set;
    }

    public final LazyJavaClassDescriptor getJavaAnalogue(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (moduleAwareClassDescriptor == null) {
            KotlinBuiltIns.$$$reportNull$$$0(108);
            throw null;
        }
        Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
        if (!KotlinBuiltIns.classFqNameEquals(moduleAwareClassDescriptor, StandardNames.FqNames.any) && KotlinBuiltIns.isUnderKotlinPackage(moduleAwareClassDescriptor)) {
            int i = DescriptorUtilsKt.$r8$clinit;
            FqNameUnsafe fqName = DescriptorUtils.getFqName(moduleAwareClassDescriptor);
            fqName.getClass();
            if (fqName.isSafe()) {
                String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                ClassId mapKotlinToJava = JavaToKotlinClassMap.mapKotlinToJava(fqName);
                if (mapKotlinToJava != null) {
                    ModuleAwareClassDescriptor resolveClassByFqName = DescriptorUtilKt.resolveClassByFqName(getSettings().ownerModuleDescriptor, mapKotlinToJava.asSingleFqName(), NoLookupLocation.FROM_BUILTINS);
                    if (resolveClassByFqName instanceof LazyJavaClassDescriptor) {
                        return (LazyJavaClassDescriptor) resolveClassByFqName;
                    }
                }
            }
        }
        return null;
    }

    public final JvmBuiltIns.Settings getSettings() {
        return (JvmBuiltIns.Settings) DpKt.getValue(this.settings$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection getSupertypes(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        int i = DescriptorUtilsKt.$r8$clinit;
        FqNameUnsafe fqName = DescriptorUtils.getFqName(moduleAwareClassDescriptor);
        fqName.getClass();
        LinkedHashSet linkedHashSet = JvmBuiltInsSignatures.DROP_LIST_METHOD_SIGNATURES;
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.array;
        boolean equals = fqName.equals(fqNameUnsafe);
        boolean z = false;
        SimpleType simpleType = this.mockSerializableType;
        if (!equals) {
            HashMap hashMap = StandardNames.FqNames.arrayClassFqNameToPrimitiveType;
            if (hashMap.get(fqName) == null) {
                if (fqName.equals(fqNameUnsafe) || hashMap.get(fqName) != null) {
                    z = true;
                } else {
                    String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                    ClassId mapKotlinToJava = JavaToKotlinClassMap.mapKotlinToJava(fqName);
                    if (mapKotlinToJava != null) {
                        try {
                            z = Serializable.class.isAssignableFrom(Class.forName(mapKotlinToJava.asSingleFqName().asString()));
                        } catch (ClassNotFoundException unused) {
                        }
                    }
                }
                return z ? Room.listOf(simpleType) : EmptyList.INSTANCE;
            }
        }
        SimpleType simpleType2 = (SimpleType) DpKt.getValue(this.cloneableType$delegate, $$delegatedProperties[1]);
        simpleType2.getClass();
        return Room.listOf((Object[]) new KotlinType[]{simpleType2, simpleType});
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter
    public final boolean isFunctionAvailable(ModuleAwareClassDescriptor moduleAwareClassDescriptor, DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
        moduleAwareClassDescriptor.getClass();
        LazyJavaClassDescriptor javaAnalogue = getJavaAnalogue(moduleAwareClassDescriptor);
        if (javaAnalogue == null || !deserializedSimpleFunctionDescriptor.getAnnotations().hasAnnotation(PlatformDependentDeclarationFilterKt.PLATFORM_DEPENDENT_ANNOTATION_FQ_NAME)) {
            return true;
        }
        getSettings().getClass();
        String computeJvmDescriptor$default = RegexKt.computeJvmDescriptor$default(deserializedSimpleFunctionDescriptor, 3);
        LazyJavaClassMemberScope unsubstitutedMemberScope$1 = javaAnalogue.getUnsubstitutedMemberScope$1();
        Name name = deserializedSimpleFunctionDescriptor.getName();
        name.getClass();
        Collection contributedFunctions = unsubstitutedMemberScope$1.getContributedFunctions(name, NoLookupLocation.FROM_BUILTINS);
        if ((contributedFunctions instanceof Collection) && contributedFunctions.isEmpty()) {
            return false;
        }
        Iterator it = contributedFunctions.iterator();
        while (it.hasNext()) {
            if (RegexKt.computeJvmDescriptor$default((SimpleFunctionDescriptorImpl) it.next(), 3).equals(computeJvmDescriptor$default)) {
                return true;
            }
        }
        return false;
    }
}
