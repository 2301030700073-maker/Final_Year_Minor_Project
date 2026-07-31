package androidx.camera.camera2.impl;

import android.util.Size;
import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Size size = (Size) obj;
        Size size2 = (Size) obj2;
        return Long.valueOf(size.getWidth() * size.getHeight()).compareTo(Long.valueOf(size2.getWidth() * size2.getHeight()));
    }
}
