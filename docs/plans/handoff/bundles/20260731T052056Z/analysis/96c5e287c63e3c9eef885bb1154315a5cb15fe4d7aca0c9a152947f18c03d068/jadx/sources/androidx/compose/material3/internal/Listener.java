package androidx.compose.material3.internal;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import java.util.List;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Listener implements AccessibilityManager.AccessibilityStateChangeListener, State {
    public final boolean listenToSwitchAccessState;
    public final Listener$otherA11yServicesListener$1 otherA11yServicesListener;
    public final ParcelableSnapshotMutableState accessibilityEnabled$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    public final Listener$touchExplorationListener$1 touchExplorationListener = new Listener$touchExplorationListener$1();

    public Listener(boolean z) {
        this.listenToSwitchAccessState = z;
        this.otherA11yServicesListener = (z && Build.VERSION.SDK_INT >= 33) ? new Listener$otherA11yServicesListener$1(this) : null;
    }

    public static boolean getSwitchAccessEnabled(AccessibilityManager accessibilityManager) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16);
        int size = enabledAccessibilityServiceList.size();
        for (int i = 0; i < size; i++) {
            String settingsActivityName = enabledAccessibilityServiceList.get(i).getSettingsActivityName();
            if (settingsActivityName != null && StringsKt.contains(settingsActivityName, "SwitchAccess", true)) {
                return true;
            }
        }
        return false;
    }

    public static boolean getVoiceAccessEnabled(AccessibilityManager accessibilityManager) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16);
        int size = enabledAccessibilityServiceList.size();
        for (int i = 0; i < size; i++) {
            String settingsActivityName = enabledAccessibilityServiceList.get(i).getSettingsActivityName();
            if (settingsActivityName != null && StringsKt.contains(settingsActivityName, "VoiceAccess", true)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        if (((java.lang.Boolean) r2.switchAccessEnabled$delegate.getValue()).booleanValue() == true) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if (((java.lang.Boolean) r1.enabled$delegate.getValue()).booleanValue() == true) goto L17;
     */
    @Override // androidx.compose.runtime.State
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getValue() {
        /*
            r2 = this;
            androidx.compose.runtime.ParcelableSnapshotMutableState r0 = r2.accessibilityEnabled$delegate
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L39
            r0 = 1
            androidx.compose.material3.internal.Listener$touchExplorationListener$1 r1 = r2.touchExplorationListener
            if (r1 == 0) goto L22
            androidx.compose.runtime.ParcelableSnapshotMutableState r1 = r1.enabled$delegate
            java.lang.Object r1 = r1.getValue()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != r0) goto L22
            goto L3a
        L22:
            boolean r1 = r2.listenToSwitchAccessState
            if (r1 == 0) goto L39
            androidx.compose.material3.internal.Listener$otherA11yServicesListener$1 r2 = r2.otherA11yServicesListener
            if (r2 == 0) goto L39
            androidx.compose.runtime.ParcelableSnapshotMutableState r2 = r2.switchAccessEnabled$delegate
            java.lang.Object r2 = r2.getValue()
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != r0) goto L39
            goto L3a
        L39:
            r0 = 0
        L3a:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.Listener.getValue():java.lang.Object");
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this.accessibilityEnabled$delegate.setValue(Boolean.valueOf(z));
    }

    public final void register(AccessibilityManager accessibilityManager) {
        Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1;
        this.accessibilityEnabled$delegate.setValue(Boolean.valueOf(accessibilityManager.isEnabled()));
        accessibilityManager.addAccessibilityStateChangeListener(this);
        Listener$touchExplorationListener$1 listener$touchExplorationListener$1 = this.touchExplorationListener;
        if (listener$touchExplorationListener$1 != null) {
            listener$touchExplorationListener$1.enabled$delegate.setValue(Boolean.valueOf(accessibilityManager.isTouchExplorationEnabled()));
            accessibilityManager.addTouchExplorationStateChangeListener(listener$touchExplorationListener$1);
        }
        if (Build.VERSION.SDK_INT < 33 || (listener$otherA11yServicesListener$1 = this.otherA11yServicesListener) == null) {
            return;
        }
        listener$otherA11yServicesListener$1.switchAccessEnabled$delegate.setValue(Boolean.valueOf(getSwitchAccessEnabled(accessibilityManager)));
        listener$otherA11yServicesListener$1.voiceAccessEnabled$delegate.setValue(Boolean.valueOf(getVoiceAccessEnabled(accessibilityManager)));
        accessibilityManager.addAccessibilityServicesStateChangeListener(listener$otherA11yServicesListener$1);
    }

    public final void unregister(AccessibilityManager accessibilityManager) {
        Listener$otherA11yServicesListener$1 listener$otherA11yServicesListener$1;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        Listener$touchExplorationListener$1 listener$touchExplorationListener$1 = this.touchExplorationListener;
        if (listener$touchExplorationListener$1 != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(listener$touchExplorationListener$1);
        }
        if (Build.VERSION.SDK_INT < 33 || (listener$otherA11yServicesListener$1 = this.otherA11yServicesListener) == null) {
            return;
        }
        accessibilityManager.removeAccessibilityServicesStateChangeListener(listener$otherA11yServicesListener$1);
    }
}
