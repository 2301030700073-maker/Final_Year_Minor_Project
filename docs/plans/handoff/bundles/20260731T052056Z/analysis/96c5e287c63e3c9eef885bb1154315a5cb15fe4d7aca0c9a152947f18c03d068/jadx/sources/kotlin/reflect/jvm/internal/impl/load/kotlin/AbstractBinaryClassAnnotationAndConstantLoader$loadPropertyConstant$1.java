package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1 extends Lambda implements Function2 {
    public static final AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1 INSTANCE;
    public static final AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 2;
        INSTANCE$1 = new AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1(i, 1);
        INSTANCE = new AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants = (AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants) obj;
                MemberSignature memberSignature = (MemberSignature) obj2;
                abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants.getClass();
                memberSignature.getClass();
                return abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants.propertyConstants.get(memberSignature);
            default:
                AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants2 = (AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants) obj;
                MemberSignature memberSignature2 = (MemberSignature) obj2;
                abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants2.getClass();
                memberSignature2.getClass();
                return abstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants2.annotationParametersDefaultValues.get(memberSignature2);
        }
    }
}
