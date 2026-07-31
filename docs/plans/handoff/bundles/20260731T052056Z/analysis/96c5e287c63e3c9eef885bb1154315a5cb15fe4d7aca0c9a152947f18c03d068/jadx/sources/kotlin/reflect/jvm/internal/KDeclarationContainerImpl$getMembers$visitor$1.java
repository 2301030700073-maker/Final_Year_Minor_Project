package kotlin.reflect.jvm.internal;

import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KDeclarationContainerImpl$getMembers$visitor$1 extends ConnectionPool {
    @Override // okhttp3.ConnectionPool
    public final Object visitConstructorDescriptor(ClassConstructorDescriptorImpl classConstructorDescriptorImpl, Object obj) {
        throw new IllegalStateException("No constructors should appear here: " + classConstructorDescriptorImpl);
    }
}
