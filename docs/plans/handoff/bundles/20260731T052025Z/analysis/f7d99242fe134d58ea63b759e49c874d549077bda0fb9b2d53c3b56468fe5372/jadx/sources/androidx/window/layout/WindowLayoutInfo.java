package androidx.window.layout;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowLayoutInfo {
    public final List displayFeatures;

    public WindowLayoutInfo(List list) {
        this.displayFeatures = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !WindowLayoutInfo.class.equals(obj.getClass())) {
            return false;
        }
        return this.displayFeatures.equals(((WindowLayoutInfo) obj).displayFeatures);
    }

    public final int hashCode() {
        return this.displayFeatures.hashCode();
    }

    public final String toString() {
        return CollectionsKt.joinToString$default(this.displayFeatures, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", null, 56);
    }
}
