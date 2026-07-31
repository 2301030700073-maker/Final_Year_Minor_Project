package kotlin.reflect.jvm.internal.impl.types.checker;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$Companion$Mode;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$Companion$WhenMappings;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState$SupertypesPolicy$None;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeIntersector {
    public static final TypeIntersector INSTANCE = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ResultNullability {
        private static final /* synthetic */ ResultNullability[] $VALUES;
        public static final ResultNullability ACCEPT_NULL;
        public static final ResultNullability NOT_NULL;
        public static final ResultNullability START;
        public static final ResultNullability UNKNOWN;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class ACCEPT_NULL extends ResultNullability {
            public ACCEPT_NULL() {
                super("ACCEPT_NULL", 1);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return ResultNullability.getResultNullability(unwrappedType);
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class NOT_NULL extends ResultNullability {
            public NOT_NULL() {
                super("NOT_NULL", 3);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return this;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class START extends ResultNullability {
            public START() {
                super("START", 0);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return ResultNullability.getResultNullability(unwrappedType);
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class UNKNOWN extends ResultNullability {
            public UNKNOWN() {
                super("UNKNOWN", 2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                ResultNullability resultNullability = ResultNullability.getResultNullability(unwrappedType);
                return resultNullability == ResultNullability.ACCEPT_NULL ? this : resultNullability;
            }
        }

        static {
            START start = new START();
            START = start;
            ACCEPT_NULL accept_null = new ACCEPT_NULL();
            ACCEPT_NULL = accept_null;
            UNKNOWN unknown = new UNKNOWN();
            UNKNOWN = unknown;
            NOT_NULL not_null = new NOT_NULL();
            NOT_NULL = not_null;
            $VALUES = new ResultNullability[]{start, accept_null, unknown, not_null};
        }

        public static ResultNullability getResultNullability(UnwrappedType unwrappedType) {
            unwrappedType.getClass();
            return unwrappedType.isMarkedNullable() ? ACCEPT_NULL : KotlinTypeKt.hasNotNullSupertype(UtilsKt.createClassicTypeCheckerState$default(false, null, 24), KotlinTypeKt.lowerIfFlexible(unwrappedType), TypeCheckerState$SupertypesPolicy$None.INSTANCE$1) ? NOT_NULL : UNKNOWN;
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) $VALUES.clone();
        }

        public abstract ResultNullability combine(UnwrappedType unwrappedType);
    }

    public static ArrayList filterTypes(AbstractCollection abstractCollection, Function2 function2) {
        ArrayList arrayList = new ArrayList(abstractCollection);
        Iterator it = arrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            SimpleType simpleType = (SimpleType) it.next();
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    SimpleType simpleType2 = (SimpleType) it2.next();
                    if (simpleType2 != simpleType) {
                        simpleType2.getClass();
                        simpleType.getClass();
                        if (((Boolean) function2.invoke(simpleType2, simpleType)).booleanValue()) {
                            it.remove();
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.types.TypeAttributes] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlin.reflect.jvm.internal.impl.types.TypeAttributes] */
    /* JADX WARN: Type inference failed for: r4v16, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.types.SimpleType] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.util.Set] */
    public final SimpleType intersectTypes$descriptors(ArrayList arrayList) {
        SimpleType createType;
        Set intersect;
        arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SimpleType simpleType = (SimpleType) it.next();
            if (simpleType.getConstructor() instanceof IntersectionTypeConstructor) {
                Collection supertypes = simpleType.getConstructor().getSupertypes();
                supertypes.getClass();
                Collection<KotlinType> collection = supertypes;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
                for (KotlinType kotlinType : collection) {
                    kotlinType.getClass();
                    SimpleType upperIfFlexible = KotlinTypeKt.upperIfFlexible(kotlinType);
                    if (simpleType.isMarkedNullable()) {
                        upperIfFlexible = upperIfFlexible.makeNullableAsSpecified(true);
                    }
                    arrayList3.add(upperIfFlexible);
                }
                arrayList2.addAll(arrayList3);
            } else {
                arrayList2.add(simpleType);
            }
        }
        ResultNullability resultNullability = ResultNullability.START;
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            resultNullability = resultNullability.combine((UnwrappedType) it2.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            SimpleType simpleType2 = (SimpleType) it3.next();
            if (resultNullability == ResultNullability.NOT_NULL) {
                if (simpleType2 instanceof NewCapturedType) {
                    NewCapturedType newCapturedType = (NewCapturedType) simpleType2;
                    simpleType2 = new NewCapturedType(newCapturedType.captureStatus, newCapturedType.constructor, newCapturedType.lowerType, newCapturedType.attributes, newCapturedType.isMarkedNullable, true);
                }
                simpleType2.getClass();
                SimpleType makeDefinitelyNotNull$default = TypeAliasExpander.makeDefinitelyNotNull$default(simpleType2, false);
                simpleType2 = (makeDefinitelyNotNull$default == null && (makeDefinitelyNotNull$default = KotlinTypeKt.makeIntersectionTypeDefinitelyNotNullOrNotNull(simpleType2)) == null) ? simpleType2.makeNullableAsSpecified(false) : makeDefinitelyNotNull$default;
            }
            linkedHashSet.add(simpleType2);
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            arrayList4.add(((SimpleType) it4.next()).getAttributes());
        }
        Iterator it5 = arrayList4.iterator();
        SimpleType simpleType3 = null;
        if (!it5.hasNext()) {
            Gson$$ExternalSyntheticBUOutline0.m("Empty collection can't be reduced.");
            return null;
        }
        ?? next = it5.next();
        while (it5.hasNext()) {
            TypeAttributes typeAttributes = (TypeAttributes) it5.next();
            next = (TypeAttributes) next;
            next.getClass();
            FormBody.Builder builder = TypeAttributes.Companion;
            typeAttributes.getClass();
            if (!next.isEmpty() || !typeAttributes.isEmpty()) {
                ArrayList arrayList5 = new ArrayList();
                Collection values = ((ConcurrentHashMap) builder.names).values();
                values.getClass();
                Iterator it6 = values.iterator();
                while (it6.hasNext()) {
                    int intValue = ((Number) it6.next()).intValue();
                    AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) next.arrayMap.get(intValue);
                    AnnotationsTypeAttribute annotationsTypeAttribute2 = (AnnotationsTypeAttribute) typeAttributes.arrayMap.get(intValue);
                    if (annotationsTypeAttribute != null) {
                        if (!Intrinsics.areEqual(annotationsTypeAttribute2, annotationsTypeAttribute)) {
                            annotationsTypeAttribute = null;
                        }
                        annotationsTypeAttribute2 = annotationsTypeAttribute;
                    } else if (annotationsTypeAttribute2 == null || !Intrinsics.areEqual(annotationsTypeAttribute, annotationsTypeAttribute2)) {
                        annotationsTypeAttribute2 = null;
                    }
                    if (annotationsTypeAttribute2 != null) {
                        arrayList5.add(annotationsTypeAttribute2);
                    }
                }
                next = FormBody.Builder.create(arrayList5);
            }
        }
        TypeAttributes typeAttributes2 = (TypeAttributes) next;
        if (linkedHashSet.size() == 1) {
            createType = (SimpleType) CollectionsKt.single(linkedHashSet);
        } else {
            ArrayList filterTypes = filterTypes(linkedHashSet, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(2, 0, this));
            filterTypes.isEmpty();
            IntegerLiteralTypeConstructor$Companion$Mode integerLiteralTypeConstructor$Companion$Mode = IntegerLiteralTypeConstructor$Companion$Mode.INTERSECTION_TYPE;
            if (!filterTypes.isEmpty()) {
                Iterator it7 = filterTypes.iterator();
                if (!it7.hasNext()) {
                    Gson$$ExternalSyntheticBUOutline0.m("Empty collection can't be reduced.");
                    return null;
                }
                SimpleType next2 = it7.next();
                while (it7.hasNext()) {
                    SimpleType simpleType4 = (SimpleType) it7.next();
                    next2 = next2;
                    if (next2 != 0 && simpleType4 != null) {
                        TypeConstructor constructor = next2.getConstructor();
                        TypeConstructor constructor2 = simpleType4.getConstructor();
                        boolean z = constructor instanceof IntegerLiteralTypeConstructor;
                        if (z && (constructor2 instanceof IntegerLiteralTypeConstructor)) {
                            Set set = ((IntegerLiteralTypeConstructor) constructor).possibleTypes;
                            Set set2 = ((IntegerLiteralTypeConstructor) constructor2).possibleTypes;
                            int i = IntegerLiteralTypeConstructor$Companion$WhenMappings.$EnumSwitchMapping$0[integerLiteralTypeConstructor$Companion$Mode.ordinal()];
                            if (i == 1) {
                                intersect = CollectionsKt.intersect(set, set2);
                            } else {
                                if (i != 2) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                intersect = CollectionsKt.union(set, set2);
                            }
                            IntegerLiteralTypeConstructor integerLiteralTypeConstructor = new IntegerLiteralTypeConstructor(intersect);
                            TypeAttributes.Companion.getClass();
                            TypeAttributes typeAttributes3 = TypeAttributes.Empty;
                            typeAttributes3.getClass();
                            next2 = KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(EmptyList.INSTANCE, ErrorUtils.createErrorScope(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"), typeAttributes3, integerLiteralTypeConstructor, false);
                        } else if (z) {
                            if (((IntegerLiteralTypeConstructor) constructor).possibleTypes.contains(simpleType4)) {
                                next2 = simpleType4;
                            }
                        } else if ((constructor2 instanceof IntegerLiteralTypeConstructor) && ((IntegerLiteralTypeConstructor) constructor2).possibleTypes.contains(next2)) {
                        }
                    }
                    next2 = 0;
                }
                simpleType3 = next2;
            }
            if (simpleType3 != null) {
                createType = simpleType3;
            } else {
                NewKotlinTypeChecker.Companion.getClass();
                ArrayList filterTypes2 = filterTypes(filterTypes, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(2, 1, NewKotlinTypeChecker.Companion.Default));
                filterTypes2.isEmpty();
                createType = filterTypes2.size() < 2 ? (SimpleType) CollectionsKt.single((Iterable) filterTypes2) : new IntersectionTypeConstructor(linkedHashSet).createType();
            }
        }
        return createType.replaceAttributes(typeAttributes2);
    }
}
