package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypesKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* compiled from: JavaTypeResolver.kt */
/* loaded from: classes2.dex */
public final class JavaTypeResolver {
    private final LazyJavaResolverContext c;
    private final RawProjectionComputer projectionComputer;
    private final TypeParameterResolver typeParameterResolver;
    private final TypeParameterUpperBoundEraser typeParameterUpperBoundEraser;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeResolver(LazyJavaResolverContext c, TypeParameterResolver typeParameterResolver) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(typeParameterResolver, "typeParameterResolver");
        this.c = c;
        this.typeParameterResolver = typeParameterResolver;
        RawProjectionComputer rawProjectionComputer = new RawProjectionComputer();
        this.projectionComputer = rawProjectionComputer;
        this.typeParameterUpperBoundEraser = new TypeParameterUpperBoundEraser(rawProjectionComputer, null, 2, 0 == true ? 1 : 0);
    }

    public final KotlinType transformJavaType(JavaType javaType, JavaTypeAttributes attr) {
        KotlinType transformJavaType;
        SimpleType unitType;
        Intrinsics.checkNotNullParameter(attr, "attr");
        if (javaType instanceof JavaPrimitiveType) {
            PrimitiveType type = ((JavaPrimitiveType) javaType).getType();
            if (type != null) {
                unitType = this.c.getModule().getBuiltIns().getPrimitiveKotlinType(type);
            } else {
                unitType = this.c.getModule().getBuiltIns().getUnitType();
            }
            Intrinsics.checkNotNull(unitType);
            return unitType;
        }
        if (javaType instanceof JavaClassifierType) {
            return transformJavaClassifierType((JavaClassifierType) javaType, attr);
        }
        if (javaType instanceof JavaArrayType) {
            return transformArrayType$default(this, (JavaArrayType) javaType, attr, false, 4, null);
        }
        if (javaType instanceof JavaWildcardType) {
            JavaType bound = ((JavaWildcardType) javaType).getBound();
            if (bound != null && (transformJavaType = transformJavaType(bound, attr)) != null) {
                return transformJavaType;
            }
            SimpleType defaultBound = this.c.getModule().getBuiltIns().getDefaultBound();
            Intrinsics.checkNotNullExpressionValue(defaultBound, "getDefaultBound(...)");
            return defaultBound;
        }
        if (javaType == null) {
            SimpleType defaultBound2 = this.c.getModule().getBuiltIns().getDefaultBound();
            Intrinsics.checkNotNullExpressionValue(defaultBound2, "getDefaultBound(...)");
            return defaultBound2;
        }
        throw new UnsupportedOperationException("Unsupported type: " + javaType);
    }

    public static /* synthetic */ KotlinType transformArrayType$default(JavaTypeResolver javaTypeResolver, JavaArrayType javaArrayType, JavaTypeAttributes javaTypeAttributes, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.transformArrayType(javaArrayType, javaTypeAttributes, z);
    }

    public final KotlinType transformArrayType(JavaArrayType arrayType, JavaTypeAttributes attr, boolean z) {
        Intrinsics.checkNotNullParameter(arrayType, "arrayType");
        Intrinsics.checkNotNullParameter(attr, "attr");
        JavaType componentType = arrayType.getComponentType();
        JavaPrimitiveType javaPrimitiveType = componentType instanceof JavaPrimitiveType ? (JavaPrimitiveType) componentType : null;
        PrimitiveType type = javaPrimitiveType != null ? javaPrimitiveType.getType() : null;
        LazyJavaAnnotations lazyJavaAnnotations = new LazyJavaAnnotations(this.c, arrayType, true);
        if (type != null) {
            SimpleType primitiveArrayKotlinType = this.c.getModule().getBuiltIns().getPrimitiveArrayKotlinType(type);
            Intrinsics.checkNotNull(primitiveArrayKotlinType);
            KotlinType replaceAnnotations = TypeUtilsKt.replaceAnnotations(primitiveArrayKotlinType, new CompositeAnnotations(primitiveArrayKotlinType.getAnnotations(), lazyJavaAnnotations));
            Intrinsics.checkNotNull(replaceAnnotations, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
            SimpleType simpleType = (SimpleType) replaceAnnotations;
            return attr.isForAnnotationParameter() ? simpleType : KotlinTypeFactory.flexibleType(simpleType, simpleType.makeNullableAsSpecified(true));
        }
        KotlinType transformJavaType = transformJavaType(componentType, JavaTypeAttributesKt.toAttributes$default(TypeUsage.COMMON, attr.isForAnnotationParameter(), false, null, 6, null));
        if (attr.isForAnnotationParameter()) {
            SimpleType arrayType2 = this.c.getModule().getBuiltIns().getArrayType(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, transformJavaType, lazyJavaAnnotations);
            Intrinsics.checkNotNullExpressionValue(arrayType2, "getArrayType(...)");
            return arrayType2;
        }
        SimpleType arrayType3 = this.c.getModule().getBuiltIns().getArrayType(Variance.INVARIANT, transformJavaType, lazyJavaAnnotations);
        Intrinsics.checkNotNullExpressionValue(arrayType3, "getArrayType(...)");
        return KotlinTypeFactory.flexibleType(arrayType3, this.c.getModule().getBuiltIns().getArrayType(Variance.OUT_VARIANCE, transformJavaType, lazyJavaAnnotations).makeNullableAsSpecified(true));
    }

    private static final ErrorType transformJavaClassifierType$errorType(JavaClassifierType javaClassifierType) {
        return ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, javaClassifierType.getPresentableText());
    }

    private final KotlinType transformJavaClassifierType(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes) {
        boolean z = (javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE) ? false : true;
        boolean isRaw = javaClassifierType.isRaw();
        if (!isRaw && !z) {
            SimpleType computeSimpleJavaClassifierType = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes, null);
            return computeSimpleJavaClassifierType != null ? computeSimpleJavaClassifierType : transformJavaClassifierType$errorType(javaClassifierType);
        }
        SimpleType computeSimpleJavaClassifierType2 = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (computeSimpleJavaClassifierType2 == null) {
            return transformJavaClassifierType$errorType(javaClassifierType);
        }
        SimpleType computeSimpleJavaClassifierType3 = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), computeSimpleJavaClassifierType2);
        if (computeSimpleJavaClassifierType3 == null) {
            return transformJavaClassifierType$errorType(javaClassifierType);
        }
        if (isRaw) {
            return new RawTypeImpl(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
        }
        return KotlinTypeFactory.flexibleType(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
    }

    private final SimpleType computeSimpleJavaClassifierType(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes, SimpleType simpleType) {
        TypeAttributes defaultAttributes;
        if (simpleType == null || (defaultAttributes = simpleType.getAttributes()) == null) {
            defaultAttributes = TypeAttributesKt.toDefaultAttributes(new LazyJavaAnnotations(this.c, javaClassifierType, false, 4, null));
        }
        TypeAttributes typeAttributes = defaultAttributes;
        TypeConstructor computeTypeConstructor = computeTypeConstructor(javaClassifierType, javaTypeAttributes);
        if (computeTypeConstructor == null) {
            return null;
        }
        boolean isNullable = isNullable(javaTypeAttributes);
        if (Intrinsics.areEqual(simpleType != null ? simpleType.getConstructor() : null, computeTypeConstructor) && !javaClassifierType.isRaw() && isNullable) {
            return simpleType.makeNullableAsSpecified(true);
        }
        return KotlinTypeFactory.simpleType$default(typeAttributes, computeTypeConstructor, computeArguments(javaClassifierType, javaTypeAttributes, computeTypeConstructor), isNullable, null, 16, null);
    }

    private final TypeConstructor computeTypeConstructor(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes) {
        TypeConstructor typeConstructor;
        JavaClassifier classifier = javaClassifierType.getClassifier();
        if (classifier == null) {
            return createNotFoundClass(javaClassifierType);
        }
        if (classifier instanceof JavaClass) {
            JavaClass javaClass = (JavaClass) classifier;
            FqName fqName = javaClass.getFqName();
            if (fqName == null) {
                throw new AssertionError("Class type should have a FQ name: " + classifier);
            }
            ClassDescriptor mapKotlinClass = mapKotlinClass(javaClassifierType, javaTypeAttributes, fqName);
            if (mapKotlinClass == null) {
                mapKotlinClass = this.c.getComponents().getModuleClassResolver().resolveClass(javaClass);
            }
            return (mapKotlinClass == null || (typeConstructor = mapKotlinClass.getTypeConstructor()) == null) ? createNotFoundClass(javaClassifierType) : typeConstructor;
        }
        if (classifier instanceof JavaTypeParameter) {
            TypeParameterDescriptor resolveTypeParameter = this.typeParameterResolver.resolveTypeParameter((JavaTypeParameter) classifier);
            if (resolveTypeParameter != null) {
                return resolveTypeParameter.getTypeConstructor();
            }
            return null;
        }
        throw new IllegalStateException("Unknown classifier kind: " + classifier);
    }

    private final TypeConstructor createNotFoundClass(JavaClassifierType javaClassifierType) {
        TypeConstructor typeConstructor = this.c.getComponents().getDeserializedDescriptorResolver().getComponents().getNotFoundClasses().getClass(ClassId.Companion.topLevel(new FqName(javaClassifierType.getClassifierQualifiedName())), CollectionsKt.listOf((Object) 0)).getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "getTypeConstructor(...)");
        return typeConstructor;
    }

    private final ClassDescriptor mapKotlinClass(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes, FqName fqName) {
        FqName fqName2;
        if (javaTypeAttributes.isForAnnotationParameter()) {
            fqName2 = JavaTypeResolverKt.JAVA_LANG_CLASS_FQ_NAME;
            if (Intrinsics.areEqual(fqName, fqName2)) {
                return this.c.getComponents().getReflectionTypes().getKClass();
            }
        }
        JavaToKotlinClassMapper javaToKotlinClassMapper = JavaToKotlinClassMapper.INSTANCE;
        ClassDescriptor mapJavaToKotlin$default = JavaToKotlinClassMapper.mapJavaToKotlin$default(javaToKotlinClassMapper, fqName, this.c.getModule().getBuiltIns(), null, 4, null);
        if (mapJavaToKotlin$default == null) {
            return null;
        }
        return (javaToKotlinClassMapper.isReadOnly(mapJavaToKotlin$default) && (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE || argumentsMakeSenseOnlyForMutableContainer(javaClassifierType, mapJavaToKotlin$default))) ? javaToKotlinClassMapper.convertReadOnlyToMutable(mapJavaToKotlin$default) : mapJavaToKotlin$default;
    }

    private final boolean argumentsMakeSenseOnlyForMutableContainer(JavaClassifierType javaClassifierType, ClassDescriptor classDescriptor) {
        Variance variance;
        if (!JavaTypesKt.isSuperWildcard((JavaType) CollectionsKt.lastOrNull(javaClassifierType.getTypeArguments()))) {
            return false;
        }
        List parameters = JavaToKotlinClassMapper.INSTANCE.convertReadOnlyToMutable(classDescriptor).getTypeConstructor().getParameters();
        Intrinsics.checkNotNullExpressionValue(parameters, "getParameters(...)");
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.lastOrNull(parameters);
        return (typeParameterDescriptor == null || (variance = typeParameterDescriptor.getVariance()) == null || variance == Variance.OUT_VARIANCE) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KotlinType computeRawTypeArguments$lambda$4$lambda$3(JavaTypeResolver javaTypeResolver, TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes, TypeConstructor typeConstructor, JavaClassifierType javaClassifierType) {
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = javaTypeResolver.typeParameterUpperBoundEraser;
        ClassifierDescriptor mo2789getDeclarationDescriptor = typeConstructor.mo2789getDeclarationDescriptor();
        return typeParameterUpperBoundEraser.getErasedUpperBound(typeParameterDescriptor, javaTypeAttributes.withDefaultType(mo2789getDeclarationDescriptor != null ? mo2789getDeclarationDescriptor.getDefaultType() : null).markIsRaw(javaClassifierType.isRaw()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        if (r0.isEmpty() == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List computeArguments(kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType r10, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r11, kotlin.reflect.jvm.internal.impl.types.TypeConstructor r12) {
        /*
            r9 = this;
            boolean r0 = r10.isRaw()
            java.lang.String r1 = "getParameters(...)"
            if (r0 != 0) goto L22
            java.util.List r0 = r10.getTypeArguments()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L20
            java.util.List r0 = r12.getParameters()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L20
            goto L22
        L20:
            r0 = 0
            goto L23
        L22:
            r0 = 1
        L23:
            java.util.List r2 = r12.getParameters()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            if (r0 == 0) goto L31
            java.util.List r10 = r9.computeRawTypeArguments(r10, r2, r12, r11)
            return r10
        L31:
            int r11 = r2.size()
            java.util.List r12 = r10.getTypeArguments()
            int r12 = r12.size()
            r0 = 10
            if (r11 == r12) goto L7a
            java.util.ArrayList r10 = new java.util.ArrayList
            int r11 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r2, r0)
            r10.<init>(r11)
            java.util.Iterator r11 = r2.iterator()
        L4e:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L75
            java.lang.Object r12 = r11.next()
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r12 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r12
            kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl r0 = new kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl
            kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind r1 = kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind.MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER
            kotlin.reflect.jvm.internal.impl.name.Name r12 = r12.getName()
            java.lang.String r12 = r12.asString()
            java.lang.String[] r12 = new java.lang.String[]{r12}
            kotlin.reflect.jvm.internal.impl.types.error.ErrorType r12 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.createErrorType(r1, r12)
            r0.<init>(r12)
            r10.add(r0)
            goto L4e
        L75:
            java.util.List r10 = kotlin.collections.CollectionsKt.toList(r10)
            return r10
        L7a:
            java.util.List r10 = r10.getTypeArguments()
            java.lang.Iterable r10 = kotlin.collections.CollectionsKt.withIndex(r10)
            java.util.ArrayList r11 = new java.util.ArrayList
            int r12 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r10, r0)
            r11.<init>(r12)
            java.util.Iterator r10 = r10.iterator()
        L8f:
            boolean r12 = r10.hasNext()
            if (r12 == 0) goto Lc4
            java.lang.Object r12 = r10.next()
            kotlin.collections.IndexedValue r12 = (kotlin.collections.IndexedValue) r12
            int r0 = r12.component1()
            java.lang.Object r12 = r12.component2()
            kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType r12 = (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType) r12
            r2.size()
            java.lang.Object r0 = r2.get(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0
            kotlin.reflect.jvm.internal.impl.types.TypeUsage r3 = kotlin.reflect.jvm.internal.impl.types.TypeUsage.COMMON
            r7 = 7
            r8 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r1 = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt.toAttributes$default(r3, r4, r5, r6, r7, r8)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r12 = r9.transformToTypeProjection(r12, r1, r0)
            r11.add(r12)
            goto L8f
        Lc4:
            java.util.List r10 = kotlin.collections.CollectionsKt.toList(r11)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.computeArguments(kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.TypeConstructor):java.util.List");
    }

    private final TypeProjection transformToTypeProjection(JavaType javaType, JavaTypeAttributes javaTypeAttributes, TypeParameterDescriptor typeParameterDescriptor) {
        if (javaType instanceof JavaWildcardType) {
            JavaWildcardType javaWildcardType = (JavaWildcardType) javaType;
            JavaType bound = javaWildcardType.getBound();
            Variance variance = javaWildcardType.isExtends() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
            if (bound == null || isConflictingArgumentFor(variance, typeParameterDescriptor)) {
                TypeProjection makeStarProjection = TypeUtils.makeStarProjection(typeParameterDescriptor, javaTypeAttributes);
                Intrinsics.checkNotNullExpressionValue(makeStarProjection, "makeStarProjection(...)");
                return makeStarProjection;
            }
            AnnotationDescriptor extractNullabilityAnnotationOnBoundedWildcard = UtilsKt.extractNullabilityAnnotationOnBoundedWildcard(this.c, javaWildcardType);
            KotlinType transformJavaType = transformJavaType(bound, JavaTypeAttributesKt.toAttributes$default(TypeUsage.COMMON, false, false, null, 7, null));
            if (extractNullabilityAnnotationOnBoundedWildcard != null) {
                transformJavaType = TypeUtilsKt.replaceAnnotations(transformJavaType, Annotations.Companion.create(CollectionsKt.plus(transformJavaType.getAnnotations(), extractNullabilityAnnotationOnBoundedWildcard)));
            }
            return TypeUtilsKt.createProjection(transformJavaType, variance, typeParameterDescriptor);
        }
        return new TypeProjectionImpl(Variance.INVARIANT, transformJavaType(javaType, javaTypeAttributes));
    }

    private final boolean isConflictingArgumentFor(Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        return (typeParameterDescriptor.getVariance() == Variance.INVARIANT || variance == typeParameterDescriptor.getVariance()) ? false : true;
    }

    private final boolean isNullable(JavaTypeAttributes javaTypeAttributes) {
        return (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE) ? false : true;
    }

    private final List computeRawTypeArguments(final JavaClassifierType javaClassifierType, List list, final TypeConstructor typeConstructor, final JavaTypeAttributes javaTypeAttributes) {
        TypeProjection computeProjection;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it.next();
            if (TypeUtilsKt.hasTypeParameterRecursiveBounds(typeParameterDescriptor, null, javaTypeAttributes.getVisitedTypeParameters())) {
                computeProjection = TypeUtils.makeStarProjection(typeParameterDescriptor, javaTypeAttributes);
            } else {
                computeProjection = this.projectionComputer.computeProjection(typeParameterDescriptor, javaTypeAttributes.markIsRaw(javaClassifierType.isRaw()), this.typeParameterUpperBoundEraser, new LazyWrappedType(this.c.getStorageManager(), new Function0(this, typeParameterDescriptor, javaTypeAttributes, typeConstructor, javaClassifierType) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$$Lambda$0
                    private final JavaTypeResolver arg$0;
                    private final TypeParameterDescriptor arg$1;
                    private final JavaTypeAttributes arg$2;
                    private final TypeConstructor arg$3;
                    private final JavaClassifierType arg$4;

                    {
                        this.arg$0 = this;
                        this.arg$1 = typeParameterDescriptor;
                        this.arg$2 = javaTypeAttributes;
                        this.arg$3 = typeConstructor;
                        this.arg$4 = javaClassifierType;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public Object invoke() {
                        KotlinType computeRawTypeArguments$lambda$4$lambda$3;
                        computeRawTypeArguments$lambda$4$lambda$3 = JavaTypeResolver.computeRawTypeArguments$lambda$4$lambda$3(this.arg$0, this.arg$1, this.arg$2, this.arg$3, this.arg$4);
                        return computeRawTypeArguments$lambda$4$lambda$3;
                    }
                }));
            }
            arrayList.add(computeProjection);
        }
        return arrayList;
    }
}
