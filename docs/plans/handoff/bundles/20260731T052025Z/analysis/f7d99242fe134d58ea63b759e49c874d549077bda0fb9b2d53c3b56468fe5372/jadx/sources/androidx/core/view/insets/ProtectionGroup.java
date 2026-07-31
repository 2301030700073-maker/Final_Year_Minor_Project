package androidx.core.view.insets;

import androidx.core.graphics.Insets;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProtectionGroup {
    public int mAnimationCount;
    public boolean mDisposed;
    public Insets mInsets;
    public Insets mInsetsIgnoringVisibility;
    public final SystemBarStateMonitor mMonitor;
    public final ArrayList mProtections = new ArrayList();

    public ProtectionGroup(SystemBarStateMonitor systemBarStateMonitor, ArrayList arrayList) {
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        addProtections(arrayList, false);
        addProtections(arrayList, true);
        ArrayList arrayList2 = systemBarStateMonitor.mCallbacks;
        if (!arrayList2.contains(this)) {
            arrayList2.add(this);
            Insets insets2 = systemBarStateMonitor.mInsets;
            Insets insets3 = systemBarStateMonitor.mInsetsIgnoringVisibility;
            this.mInsets = insets2;
            this.mInsetsIgnoringVisibility = insets3;
            updateInsets();
            onColorHintChanged(systemBarStateMonitor.mColorHint);
        }
        this.mMonitor = systemBarStateMonitor;
    }

    public final void addProtections(List list, boolean z) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ColorProtection colorProtection = (ColorProtection) list.get(i);
            colorProtection.getClass();
            if (true == z) {
                ProtectionGroup protectionGroup = colorProtection.mController;
                if (protectionGroup != null) {
                    throw new IllegalStateException(colorProtection + " (" + (i + 1) + "/" + size + ") is already controlled by " + protectionGroup + " but is still added to " + this);
                }
                colorProtection.mController = this;
                this.mProtections.add(colorProtection);
            }
        }
    }

    public final void onColorHintChanged(int i) {
        ArrayList arrayList = this.mProtections;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ColorProtection colorProtection = (ColorProtection) arrayList.get(size);
            if (!colorProtection.mHasColor && colorProtection.mColor != i) {
                colorProtection.mColor = i;
                throw null;
            }
        }
    }

    public final void updateInsets() {
        ArrayList arrayList = this.mProtections;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        ColorProtection colorProtection = (ColorProtection) arrayList.get(size);
        Insets insets = this.mInsets;
        Insets insets2 = this.mInsetsIgnoringVisibility;
        colorProtection.mInsets = insets;
        colorProtection.mInsetsIgnoringVisibility = insets2;
        throw null;
    }
}
