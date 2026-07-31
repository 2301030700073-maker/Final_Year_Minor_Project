package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberScope$Companion$ALL_NAME_FILTER$1 extends Lambda implements Function1 {
    public static final MemberScope$Companion$ALL_NAME_FILTER$1 INSTANCE;
    public static final MemberScope$Companion$ALL_NAME_FILTER$1 INSTANCE$1;
    public static final MemberScope$Companion$ALL_NAME_FILTER$1 INSTANCE$2;
    public static final MemberScope$Companion$ALL_NAME_FILTER$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new MemberScope$Companion$ALL_NAME_FILTER$1(i, 0);
        INSTANCE$1 = new MemberScope$Companion$ALL_NAME_FILTER$1(i, 1);
        INSTANCE$2 = new MemberScope$Companion$ALL_NAME_FILTER$1(i, 2);
        INSTANCE$3 = new MemberScope$Companion$ALL_NAME_FILTER$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MemberScope$Companion$ALL_NAME_FILTER$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((Name) obj).getClass();
                return Boolean.TRUE;
            case 1:
                CallableDescriptor callableDescriptor = (CallableDescriptor) obj;
                callableDescriptor.getClass();
                return callableDescriptor;
            case 2:
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) obj;
                simpleFunctionDescriptorImpl.getClass();
                return simpleFunctionDescriptorImpl;
            default:
                PropertyDescriptor propertyDescriptor = (PropertyDescriptor) obj;
                propertyDescriptor.getClass();
                return propertyDescriptor;
        }
    }
}
