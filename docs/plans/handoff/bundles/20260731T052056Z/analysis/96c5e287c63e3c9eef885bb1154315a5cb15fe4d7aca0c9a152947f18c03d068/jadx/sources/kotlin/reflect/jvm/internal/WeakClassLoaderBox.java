package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WeakClassLoaderBox {
    public final int identityHashCode;
    public final WeakReference ref;

    public WeakClassLoaderBox(ClassLoader classLoader) {
        this.ref = new WeakReference(classLoader);
        this.identityHashCode = System.identityHashCode(classLoader);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WeakClassLoaderBox) && this.ref.get() == ((WeakClassLoaderBox) obj).ref.get();
    }

    public final int hashCode() {
        return this.identityHashCode;
    }

    public final String toString() {
        String obj;
        ClassLoader classLoader = (ClassLoader) this.ref.get();
        return (classLoader == null || (obj = classLoader.toString()) == null) ? "<null>" : obj;
    }
}
