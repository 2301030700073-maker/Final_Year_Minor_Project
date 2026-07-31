package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RuntimeSourceElementFactory$RuntimeSourceElement implements SourceElement {
    public final ReflectJavaElement javaElement;

    public RuntimeSourceElementFactory$RuntimeSourceElement(ReflectJavaElement reflectJavaElement) {
        this.javaElement = reflectJavaElement;
    }

    public final String toString() {
        return RuntimeSourceElementFactory$RuntimeSourceElement.class.getName() + ": " + this.javaElement;
    }
}
