package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbbreviatedType extends DelegatingSimpleType {
    public final SimpleType abbreviation;
    public final SimpleType delegate;

    public AbbreviatedType(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        this.delegate = simpleType;
        this.abbreviation = simpleType2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final AbbreviatedType makeNullableAsSpecified(boolean z) {
        return new AbbreviatedType(this.delegate.makeNullableAsSpecified(z), this.abbreviation.makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final AbbreviatedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        SimpleType simpleType = this.delegate;
        simpleType.getClass();
        SimpleType simpleType2 = this.abbreviation;
        simpleType2.getClass();
        return new AbbreviatedType(simpleType, simpleType2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new AbbreviatedType(this.delegate.replaceAttributes(typeAttributes), this.abbreviation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
        return new AbbreviatedType(simpleType, this.abbreviation);
    }
}
