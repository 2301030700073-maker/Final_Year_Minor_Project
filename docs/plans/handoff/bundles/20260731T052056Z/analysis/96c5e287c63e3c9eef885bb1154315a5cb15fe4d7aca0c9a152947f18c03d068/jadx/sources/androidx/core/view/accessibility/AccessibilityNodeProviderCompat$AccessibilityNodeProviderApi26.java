package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19 {
    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        this.mCompat.addExtraDataToAccessibilityNodeInfo(i, new AccessibilityNodeInfoCompat(accessibilityNodeInfo), str, bundle);
    }
}
