package kotlin.reflect.jvm.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Type;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KParameterImpl$type$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KParameterImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KParameterImpl$type$1(KParameterImpl kParameterImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = kParameterImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        KParameterImpl kParameterImpl = this.this$0;
        switch (i) {
            case 0:
                ParameterDescriptor descriptor = kParameterImpl.getDescriptor();
                KCallableImpl kCallableImpl = kParameterImpl.callable;
                if (!(descriptor instanceof ReceiverParameterDescriptorImpl) || !Intrinsics.areEqual(UtilKt.getInstanceReceiverParameter(kCallableImpl.getDescriptor()), descriptor) || kCallableImpl.getDescriptor().getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                    return (Type) kCallableImpl.getCaller().getParameterTypes().get(kParameterImpl.index);
                }
                DeclarationDescriptor containingDeclaration = kCallableImpl.getDescriptor().getContainingDeclaration();
                containingDeclaration.getClass();
                Class javaClass = UtilKt.toJavaClass((ModuleAwareClassDescriptor) containingDeclaration);
                if (javaClass != null) {
                    return javaClass;
                }
                Gson$$ExternalSyntheticBUOutline0.m$6("Cannot determine receiver Java type of inherited declaration: ", descriptor);
                return null;
            default:
                return UtilKt.computeAnnotations(kParameterImpl.getDescriptor());
        }
    }
}
