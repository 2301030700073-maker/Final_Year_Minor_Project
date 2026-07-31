package kotlinx.serialization.internal;

import java.lang.ref.SoftReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
