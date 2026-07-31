package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotNullTypeParameterImpl extends DelegatingSimpleType implements CustomTypeParameter {
    public final SimpleType delegate;

    public NotNullTypeParameterImpl(SimpleType simpleType) {
        simpleType.getClass();
        this.delegate = simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final boolean isTypeParameter() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return z ? this.delegate.makeNullableAsSpecified(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NotNullTypeParameterImpl(this.delegate.replaceAttributes(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
        return new NotNullTypeParameterImpl(simpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final UnwrappedType substitutionResult(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (!TypeUtils.isTypeParameter(unwrap) && !TypeUtils.isNullableType(unwrap)) {
            return unwrap;
        }
        if (unwrap instanceof SimpleType) {
            SimpleType simpleType = (SimpleType) unwrap;
            SimpleType makeNullableAsSpecified = simpleType.makeNullableAsSpecified(false);
            return !TypeUtils.isTypeParameter(simpleType) ? makeNullableAsSpecified : new NotNullTypeParameterImpl(makeNullableAsSpecified);
        }
        if (!(unwrap instanceof FlexibleType)) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Incorrect type: ", unwrap);
            return null;
        }
        FlexibleType flexibleType = (FlexibleType) unwrap;
        SimpleType simpleType2 = flexibleType.lowerBound;
        SimpleType makeNullableAsSpecified2 = simpleType2.makeNullableAsSpecified(false);
        if (TypeUtils.isTypeParameter(simpleType2)) {
            makeNullableAsSpecified2 = new NotNullTypeParameterImpl(makeNullableAsSpecified2);
        }
        SimpleType simpleType3 = flexibleType.upperBound;
        SimpleType makeNullableAsSpecified3 = simpleType3.makeNullableAsSpecified(false);
        if (TypeUtils.isTypeParameter(simpleType3)) {
            makeNullableAsSpecified3 = new NotNullTypeParameterImpl(makeNullableAsSpecified3);
        }
        return KotlinTypeKt.wrapEnhancement(KotlinTypeKt.flexibleType(makeNullableAsSpecified2, makeNullableAsSpecified3), KotlinTypeKt.getEnhancement(unwrap));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NotNullTypeParameterImpl(this.delegate.replaceAttributes(typeAttributes));
    }
}
