package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImplicitClassReceiver implements ReceiverValue {
    public final ModuleAwareClassDescriptor classDescriptor;

    public ImplicitClassReceiver(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        this.classDescriptor = moduleAwareClassDescriptor;
    }

    public final boolean equals(Object obj) {
        ImplicitClassReceiver implicitClassReceiver = obj instanceof ImplicitClassReceiver ? (ImplicitClassReceiver) obj : null;
        return this.classDescriptor.equals(implicitClassReceiver != null ? implicitClassReceiver.classDescriptor : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
    public final KotlinType getType() {
        SimpleType defaultType = this.classDescriptor.getDefaultType();
        defaultType.getClass();
        return defaultType;
    }

    public final int hashCode() {
        return this.classDescriptor.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Class{");
        SimpleType defaultType = this.classDescriptor.getDefaultType();
        defaultType.getClass();
        sb.append(defaultType);
        sb.append('}');
        return sb.toString();
    }
}
