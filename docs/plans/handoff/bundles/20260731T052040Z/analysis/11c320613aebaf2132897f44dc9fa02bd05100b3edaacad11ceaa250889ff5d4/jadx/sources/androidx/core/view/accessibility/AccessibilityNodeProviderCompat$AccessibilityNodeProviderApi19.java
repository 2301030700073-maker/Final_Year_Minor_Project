package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import coil3.memory.MemoryCacheService;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19 extends AccessibilityNodeProvider {
    public final MemoryCacheService mCompat;

    public AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(MemoryCacheService memoryCacheService) {
        this.mCompat = memoryCacheService;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        AccessibilityNodeInfoCompat createAccessibilityNodeInfo = this.mCompat.createAccessibilityNodeInfo(i);
        if (createAccessibilityNodeInfo == null) {
            return null;
        }
        return createAccessibilityNodeInfo.mInfo;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i) {
        this.mCompat.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i) {
        AccessibilityNodeInfoCompat findFocus = this.mCompat.findFocus(i);
        if (findFocus == null) {
            return null;
        }
        return findFocus.mInfo;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.mCompat.performAction(i, i2, bundle);
    }
}
