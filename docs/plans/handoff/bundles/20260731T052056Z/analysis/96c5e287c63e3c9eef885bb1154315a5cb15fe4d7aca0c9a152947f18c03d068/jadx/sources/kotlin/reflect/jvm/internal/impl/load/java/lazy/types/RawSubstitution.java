package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import androidx.room.Room;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RawSubstitution extends TypeSubstitution {
    public static final JavaTypeAttributes lowerTypeAttr;
    public static final JavaTypeAttributes upperTypeAttr;
    public final FormBody.Builder typeParameterUpperBoundEraser = new FormBody.Builder(new Transition.AnonymousClass1(28, false));

    static {
        TypeUsage typeUsage = TypeUsage.COMMON;
        lowerTypeAttr = OperationKt.toAttributes$default(typeUsage, false, null, 5).withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        upperTypeAttr = OperationKt.toAttributes$default(typeUsage, false, null, 5).withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    public final Pair eraseInflexibleBasedOnClassDescriptor(SimpleType simpleType, ModuleAwareClassDescriptor moduleAwareClassDescriptor, JavaTypeAttributes javaTypeAttributes) {
        if (simpleType.getConstructor().getParameters().isEmpty()) {
            return new Pair(simpleType, Boolean.FALSE);
        }
        if (KotlinBuiltIns.isArray(simpleType)) {
            TypeProjectionBase typeProjectionBase = (TypeProjectionBase) simpleType.getArguments().get(0);
            Variance projectionKind = typeProjectionBase.getProjectionKind();
            KotlinType type = typeProjectionBase.getType();
            type.getClass();
            return new Pair(KotlinTypeKt.simpleType$default(Room.listOf(new StarProjectionImpl(eraseType(type, javaTypeAttributes), projectionKind)), simpleType.getAttributes(), simpleType.getConstructor(), simpleType.isMarkedNullable()), Boolean.FALSE);
        }
        if (KotlinTypeKt.isError(simpleType)) {
            return new Pair(ErrorUtils.createErrorType(ErrorTypeKind.ERROR_RAW_TYPE, simpleType.getConstructor().toString()), Boolean.FALSE);
        }
        MemberScope memberScope = moduleAwareClassDescriptor.getMemberScope(this);
        memberScope.getClass();
        TypeAttributes attributes = simpleType.getAttributes();
        TypeConstructor typeConstructor = moduleAwareClassDescriptor.getTypeConstructor();
        typeConstructor.getClass();
        List<TypeParameterDescriptor> parameters = moduleAwareClassDescriptor.getTypeConstructor().getParameters();
        parameters.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
        for (TypeParameterDescriptor typeParameterDescriptor : parameters) {
            typeParameterDescriptor.getClass();
            FormBody.Builder builder = this.typeParameterUpperBoundEraser;
            arrayList.add(Transition.AnonymousClass1.computeProjection(typeParameterDescriptor, javaTypeAttributes, builder, builder.getErasedUpperBound(typeParameterDescriptor, javaTypeAttributes)));
        }
        return new Pair(KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(attributes, typeConstructor, arrayList, simpleType.isMarkedNullable(), memberScope, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(moduleAwareClassDescriptor, this, simpleType, javaTypeAttributes)), Boolean.TRUE);
    }

    public final KotlinType eraseType(KotlinType kotlinType, JavaTypeAttributes javaTypeAttributes) {
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            javaTypeAttributes.getClass();
            return eraseType(this.typeParameterUpperBoundEraser.getErasedUpperBound((TypeParameterDescriptor) declarationDescriptor, JavaTypeAttributes.copy$default(javaTypeAttributes, null, true, null, null, 59)), javaTypeAttributes);
        }
        if (!(declarationDescriptor instanceof ModuleAwareClassDescriptor)) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected declaration kind: ", declarationDescriptor);
            return null;
        }
        ClassifierDescriptor declarationDescriptor2 = KotlinTypeKt.upperIfFlexible(kotlinType).getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor2 instanceof ModuleAwareClassDescriptor) {
            Pair eraseInflexibleBasedOnClassDescriptor = eraseInflexibleBasedOnClassDescriptor(KotlinTypeKt.lowerIfFlexible(kotlinType), (ModuleAwareClassDescriptor) declarationDescriptor, lowerTypeAttr);
            SimpleType simpleType = (SimpleType) eraseInflexibleBasedOnClassDescriptor.first;
            boolean booleanValue = ((Boolean) eraseInflexibleBasedOnClassDescriptor.second).booleanValue();
            Pair eraseInflexibleBasedOnClassDescriptor2 = eraseInflexibleBasedOnClassDescriptor(KotlinTypeKt.upperIfFlexible(kotlinType), (ModuleAwareClassDescriptor) declarationDescriptor2, upperTypeAttr);
            SimpleType simpleType2 = (SimpleType) eraseInflexibleBasedOnClassDescriptor2.first;
            return (booleanValue || ((Boolean) eraseInflexibleBasedOnClassDescriptor2.second).booleanValue()) ? new RawTypeImpl(simpleType, simpleType2) : KotlinTypeKt.flexibleType(simpleType, simpleType2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + declarationDescriptor2 + "\" while for lower it's \"" + declarationDescriptor + '\"').toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjectionBase get(KotlinType kotlinType) {
        return new StarProjectionImpl(eraseType(kotlinType, new JavaTypeAttributes(TypeUsage.COMMON, false, false, null, 62)));
    }
}
