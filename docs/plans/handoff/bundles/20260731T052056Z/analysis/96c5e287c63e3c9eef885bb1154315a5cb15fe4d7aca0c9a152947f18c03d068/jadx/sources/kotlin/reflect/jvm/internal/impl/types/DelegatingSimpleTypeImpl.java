package kotlin.reflect.jvm.internal.impl.types;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DelegatingSimpleTypeImpl extends DelegatingSimpleType {
    public final SimpleType delegate;

    public DelegatingSimpleTypeImpl(SimpleType simpleType) {
        this.delegate = simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return z == isMarkedNullable() ? this : this.delegate.makeNullableAsSpecified(z).replaceAttributes(getAttributes());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return typeAttributes != getAttributes() ? new SimpleTypeWithAttributes(this, typeAttributes) : this;
    }
}
