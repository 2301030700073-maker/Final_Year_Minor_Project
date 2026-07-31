package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$property$$inlined$vetoable$1;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlexibleTypeWithEnhancement extends FlexibleType implements TypeWithEnhancement {
    public final KotlinType enhancement;
    public final FlexibleType origin;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleTypeWithEnhancement(FlexibleType flexibleType, KotlinType kotlinType) {
        super(flexibleType.lowerBound, flexibleType.upperBound);
        kotlinType.getClass();
        this.origin = flexibleType;
        this.enhancement = kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return this.origin.getDelegate();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final KotlinType getEnhancement() {
        return this.enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final UnwrappedType getOrigin() {
        return this.origin;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        return KotlinTypeKt.wrapEnhancement(this.origin.makeNullableAsSpecified(z), this.enhancement.unwrap().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final KotlinType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        KotlinType kotlinType = this.enhancement;
        kotlinType.getClass();
        return new FlexibleTypeWithEnhancement(this.origin, kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererImpl2.options.enhancedTypes$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[11];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() ? descriptorRendererImpl.renderType(this.enhancement) : this.origin.render(descriptorRendererImpl, descriptorRendererImpl2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return KotlinTypeKt.wrapEnhancement(this.origin.replaceAttributes(typeAttributes), this.enhancement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.enhancement + ")] " + this.origin;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        KotlinType kotlinType = this.enhancement;
        kotlinType.getClass();
        return new FlexibleTypeWithEnhancement(this.origin, kotlinType);
    }
}
