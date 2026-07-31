package kotlin.reflect.jvm.internal.impl.types.checker;

import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NotNullTypeParameterImpl;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KotlinTypePreparator$Default implements ClassicTypeSystemContext {
    public static final KotlinTypePreparator$Default INSTANCE = new KotlinTypePreparator$Default();
    public static final KotlinTypePreparator$Default INSTANCE$1 = new KotlinTypePreparator$Default();

    /* JADX WARN: Multi-variable type inference failed */
    public static SimpleType transformToNewType(SimpleType simpleType) {
        KotlinType type;
        TypeConstructor constructor = simpleType.getConstructor();
        int i = 0;
        TypeParameterDescriptor typeParameterDescriptor = null;
        UnwrappedType unwrappedType = null;
        if (constructor instanceof CapturedTypeConstructorImpl) {
            CapturedTypeConstructorImpl capturedTypeConstructorImpl = (CapturedTypeConstructorImpl) constructor;
            TypeProjectionBase typeProjectionBase = capturedTypeConstructorImpl.projection;
            TypeProjectionBase typeProjectionBase2 = typeProjectionBase.getProjectionKind() == Variance.IN_VARIANCE ? typeProjectionBase : null;
            UnwrappedType unwrap = (typeProjectionBase2 == null || (type = typeProjectionBase2.getType()) == null) ? null : type.unwrap();
            NewCapturedTypeConstructor newCapturedTypeConstructor = capturedTypeConstructorImpl.newTypeConstructor;
            if (newCapturedTypeConstructor == null) {
                Collection supertypes = capturedTypeConstructorImpl.getSupertypes();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(supertypes, 10));
                Iterator it = supertypes.iterator();
                while (it.hasNext()) {
                    arrayList.add(((KotlinType) it.next()).unwrap());
                }
                newCapturedTypeConstructor = new NewCapturedTypeConstructor(typeProjectionBase, new NewCapturedTypeConstructor.AnonymousClass1(i, arrayList), typeParameterDescriptor, 8);
                capturedTypeConstructorImpl.newTypeConstructor = newCapturedTypeConstructor;
            }
            return new NewCapturedType(CaptureStatus.FOR_SUBTYPING, newCapturedTypeConstructor, unwrap, simpleType.getAttributes(), simpleType.isMarkedNullable(), 32);
        }
        if (!(constructor instanceof IntersectionTypeConstructor) || !simpleType.isMarkedNullable()) {
            return simpleType;
        }
        IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) constructor;
        LinkedHashSet<KotlinType> linkedHashSet = intersectionTypeConstructor.intersectedTypes;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(linkedHashSet, 10));
        for (KotlinType kotlinType : linkedHashSet) {
            kotlinType.getClass();
            UnwrappedType makeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(kotlinType, true);
            makeNullableAsSpecified.getClass();
            arrayList2.add(makeNullableAsSpecified);
            i = 1;
        }
        if (i != 0) {
            KotlinType kotlinType2 = intersectionTypeConstructor.alternative;
            if (kotlinType2 != null) {
                unwrappedType = TypeUtils.makeNullableAsSpecified(kotlinType2, true);
                unwrappedType.getClass();
            }
            arrayList2.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList2);
            linkedHashSet2.hashCode();
            IntersectionTypeConstructor intersectionTypeConstructor2 = new IntersectionTypeConstructor(linkedHashSet2);
            intersectionTypeConstructor2.alternative = unwrappedType;
            typeParameterDescriptor = intersectionTypeConstructor2;
        }
        if (typeParameterDescriptor != null) {
            intersectionTypeConstructor = typeParameterDescriptor;
        }
        return intersectionTypeConstructor.createType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean areEqualTypeConstructors(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2) {
        return UtilsKt.areEqualTypeConstructors(typeConstructorMarker, typeConstructorMarker2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public int argumentsCount(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.argumentsCount(kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeArgumentListMarker asArgumentList(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.asArgumentList(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public CapturedTypeMarker asCapturedType(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.asCapturedType(this, simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public DefinitelyNotNullType asDefinitelyNotNullType(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.asDefinitelyNotNullType(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public FlexibleType asFlexibleType(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.asFlexibleType(kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType asSimpleType(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.asSimpleType(kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public StarProjectionImpl asTypeArgument(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.asTypeArgument(kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType captureFromArguments(SimpleTypeMarker simpleTypeMarker, CaptureStatus captureStatus) {
        return UtilsKt.captureFromArguments(simpleTypeMarker, captureStatus);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public CaptureStatus captureStatus(CapturedTypeMarker capturedTypeMarker) {
        return UtilsKt.captureStatus(capturedTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public UnwrappedType createFlexibleType(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        return UtilsKt.createFlexibleType(this, simpleTypeMarker, simpleTypeMarker2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeProjectionBase get(TypeArgumentListMarker typeArgumentListMarker, int i) {
        typeArgumentListMarker.getClass();
        if (typeArgumentListMarker instanceof SimpleTypeMarker) {
            return UtilsKt.getArgument((KotlinTypeMarker) typeArgumentListMarker, i);
        }
        if (typeArgumentListMarker instanceof ArgumentList) {
            E e = ((ArgumentList) typeArgumentListMarker).get(i);
            e.getClass();
            return (TypeProjectionBase) e;
        }
        StringBuilder sb = new StringBuilder("unknown type argument list type: ");
        sb.append(typeArgumentListMarker);
        Gson$$ExternalSyntheticBUOutline0.m(sb, ", ", Reflection.factory.getOrCreateKotlinClass(typeArgumentListMarker.getClass()));
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeProjectionBase getArgument(KotlinTypeMarker kotlinTypeMarker, int i) {
        return UtilsKt.getArgument(kotlinTypeMarker, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeProjectionBase getArgumentOrNull(SimpleTypeMarker simpleTypeMarker, int i) {
        simpleTypeMarker.getClass();
        if (i < 0 || i >= UtilsKt.argumentsCount(simpleTypeMarker)) {
            return null;
        }
        return UtilsKt.getArgument(simpleTypeMarker, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeParameterDescriptor getParameter(TypeConstructorMarker typeConstructorMarker, int i) {
        return UtilsKt.getParameter(typeConstructorMarker, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public UnwrappedType getType(TypeProjectionBase typeProjectionBase) {
        return UtilsKt.getType(typeProjectionBase);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeVariance getVariance(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        Variance variance = typeParameterDescriptor.getVariance();
        variance.getClass();
        return Operation$State.convertVariance(variance);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean hasFlexibleNullability(UnwrappedType unwrappedType) {
        unwrappedType.getClass();
        return UtilsKt.isMarkedNullable(lowerBoundIfFlexible(unwrappedType)) != UtilsKt.isMarkedNullable(upperBoundIfFlexible(unwrappedType));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean hasRecursiveBounds(TypeParameterDescriptor typeParameterDescriptor, TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.hasRecursiveBounds(typeParameterDescriptor, typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        return UtilsKt.identicalArguments(simpleTypeMarker, simpleTypeMarker2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public UnwrappedType intersectTypes(ArrayList arrayList) {
        SimpleType simpleType;
        int size = arrayList.size();
        if (size == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Expected some types");
            return null;
        }
        if (size == 1) {
            return (UnwrappedType) CollectionsKt.single((List) arrayList);
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            UnwrappedType unwrappedType = (UnwrappedType) it.next();
            z = z || KotlinTypeKt.isError(unwrappedType);
            if (unwrappedType instanceof SimpleType) {
                simpleType = (SimpleType) unwrappedType;
            } else {
                if (!(unwrappedType instanceof FlexibleType)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                simpleType = ((FlexibleType) unwrappedType).lowerBound;
                z2 = true;
            }
            arrayList2.add(simpleType);
        }
        if (z) {
            return ErrorUtils.createErrorType(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, arrayList.toString());
        }
        TypeIntersector typeIntersector = TypeIntersector.INSTANCE;
        if (!z2) {
            return typeIntersector.intersectTypes$descriptors(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(KotlinTypeKt.upperIfFlexible((UnwrappedType) it2.next()));
        }
        return KotlinTypeKt.flexibleType(typeIntersector.intersectTypes$descriptors(arrayList2), typeIntersector.intersectTypes$descriptors(arrayList3));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isAnyConstructor(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isAnyConstructor(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isCapturedType(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        SimpleType asSimpleType = UtilsKt.asSimpleType(simpleTypeMarker);
        return (asSimpleType != null ? UtilsKt.asCapturedType(this, asSimpleType) : null) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isClassType(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        return UtilsKt.isClassTypeConstructor(UtilsKt.typeConstructor(simpleTypeMarker));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isClassTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isClassTypeConstructor(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isCommonFinalClassConstructor(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isCommonFinalClassConstructor(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isDefinitelyNotNullType(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
        return (asSimpleType != null ? UtilsKt.asDefinitelyNotNullType(asSimpleType) : null) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isDenotable(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isDenotable(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public void isDynamic(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        UtilsKt.asFlexibleType(kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isError(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.isError(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isIntegerLiteralType(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        return UtilsKt.isIntegerLiteralTypeConstructor(UtilsKt.typeConstructor(simpleTypeMarker));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isIntegerLiteralTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isIntegerLiteralTypeConstructor(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isIntersection(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isIntersection(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isMarkedNullable(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.isMarkedNullable(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isNotNullTypeParameter(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return kotlinTypeMarker instanceof NotNullTypeParameterImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isNothing(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        return UtilsKt.isNothingConstructor(typeConstructor((KotlinTypeMarker) simpleTypeMarker)) && !UtilsKt.isNullableType(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isNothingConstructor(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.isNothingConstructor(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isOldCapturedType(CapturedTypeMarker capturedTypeMarker) {
        return capturedTypeMarker instanceof CapturedType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isProjectionNotNull(CapturedTypeMarker capturedTypeMarker) {
        return UtilsKt.isProjectionNotNull(capturedTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public boolean isStarProjection(TypeProjectionBase typeProjectionBase) {
        return UtilsKt.isStarProjection(typeProjectionBase);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public void isStubType(SimpleTypeMarker simpleTypeMarker) {
        UtilsKt.isStubType(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public void isStubTypeForBuilderInference(SimpleTypeMarker simpleTypeMarker) {
        UtilsKt.isStubTypeForBuilderInference(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType lowerBound(FlexibleType flexibleType) {
        return UtilsKt.lowerBound(flexibleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType lowerBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
        SimpleType lowerBound;
        kotlinTypeMarker.getClass();
        FlexibleType asFlexibleType = UtilsKt.asFlexibleType(kotlinTypeMarker);
        if (asFlexibleType != null && (lowerBound = UtilsKt.lowerBound(asFlexibleType)) != null) {
            return lowerBound;
        }
        SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
        asSimpleType.getClass();
        return asSimpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public UnwrappedType lowerType(CapturedTypeMarker capturedTypeMarker) {
        return UtilsKt.lowerType(capturedTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public UnwrappedType makeDefinitelyNotNullOrNotNull(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.makeDefinitelyNotNullOrNotNull(kotlinTypeMarker);
    }

    public KotlinTypeMarker makeNullable(KotlinTypeMarker kotlinTypeMarker) {
        SimpleType withNullability;
        kotlinTypeMarker.getClass();
        SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
        return (asSimpleType == null || (withNullability = UtilsKt.withNullability((SimpleTypeMarker) asSimpleType, true)) == null) ? kotlinTypeMarker : withNullability;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType original(DefinitelyNotNullType definitelyNotNullType) {
        return definitelyNotNullType.original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleTypeMarker originalIfDefinitelyNotNullable(SimpleTypeMarker simpleTypeMarker) {
        SimpleType simpleType;
        simpleTypeMarker.getClass();
        DefinitelyNotNullType asDefinitelyNotNullType = UtilsKt.asDefinitelyNotNullType(simpleTypeMarker);
        return (asDefinitelyNotNullType == null || (simpleType = asDefinitelyNotNullType.original) == null) ? simpleTypeMarker : simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public int parametersCount(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.parametersCount(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public Collection possibleIntegerTypes(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.possibleIntegerTypes(this, simpleTypeMarker);
    }

    public UnwrappedType prepareType(KotlinTypeMarker kotlinTypeMarker) {
        UnwrappedType flexibleType;
        kotlinTypeMarker.getClass();
        if (!(kotlinTypeMarker instanceof KotlinType)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
            return null;
        }
        UnwrappedType unwrap = ((KotlinType) kotlinTypeMarker).unwrap();
        if (unwrap instanceof SimpleType) {
            flexibleType = transformToNewType((SimpleType) unwrap);
        } else {
            if (!(unwrap instanceof FlexibleType)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            FlexibleType flexibleType2 = (FlexibleType) unwrap;
            SimpleType simpleType = flexibleType2.upperBound;
            SimpleType simpleType2 = flexibleType2.lowerBound;
            SimpleType transformToNewType = transformToNewType(simpleType2);
            SimpleType transformToNewType2 = transformToNewType(simpleType);
            flexibleType = (transformToNewType == simpleType2 && transformToNewType2 == simpleType) ? unwrap : KotlinTypeKt.flexibleType(transformToNewType, transformToNewType2);
        }
        KotlinType enhancement = KotlinTypeKt.getEnhancement(unwrap);
        return KotlinTypeKt.wrapEnhancement(flexibleType, enhancement != null ? prepareType(enhancement) : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeProjectionBase projection(CapturedTypeConstructor capturedTypeConstructor) {
        return UtilsKt.projection(capturedTypeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public int size(TypeArgumentListMarker typeArgumentListMarker) {
        typeArgumentListMarker.getClass();
        if (typeArgumentListMarker instanceof SimpleTypeMarker) {
            return UtilsKt.argumentsCount((KotlinTypeMarker) typeArgumentListMarker);
        }
        if (typeArgumentListMarker instanceof ArgumentList) {
            return ((ArgumentList) typeArgumentListMarker).size();
        }
        StringBuilder sb = new StringBuilder("unknown type argument list type: ");
        sb.append(typeArgumentListMarker);
        Gson$$ExternalSyntheticBUOutline0.m(sb, ", ", Reflection.factory.getOrCreateKotlinClass(typeArgumentListMarker.getClass()));
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public ClassicTypeSystemContext$substitutionSupertypePolicy$2 substitutionSupertypePolicy(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.substitutionSupertypePolicy(this, simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public Collection supertypes(TypeConstructorMarker typeConstructorMarker) {
        return UtilsKt.supertypes(typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeConstructor typeConstructor(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
        if (asSimpleType == null) {
            asSimpleType = lowerBoundIfFlexible(kotlinTypeMarker);
        }
        return UtilsKt.typeConstructor(asSimpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType upperBound(FlexibleType flexibleType) {
        return UtilsKt.upperBound(flexibleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType upperBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
        SimpleType upperBound;
        kotlinTypeMarker.getClass();
        FlexibleType asFlexibleType = UtilsKt.asFlexibleType(kotlinTypeMarker);
        if (asFlexibleType != null && (upperBound = UtilsKt.upperBound(asFlexibleType)) != null) {
            return upperBound;
        }
        SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
        asSimpleType.getClass();
        return asSimpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public SimpleType withNullability(SimpleTypeMarker simpleTypeMarker, boolean z) {
        return UtilsKt.withNullability(simpleTypeMarker, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public KotlinTypeMarker withNullability(KotlinTypeMarker kotlinTypeMarker) {
        return UtilsKt.withNullability(this, kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeVariance getVariance(TypeProjectionBase typeProjectionBase) {
        return UtilsKt.getVariance(typeProjectionBase);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public TypeConstructor typeConstructor(SimpleTypeMarker simpleTypeMarker) {
        return UtilsKt.typeConstructor(simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public NewCapturedTypeConstructor typeConstructor(CapturedTypeMarker capturedTypeMarker) {
        return UtilsKt.typeConstructor(capturedTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
    public void fastCorrespondingSupertypes(SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
    }
}
