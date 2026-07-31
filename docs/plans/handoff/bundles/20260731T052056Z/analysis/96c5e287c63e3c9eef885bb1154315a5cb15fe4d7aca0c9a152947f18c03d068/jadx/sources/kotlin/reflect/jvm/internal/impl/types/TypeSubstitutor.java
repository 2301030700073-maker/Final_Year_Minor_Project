package kotlin.reflect.jvm.internal.impl.types;

import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.FilteredAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeSubstitutor {
    public static final TypeSubstitutor EMPTY = new TypeSubstitutor(TypeSubstitution.EMPTY);
    public final TypeSubstitution substitution;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function1 {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            if (((FqName) obj) != null) {
                return Boolean.valueOf(!r1.equals(StandardNames.FqNames.unsafeVariance));
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'name' of kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1.invoke must not be null");
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$2, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType;

        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SubstitutionException extends Exception {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class VarianceConflictType {
        private static final /* synthetic */ VarianceConflictType[] $VALUES;
        public static final VarianceConflictType IN_IN_OUT_POSITION;
        public static final VarianceConflictType NO_CONFLICT;
        public static final VarianceConflictType OUT_IN_IN_POSITION;

        static {
            VarianceConflictType varianceConflictType = new VarianceConflictType("NO_CONFLICT", 0);
            NO_CONFLICT = varianceConflictType;
            VarianceConflictType varianceConflictType2 = new VarianceConflictType("IN_IN_OUT_POSITION", 1);
            IN_IN_OUT_POSITION = varianceConflictType2;
            VarianceConflictType varianceConflictType3 = new VarianceConflictType("OUT_IN_IN_POSITION", 2);
            OUT_IN_IN_POSITION = varianceConflictType3;
            $VALUES = new VarianceConflictType[]{varianceConflictType, varianceConflictType2, varianceConflictType3};
        }

        public static VarianceConflictType valueOf(String str) {
            return (VarianceConflictType) Enum.valueOf(VarianceConflictType.class, str);
        }

        public static VarianceConflictType[] values() {
            return (VarianceConflictType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0100 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x003b A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0021 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r13) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.$$$reportNull$$$0(int):void");
    }

    public TypeSubstitutor(TypeSubstitution typeSubstitution) {
        this.substitution = typeSubstitution;
    }

    public static Variance combine(Variance variance, Variance variance2) {
        if (variance == null) {
            $$$reportNull$$$0(38);
            throw null;
        }
        if (variance2 == null) {
            $$$reportNull$$$0(39);
            throw null;
        }
        Variance variance3 = Variance.INVARIANT;
        if (variance == variance3) {
            if (variance2 != null) {
                return variance2;
            }
            $$$reportNull$$$0(40);
            throw null;
        }
        if (variance2 == variance3) {
            if (variance != null) {
                return variance;
            }
            $$$reportNull$$$0(41);
            throw null;
        }
        if (variance == variance2) {
            if (variance2 != null) {
                return variance2;
            }
            $$$reportNull$$$0(42);
            throw null;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
    }

    public static VarianceConflictType conflictType(Variance variance, Variance variance2) {
        Variance variance3 = Variance.IN_VARIANCE;
        return (variance == variance3 && variance2 == Variance.OUT_VARIANCE) ? VarianceConflictType.OUT_IN_IN_POSITION : (variance == Variance.OUT_VARIANCE && variance2 == variance3) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static TypeSubstitutor create(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        return new TypeSubstitutor(TypeConstructorSubstitution.Companion.create(kotlinType.getConstructor(), kotlinType.getArguments()));
    }

    public static TypeSubstitutor createChainedSubstitutor(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (typeSubstitution2 == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        if (typeSubstitution.isEmpty()) {
            typeSubstitution = typeSubstitution2;
        } else if (!typeSubstitution2.isEmpty()) {
            typeSubstitution = new DisjointKeysUnionTypeSubstitution(typeSubstitution, typeSubstitution2);
        }
        return new TypeSubstitutor(typeSubstitution);
    }

    public static String safeToString(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (DFS.isProcessCanceledException(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + "]";
        }
    }

    public final KotlinType safeSubstitute(KotlinType kotlinType, Variance variance) {
        if (kotlinType == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (variance == null) {
            $$$reportNull$$$0(10);
            throw null;
        }
        if (this.substitution.isEmpty()) {
            return kotlinType;
        }
        try {
            KotlinType type = unsafeSubstitute(new StarProjectionImpl(kotlinType, variance), null, 0).getType();
            if (type != null) {
                return type;
            }
            $$$reportNull$$$0(12);
            throw null;
        } catch (SubstitutionException e) {
            return ErrorUtils.createErrorType(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, e.getMessage());
        }
    }

    public final KotlinType substitute(KotlinType kotlinType, Variance variance) {
        if (kotlinType == null) {
            $$$reportNull$$$0(14);
            throw null;
        }
        if (variance == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        TypeSubstitution typeSubstitution = this.substitution;
        TypeProjectionBase starProjectionImpl = new StarProjectionImpl(typeSubstitution.prepareTopLevelType(kotlinType, variance), variance);
        if (!typeSubstitution.isEmpty()) {
            try {
                starProjectionImpl = unsafeSubstitute(starProjectionImpl, null, 0);
            } catch (SubstitutionException unused) {
                starProjectionImpl = null;
            }
        }
        if (typeSubstitution.approximateCapturedTypes() || typeSubstitution.approximateContravariantCapturedTypes()) {
            boolean approximateContravariantCapturedTypes = typeSubstitution.approximateContravariantCapturedTypes();
            if (starProjectionImpl != null) {
                if (!starProjectionImpl.isStarProjection()) {
                    KotlinType type = starProjectionImpl.getType();
                    type.getClass();
                    if (TypeUtils.contains(type, CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1.INSTANCE, null)) {
                        Variance projectionKind = starProjectionImpl.getProjectionKind();
                        projectionKind.getClass();
                        if (projectionKind == Variance.OUT_VARIANCE) {
                            starProjectionImpl = new StarProjectionImpl((KotlinType) ExceptionsKt.approximateCapturedTypes(type).upper, projectionKind);
                        } else if (approximateContravariantCapturedTypes) {
                            starProjectionImpl = new StarProjectionImpl((KotlinType) ExceptionsKt.approximateCapturedTypes(type).lower, projectionKind);
                        } else {
                            CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1 capturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1 = new CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1();
                            TypeSubstitutor typeSubstitutor = new TypeSubstitutor(capturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1);
                            if (!capturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1.isEmpty()) {
                                try {
                                    starProjectionImpl = typeSubstitutor.unsafeSubstitute(starProjectionImpl, null, 0);
                                } catch (SubstitutionException unused2) {
                                }
                            }
                        }
                    }
                }
            }
            starProjectionImpl = null;
        }
        if (starProjectionImpl == null) {
            return null;
        }
        return starProjectionImpl.getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TypeProjectionBase unsafeSubstitute(TypeProjectionBase typeProjectionBase, TypeParameterDescriptor typeParameterDescriptor, int i) {
        TypeSubstitutor typeSubstitutor;
        KotlinType kotlinType = null;
        if (typeProjectionBase == null) {
            $$$reportNull$$$0(18);
            throw null;
        }
        TypeSubstitution typeSubstitution = this.substitution;
        if (i > 100) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Recursion too deep. Most likely infinite loop while substituting ", safeToString(typeProjectionBase), "; substitution: ", safeToString(typeSubstitution));
            return null;
        }
        if (!typeProjectionBase.isStarProjection()) {
            KotlinType type = typeProjectionBase.getType();
            if (type instanceof TypeWithEnhancement) {
                TypeWithEnhancement typeWithEnhancement = (TypeWithEnhancement) type;
                UnwrappedType origin = typeWithEnhancement.getOrigin();
                KotlinType enhancement = typeWithEnhancement.getEnhancement();
                TypeProjectionBase unsafeSubstitute = unsafeSubstitute(new StarProjectionImpl(origin, typeProjectionBase.getProjectionKind()), typeParameterDescriptor, i + 1);
                return unsafeSubstitute.isStarProjection() ? unsafeSubstitute : new StarProjectionImpl(KotlinTypeKt.wrapEnhancement(unsafeSubstitute.getType().unwrap(), substitute(enhancement, typeProjectionBase.getProjectionKind())), unsafeSubstitute.getProjectionKind());
            }
            type.getClass();
            type.unwrap();
            if (!(type.unwrap() instanceof RawTypeImpl)) {
                TypeProjectionBase typeProjectionBase2 = typeSubstitution.get(type);
                if (typeProjectionBase2 == null) {
                    typeProjectionBase2 = null;
                } else if (type.getAnnotations().hasAnnotation(StandardNames.FqNames.unsafeVariance)) {
                    TypeConstructor constructor = typeProjectionBase2.getType().getConstructor();
                    if (constructor instanceof NewCapturedTypeConstructor) {
                        TypeProjectionBase typeProjectionBase3 = ((NewCapturedTypeConstructor) constructor).projection;
                        Variance projectionKind = typeProjectionBase3.getProjectionKind();
                        VarianceConflictType conflictType = conflictType(typeProjectionBase.getProjectionKind(), projectionKind);
                        VarianceConflictType varianceConflictType = VarianceConflictType.OUT_IN_IN_POSITION;
                        if (conflictType == varianceConflictType) {
                            typeProjectionBase2 = new StarProjectionImpl(typeProjectionBase3.getType());
                        } else if (typeParameterDescriptor != null && conflictType(typeParameterDescriptor.getVariance(), projectionKind) == varianceConflictType) {
                            typeProjectionBase2 = new StarProjectionImpl(typeProjectionBase3.getType());
                        }
                    }
                }
                Variance projectionKind2 = typeProjectionBase.getProjectionKind();
                if (typeProjectionBase2 == null && (type.unwrap() instanceof FlexibleType)) {
                    Object unwrap = type.unwrap();
                    CustomTypeParameter customTypeParameter = unwrap instanceof CustomTypeParameter ? (CustomTypeParameter) unwrap : null;
                    if (!(customTypeParameter != null ? customTypeParameter.isTypeParameter() : false)) {
                        FlexibleType flexibleType = (FlexibleType) type.unwrap();
                        SimpleType simpleType = flexibleType.upperBound;
                        SimpleType simpleType2 = flexibleType.lowerBound;
                        int i2 = i + 1;
                        TypeProjectionBase unsafeSubstitute2 = unsafeSubstitute(new StarProjectionImpl(simpleType2, projectionKind2), typeParameterDescriptor, i2);
                        TypeProjectionBase unsafeSubstitute3 = unsafeSubstitute(new StarProjectionImpl(simpleType, projectionKind2), typeParameterDescriptor, i2);
                        Variance projectionKind3 = unsafeSubstitute2.getProjectionKind();
                        if (unsafeSubstitute2.getType() != simpleType2 || unsafeSubstitute3.getType() != simpleType) {
                            return new StarProjectionImpl(KotlinTypeKt.flexibleType(KotlinTypeKt.asSimpleType(unsafeSubstitute2.getType()), KotlinTypeKt.asSimpleType(unsafeSubstitute3.getType())), projectionKind3);
                        }
                    }
                }
                if (!KotlinBuiltIns.isNothing(type) && !KotlinTypeKt.isError(type)) {
                    if (typeProjectionBase2 != null) {
                        VarianceConflictType conflictType2 = conflictType(projectionKind2, typeProjectionBase2.getProjectionKind());
                        if (!(type.getConstructor() instanceof CapturedTypeConstructor)) {
                            int i3 = AnonymousClass2.$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType[conflictType2.ordinal()];
                            if (i3 == 1) {
                                throw new SubstitutionException("Out-projection in in-position");
                            }
                            if (i3 == 2) {
                                return new StarProjectionImpl(type.getConstructor().getBuiltIns().getNullableAnyType(), Variance.OUT_VARIANCE);
                            }
                        }
                        Object unwrap2 = type.unwrap();
                        CustomTypeParameter customTypeParameter2 = unwrap2 instanceof CustomTypeParameter ? (CustomTypeParameter) unwrap2 : null;
                        if (customTypeParameter2 == null || !customTypeParameter2.isTypeParameter()) {
                            customTypeParameter2 = null;
                        }
                        if (typeProjectionBase2.isStarProjection()) {
                            return typeProjectionBase2;
                        }
                        KotlinType substitutionResult = customTypeParameter2 != null ? customTypeParameter2.substitutionResult(typeProjectionBase2.getType()) : TypeUtils.makeNullableIfNeeded(typeProjectionBase2.getType(), type.isMarkedNullable());
                        if (!type.getAnnotations().isEmpty()) {
                            Annotations filterAnnotations = typeSubstitution.filterAnnotations(type.getAnnotations());
                            if (filterAnnotations == null) {
                                $$$reportNull$$$0(33);
                                throw null;
                            }
                            if (filterAnnotations.hasAnnotation(StandardNames.FqNames.unsafeVariance)) {
                                filterAnnotations = new FilteredAnnotations(filterAnnotations, new AnonymousClass1());
                            }
                            substitutionResult = OperationKt.replaceAnnotations(substitutionResult, new AnnotationsImpl(new Annotations[]{substitutionResult.getAnnotations(), filterAnnotations}));
                        }
                        if (conflictType2 == VarianceConflictType.NO_CONFLICT) {
                            projectionKind2 = combine(projectionKind2, typeProjectionBase2.getProjectionKind());
                        }
                        return new StarProjectionImpl(substitutionResult, projectionKind2);
                    }
                    KotlinType type2 = typeProjectionBase.getType();
                    Variance projectionKind4 = typeProjectionBase.getProjectionKind();
                    if (!(type2.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor)) {
                        UnwrappedType unwrap3 = type2.unwrap();
                        AbbreviatedType abbreviatedType = unwrap3 instanceof AbbreviatedType ? (AbbreviatedType) unwrap3 : null;
                        SimpleType simpleType3 = abbreviatedType != null ? abbreviatedType.abbreviation : null;
                        if (simpleType3 != null) {
                            if (typeSubstitution instanceof IndexedParametersSubstitution) {
                                IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
                                if (indexedParametersSubstitution.approximateContravariantCapturedTypes) {
                                    typeSubstitutor = new TypeSubstitutor(new IndexedParametersSubstitution(indexedParametersSubstitution.parameters, indexedParametersSubstitution.arguments, false));
                                    kotlinType = typeSubstitutor.substitute(simpleType3, Variance.INVARIANT);
                                }
                            }
                            typeSubstitutor = this;
                            kotlinType = typeSubstitutor.substitute(simpleType3, Variance.INVARIANT);
                        }
                        List parameters = type2.getConstructor().getParameters();
                        List arguments = type2.getArguments();
                        ArrayList arrayList = new ArrayList(parameters.size());
                        boolean z = false;
                        for (int i4 = 0; i4 < parameters.size(); i4++) {
                            TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) parameters.get(i4);
                            TypeProjectionBase typeProjectionBase4 = (TypeProjectionBase) arguments.get(i4);
                            TypeProjectionBase unsafeSubstitute4 = unsafeSubstitute(typeProjectionBase4, typeParameterDescriptor2, i + 1);
                            int i5 = AnonymousClass2.$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType[conflictType(typeParameterDescriptor2.getVariance(), unsafeSubstitute4.getProjectionKind()).ordinal()];
                            if (i5 == 1 || i5 == 2) {
                                unsafeSubstitute4 = TypeUtils.makeStarProjection(typeParameterDescriptor2);
                            } else if (i5 == 3) {
                                Variance variance = typeParameterDescriptor2.getVariance();
                                Variance variance2 = Variance.INVARIANT;
                                if (variance != variance2 && !unsafeSubstitute4.isStarProjection()) {
                                    unsafeSubstitute4 = new StarProjectionImpl(unsafeSubstitute4.getType(), variance2);
                                }
                            }
                            if (unsafeSubstitute4 != typeProjectionBase4) {
                                z = true;
                            }
                            arrayList.add(unsafeSubstitute4);
                        }
                        if (z) {
                            arguments = arrayList;
                        }
                        Annotations filterAnnotations2 = typeSubstitution.filterAnnotations(type2.getAnnotations());
                        arguments.getClass();
                        filterAnnotations2.getClass();
                        KotlinType replace$default = KotlinTypeKt.replace$default(type2, arguments, filterAnnotations2, 4);
                        if ((replace$default instanceof SimpleType) && (kotlinType instanceof SimpleType)) {
                            replace$default = KotlinTypeKt.withAbbreviation((SimpleType) replace$default, (SimpleType) kotlinType);
                        }
                        return new StarProjectionImpl(replace$default, projectionKind4);
                    }
                }
            }
        }
        return typeProjectionBase;
    }
}
