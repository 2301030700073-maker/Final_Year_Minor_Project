package androidx.compose.ui.platform;

import android.content.Context;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidAccessibilityManager implements AccessibilityManager {
    public final android.view.accessibility.AccessibilityManager accessibilityManager;

    public AndroidAccessibilityManager(Context context) {
        Object systemService = context.getSystemService("accessibility");
        systemService.getClass();
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
    }
}
