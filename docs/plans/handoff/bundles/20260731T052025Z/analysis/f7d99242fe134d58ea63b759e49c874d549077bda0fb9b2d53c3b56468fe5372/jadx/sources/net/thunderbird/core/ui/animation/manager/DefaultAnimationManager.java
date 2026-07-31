package net.thunderbird.core.ui.animation.manager;

import android.animation.ValueAnimator;
import android.os.Build;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAnimationManager implements AnimationManager {
    public final DisplayVisualSettingsPreferenceManager visualSettingsPreferenceManager;

    public DefaultAnimationManager(DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager) {
        this.visualSettingsPreferenceManager = displayVisualSettingsPreferenceManager;
    }

    public final boolean shouldShowAnimations() {
        int ordinal = ((DisplayVisualSettings) ((DefaultDisplayVisualSettingsPreferenceManager) this.visualSettingsPreferenceManager).getConfig()).animationPreference.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                } else if (Build.VERSION.SDK_INT >= 26) {
                    return ValueAnimator.areAnimatorsEnabled();
                }
            }
            return false;
        }
        return true;
    }
}
