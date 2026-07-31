package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ClassicTypeSystemContext {
    boolean areEqualTypeConstructors(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2);

    int argumentsCount(KotlinTypeMarker kotlinTypeMarker);

    TypeArgumentListMarker asArgumentList(SimpleTypeMarker simpleTypeMarker);

    CapturedTypeMarker asCapturedType(SimpleTypeMarker simpleTypeMarker);

    DefinitelyNotNullType asDefinitelyNotNullType(SimpleTypeMarker simpleTypeMarker);

    FlexibleType asFlexibleType(KotlinTypeMarker kotlinTypeMarker);

    SimpleType asSimpleType(KotlinTypeMarker kotlinTypeMarker);

    StarProjectionImpl asTypeArgument(KotlinTypeMarker kotlinTypeMarker);

    SimpleType captureFromArguments(SimpleTypeMarker simpleTypeMarker, CaptureStatus captureStatus);

    CaptureStatus captureStatus(CapturedTypeMarker capturedTypeMarker);

    UnwrappedType createFlexibleType(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);

    void fastCorrespondingSupertypes(SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker);

    TypeProjectionBase get(TypeArgumentListMarker typeArgumentListMarker, int i);

    TypeProjectionBase getArgument(KotlinTypeMarker kotlinTypeMarker, int i);

    TypeProjectionBase getArgumentOrNull(SimpleTypeMarker simpleTypeMarker, int i);

    TypeParameterDescriptor getParameter(TypeConstructorMarker typeConstructorMarker, int i);

    UnwrappedType getType(TypeProjectionBase typeProjectionBase);

    TypeVariance getVariance(TypeParameterDescriptor typeParameterDescriptor);

    TypeVariance getVariance(TypeProjectionBase typeProjectionBase);

    boolean hasFlexibleNullability(UnwrappedType unwrappedType);

    boolean hasRecursiveBounds(TypeParameterDescriptor typeParameterDescriptor, TypeConstructorMarker typeConstructorMarker);

    boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);

    UnwrappedType intersectTypes(ArrayList arrayList);

    boolean isAnyConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isCapturedType(SimpleTypeMarker simpleTypeMarker);

    boolean isClassType(SimpleTypeMarker simpleTypeMarker);

    boolean isClassTypeConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isCommonFinalClassConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isDefinitelyNotNullType(KotlinTypeMarker kotlinTypeMarker);

    boolean isDenotable(TypeConstructorMarker typeConstructorMarker);

    void isDynamic(KotlinTypeMarker kotlinTypeMarker);

    boolean isError(SimpleTypeMarker simpleTypeMarker);

    boolean isIntegerLiteralType(SimpleTypeMarker simpleTypeMarker);

    boolean isIntegerLiteralTypeConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isIntersection(TypeConstructorMarker typeConstructorMarker);

    boolean isMarkedNullable(SimpleTypeMarker simpleTypeMarker);

    boolean isNotNullTypeParameter(KotlinTypeMarker kotlinTypeMarker);

    boolean isNothing(SimpleTypeMarker simpleTypeMarker);

    boolean isNothingConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isOldCapturedType(CapturedTypeMarker capturedTypeMarker);

    boolean isProjectionNotNull(CapturedTypeMarker capturedTypeMarker);

    boolean isStarProjection(TypeProjectionBase typeProjectionBase);

    void isStubType(SimpleTypeMarker simpleTypeMarker);

    void isStubTypeForBuilderInference(SimpleTypeMarker simpleTypeMarker);

    SimpleType lowerBound(FlexibleType flexibleType);

    SimpleType lowerBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker);

    UnwrappedType lowerType(CapturedTypeMarker capturedTypeMarker);

    UnwrappedType makeDefinitelyNotNullOrNotNull(KotlinTypeMarker kotlinTypeMarker);

    SimpleType original(DefinitelyNotNullType definitelyNotNullType);

    SimpleTypeMarker originalIfDefinitelyNotNullable(SimpleTypeMarker simpleTypeMarker);

    int parametersCount(TypeConstructorMarker typeConstructorMarker);

    Collection possibleIntegerTypes(SimpleTypeMarker simpleTypeMarker);

    TypeProjectionBase projection(CapturedTypeConstructor capturedTypeConstructor);

    int size(TypeArgumentListMarker typeArgumentListMarker);

    ClassicTypeSystemContext$substitutionSupertypePolicy$2 substitutionSupertypePolicy(SimpleTypeMarker simpleTypeMarker);

    Collection supertypes(TypeConstructorMarker typeConstructorMarker);

    TypeConstructor typeConstructor(KotlinTypeMarker kotlinTypeMarker);

    TypeConstructor typeConstructor(SimpleTypeMarker simpleTypeMarker);

    NewCapturedTypeConstructor typeConstructor(CapturedTypeMarker capturedTypeMarker);

    SimpleType upperBound(FlexibleType flexibleType);

    SimpleType upperBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker);

    SimpleType withNullability(SimpleTypeMarker simpleTypeMarker, boolean z);

    KotlinTypeMarker withNullability(KotlinTypeMarker kotlinTypeMarker);
}
