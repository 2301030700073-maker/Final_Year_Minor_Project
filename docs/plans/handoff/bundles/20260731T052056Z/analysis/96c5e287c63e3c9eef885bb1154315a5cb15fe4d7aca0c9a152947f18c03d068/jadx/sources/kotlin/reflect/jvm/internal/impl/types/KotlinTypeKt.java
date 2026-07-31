package kotlin.reflect.jvm.internal.impl.types;

import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.FilteredAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.text.RegexKt;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KotlinTypeKt {
    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String format = String.format(str, objArr);
        if (i == 4) {
            throw new IllegalStateException(format);
        }
    }

    public static final SimpleType asSimpleType(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        SimpleType simpleType = unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
        if (simpleType != null) {
            return simpleType;
        }
        Gson$$ExternalSyntheticBUOutline0.m$8("This is should be simple type: ", kotlinType);
        return null;
    }

    public static final KotlinTypeMarker computeExpandedTypeInner(KotlinTypeMarker kotlinTypeMarker, HashSet hashSet) {
        SimpleType simpleType;
        KotlinTypeMarker computeExpandedTypeInner;
        KotlinTypePreparator$Default kotlinTypePreparator$Default = KotlinTypePreparator$Default.INSTANCE$1;
        TypeConstructor typeConstructor = kotlinTypePreparator$Default.typeConstructor(kotlinTypeMarker);
        if (hashSet.add(typeConstructor)) {
            TypeParameterDescriptor typeParameterClassifier = UtilsKt.getTypeParameterClassifier(typeConstructor);
            if (typeParameterClassifier != null) {
                KotlinTypeMarker representativeUpperBound = OperationKt.getRepresentativeUpperBound(typeParameterClassifier);
                KotlinTypeMarker computeExpandedTypeInner2 = computeExpandedTypeInner(representativeUpperBound, hashSet);
                if (computeExpandedTypeInner2 != null) {
                    return ((computeExpandedTypeInner2 instanceof SimpleTypeMarker) && UtilsKt.isPrimitiveType((SimpleTypeMarker) computeExpandedTypeInner2) && UtilsKt.isNullableType(kotlinTypeMarker) && (UtilsKt.isInlineClass(kotlinTypePreparator$Default.typeConstructor(representativeUpperBound)) || ((representativeUpperBound instanceof SimpleTypeMarker) && UtilsKt.isPrimitiveType((SimpleTypeMarker) representativeUpperBound)))) ? kotlinTypePreparator$Default.makeNullable(representativeUpperBound) : (!UtilsKt.isNullableType(computeExpandedTypeInner2) && (kotlinTypeMarker instanceof SimpleTypeMarker) && UtilsKt.isMarkedNullable((SimpleTypeMarker) kotlinTypeMarker)) ? kotlinTypePreparator$Default.makeNullable(computeExpandedTypeInner2) : computeExpandedTypeInner2;
                }
            } else {
                if (!UtilsKt.isInlineClass(typeConstructor)) {
                    return kotlinTypeMarker;
                }
                kotlinTypeMarker.getClass();
                if (kotlinTypeMarker instanceof KotlinType) {
                    simpleType = InlineClassesUtilsKt.unsubstitutedUnderlyingType((KotlinType) kotlinTypeMarker);
                } else {
                    StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                    sb.append(kotlinTypeMarker);
                    sb.append(", ");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
                    simpleType = null;
                }
                if (simpleType != null && (computeExpandedTypeInner = computeExpandedTypeInner(simpleType, hashSet)) != null) {
                    return !UtilsKt.isNullableType(kotlinTypeMarker) ? computeExpandedTypeInner : UtilsKt.isNullableType(computeExpandedTypeInner) ? kotlinTypeMarker : ((computeExpandedTypeInner instanceof SimpleTypeMarker) && UtilsKt.isPrimitiveType((SimpleTypeMarker) computeExpandedTypeInner)) ? kotlinTypeMarker : kotlinTypePreparator$Default.makeNullable(computeExpandedTypeInner);
                }
            }
        }
        return null;
    }

    public static final UnwrappedType flexibleType(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        return simpleType.equals(simpleType2) ? simpleType : new FlexibleTypeImpl(simpleType, simpleType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final KotlinType getEnhancement(KotlinType kotlinType) {
        kotlinType.getClass();
        if (kotlinType instanceof TypeWithEnhancement) {
            return ((TypeWithEnhancement) kotlinType).getEnhancement();
        }
        return null;
    }

    public static boolean hasNotNullSupertype(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, KotlinTypeKt kotlinTypeKt) {
        TypeCheckerState$SupertypesPolicy$None typeCheckerState$SupertypesPolicy$None = TypeCheckerState$SupertypesPolicy$None.INSTANCE;
        simpleTypeMarker.getClass();
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        if ((classicTypeSystemContext.isClassType(simpleTypeMarker) && !classicTypeSystemContext.isMarkedNullable(simpleTypeMarker)) || classicTypeSystemContext.isDefinitelyNotNullType(simpleTypeMarker)) {
            return true;
        }
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
                return false;
            }
            SimpleTypeMarker simpleTypeMarker2 = (SimpleTypeMarker) arrayDeque.pop();
            simpleTypeMarker2.getClass();
            if (smartSet.add(simpleTypeMarker2)) {
                KotlinTypeKt kotlinTypeKt2 = classicTypeSystemContext.isMarkedNullable(simpleTypeMarker2) ? typeCheckerState$SupertypesPolicy$None : kotlinTypeKt;
                if (kotlinTypeKt2.equals(typeCheckerState$SupertypesPolicy$None)) {
                    kotlinTypeKt2 = null;
                }
                if (kotlinTypeKt2 == null) {
                    continue;
                } else {
                    Iterator it = classicTypeSystemContext.supertypes(classicTypeSystemContext.typeConstructor(simpleTypeMarker2)).iterator();
                    while (it.hasNext()) {
                        SimpleTypeMarker transformType = kotlinTypeKt2.transformType(typeCheckerState, (KotlinTypeMarker) it.next());
                        if ((classicTypeSystemContext.isClassType(transformType) && !classicTypeSystemContext.isMarkedNullable(transformType)) || classicTypeSystemContext.isDefinitelyNotNullType(transformType)) {
                            typeCheckerState.clear();
                            return true;
                        }
                        arrayDeque.add(transformType);
                    }
                }
            }
        }
        typeCheckerState.clear();
        return false;
    }

    public static final UnwrappedType inheritEnhancement(UnwrappedType unwrappedType, KotlinType kotlinType) {
        unwrappedType.getClass();
        kotlinType.getClass();
        return wrapEnhancement(unwrappedType, getEnhancement(kotlinType));
    }

    public static boolean isApplicableAsEndNode(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        ClassicTypeSystemContext classicTypeSystemContext = typeCheckerState.typeSystemContext;
        if (classicTypeSystemContext.isNothing(simpleTypeMarker)) {
            return true;
        }
        if (classicTypeSystemContext.isMarkedNullable(simpleTypeMarker)) {
            return false;
        }
        if (typeCheckerState.isStubTypeEqualsToAnything) {
            classicTypeSystemContext.isStubType(simpleTypeMarker);
        }
        return classicTypeSystemContext.areEqualTypeConstructors(classicTypeSystemContext.typeConstructor(simpleTypeMarker), typeConstructorMarker);
    }

    public static final boolean isError(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof ErrorType) {
            return true;
        }
        return (unwrap instanceof FlexibleType) && (((FlexibleType) unwrap).getDelegate() instanceof ErrorType);
    }

    public static final SimpleType lowerIfFlexible(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).lowerBound;
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public static final UnwrappedType makeDefinitelyNotNullOrNotNull(UnwrappedType unwrappedType, boolean z) {
        unwrappedType.getClass();
        DefinitelyNotNullType makeDefinitelyNotNull$default = TypeAliasExpander.makeDefinitelyNotNull$default(unwrappedType, z);
        if (makeDefinitelyNotNull$default != null) {
            return makeDefinitelyNotNull$default;
        }
        SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(unwrappedType);
        return makeIntersectionTypeDefinitelyNotNullOrNotNull != null ? makeIntersectionTypeDefinitelyNotNullOrNotNull : unwrappedType.makeNullableAsSpecified(false);
    }

    public static final SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull(UnwrappedType unwrappedType) {
        IntersectionTypeConstructor intersectionTypeConstructor;
        TypeConstructor constructor = unwrappedType.getConstructor();
        IntersectionTypeConstructor intersectionTypeConstructor2 = constructor instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) constructor : null;
        if (intersectionTypeConstructor2 != null) {
            LinkedHashSet<KotlinType> linkedHashSet = intersectionTypeConstructor2.intersectedTypes;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(linkedHashSet, 10));
            boolean z = false;
            for (KotlinType kotlinType : linkedHashSet) {
                if (TypeUtils.isNullableType(kotlinType)) {
                    kotlinType = makeDefinitelyNotNullOrNotNull(kotlinType.unwrap(), false);
                    z = true;
                }
                arrayList.add(kotlinType);
            }
            if (z) {
                KotlinType kotlinType2 = intersectionTypeConstructor2.alternative;
                if (kotlinType2 == null) {
                    kotlinType2 = null;
                } else if (TypeUtils.isNullableType(kotlinType2)) {
                    kotlinType2 = makeDefinitelyNotNullOrNotNull(kotlinType2.unwrap(), false);
                }
                arrayList.isEmpty();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList);
                linkedHashSet2.hashCode();
                intersectionTypeConstructor = new IntersectionTypeConstructor(linkedHashSet2);
                intersectionTypeConstructor.alternative = kotlinType2;
            } else {
                intersectionTypeConstructor = null;
            }
            if (intersectionTypeConstructor != null) {
                return intersectionTypeConstructor.createType();
            }
        }
        return null;
    }

    public static final SimpleType replace(SimpleType simpleType, List list, TypeAttributes typeAttributes) {
        simpleType.getClass();
        list.getClass();
        typeAttributes.getClass();
        if (list.isEmpty() && typeAttributes == simpleType.getAttributes()) {
            return simpleType;
        }
        if (list.isEmpty()) {
            return simpleType.replaceAttributes(typeAttributes);
        }
        if (!(simpleType instanceof ErrorType)) {
            return simpleType$default(list, typeAttributes, simpleType.getConstructor(), simpleType.isMarkedNullable());
        }
        ErrorType errorType = (ErrorType) simpleType;
        TypeConstructor typeConstructor = errorType.constructor;
        ErrorScope errorScope = errorType.memberScope;
        ErrorTypeKind errorTypeKind = errorType.kind;
        boolean z = errorType.isMarkedNullable;
        String[] strArr = errorType.formatParams;
        return new ErrorType(typeConstructor, errorScope, errorTypeKind, list, z, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static KotlinType replace$default(KotlinType kotlinType, List list, Annotations annotations, int i) {
        if ((i & 2) != 0) {
            annotations = kotlinType.getAnnotations();
        }
        kotlinType.getClass();
        if ((list.isEmpty() || list == kotlinType.getArguments()) && annotations == kotlinType.getAnnotations()) {
            return kotlinType;
        }
        TypeAttributes attributes = kotlinType.getAttributes();
        if ((annotations instanceof FilteredAnnotations) && ((FilteredAnnotations) annotations).isEmpty()) {
            annotations = Annotations.Companion.EMPTY;
        }
        TypeAttributes replaceAnnotations = replaceAnnotations(attributes, annotations);
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            return flexibleType(replace(flexibleType.lowerBound, list, replaceAnnotations), replace(flexibleType.upperBound, list, replaceAnnotations));
        }
        if (unwrap instanceof SimpleType) {
            return replace((SimpleType) unwrap, list, replaceAnnotations);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.types.TypeAttributes replaceAnnotations(kotlin.reflect.jvm.internal.impl.types.TypeAttributes r5, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r6) {
        /*
            r5.getClass()
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r0 = kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttributeKt.getAnnotations(r5)
            if (r0 != r6) goto La
            return r5
        La:
            com.airbnb.lottie.parser.GradientColorParser r0 = kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttributeKt.annotationsAttribute$delegate
            kotlin.reflect.KProperty[] r1 = kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttributeKt.$$delegatedProperties
            r2 = 0
            r1 = r1[r2]
            r0.getClass()
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.util.ArrayMap r1 = r5.arrayMap
            int r0 = r0.colorPoints
            java.lang.Object r0 = r1.get(r0)
            kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute r0 = (kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute) r0
            if (r0 == 0) goto L67
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L2a
            goto L58
        L2a:
            kotlin.reflect.jvm.internal.impl.util.ArrayMap r1 = r5.arrayMap
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r1 = r1.iterator()
        L35:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L4c
            java.lang.Object r3 = r1.next()
            r4 = r3
            kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute r4 = (kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute) r4
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r0)
            if (r4 != 0) goto L35
            r2.add(r3)
            goto L35
        L4c:
            int r0 = r2.size()
            kotlin.reflect.jvm.internal.impl.util.ArrayMap r1 = r5.arrayMap
            int r1 = r1.getSize()
            if (r0 != r1) goto L5a
        L58:
            r0 = r5
            goto L63
        L5a:
            okhttp3.FormBody$Builder r0 = kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Companion
            r0.getClass()
            kotlin.reflect.jvm.internal.impl.types.TypeAttributes r0 = okhttp3.FormBody.Builder.create(r2)
        L63:
            if (r0 != 0) goto L66
            goto L67
        L66:
            r5 = r0
        L67:
            java.util.Iterator r0 = r6.iterator()
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L78
            boolean r0 = r6.isEmpty()
            if (r0 == 0) goto L78
            goto L93
        L78:
            kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute r0 = new kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute
            r0.<init>(r6)
            okhttp3.FormBody$Builder r6 = kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Companion
            java.lang.Class<kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute> r1 = kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute.class
            kotlin.jvm.internal.ReflectionFactory r2 = kotlin.jvm.internal.Reflection.factory
            kotlin.reflect.KClass r1 = r2.getOrCreateKotlinClass(r1)
            int r6 = r6.getId(r1)
            kotlin.reflect.jvm.internal.impl.util.ArrayMap r1 = r5.arrayMap
            java.lang.Object r6 = r1.get(r6)
            if (r6 == 0) goto L94
        L93:
            return r5
        L94:
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto La4
            kotlin.reflect.jvm.internal.impl.types.TypeAttributes r5 = new kotlin.reflect.jvm.internal.impl.types.TypeAttributes
            java.util.List r6 = androidx.room.Room.listOf(r0)
            r5.<init>(r6)
            return r5
        La4:
            java.util.List r5 = kotlin.collections.CollectionsKt.toList(r5)
            java.util.ArrayList r5 = kotlin.collections.CollectionsKt.plus(r5, r0)
            kotlin.reflect.jvm.internal.impl.types.TypeAttributes r5 = okhttp3.FormBody.Builder.create(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.replaceAnnotations(kotlin.reflect.jvm.internal.impl.types.TypeAttributes, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations):kotlin.reflect.jvm.internal.impl.types.TypeAttributes");
    }

    public static final SimpleType simpleNotNullType(TypeAttributes typeAttributes, ModuleAwareClassDescriptor moduleAwareClassDescriptor, List list) {
        typeAttributes.getClass();
        moduleAwareClassDescriptor.getClass();
        list.getClass();
        TypeConstructor typeConstructor = moduleAwareClassDescriptor.getTypeConstructor();
        typeConstructor.getClass();
        return simpleType$default(list, typeAttributes, typeConstructor, false);
    }

    public static SimpleType simpleType$default(List list, TypeAttributes typeAttributes, TypeConstructor typeConstructor, boolean z) {
        MemberScope create;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor;
        MemberScope memberScope;
        MemberScope memberScope2;
        MemberScope unsubstitutedMemberScope;
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        if (typeAttributes.isEmpty() && list.isEmpty() && !z && typeConstructor.getDeclarationDescriptor() != null) {
            ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
            declarationDescriptor.getClass();
            SimpleType defaultType = declarationDescriptor.getDefaultType();
            defaultType.getClass();
            return defaultType;
        }
        ClassifierDescriptor declarationDescriptor2 = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor2 instanceof TypeParameterDescriptor) {
            create = ((TypeParameterDescriptor) declarationDescriptor2).getDefaultType().getMemberScope();
        } else {
            if (declarationDescriptor2 instanceof ModuleAwareClassDescriptor) {
                int i = DescriptorUtilsKt.$r8$clinit;
                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(declarationDescriptor2);
                containingModule.getClass();
                DescriptorUtilsKt.getKotlinTypeRefiner(containingModule);
                boolean isEmpty = list.isEmpty();
                KotlinTypeRefiner$Default kotlinTypeRefiner$Default = KotlinTypeRefiner$Default.INSTANCE;
                if (isEmpty) {
                    ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = (ModuleAwareClassDescriptor) declarationDescriptor2;
                    moduleAwareClassDescriptor = moduleAwareClassDescriptor2 instanceof ModuleAwareClassDescriptor ? moduleAwareClassDescriptor2 : null;
                    if (moduleAwareClassDescriptor != null && (unsubstitutedMemberScope = moduleAwareClassDescriptor.getUnsubstitutedMemberScope(kotlinTypeRefiner$Default)) != null) {
                        memberScope2 = unsubstitutedMemberScope;
                        return simpleTypeWithNonTrivialMemberScope(typeAttributes, typeConstructor, list, z, memberScope2, new KotlinTypeFactory$simpleType$1(list, typeAttributes, typeConstructor, z));
                    }
                    create = moduleAwareClassDescriptor2.getUnsubstitutedMemberScope();
                    create.getClass();
                } else {
                    ModuleAwareClassDescriptor moduleAwareClassDescriptor3 = (ModuleAwareClassDescriptor) declarationDescriptor2;
                    TypeSubstitution create2 = TypeConstructorSubstitution.Companion.create(typeConstructor, list);
                    moduleAwareClassDescriptor = moduleAwareClassDescriptor3 instanceof ModuleAwareClassDescriptor ? moduleAwareClassDescriptor3 : null;
                    if (moduleAwareClassDescriptor != null && (memberScope = moduleAwareClassDescriptor.getMemberScope(create2, kotlinTypeRefiner$Default)) != null) {
                        memberScope2 = memberScope;
                        return simpleTypeWithNonTrivialMemberScope(typeAttributes, typeConstructor, list, z, memberScope2, new KotlinTypeFactory$simpleType$1(list, typeAttributes, typeConstructor, z));
                    }
                    create = moduleAwareClassDescriptor3.getMemberScope(create2);
                    create.getClass();
                }
            } else if (declarationDescriptor2 instanceof DeserializedTypeAliasDescriptor) {
                ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ABBREVIATION_TYPE;
                String str = ((DeserializedTypeAliasDescriptor) declarationDescriptor2).getName().name;
                str.getClass();
                create = ErrorUtils.createErrorScope(errorScopeKind, true, str);
            } else {
                if (!(typeConstructor instanceof IntersectionTypeConstructor)) {
                    TimeSource$Companion$$ExternalSyntheticLambda0.m$1("Unsupported classifier: ", declarationDescriptor2, " for constructor: ", typeConstructor);
                    return null;
                }
                create = RegexKt.create("member scope for intersection type", ((IntersectionTypeConstructor) typeConstructor).intersectedTypes);
            }
        }
        memberScope2 = create;
        return simpleTypeWithNonTrivialMemberScope(typeAttributes, typeConstructor, list, z, memberScope2, new KotlinTypeFactory$simpleType$1(list, typeAttributes, typeConstructor, z));
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(List list, MemberScope memberScope, TypeAttributes typeAttributes, TypeConstructor typeConstructor, boolean z) {
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        memberScope.getClass();
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(typeConstructor, list, z, memberScope, new KotlinTypeFactory$simpleType$1(list, memberScope, typeAttributes, typeConstructor, z));
        return typeAttributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, typeAttributes);
    }

    public static final KotlinType starProjectionType(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        DeclarationDescriptor containingDeclaration = typeParameterDescriptor.getContainingDeclaration();
        containingDeclaration.getClass();
        int i = 0;
        if (containingDeclaration instanceof ClassifierDescriptorWithTypeParameters) {
            List parameters = ((ClassifierDescriptorWithTypeParameters) containingDeclaration).getTypeConstructor().getParameters();
            parameters.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
            Iterator it = parameters.iterator();
            while (it.hasNext()) {
                TypeConstructor typeConstructor = ((TypeParameterDescriptor) it.next()).getTypeConstructor();
                typeConstructor.getClass();
                arrayList.add(typeConstructor);
            }
            List upperBounds = typeParameterDescriptor.getUpperBounds();
            upperBounds.getClass();
            KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor);
            KotlinType substitute = new TypeSubstitutor(new StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(i, arrayList)).substitute((KotlinType) CollectionsKt.first(upperBounds), Variance.OUT_VARIANCE);
            return substitute == null ? builtIns.getDefaultBound() : substitute;
        }
        if (!(containingDeclaration instanceof FunctionDescriptor)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unsupported descriptor type to build star projection type based on type parameters of it");
            return null;
        }
        List typeParameters = ((FunctionDescriptor) containingDeclaration).getTypeParameters();
        typeParameters.getClass();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(typeParameters, 10));
        Iterator it2 = typeParameters.iterator();
        while (it2.hasNext()) {
            TypeConstructor typeConstructor2 = ((TypeParameterDescriptor) it2.next()).getTypeConstructor();
            typeConstructor2.getClass();
            arrayList2.add(typeConstructor2);
        }
        List upperBounds2 = typeParameterDescriptor.getUpperBounds();
        upperBounds2.getClass();
        KotlinBuiltIns builtIns2 = DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor);
        KotlinType substitute2 = new TypeSubstitutor(new StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(i, arrayList2)).substitute((KotlinType) CollectionsKt.first(upperBounds2), Variance.OUT_VARIANCE);
        return substitute2 == null ? builtIns2.getDefaultBound() : substitute2;
    }

    public static boolean strictEqualSimpleTypes(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        int i;
        if (classicTypeSystemContext.argumentsCount(simpleTypeMarker) == classicTypeSystemContext.argumentsCount(simpleTypeMarker2) && classicTypeSystemContext.isMarkedNullable(simpleTypeMarker) == classicTypeSystemContext.isMarkedNullable(simpleTypeMarker2)) {
            if ((classicTypeSystemContext.asDefinitelyNotNullType(simpleTypeMarker) == null) == (classicTypeSystemContext.asDefinitelyNotNullType(simpleTypeMarker2) == null) && classicTypeSystemContext.areEqualTypeConstructors(classicTypeSystemContext.typeConstructor(simpleTypeMarker), classicTypeSystemContext.typeConstructor(simpleTypeMarker2))) {
                if (!classicTypeSystemContext.identicalArguments(simpleTypeMarker, simpleTypeMarker2)) {
                    int argumentsCount = classicTypeSystemContext.argumentsCount(simpleTypeMarker);
                    for (0; i < argumentsCount; i + 1) {
                        TypeProjectionBase argument = classicTypeSystemContext.getArgument(simpleTypeMarker, i);
                        TypeProjectionBase argument2 = classicTypeSystemContext.getArgument(simpleTypeMarker2, i);
                        i = (classicTypeSystemContext.isStarProjection(argument) == classicTypeSystemContext.isStarProjection(argument2) && (classicTypeSystemContext.isStarProjection(argument) || (classicTypeSystemContext.getVariance(argument) == classicTypeSystemContext.getVariance(argument2) && strictEqualTypesInternal(classicTypeSystemContext, classicTypeSystemContext.getType(argument), classicTypeSystemContext.getType(argument2))))) ? i + 1 : 0;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean strictEqualTypesInternal(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        SimpleType asSimpleType = classicTypeSystemContext.asSimpleType(kotlinTypeMarker);
        SimpleType asSimpleType2 = classicTypeSystemContext.asSimpleType(kotlinTypeMarker2);
        if (asSimpleType != null && asSimpleType2 != null) {
            return strictEqualSimpleTypes(classicTypeSystemContext, asSimpleType, asSimpleType2);
        }
        FlexibleType asFlexibleType = classicTypeSystemContext.asFlexibleType(kotlinTypeMarker);
        FlexibleType asFlexibleType2 = classicTypeSystemContext.asFlexibleType(kotlinTypeMarker2);
        return asFlexibleType != null && asFlexibleType2 != null && strictEqualSimpleTypes(classicTypeSystemContext, classicTypeSystemContext.lowerBound(asFlexibleType), classicTypeSystemContext.lowerBound(asFlexibleType2)) && strictEqualSimpleTypes(classicTypeSystemContext, classicTypeSystemContext.upperBound(asFlexibleType), classicTypeSystemContext.upperBound(asFlexibleType2));
    }

    public static TypeSubstitutor substituteTypeParameters(List list, TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, List list2, boolean[] zArr) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it.next();
            int i3 = i2 + 1;
            TypeParameterDescriptorImpl createForFurtherModification = TypeParameterDescriptorImpl.createForFurtherModification(i2, declarationDescriptor, typeParameterDescriptor.getAnnotations(), typeParameterDescriptor.getName(), typeParameterDescriptor.getStorageManager(), typeParameterDescriptor.getVariance(), typeParameterDescriptor.isReified());
            hashMap.put(typeParameterDescriptor.getTypeConstructor(), new StarProjectionImpl(createForFurtherModification.getDefaultType()));
            hashMap2.put(typeParameterDescriptor, createForFurtherModification);
            list2.add(createForFurtherModification);
            i2 = i3;
        }
        StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1 starProjectionImplKt$buildStarProjectionTypeByTypeParameters$1 = new StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(1, hashMap);
        TypeSubstitutor createChainedSubstitutor = TypeSubstitutor.createChainedSubstitutor(typeSubstitution, starProjectionImplKt$buildStarProjectionTypeByTypeParameters$1);
        TypeSubstitutor createChainedSubstitutor2 = TypeSubstitutor.createChainedSubstitutor(new TypeSubstitution$replaceWithNonApproximating$1(typeSubstitution, i), starProjectionImplKt$buildStarProjectionTypeByTypeParameters$1);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) it2.next();
            TypeParameterDescriptorImpl typeParameterDescriptorImpl = (TypeParameterDescriptorImpl) hashMap2.get(typeParameterDescriptor2);
            for (KotlinType kotlinType : typeParameterDescriptor2.getUpperBounds()) {
                ClassifierDescriptor declarationDescriptor2 = kotlinType.getConstructor().getDeclarationDescriptor();
                KotlinType substitute = (((declarationDescriptor2 instanceof TypeParameterDescriptor) && OperationKt.hasTypeParameterRecursiveBounds((TypeParameterDescriptor) declarationDescriptor2, null, null)) ? createChainedSubstitutor : createChainedSubstitutor2).substitute(kotlinType, Variance.OUT_VARIANCE);
                if (substitute == null) {
                    return null;
                }
                if (substitute != kotlinType && zArr != null) {
                    zArr[0] = true;
                }
                if (typeParameterDescriptorImpl.initialized) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Type parameter descriptor is already initialized: ".concat(typeParameterDescriptorImpl.nameForAssertions()));
                    return null;
                }
                if (!isError(substitute)) {
                    typeParameterDescriptorImpl.upperBounds.add(substitute);
                }
            }
            if (typeParameterDescriptorImpl.initialized) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Type parameter descriptor is already initialized: ".concat(typeParameterDescriptorImpl.nameForAssertions()));
                return null;
            }
            typeParameterDescriptorImpl.initialized = true;
        }
        return createChainedSubstitutor;
    }

    public static final TypeAttributes toDefaultAttributes(Annotations annotations) {
        annotations.getClass();
        if (annotations.isEmpty()) {
            TypeAttributes.Companion.getClass();
            return TypeAttributes.Empty;
        }
        FormBody.Builder builder = TypeAttributes.Companion;
        List listOf = Room.listOf(new AnnotationsTypeAttribute(annotations));
        builder.getClass();
        return FormBody.Builder.create(listOf);
    }

    public static final SimpleType upperIfFlexible(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).upperBound;
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public static final SimpleType withAbbreviation(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        return isError(simpleType) ? simpleType : new AbbreviatedType(simpleType, simpleType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final UnwrappedType wrapEnhancement(UnwrappedType unwrappedType, KotlinType kotlinType) {
        unwrappedType.getClass();
        if (unwrappedType instanceof TypeWithEnhancement) {
            return wrapEnhancement(((TypeWithEnhancement) unwrappedType).getOrigin(), kotlinType);
        }
        if (kotlinType == null || kotlinType.equals(unwrappedType)) {
            return unwrappedType;
        }
        if (unwrappedType instanceof SimpleType) {
            return new SimpleTypeWithEnhancement((SimpleType) unwrappedType, kotlinType);
        }
        if (unwrappedType instanceof FlexibleType) {
            return new FlexibleTypeWithEnhancement((FlexibleType) unwrappedType, kotlinType);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public abstract SimpleTypeMarker transformType(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker);

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List list, boolean z, MemberScope memberScope, Function1 function1) {
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        memberScope.getClass();
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(typeConstructor, list, z, memberScope, function1);
        return typeAttributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, typeAttributes);
    }

    public static /* synthetic */ SimpleType replace$default(SimpleType simpleType, List list, TypeAttributes typeAttributes, int i) {
        if ((i & 1) != 0) {
            list = simpleType.getArguments();
        }
        if ((i & 2) != 0) {
            typeAttributes = simpleType.getAttributes();
        }
        return replace(simpleType, list, typeAttributes);
    }

    public static TypeSubstitutor substituteTypeParameters(List list, TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, ArrayList arrayList) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (arrayList != null) {
            TypeSubstitutor substituteTypeParameters = substituteTypeParameters(list, typeSubstitution, declarationDescriptor, arrayList, null);
            if (substituteTypeParameters != null) {
                return substituteTypeParameters;
            }
            throw new AssertionError("Substitution failed");
        }
        $$$reportNull$$$0(3);
        throw null;
    }
}
