package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.compose.ui.unit.DpKt;
import androidx.work.OperationKt;
import coil3.ImageLoader$Builder;
import coil3.util.UtilsKt;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory$RuntimeSourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationAsAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassObjectAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaLiteralAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaWildcardType;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.NullValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import okhttp3.ConnectionPool;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaAnnotationDescriptor implements AnnotationDescriptor, PossiblyExternalAnnotationDescriptor {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue allValueArguments$delegate;
    public final Request.Builder c;
    public final LockBasedStorageManager.LockBasedLazyValue fqName$delegate;
    public final boolean isFreshlySupportedTypeUseAnnotation;
    public final ReflectJavaAnnotation javaAnnotation;
    public final RuntimeSourceElementFactory$RuntimeSourceElement source;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue type$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    }

    public LazyJavaAnnotationDescriptor(ReflectJavaAnnotation reflectJavaAnnotation, Request.Builder builder, boolean z) {
        builder.getClass();
        reflectJavaAnnotation.getClass();
        this.c = builder;
        this.javaAnnotation = reflectJavaAnnotation;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView;
        final int i = 2;
        this.fqName$delegate = new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$type$2
            public final /* synthetic */ LazyJavaAnnotationDescriptor this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.this$0;
                switch (i2) {
                    case 0:
                        FqName fqName = lazyJavaAnnotationDescriptor.getFqName();
                        ReflectJavaAnnotation reflectJavaAnnotation2 = lazyJavaAnnotationDescriptor.javaAnnotation;
                        Request.Builder builder2 = lazyJavaAnnotationDescriptor.c;
                        if (fqName == null) {
                            return ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, reflectJavaAnnotation2.toString());
                        }
                        ActivityPageBinding activityPageBinding = (ActivityPageBinding) builder2.url;
                        ActivityPageBinding activityPageBinding2 = (ActivityPageBinding) builder2.url;
                        KotlinBuiltIns kotlinBuiltIns = ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns;
                        kotlinBuiltIns.getClass();
                        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                        ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(fqName);
                        ModuleAwareClassDescriptor builtInClassByFqName = mapJavaToKotlin != null ? kotlinBuiltIns.getBuiltInClassByFqName(mapJavaToKotlin.asSingleFqName()) : null;
                        if (builtInClassByFqName == null) {
                            ReflectJavaClass reflectJavaClass = new ReflectJavaClass(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(reflectJavaAnnotation2.annotation)));
                            ConnectionPool connectionPool = (ConnectionPool) ((ConnectionPool) activityPageBinding2.pageScrollerButton).delegate;
                            if (connectionPool == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("resolver");
                                throw null;
                            }
                            builtInClassByFqName = connectionPool.resolveClass(reflectJavaClass);
                            if (builtInClassByFqName == null) {
                                builtInClassByFqName = DescriptorUtilKt.findNonGenericClassAcrossDependencies((ModuleDescriptorImpl) activityPageBinding2.pageToolbarButtonNotifications, ClassId.topLevel(fqName), (ImageLoader$Builder) ((DeserializedDescriptorResolver) activityPageBinding2.pageFragment).getComponents().ctaButtonText);
                            }
                        }
                        return builtInClassByFqName.getDefaultType();
                    case 1:
                        ArrayList arguments = lazyJavaAnnotationDescriptor.javaAnnotation.getArguments();
                        ArrayList arrayList = new ArrayList();
                        Iterator it = arguments.iterator();
                        while (it.hasNext()) {
                            ReflectJavaAnnotationArgument reflectJavaAnnotationArgument = (ReflectJavaAnnotationArgument) it.next();
                            Name name = reflectJavaAnnotationArgument.name;
                            if (name == null) {
                                name = JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME;
                            }
                            ConstantValue resolveAnnotationArgument = lazyJavaAnnotationDescriptor.resolveAnnotationArgument(reflectJavaAnnotationArgument);
                            Pair pair = resolveAnnotationArgument != null ? new Pair(name, resolveAnnotationArgument) : null;
                            if (pair != null) {
                                arrayList.add(pair);
                            }
                        }
                        return MapsKt__MapsKt.toMap(arrayList);
                    default:
                        return ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(lazyJavaAnnotationDescriptor.javaAnnotation.annotation))).asSingleFqName();
                }
            }
        });
        final int i2 = 0;
        this.type$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$type$2
            public final /* synthetic */ LazyJavaAnnotationDescriptor this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.this$0;
                switch (i22) {
                    case 0:
                        FqName fqName = lazyJavaAnnotationDescriptor.getFqName();
                        ReflectJavaAnnotation reflectJavaAnnotation2 = lazyJavaAnnotationDescriptor.javaAnnotation;
                        Request.Builder builder2 = lazyJavaAnnotationDescriptor.c;
                        if (fqName == null) {
                            return ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, reflectJavaAnnotation2.toString());
                        }
                        ActivityPageBinding activityPageBinding = (ActivityPageBinding) builder2.url;
                        ActivityPageBinding activityPageBinding2 = (ActivityPageBinding) builder2.url;
                        KotlinBuiltIns kotlinBuiltIns = ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns;
                        kotlinBuiltIns.getClass();
                        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                        ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(fqName);
                        ModuleAwareClassDescriptor builtInClassByFqName = mapJavaToKotlin != null ? kotlinBuiltIns.getBuiltInClassByFqName(mapJavaToKotlin.asSingleFqName()) : null;
                        if (builtInClassByFqName == null) {
                            ReflectJavaClass reflectJavaClass = new ReflectJavaClass(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(reflectJavaAnnotation2.annotation)));
                            ConnectionPool connectionPool = (ConnectionPool) ((ConnectionPool) activityPageBinding2.pageScrollerButton).delegate;
                            if (connectionPool == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("resolver");
                                throw null;
                            }
                            builtInClassByFqName = connectionPool.resolveClass(reflectJavaClass);
                            if (builtInClassByFqName == null) {
                                builtInClassByFqName = DescriptorUtilKt.findNonGenericClassAcrossDependencies((ModuleDescriptorImpl) activityPageBinding2.pageToolbarButtonNotifications, ClassId.topLevel(fqName), (ImageLoader$Builder) ((DeserializedDescriptorResolver) activityPageBinding2.pageFragment).getComponents().ctaButtonText);
                            }
                        }
                        return builtInClassByFqName.getDefaultType();
                    case 1:
                        ArrayList arguments = lazyJavaAnnotationDescriptor.javaAnnotation.getArguments();
                        ArrayList arrayList = new ArrayList();
                        Iterator it = arguments.iterator();
                        while (it.hasNext()) {
                            ReflectJavaAnnotationArgument reflectJavaAnnotationArgument = (ReflectJavaAnnotationArgument) it.next();
                            Name name = reflectJavaAnnotationArgument.name;
                            if (name == null) {
                                name = JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME;
                            }
                            ConstantValue resolveAnnotationArgument = lazyJavaAnnotationDescriptor.resolveAnnotationArgument(reflectJavaAnnotationArgument);
                            Pair pair = resolveAnnotationArgument != null ? new Pair(name, resolveAnnotationArgument) : null;
                            if (pair != null) {
                                arrayList.add(pair);
                            }
                        }
                        return MapsKt__MapsKt.toMap(arrayList);
                    default:
                        return ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(lazyJavaAnnotationDescriptor.javaAnnotation.annotation))).asSingleFqName();
                }
            }
        });
        this.source = RuntimeErrorReporter.source(reflectJavaAnnotation);
        final int i3 = 1;
        this.allValueArguments$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$type$2
            public final /* synthetic */ LazyJavaAnnotationDescriptor this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.this$0;
                switch (i22) {
                    case 0:
                        FqName fqName = lazyJavaAnnotationDescriptor.getFqName();
                        ReflectJavaAnnotation reflectJavaAnnotation2 = lazyJavaAnnotationDescriptor.javaAnnotation;
                        Request.Builder builder2 = lazyJavaAnnotationDescriptor.c;
                        if (fqName == null) {
                            return ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, reflectJavaAnnotation2.toString());
                        }
                        ActivityPageBinding activityPageBinding = (ActivityPageBinding) builder2.url;
                        ActivityPageBinding activityPageBinding2 = (ActivityPageBinding) builder2.url;
                        KotlinBuiltIns kotlinBuiltIns = ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns;
                        kotlinBuiltIns.getClass();
                        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                        ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(fqName);
                        ModuleAwareClassDescriptor builtInClassByFqName = mapJavaToKotlin != null ? kotlinBuiltIns.getBuiltInClassByFqName(mapJavaToKotlin.asSingleFqName()) : null;
                        if (builtInClassByFqName == null) {
                            ReflectJavaClass reflectJavaClass = new ReflectJavaClass(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(reflectJavaAnnotation2.annotation)));
                            ConnectionPool connectionPool = (ConnectionPool) ((ConnectionPool) activityPageBinding2.pageScrollerButton).delegate;
                            if (connectionPool == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("resolver");
                                throw null;
                            }
                            builtInClassByFqName = connectionPool.resolveClass(reflectJavaClass);
                            if (builtInClassByFqName == null) {
                                builtInClassByFqName = DescriptorUtilKt.findNonGenericClassAcrossDependencies((ModuleDescriptorImpl) activityPageBinding2.pageToolbarButtonNotifications, ClassId.topLevel(fqName), (ImageLoader$Builder) ((DeserializedDescriptorResolver) activityPageBinding2.pageFragment).getComponents().ctaButtonText);
                            }
                        }
                        return builtInClassByFqName.getDefaultType();
                    case 1:
                        ArrayList arguments = lazyJavaAnnotationDescriptor.javaAnnotation.getArguments();
                        ArrayList arrayList = new ArrayList();
                        Iterator it = arguments.iterator();
                        while (it.hasNext()) {
                            ReflectJavaAnnotationArgument reflectJavaAnnotationArgument = (ReflectJavaAnnotationArgument) it.next();
                            Name name = reflectJavaAnnotationArgument.name;
                            if (name == null) {
                                name = JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME;
                            }
                            ConstantValue resolveAnnotationArgument = lazyJavaAnnotationDescriptor.resolveAnnotationArgument(reflectJavaAnnotationArgument);
                            Pair pair = resolveAnnotationArgument != null ? new Pair(name, resolveAnnotationArgument) : null;
                            if (pair != null) {
                                arrayList.add(pair);
                            }
                        }
                        return MapsKt__MapsKt.toMap(arrayList);
                    default:
                        return ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(lazyJavaAnnotationDescriptor.javaAnnotation.annotation))).asSingleFqName();
                }
            }
        });
        this.isFreshlySupportedTypeUseAnnotation = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final Map getAllValueArguments() {
        return (Map) DpKt.getValue(this.allValueArguments$delegate, $$delegatedProperties[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final FqName getFqName() {
        KProperty kProperty = $$delegatedProperties[0];
        LockBasedStorageManager.LockBasedLazyValue lockBasedLazyValue = this.fqName$delegate;
        lockBasedLazyValue.getClass();
        kProperty.getClass();
        return (FqName) lockBasedLazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final SourceElement getSource() {
        return this.source;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final KotlinType getType() {
        return (SimpleType) DpKt.getValue(this.type$delegate, $$delegatedProperties[1]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ConstantValue resolveAnnotationArgument(ReflectJavaAnnotationArgument reflectJavaAnnotationArgument) {
        KotlinType arrayType;
        if (reflectJavaAnnotationArgument instanceof ReflectJavaLiteralAnnotationArgument) {
            return ConstantValueFactory.createConstantValue(((ReflectJavaLiteralAnnotationArgument) reflectJavaAnnotationArgument).value, null);
        }
        if (reflectJavaAnnotationArgument instanceof ReflectJavaEnumValueAnnotationArgument) {
            Enum r6 = ((ReflectJavaEnumValueAnnotationArgument) reflectJavaAnnotationArgument).value;
            Class<?> cls = r6.getClass();
            if (!cls.isEnum()) {
                cls = cls.getEnclosingClass();
            }
            cls.getClass();
            return new EnumValue(ReflectClassUtilKt.getClassId(cls), Name.identifier(r6.name()));
        }
        boolean z = reflectJavaAnnotationArgument instanceof ReflectJavaArrayAnnotationArgument;
        Request.Builder builder = this.c;
        if (z) {
            ReflectJavaArrayAnnotationArgument reflectJavaArrayAnnotationArgument = (ReflectJavaArrayAnnotationArgument) reflectJavaAnnotationArgument;
            Name name = reflectJavaArrayAnnotationArgument.name;
            if (name == null) {
                name = JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME;
            }
            name.getClass();
            ArrayList elements = reflectJavaArrayAnnotationArgument.getElements();
            SimpleType simpleType = (SimpleType) DpKt.getValue(this.type$delegate, $$delegatedProperties[1]);
            simpleType.getClass();
            if (!KotlinTypeKt.isError(simpleType)) {
                ModuleAwareClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(this);
                annotationClass.getClass();
                ValueParameterDescriptorImpl annotationParameterByName = UtilsKt.getAnnotationParameterByName(name, annotationClass);
                if (annotationParameterByName == null || (arrayType = annotationParameterByName.getType()) == null) {
                    arrayType = ((ModuleDescriptorImpl) ((ActivityPageBinding) builder.url).pageToolbarButtonNotifications).builtIns.getArrayType(Variance.INVARIANT, ErrorUtils.createErrorType(ErrorTypeKind.UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT, new String[0]));
                }
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(elements, 10));
                Iterator it = elements.iterator();
                while (it.hasNext()) {
                    ConstantValue resolveAnnotationArgument = resolveAnnotationArgument((ReflectJavaAnnotationArgument) it.next());
                    if (resolveAnnotationArgument == null) {
                        resolveAnnotationArgument = new NullValue(null);
                    }
                    arrayList.add(resolveAnnotationArgument);
                }
                return new TypedArrayValue(arrayList, arrayType);
            }
        } else {
            if (reflectJavaAnnotationArgument instanceof ReflectJavaAnnotationAsAnnotationArgument) {
                return new AnnotationValue((Object) new LazyJavaAnnotationDescriptor(new ReflectJavaAnnotation(((ReflectJavaAnnotationAsAnnotationArgument) reflectJavaAnnotationArgument).annotation), builder, false));
            }
            if (reflectJavaAnnotationArgument instanceof ReflectJavaClassObjectAnnotationArgument) {
                Class cls2 = ((ReflectJavaClassObjectAnnotationArgument) reflectJavaAnnotationArgument).klass;
                KotlinType transformJavaType = ((MultipartBody.Builder) builder.tags).transformJavaType(cls2.isPrimitive() ? new ReflectJavaPrimitiveType(cls2) : ((cls2 instanceof GenericArrayType) || cls2.isArray()) ? new ReflectJavaArrayType(cls2) : cls2 instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) cls2) : new ReflectJavaClassifierType(cls2), OperationKt.toAttributes$default(TypeUsage.COMMON, false, null, 7));
                if (!KotlinTypeKt.isError(transformJavaType)) {
                    KotlinType kotlinType = transformJavaType;
                    int i = 0;
                    while (KotlinBuiltIns.isArray(kotlinType)) {
                        kotlinType = ((TypeProjectionBase) CollectionsKt.single(kotlinType.getArguments())).getType();
                        kotlinType.getClass();
                        i++;
                    }
                    ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                    if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
                        ClassId classId = DescriptorUtilsKt.getClassId(declarationDescriptor);
                        return classId == null ? new KClassValue(new KClassValue.Value.LocalClass(transformJavaType)) : new KClassValue(classId, i);
                    }
                    if (declarationDescriptor instanceof TypeParameterDescriptor) {
                        return new KClassValue(ClassId.topLevel(StandardNames.FqNames.any.toSafe()), 0);
                    }
                }
            }
        }
        return null;
    }

    public final String toString() {
        return DescriptorRendererImpl.FQ_NAMES_IN_TYPES.renderAnnotation(this, null);
    }
}
