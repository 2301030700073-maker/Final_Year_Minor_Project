package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import net.thunderbird.core.preference.display.DefaultDisplaySettingsPreferenceManager;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetMessageListPreferences {
    public final DefaultDisplaySettingsPreferenceManager displayPreferenceManager;
    public final DefaultInteractionSettingsPreferenceManager interactionPreferenceManager;

    public GetMessageListPreferences(DefaultDisplaySettingsPreferenceManager defaultDisplaySettingsPreferenceManager, DefaultInteractionSettingsPreferenceManager defaultInteractionSettingsPreferenceManager) {
        this.displayPreferenceManager = defaultDisplaySettingsPreferenceManager;
        this.interactionPreferenceManager = defaultInteractionSettingsPreferenceManager;
    }
}
