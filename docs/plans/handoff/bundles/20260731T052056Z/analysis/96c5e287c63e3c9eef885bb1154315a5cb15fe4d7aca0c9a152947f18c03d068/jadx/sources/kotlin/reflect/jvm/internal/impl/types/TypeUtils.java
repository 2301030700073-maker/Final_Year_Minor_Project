package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeUtils {
    public static final ErrorType DONT_CARE = ErrorUtils.createErrorType(ErrorTypeKind.DONT_CARE, new String[0]);
    public static final ErrorType CANNOT_INFER_FUNCTION_PARAM_TYPE = ErrorUtils.createErrorType(ErrorTypeKind.UNINFERRED_LAMBDA_PARAMETER_TYPE, new String[0]);
    public static final SpecialType NO_EXPECTED_TYPE = new SpecialType("NO_EXPECTED_TYPE");
    public static final SpecialType UNIT_EXPECTED_TYPE = new SpecialType("UNIT_EXPECTED_TYPE");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SpecialType extends DelegatingSimpleType {
        public final String name;

        public SpecialType(String str) {
            this.name = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
        public final SimpleType getDelegate() {
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public final SimpleType makeNullableAsSpecified(boolean z) {
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
            if (typeAttributes == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "newAttributes", "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType", "replaceAttributes"));
            }
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
        public final DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
        public final String toString() {
            return this.name;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
        public final /* bridge */ /* synthetic */ SimpleType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
        public final /* bridge */ /* synthetic */ UnwrappedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public final /* bridge */ /* synthetic */ UnwrappedType makeNullableAsSpecified(boolean z) {
            makeNullableAsSpecified(z);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
        public final /* bridge */ /* synthetic */ KotlinType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public final /* bridge */ /* synthetic */ UnwrappedType replaceAttributes(TypeAttributes typeAttributes) {
            replaceAttributes(typeAttributes);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r27) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeUtils.$$$reportNull$$$0(int):void");
    }

    public static boolean acceptsNullable(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(28);
            throw null;
        }
        if (kotlinType.isMarkedNullable()) {
            return true;
        }
        return (kotlinType.unwrap() instanceof FlexibleType) && acceptsNullable(((FlexibleType) kotlinType.unwrap()).upperBound);
    }

    public static boolean contains(KotlinType kotlinType, Function1 function1, SmartSet smartSet) {
        if (kotlinType == null) {
            return false;
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (noExpectedType(kotlinType)) {
            return ((Boolean) function1.invoke(unwrap)).booleanValue();
        }
        if (smartSet != null && smartSet.contains(kotlinType)) {
            return false;
        }
        if (((Boolean) function1.invoke(unwrap)).booleanValue()) {
            return true;
        }
        if (smartSet == null) {
            smartSet = new SmartSet();
        }
        smartSet.add(kotlinType);
        FlexibleType flexibleType = unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
        if (flexibleType != null && (contains(flexibleType.lowerBound, function1, smartSet) || contains(flexibleType.upperBound, function1, smartSet))) {
            return true;
        }
        if ((unwrap instanceof DefinitelyNotNullType) && contains(((DefinitelyNotNullType) unwrap).original, function1, smartSet)) {
            return true;
        }
        TypeConstructor constructor = kotlinType.getConstructor();
        if (constructor instanceof IntersectionTypeConstructor) {
            Iterator it = ((IntersectionTypeConstructor) constructor).intersectedTypes.iterator();
            while (it.hasNext()) {
                if (contains((KotlinType) it.next(), function1, smartSet)) {
                    return true;
                }
            }
            return false;
        }
        for (TypeProjectionBase typeProjectionBase : kotlinType.getArguments()) {
            if (!typeProjectionBase.isStarProjection()) {
                if (contains(typeProjectionBase.getType(), function1, smartSet)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static List getDefaultTypeProjections(List list) {
        if (list == null) {
            $$$reportNull$$$0(16);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new StarProjectionImpl(((TypeParameterDescriptor) it.next()).getDefaultType()));
        }
        return CollectionsKt.toList(arrayList);
    }

    public static boolean isNullableType(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(27);
            throw null;
        }
        if (!kotlinType.isMarkedNullable() && (!(kotlinType.unwrap() instanceof FlexibleType) || !isNullableType(((FlexibleType) kotlinType.unwrap()).upperBound))) {
            if (!(kotlinType.unwrap() instanceof DefinitelyNotNullType)) {
                if (isTypeParameter(kotlinType)) {
                    if (!(kotlinType.getConstructor().getDeclarationDescriptor() instanceof ModuleAwareClassDescriptor)) {
                        TypeSubstitutor create = TypeSubstitutor.create(kotlinType);
                        Collection<KotlinType> supertypes = kotlinType.getConstructor().getSupertypes();
                        ArrayList arrayList = new ArrayList(supertypes.size());
                        for (KotlinType kotlinType2 : supertypes) {
                            if (kotlinType2 == null) {
                                $$$reportNull$$$0(21);
                                throw null;
                            }
                            KotlinType substitute = create.substitute(kotlinType2, Variance.INVARIANT);
                            KotlinType makeNullableIfNeeded = substitute != null ? makeNullableIfNeeded(substitute, kotlinType.isMarkedNullable()) : null;
                            if (makeNullableIfNeeded != null) {
                                arrayList.add(makeNullableIfNeeded);
                            }
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (isNullableType((KotlinType) it.next())) {
                                return true;
                            }
                        }
                    }
                    return false;
                }
                TypeConstructor constructor = kotlinType.getConstructor();
                if (constructor instanceof IntersectionTypeConstructor) {
                    Iterator it2 = ((IntersectionTypeConstructor) constructor).intersectedTypes.iterator();
                    while (it2.hasNext()) {
                        if (isNullableType((KotlinType) it2.next())) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static boolean isTypeParameter(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(60);
            throw null;
        }
        if ((kotlinType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) kotlinType.getConstructor().getDeclarationDescriptor() : null) != null) {
            return true;
        }
        kotlinType.getConstructor();
        return false;
    }

    public static UnwrappedType makeNullableAsSpecified(KotlinType kotlinType, boolean z) {
        if (kotlinType == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        UnwrappedType makeNullableAsSpecified = kotlinType.unwrap().makeNullableAsSpecified(z);
        if (makeNullableAsSpecified != null) {
            return makeNullableAsSpecified;
        }
        $$$reportNull$$$0(4);
        throw null;
    }

    public static SimpleType makeNullableIfNeeded(SimpleType simpleType, boolean z) {
        if (simpleType == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (!z) {
            return simpleType;
        }
        SimpleType makeNullableAsSpecified = simpleType.makeNullableAsSpecified(true);
        if (makeNullableAsSpecified != null) {
            return makeNullableAsSpecified;
        }
        $$$reportNull$$$0(6);
        throw null;
    }

    public static TypeProjectionBase makeStarProjection(TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes) {
        if (typeParameterDescriptor != null) {
            return javaTypeAttributes.howThisTypeIsUsed == TypeUsage.SUPERTYPE ? new StarProjectionImpl(KotlinTypeKt.starProjectionType(typeParameterDescriptor)) : new StarProjectionImpl(typeParameterDescriptor);
        }
        $$$reportNull$$$0(46);
        throw null;
    }

    public static boolean noExpectedType(KotlinType kotlinType) {
        if (kotlinType != null) {
            return kotlinType == NO_EXPECTED_TYPE || kotlinType == UNIT_EXPECTED_TYPE;
        }
        $$$reportNull$$$0(0);
        throw null;
    }

    public static KotlinType makeNullableIfNeeded(KotlinType kotlinType, boolean z) {
        if (kotlinType != null) {
            return z ? makeNullableAsSpecified(kotlinType, true) : kotlinType;
        }
        $$$reportNull$$$0(8);
        throw null;
    }

    public static StarProjectionImpl makeStarProjection(TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor != null) {
            return new StarProjectionImpl(typeParameterDescriptor);
        }
        $$$reportNull$$$0(45);
        throw null;
    }
}
