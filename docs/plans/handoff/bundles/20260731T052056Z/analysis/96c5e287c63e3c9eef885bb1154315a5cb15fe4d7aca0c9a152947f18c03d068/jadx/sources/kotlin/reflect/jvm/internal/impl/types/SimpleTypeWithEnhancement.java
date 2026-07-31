package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleTypeWithEnhancement extends DelegatingSimpleType implements TypeWithEnhancement {
    public final SimpleType delegate;
    public final KotlinType enhancement;

    public SimpleTypeWithEnhancement(SimpleType simpleType, KotlinType kotlinType) {
        kotlinType.getClass();
        this.delegate = simpleType;
        this.enhancement = kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final KotlinType getEnhancement() {
        return this.enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final UnwrappedType getOrigin() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        UnwrappedType wrapEnhancement = KotlinTypeKt.wrapEnhancement(this.delegate.makeNullableAsSpecified(z), this.enhancement.unwrap().makeNullableAsSpecified(z));
        wrapEnhancement.getClass();
        return (SimpleType) wrapEnhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final SimpleTypeWithEnhancement refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        KotlinType kotlinType = this.enhancement;
        kotlinType.getClass();
        return new SimpleTypeWithEnhancement(this.delegate, kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        UnwrappedType wrapEnhancement = KotlinTypeKt.wrapEnhancement(this.delegate.replaceAttributes(typeAttributes), this.enhancement);
        wrapEnhancement.getClass();
        return (SimpleType) wrapEnhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
        return new SimpleTypeWithEnhancement(simpleType, this.enhancement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.enhancement + ")] " + this.delegate;
    }
}
