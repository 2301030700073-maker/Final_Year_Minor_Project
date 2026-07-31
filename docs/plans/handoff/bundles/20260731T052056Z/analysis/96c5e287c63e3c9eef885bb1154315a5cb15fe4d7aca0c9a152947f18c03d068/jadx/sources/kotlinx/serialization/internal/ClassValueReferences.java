package kotlinx.serialization.internal;

import java.lang.ref.SoftReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassValueReferences extends ClassValue {
    @Override // java.lang.ClassValue
    public final Object computeValue(Class cls) {
        cls.getClass();
        MutableSoftReference mutableSoftReference = new MutableSoftReference();
        mutableSoftReference.reference = new SoftReference(null);
        return mutableSoftReference;
    }
}
