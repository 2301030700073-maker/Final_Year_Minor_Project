package androidx.camera.core.impl.utils;

import android.util.Size;
import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CompareSizesByArea implements Comparator {
    public final boolean mReverse;

    public CompareSizesByArea(boolean z) {
        this.mReverse = z;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Size size = (Size) obj;
        Size size2 = (Size) obj2;
        int signum = Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
        return this.mReverse ? signum * (-1) : signum;
    }
}
