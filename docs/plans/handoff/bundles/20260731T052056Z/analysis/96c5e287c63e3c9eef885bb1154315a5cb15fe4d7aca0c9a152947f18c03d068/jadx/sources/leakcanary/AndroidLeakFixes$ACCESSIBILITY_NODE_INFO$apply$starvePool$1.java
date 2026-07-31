package leakcanary;

import android.view.accessibility.AccessibilityNodeInfo;
import leakcanary.AndroidLeakFixes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$starvePool$1 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < 50; i++) {
            AccessibilityNodeInfo.obtain();
        }
        AndroidLeakFixes.Companion.getClass();
        AndroidLeakFixes.Companion.getBackgroundHandler$plumber_android_core_release().postDelayed(this, 5000L);
    }
}
