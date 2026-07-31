package kotlin.reflect.jvm.internal.impl.types;

import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$requiresTypeAliasExpansion$1;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import okhttp3.FormBody;
import okio.internal.DefaultSocket;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeAliasExpander {
    public static final TypeAliasExpander INSTANCE = new TypeAliasExpander();

    public static final boolean checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        if (classicTypeSystemContext.isIntegerLiteralType(simpleTypeMarker)) {
            return true;
        }
        if (!(simpleTypeMarker instanceof CapturedTypeMarker)) {
            return false;
        }
        TypeProjectionBase projection = classicTypeSystemContext.projection(classicTypeSystemContext.typeConstructor((CapturedTypeMarker) simpleTypeMarker));
        return !classicTypeSystemContext.isStarProjection(projection) && classicTypeSystemContext.isIntegerLiteralType(classicTypeSystemContext.upperBoundIfFlexible(classicTypeSystemContext.getType(projection)));
    }

    public static final boolean checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(ClassicTypeSystemContext classicTypeSystemContext, TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2, boolean z) {
        Collection<KotlinTypeMarker> possibleIntegerTypes = classicTypeSystemContext.possibleIntegerTypes(simpleTypeMarker);
        if ((possibleIntegerTypes instanceof Collection) && possibleIntegerTypes.isEmpty()) {
            return false;
        }
        for (KotlinTypeMarker kotlinTypeMarker : possibleIntegerTypes) {
            if (Intrinsics.areEqual(classicTypeSystemContext.typeConstructor(kotlinTypeMarker), classicTypeSystemContext.typeConstructor(simpleTypeMarker2))) {
                return true;
            }
            if (z && isSubtypeOf$default(INSTANCE, typeCheckerState, simpleTypeMarker2, kotlinTypeMarker)) {
                return true;
            }
        }
        return false;
    }

    public static List collectAllSupertypesWithGivenTypeConstructor(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        KotlinTypeKt substitutionSupertypePolicy;
        TypeCheckerState$SupertypesPolicy$None typeCheckerState$SupertypesPolicy$None = TypeCheckerState$SupertypesPolicy$None.INSTANCE;
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        classicTypeSystemContext.fastCorrespondingSupertypes(simpleTypeMarker, typeConstructorMarker);
        if (classicTypeSystemContext.isClassTypeConstructor(typeConstructorMarker) || !classicTypeSystemContext.isClassType(simpleTypeMarker)) {
            if (!classicTypeSystemContext.isCommonFinalClassConstructor(typeConstructorMarker)) {
                SmartList smartList = new SmartList();
                typeCheckerState.initialize();
                ArrayDeque arrayDeque = typeCheckerState.supertypesDeque;
                arrayDeque.getClass();
                SmartSet smartSet = typeCheckerState.supertypesSet;
                smartSet.getClass();
                arrayDeque.push(simpleTypeMarker);
                while (!arrayDeque.isEmpty()) {
                    if (smartSet.size > 1000) {
                        StringBuilder sb = new StringBuilder("Too many supertypes for type: ");
                        sb.append(simpleTypeMarker);
                        Gson$$ExternalSyntheticBUOutline0.m(sb, (Object) ". Supertypes = ", (Object) CollectionsKt.joinToString$default(smartSet, null, null, null, null, 63));
                        return null;
                    }
                    SimpleTypeMarker simpleTypeMarker2 = (SimpleTypeMarker) arrayDeque.pop();
                    simpleTypeMarker2.getClass();
                    if (smartSet.add(simpleTypeMarker2)) {
                        SimpleType captureFromArguments = classicTypeSystemContext.captureFromArguments(simpleTypeMarker2, CaptureStatus.FOR_SUBTYPING);
                        if (captureFromArguments == null) {
                            captureFromArguments = simpleTypeMarker2;
                        }
                        if (classicTypeSystemContext.areEqualTypeConstructors(classicTypeSystemContext.typeConstructor((SimpleTypeMarker) captureFromArguments), typeConstructorMarker)) {
                            smartList.add(captureFromArguments);
                            substitutionSupertypePolicy = typeCheckerState$SupertypesPolicy$None;
                        } else {
                            substitutionSupertypePolicy = classicTypeSystemContext.argumentsCount(captureFromArguments) == 0 ? TypeCheckerState$SupertypesPolicy$None.INSTANCE$1 : classicTypeSystemContext.substitutionSupertypePolicy(captureFromArguments);
                        }
                        KotlinTypeKt kotlinTypeKt = substitutionSupertypePolicy.equals(typeCheckerState$SupertypesPolicy$None) ? null : substitutionSupertypePolicy;
                        if (kotlinTypeKt != null) {
                            Iterator it = classicTypeSystemContext.supertypes(classicTypeSystemContext.typeConstructor(simpleTypeMarker2)).iterator();
                            while (it.hasNext()) {
                                arrayDeque.add(kotlinTypeKt.transformType(typeCheckerState, (KotlinTypeMarker) it.next()));
                            }
                        }
                    }
                }
                typeCheckerState.clear();
                return smartList;
            }
            if (classicTypeSystemContext.areEqualTypeConstructors(classicTypeSystemContext.typeConstructor(simpleTypeMarker), typeConstructorMarker)) {
                SimpleType captureFromArguments2 = classicTypeSystemContext.captureFromArguments(simpleTypeMarker, CaptureStatus.FOR_SUBTYPING);
                if (captureFromArguments2 != null) {
                    simpleTypeMarker = captureFromArguments2;
                }
                return Room.listOf(simpleTypeMarker);
            }
        }
        return EmptyList.INSTANCE;
    }

    public static List collectAndFilter(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        int i;
        List collectAllSupertypesWithGivenTypeConstructor = collectAllSupertypesWithGivenTypeConstructor(typeCheckerState, simpleTypeMarker, typeConstructorMarker);
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        if (collectAllSupertypesWithGivenTypeConstructor.size() >= 2) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectAllSupertypesWithGivenTypeConstructor) {
                TypeArgumentListMarker asArgumentList = classicTypeSystemContext.asArgumentList((SimpleTypeMarker) obj);
                int size = classicTypeSystemContext.size(asArgumentList);
                while (true) {
                    if (i >= size) {
                        arrayList.add(obj);
                        break;
                    }
                    i = classicTypeSystemContext.asFlexibleType(classicTypeSystemContext.getType(classicTypeSystemContext.get(asArgumentList, i))) == null ? i + 1 : 0;
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return collectAllSupertypesWithGivenTypeConstructor;
    }

    public static boolean equalTypes(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        KotlinTypePreparator$Default kotlinTypePreparator$Default = typeCheckerState.kotlinTypePreparator;
        kotlinTypeMarker.getClass();
        kotlinTypeMarker2.getClass();
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        if (isCommonDenotableType(classicTypeSystemContext, kotlinTypeMarker) && isCommonDenotableType(classicTypeSystemContext, kotlinTypeMarker2)) {
            UnwrappedType prepareType = kotlinTypePreparator$Default.prepareType((KotlinType) kotlinTypeMarker);
            UnwrappedType prepareType2 = kotlinTypePreparator$Default.prepareType((KotlinType) kotlinTypeMarker2);
            SimpleType lowerBoundIfFlexible = classicTypeSystemContext.lowerBoundIfFlexible(prepareType);
            if (!classicTypeSystemContext.areEqualTypeConstructors(classicTypeSystemContext.typeConstructor(prepareType), classicTypeSystemContext.typeConstructor(prepareType2))) {
                return false;
            }
            if (classicTypeSystemContext.argumentsCount(lowerBoundIfFlexible) == 0) {
                return classicTypeSystemContext.hasFlexibleNullability(prepareType) || classicTypeSystemContext.hasFlexibleNullability(prepareType2) || classicTypeSystemContext.isMarkedNullable(lowerBoundIfFlexible) == classicTypeSystemContext.isMarkedNullable(classicTypeSystemContext.lowerBoundIfFlexible(prepareType2));
            }
        }
        TypeAliasExpander typeAliasExpander = INSTANCE;
        return isSubtypeOf$default(typeAliasExpander, typeCheckerState, kotlinTypeMarker, kotlinTypeMarker2) && isSubtypeOf$default(typeAliasExpander, typeCheckerState, kotlinTypeMarker2, kotlinTypeMarker);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        return r6.getParameter(r6.typeConstructor(r7), r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor getTypeParameterForArgumentInBaseIfItEqualToTarget(kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext r6, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r7, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r8) {
        /*
            int r0 = r6.argumentsCount(r7)
            r1 = 0
            r2 = r1
        L6:
            r3 = 0
            if (r2 >= r0) goto L66
            kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase r4 = r6.getArgument(r7, r2)
            boolean r5 = r6.isStarProjection(r4)
            if (r5 != 0) goto L14
            r3 = r4
        L14:
            if (r3 == 0) goto L63
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r3 = r6.getType(r3)
            if (r3 != 0) goto L1d
            goto L63
        L1d:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r4 = r6.lowerBoundIfFlexible(r3)
            kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r4 = r6.originalIfDefinitelyNotNullable(r4)
            boolean r4 = r6.isCapturedType(r4)
            if (r4 == 0) goto L3b
            kotlin.reflect.jvm.internal.impl.types.SimpleType r4 = r6.lowerBoundIfFlexible(r8)
            kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r4 = r6.originalIfDefinitelyNotNullable(r4)
            boolean r4 = r6.isCapturedType(r4)
            if (r4 == 0) goto L3b
            r4 = 1
            goto L3c
        L3b:
            r4 = r1
        L3c:
            boolean r5 = r3.equals(r8)
            if (r5 != 0) goto L5a
            if (r4 == 0) goto L53
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r4 = r6.typeConstructor(r3)
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r5 = r6.typeConstructor(r8)
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L53
            goto L5a
        L53:
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r3 = getTypeParameterForArgumentInBaseIfItEqualToTarget(r6, r3, r8)
            if (r3 == 0) goto L63
            return r3
        L5a:
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r7 = r6.typeConstructor(r7)
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r6 = r6.getParameter(r7, r2)
            return r6
        L63:
            int r2 = r2 + 1
            goto L6
        L66:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander.getTypeParameterForArgumentInBaseIfItEqualToTarget(kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker):kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor");
    }

    public static boolean isCommonDenotableType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
        if (!classicTypeSystemContext.isDenotable(classicTypeSystemContext.typeConstructor(kotlinTypeMarker))) {
            return false;
        }
        classicTypeSystemContext.isDynamic(kotlinTypeMarker);
        return (classicTypeSystemContext.isDefinitelyNotNullType(kotlinTypeMarker) || classicTypeSystemContext.isNotNullTypeParameter(kotlinTypeMarker) || !Intrinsics.areEqual(classicTypeSystemContext.typeConstructor((SimpleTypeMarker) classicTypeSystemContext.lowerBoundIfFlexible(kotlinTypeMarker)), classicTypeSystemContext.typeConstructor((SimpleTypeMarker) classicTypeSystemContext.upperBoundIfFlexible(kotlinTypeMarker)))) ? false : true;
    }

    public static boolean isSubtypeForSameConstructor(TypeCheckerState typeCheckerState, TypeArgumentListMarker typeArgumentListMarker, SimpleTypeMarker simpleTypeMarker) {
        boolean equalTypes;
        typeArgumentListMarker.getClass();
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        TypeConstructor typeConstructor = classicTypeSystemContext.typeConstructor(simpleTypeMarker);
        int size = classicTypeSystemContext.size(typeArgumentListMarker);
        int parametersCount = classicTypeSystemContext.parametersCount(typeConstructor);
        if (size == parametersCount && size == classicTypeSystemContext.argumentsCount(simpleTypeMarker)) {
            for (int i = 0; i < parametersCount; i++) {
                TypeProjectionBase argument = classicTypeSystemContext.getArgument(simpleTypeMarker, i);
                if (!classicTypeSystemContext.isStarProjection(argument)) {
                    UnwrappedType type = classicTypeSystemContext.getType(argument);
                    TypeProjectionBase typeProjectionBase = classicTypeSystemContext.get(typeArgumentListMarker, i);
                    classicTypeSystemContext.getVariance(typeProjectionBase);
                    TypeVariance typeVariance = TypeVariance.INV;
                    UnwrappedType type2 = classicTypeSystemContext.getType(typeProjectionBase);
                    TypeVariance variance = classicTypeSystemContext.getVariance(classicTypeSystemContext.getParameter(typeConstructor, i));
                    TypeVariance variance2 = classicTypeSystemContext.getVariance(argument);
                    variance.getClass();
                    variance2.getClass();
                    if (variance == typeVariance) {
                        variance = variance2;
                    } else if (variance2 != typeVariance && variance != variance2) {
                        variance = null;
                    }
                    if (variance == null) {
                        return typeCheckerState.isErrorTypeEqualsToAnything;
                    }
                    if (variance == typeVariance) {
                        isTypeVariableAgainstStarProjectionForSelfType(classicTypeSystemContext, type2, type);
                        isTypeVariableAgainstStarProjectionForSelfType(classicTypeSystemContext, type, type2);
                    }
                    int i2 = typeCheckerState.argumentsDepth;
                    if (i2 > 100) {
                        Gson$$ExternalSyntheticBUOutline0.m$8("Arguments depth is too high. Some related argument: ", type2);
                        return false;
                    }
                    typeCheckerState.argumentsDepth = i2 + 1;
                    int i3 = AbstractTypeChecker$WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
                    if (i3 != 1) {
                        TypeAliasExpander typeAliasExpander = INSTANCE;
                        if (i3 == 2) {
                            equalTypes = isSubtypeOf$default(typeAliasExpander, typeCheckerState, type2, type);
                        } else {
                            if (i3 != 3) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return false;
                            }
                            equalTypes = isSubtypeOf$default(typeAliasExpander, typeCheckerState, type, type2);
                        }
                    } else {
                        equalTypes = equalTypes(typeCheckerState, type2, type);
                    }
                    typeCheckerState.argumentsDepth--;
                    if (!equalTypes) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:281:0x02bf, code lost:
    
        r7 = java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x02bd, code lost:
    
        if (checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(r4, r24, r9, r7, true) != false) goto L174;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02c8  */
    /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext] */
    /* JADX WARN: Type inference failed for: r9v21, types: [int] */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSubtypeOf$default(kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander r23, kotlin.reflect.jvm.internal.impl.types.TypeCheckerState r24, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r25, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r26) {
        /*
            Method dump skipped, instructions count: 1398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander.isSubtypeOf$default(kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander, kotlin.reflect.jvm.internal.impl.types.TypeCheckerState, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker, kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker):boolean");
    }

    public static void isTypeVariableAgainstStarProjectionForSelfType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        SimpleTypeMarker asSimpleType = classicTypeSystemContext.asSimpleType(kotlinTypeMarker);
        if (asSimpleType instanceof CapturedTypeMarker) {
            CapturedTypeMarker capturedTypeMarker = (CapturedTypeMarker) asSimpleType;
            if (!classicTypeSystemContext.isOldCapturedType(capturedTypeMarker) && classicTypeSystemContext.isStarProjection(classicTypeSystemContext.projection(classicTypeSystemContext.typeConstructor(capturedTypeMarker))) && classicTypeSystemContext.captureStatus(capturedTypeMarker) == CaptureStatus.FOR_SUBTYPING) {
                classicTypeSystemContext.typeConstructor(kotlinTypeMarker2);
            }
        }
    }

    public static DefinitelyNotNullType makeDefinitelyNotNull$default(UnwrappedType unwrappedType, boolean z) {
        boolean z2;
        if (unwrappedType instanceof DefinitelyNotNullType) {
            return (DefinitelyNotNullType) unwrappedType;
        }
        unwrappedType.getConstructor();
        if ((unwrappedType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) || (unwrappedType instanceof NewCapturedType)) {
            ClassifierDescriptor declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
            TypeParameterDescriptorImpl typeParameterDescriptorImpl = declarationDescriptor instanceof TypeParameterDescriptorImpl ? (TypeParameterDescriptorImpl) declarationDescriptor : null;
            z2 = true;
            if (typeParameterDescriptorImpl == null || typeParameterDescriptorImpl.initialized) {
                z2 = (z && (unwrappedType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor)) ? TypeUtils.isNullableType(unwrappedType) : true ^ KotlinTypeKt.hasNotNullSupertype(UtilsKt.createClassicTypeCheckerState$default(false, null, 24), KotlinTypeKt.lowerIfFlexible(unwrappedType), TypeCheckerState$SupertypesPolicy$None.INSTANCE$1);
            }
        } else {
            z2 = false;
        }
        if (!z2) {
            return null;
        }
        if (unwrappedType instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrappedType;
            Intrinsics.areEqual(flexibleType.lowerBound.getConstructor(), flexibleType.upperBound.getConstructor());
        }
        return new DefinitelyNotNullType(KotlinTypeKt.lowerIfFlexible(unwrappedType).makeNullableAsSpecified(false), z);
    }

    public void checkRepeatedAnnotations(Annotations annotations, Annotations annotations2) {
        HashSet hashSet = new HashSet();
        Iterator it = annotations.iterator();
        while (it.hasNext()) {
            hashSet.add(((AnnotationDescriptor) it.next()).getFqName());
        }
        Iterator it2 = annotations2.iterator();
        while (it2.hasNext()) {
            hashSet.contains(((AnnotationDescriptor) it2.next()).getFqName());
        }
    }

    public TypeSubstitution create(TypeConstructor typeConstructor, List list) {
        typeConstructor.getClass();
        list.getClass();
        List parameters = typeConstructor.getParameters();
        parameters.getClass();
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.lastOrNull(parameters);
        if (typeParameterDescriptor != null) {
            int i = 1;
            if (typeParameterDescriptor.isCapturedFromOuterDeclaration()) {
                List parameters2 = typeConstructor.getParameters();
                parameters2.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters2, 10));
                Iterator it = parameters2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((TypeParameterDescriptor) it.next()).getTypeConstructor());
                }
                return new StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(i, MapsKt__MapsKt.toMap(CollectionsKt.zip(arrayList, list)));
            }
        }
        return new IndexedParametersSubstitution((TypeParameterDescriptor[]) parameters.toArray(new TypeParameterDescriptor[0]), (TypeProjectionBase[]) list.toArray(new TypeProjectionBase[0]), false);
    }

    public SimpleType expandRecursively(DefaultSocket defaultSocket, TypeAttributes typeAttributes, boolean z, int i, boolean z2) {
        TypeAttributes create;
        Variance variance = Variance.INVARIANT;
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = (DeserializedTypeAliasDescriptor) defaultSocket.closeBits;
        TypeProjectionBase expandTypeProjection = expandTypeProjection(new StarProjectionImpl(deserializedTypeAliasDescriptor.getUnderlyingType(), variance), defaultSocket, null, i);
        KotlinType type = expandTypeProjection.getType();
        type.getClass();
        SimpleType asSimpleType = KotlinTypeKt.asSimpleType(type);
        if (KotlinTypeKt.isError(asSimpleType)) {
            return asSimpleType;
        }
        expandTypeProjection.getProjectionKind();
        checkRepeatedAnnotations(asSimpleType.getAnnotations(), AnnotationsTypeAttributeKt.getAnnotations(typeAttributes));
        if (!KotlinTypeKt.isError(asSimpleType)) {
            if (KotlinTypeKt.isError(asSimpleType)) {
                create = asSimpleType.getAttributes();
            } else {
                TypeAttributes attributes = asSimpleType.getAttributes();
                FormBody.Builder builder = TypeAttributes.Companion;
                attributes.getClass();
                if (typeAttributes.isEmpty() && attributes.isEmpty()) {
                    create = typeAttributes;
                } else {
                    ArrayList arrayList = new ArrayList();
                    Collection values = ((ConcurrentHashMap) builder.names).values();
                    values.getClass();
                    Iterator it = values.iterator();
                    while (it.hasNext()) {
                        int intValue = ((Number) it.next()).intValue();
                        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) typeAttributes.arrayMap.get(intValue);
                        AnnotationsTypeAttribute annotationsTypeAttribute2 = (AnnotationsTypeAttribute) attributes.arrayMap.get(intValue);
                        if (annotationsTypeAttribute != null) {
                            if (annotationsTypeAttribute2 != null) {
                                Annotations annotations = annotationsTypeAttribute.annotations;
                                Annotations annotations2 = annotationsTypeAttribute2.annotations;
                                annotations.getClass();
                                annotations2.getClass();
                                if (annotations.isEmpty()) {
                                    annotations = annotations2;
                                } else if (!annotations2.isEmpty()) {
                                    annotations = new AnnotationsImpl(new Annotations[]{annotations, annotations2});
                                }
                                annotationsTypeAttribute = new AnnotationsTypeAttribute(annotations);
                            }
                            annotationsTypeAttribute2 = annotationsTypeAttribute;
                        } else if (annotationsTypeAttribute2 == null) {
                            annotationsTypeAttribute2 = null;
                        } else if (annotationsTypeAttribute != null) {
                            Annotations annotations3 = annotationsTypeAttribute2.annotations;
                            Annotations annotations4 = annotationsTypeAttribute.annotations;
                            annotations3.getClass();
                            annotations4.getClass();
                            if (annotations3.isEmpty()) {
                                annotations3 = annotations4;
                            } else if (!annotations4.isEmpty()) {
                                annotations3 = new AnnotationsImpl(new Annotations[]{annotations3, annotations4});
                            }
                            annotationsTypeAttribute2 = new AnnotationsTypeAttribute(annotations3);
                        }
                        if (annotationsTypeAttribute2 != null) {
                            arrayList.add(annotationsTypeAttribute2);
                        }
                    }
                    create = FormBody.Builder.create(arrayList);
                }
            }
            asSimpleType = KotlinTypeKt.replace$default(asSimpleType, (List) null, create, 1);
        }
        SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(asSimpleType, z);
        return z2 ? KotlinTypeKt.withAbbreviation(makeNullableIfNeeded, KotlinTypeKt.simpleTypeWithNonTrivialMemberScope((List) defaultSocket.source, MemberScope.Empty.INSTANCE, typeAttributes, deserializedTypeAliasDescriptor.typeConstructor, z)) : makeNullableIfNeeded;
    }

    public TypeProjectionBase expandTypeProjection(TypeProjectionBase typeProjectionBase, DefaultSocket defaultSocket, TypeParameterDescriptor typeParameterDescriptor, int i) {
        Variance variance;
        Variance variance2;
        Variance variance3;
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = (DeserializedTypeAliasDescriptor) defaultSocket.closeBits;
        if (i > 100) {
            throw new AssertionError("Too deep recursion while expanding type alias " + deserializedTypeAliasDescriptor.getName());
        }
        if (typeProjectionBase.isStarProjection()) {
            typeParameterDescriptor.getClass();
            return TypeUtils.makeStarProjection(typeParameterDescriptor);
        }
        KotlinType type = typeProjectionBase.getType();
        type.getClass();
        TypeConstructor constructor = type.getConstructor();
        constructor.getClass();
        ClassifierDescriptor declarationDescriptor = constructor.getDeclarationDescriptor();
        TypeProjectionBase typeProjectionBase2 = declarationDescriptor instanceof TypeParameterDescriptor ? (TypeProjectionBase) ((Map) defaultSocket.sink).get(declarationDescriptor) : null;
        int i2 = 0;
        if (typeProjectionBase2 == null) {
            SimpleType asSimpleType = KotlinTypeKt.asSimpleType(typeProjectionBase.getType().unwrap());
            if (!KotlinTypeKt.isError(asSimpleType) && TypeUtils.contains(asSimpleType, TypeUtilsKt$requiresTypeAliasExpansion$1.INSTANCE, null)) {
                TypeConstructor constructor2 = asSimpleType.getConstructor();
                ClassifierDescriptor declarationDescriptor2 = constructor2.getDeclarationDescriptor();
                constructor2.getParameters().size();
                asSimpleType.getArguments().size();
                if (!(declarationDescriptor2 instanceof TypeParameterDescriptor)) {
                    if (!(declarationDescriptor2 instanceof DeserializedTypeAliasDescriptor)) {
                        SimpleType substituteArguments = substituteArguments(asSimpleType, defaultSocket, i);
                        TypeSubstitutor.create(substituteArguments);
                        for (Object obj : substituteArguments.getArguments()) {
                            int i3 = i2 + 1;
                            if (i2 < 0) {
                                Room.throwIndexOverflow();
                                throw null;
                            }
                            TypeProjectionBase typeProjectionBase3 = (TypeProjectionBase) obj;
                            if (!typeProjectionBase3.isStarProjection()) {
                                KotlinType type2 = typeProjectionBase3.getType();
                                type2.getClass();
                                if (!TypeUtils.contains(type2, TypeUtilsKt$requiresTypeAliasExpansion$1.INSTANCE$1, null)) {
                                }
                            }
                            i2 = i3;
                        }
                        return new StarProjectionImpl(substituteArguments, typeProjectionBase.getProjectionKind());
                    }
                    DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor2 = (DeserializedTypeAliasDescriptor) declarationDescriptor2;
                    if (defaultSocket.isRecursion(deserializedTypeAliasDescriptor2)) {
                        Variance variance4 = Variance.INVARIANT;
                        ErrorTypeKind errorTypeKind = ErrorTypeKind.RECURSIVE_TYPE_ALIAS;
                        String str = deserializedTypeAliasDescriptor2.getName().name;
                        str.getClass();
                        return new StarProjectionImpl(ErrorUtils.createErrorType(errorTypeKind, str), variance4);
                    }
                    List arguments = asSimpleType.getArguments();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arguments, 10));
                    for (Object obj2 : arguments) {
                        int i4 = i2 + 1;
                        if (i2 < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        arrayList.add(expandTypeProjection((TypeProjectionBase) obj2, defaultSocket, (TypeParameterDescriptor) constructor2.getParameters().get(i2), i + 1));
                        i2 = i4;
                    }
                    List parameters = deserializedTypeAliasDescriptor2.typeConstructor.getParameters();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
                    Iterator it = parameters.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((TypeParameterDescriptor) it.next()).getOriginal());
                    }
                    return new StarProjectionImpl(KotlinTypeKt.withAbbreviation(expandRecursively(new DefaultSocket(defaultSocket, deserializedTypeAliasDescriptor2, arrayList, MapsKt__MapsKt.toMap(CollectionsKt.zip(arrayList2, arrayList)), 4), asSimpleType.getAttributes(), asSimpleType.isMarkedNullable(), i + 1, false), substituteArguments(asSimpleType, defaultSocket, i)), typeProjectionBase.getProjectionKind());
                }
            }
            return typeProjectionBase;
        }
        if (typeProjectionBase2.isStarProjection()) {
            typeParameterDescriptor.getClass();
            return TypeUtils.makeStarProjection(typeParameterDescriptor);
        }
        UnwrappedType unwrap = typeProjectionBase2.getType().unwrap();
        Variance projectionKind = typeProjectionBase2.getProjectionKind();
        projectionKind.getClass();
        Variance projectionKind2 = typeProjectionBase.getProjectionKind();
        projectionKind2.getClass();
        if (projectionKind2 != projectionKind && projectionKind2 != (variance3 = Variance.INVARIANT) && projectionKind == variance3) {
            projectionKind = projectionKind2;
        }
        if (typeParameterDescriptor == null || (variance = typeParameterDescriptor.getVariance()) == null) {
            variance = Variance.INVARIANT;
        }
        variance.getClass();
        if (variance != projectionKind && variance != (variance2 = Variance.INVARIANT) && projectionKind == variance2) {
            projectionKind = variance2;
        }
        checkRepeatedAnnotations(type.getAnnotations(), unwrap.getAnnotations());
        SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(KotlinTypeKt.asSimpleType(unwrap), type.isMarkedNullable());
        TypeAttributes attributes = type.getAttributes();
        if (!KotlinTypeKt.isError(makeNullableIfNeeded)) {
            if (KotlinTypeKt.isError(makeNullableIfNeeded)) {
                attributes = makeNullableIfNeeded.getAttributes();
            } else {
                TypeAttributes attributes2 = makeNullableIfNeeded.getAttributes();
                attributes.getClass();
                FormBody.Builder builder = TypeAttributes.Companion;
                attributes2.getClass();
                if (!attributes.isEmpty() || !attributes2.isEmpty()) {
                    ArrayList arrayList3 = new ArrayList();
                    Collection values = ((ConcurrentHashMap) builder.names).values();
                    values.getClass();
                    Iterator it2 = values.iterator();
                    while (it2.hasNext()) {
                        int intValue = ((Number) it2.next()).intValue();
                        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) attributes.arrayMap.get(intValue);
                        AnnotationsTypeAttribute annotationsTypeAttribute2 = (AnnotationsTypeAttribute) attributes2.arrayMap.get(intValue);
                        if (annotationsTypeAttribute != null) {
                            if (annotationsTypeAttribute2 != null) {
                                Annotations annotations = annotationsTypeAttribute.annotations;
                                Annotations annotations2 = annotationsTypeAttribute2.annotations;
                                annotations.getClass();
                                annotations2.getClass();
                                if (annotations.isEmpty()) {
                                    annotations = annotations2;
                                } else if (!annotations2.isEmpty()) {
                                    annotations = new AnnotationsImpl(new Annotations[]{annotations, annotations2});
                                }
                                annotationsTypeAttribute = new AnnotationsTypeAttribute(annotations);
                            }
                            annotationsTypeAttribute2 = annotationsTypeAttribute;
                        } else if (annotationsTypeAttribute2 == null) {
                            annotationsTypeAttribute2 = null;
                        } else if (annotationsTypeAttribute != null) {
                            Annotations annotations3 = annotationsTypeAttribute2.annotations;
                            Annotations annotations4 = annotationsTypeAttribute.annotations;
                            annotations3.getClass();
                            annotations4.getClass();
                            if (annotations3.isEmpty()) {
                                annotations3 = annotations4;
                            } else if (!annotations4.isEmpty()) {
                                annotations3 = new AnnotationsImpl(new Annotations[]{annotations3, annotations4});
                            }
                            annotationsTypeAttribute2 = new AnnotationsTypeAttribute(annotations3);
                        }
                        if (annotationsTypeAttribute2 != null) {
                            arrayList3.add(annotationsTypeAttribute2);
                        }
                    }
                    attributes = FormBody.Builder.create(arrayList3);
                }
            }
            makeNullableIfNeeded = KotlinTypeKt.replace$default(makeNullableIfNeeded, (List) null, attributes, 1);
        }
        return new StarProjectionImpl(makeNullableIfNeeded, projectionKind);
    }

    public SimpleType substituteArguments(SimpleType simpleType, DefaultSocket defaultSocket, int i) {
        TypeConstructor constructor = simpleType.getConstructor();
        List arguments = simpleType.getArguments();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arguments, 10));
        int i2 = 0;
        for (Object obj : arguments) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            TypeProjectionBase typeProjectionBase = (TypeProjectionBase) obj;
            TypeProjectionBase expandTypeProjection = expandTypeProjection(typeProjectionBase, defaultSocket, (TypeParameterDescriptor) constructor.getParameters().get(i2), i + 1);
            if (!expandTypeProjection.isStarProjection()) {
                expandTypeProjection = new StarProjectionImpl(TypeUtils.makeNullableIfNeeded(expandTypeProjection.getType(), typeProjectionBase.getType().isMarkedNullable()), expandTypeProjection.getProjectionKind());
            }
            arrayList.add(expandTypeProjection);
            i2 = i3;
        }
        return KotlinTypeKt.replace$default(simpleType, arrayList, (TypeAttributes) null, 2);
    }
}
