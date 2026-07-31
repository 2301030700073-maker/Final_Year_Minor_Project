package androidx.compose.material3.internal;

import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager$AccessibilityServicesStateChangeListener;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Listener$otherA11yServicesListener$1 implements AccessibilityManager$AccessibilityServicesStateChangeListener {
    public final ParcelableSnapshotMutableState switchAccessEnabled$delegate;
    public final ParcelableSnapshotMutableState voiceAccessEnabled$delegate;

    public Listener$otherA11yServicesListener$1(Listener listener) {
        Boolean bool = Boolean.FALSE;
        this.switchAccessEnabled$delegate = Updater.mutableStateOf$default(bool);
        this.voiceAccessEnabled$delegate = Updater.mutableStateOf$default(bool);
    }

    public final void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager) {
        this.switchAccessEnabled$delegate.setValue(Boolean.valueOf(Listener.getSwitchAccessEnabled(accessibilityManager)));
        this.voiceAccessEnabled$delegate.setValue(Boolean.valueOf(Listener.getVoiceAccessEnabled(accessibilityManager)));
    }
}
