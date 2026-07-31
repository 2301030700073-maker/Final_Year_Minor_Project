package kotlin.reflect.jvm.internal.impl.util;

import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ValueParameterCountCheck$Equals extends MemberKindCheck {
    public static final ValueParameterCountCheck$Equals INSTANCE = new ValueParameterCountCheck$Equals(1, "must have no value parameters");
    public static final ValueParameterCountCheck$Equals INSTANCE$1 = new ValueParameterCountCheck$Equals(2, "must have a single value parameter");
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ValueParameterCountCheck$Equals(int i, String str) {
        super(1, str);
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final boolean check(JavaMethodDescriptor javaMethodDescriptor) {
        switch (this.$r8$classId) {
            case 0:
                return javaMethodDescriptor.getValueParameters().size() == 2;
            case 1:
                return javaMethodDescriptor.getValueParameters().isEmpty();
            default:
                return javaMethodDescriptor.getValueParameters().size() == 1;
        }
    }
}
