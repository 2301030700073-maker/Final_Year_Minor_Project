package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorRendererImpl$renderConstructor$1 extends Lambda implements Function1 {
    public static final DescriptorRendererImpl$renderConstructor$1 INSTANCE;
    public static final DescriptorRendererImpl$renderConstructor$1 INSTANCE$1;
    public static final DescriptorRendererImpl$renderConstructor$1 INSTANCE$2;
    public static final DescriptorRendererImpl$renderConstructor$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new DescriptorRendererImpl$renderConstructor$1(i, 0);
        INSTANCE$1 = new DescriptorRendererImpl$renderConstructor$1(i, 1);
        INSTANCE$2 = new DescriptorRendererImpl$renderConstructor$1(i, 2);
        INSTANCE$3 = new DescriptorRendererImpl$renderConstructor$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DescriptorRendererImpl$renderConstructor$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return "";
            case 1:
                KotlinType kotlinType = (KotlinType) obj;
                kotlinType.getClass();
                return kotlinType;
            case 2:
                ((ValueParameterDescriptorImpl) obj).getClass();
                return "...";
            default:
                KotlinType kotlinType2 = (KotlinType) obj;
                kotlinType2.getClass();
                return kotlinType2;
        }
    }
}
