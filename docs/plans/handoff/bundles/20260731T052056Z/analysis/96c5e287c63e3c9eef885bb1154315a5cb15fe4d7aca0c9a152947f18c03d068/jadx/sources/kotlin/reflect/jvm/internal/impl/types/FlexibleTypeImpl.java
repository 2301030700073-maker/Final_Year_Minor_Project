package kotlin.reflect.jvm.internal.impl.types;

import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlexibleTypeImpl extends FlexibleType implements CustomTypeParameter {
    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return this.lowerBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final boolean isTypeParameter() {
        SimpleType simpleType = this.lowerBound;
        return (simpleType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) && Intrinsics.areEqual(simpleType.getConstructor(), this.upperBound.getConstructor());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        return KotlinTypeKt.flexibleType(this.lowerBound.makeNullableAsSpecified(z), this.upperBound.makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final KotlinType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        SimpleType simpleType = this.lowerBound;
        simpleType.getClass();
        SimpleType simpleType2 = this.upperBound;
        simpleType2.getClass();
        return new FlexibleTypeImpl(simpleType, simpleType2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        boolean debugMode = descriptorRendererImpl2.options.getDebugMode();
        SimpleType simpleType = this.upperBound;
        SimpleType simpleType2 = this.lowerBound;
        if (!debugMode) {
            return descriptorRendererImpl.renderFlexibleType(descriptorRendererImpl.renderType(simpleType2), descriptorRendererImpl.renderType(simpleType), OperationKt.getBuiltIns(this));
        }
        return "(" + descriptorRendererImpl.renderType(simpleType2) + ".." + descriptorRendererImpl.renderType(simpleType) + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return KotlinTypeKt.flexibleType(this.lowerBound.replaceAttributes(typeAttributes), this.upperBound.replaceAttributes(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final UnwrappedType substitutionResult(KotlinType kotlinType) {
        UnwrappedType flexibleType;
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            flexibleType = unwrap;
        } else {
            if (!(unwrap instanceof SimpleType)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            SimpleType simpleType = (SimpleType) unwrap;
            flexibleType = KotlinTypeKt.flexibleType(simpleType, simpleType.makeNullableAsSpecified(true));
        }
        return KotlinTypeKt.inheritEnhancement(flexibleType, unwrap);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String toString() {
        return "(" + this.lowerBound + ".." + this.upperBound + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        SimpleType simpleType = this.lowerBound;
        simpleType.getClass();
        SimpleType simpleType2 = this.upperBound;
        simpleType2.getClass();
        return new FlexibleTypeImpl(simpleType, simpleType2);
    }
}
