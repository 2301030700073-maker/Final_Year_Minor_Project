package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorRendererImpl$renderConstant$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DescriptorRendererImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DescriptorRendererImpl$renderConstant$1(DescriptorRendererImpl descriptorRendererImpl, int i) {
        super(1);
        this.$r8$classId = i;
        this.this$0 = descriptorRendererImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        DescriptorRendererImpl descriptorRendererImpl = this.this$0;
        switch (i) {
            case 0:
                ConstantValue constantValue = (ConstantValue) obj;
                constantValue.getClass();
                return descriptorRendererImpl.renderConstant(constantValue);
            case 1:
                TypeProjectionBase typeProjectionBase = (TypeProjectionBase) obj;
                typeProjectionBase.getClass();
                if (typeProjectionBase.isStarProjection()) {
                    return "*";
                }
                KotlinType type = typeProjectionBase.getType();
                type.getClass();
                String renderType = descriptorRendererImpl.renderType(type);
                if (typeProjectionBase.getProjectionKind() == Variance.INVARIANT) {
                    return renderType;
                }
                return typeProjectionBase.getProjectionKind() + ' ' + renderType;
            default:
                KotlinType kotlinType = (KotlinType) obj;
                kotlinType.getClass();
                return descriptorRendererImpl.renderType(kotlinType);
        }
    }
}
