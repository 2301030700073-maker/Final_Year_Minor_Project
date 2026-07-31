package com.fsck.k9.autocrypt;

import com.fsck.k9.resources.K9AutocryptStringProvider;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptTransferMessageCreator {
    public final GeneralSettingsManager generalSettingsManager;
    public final K9AutocryptStringProvider stringProvider;

    public AutocryptTransferMessageCreator(K9AutocryptStringProvider k9AutocryptStringProvider, GeneralSettingsManager generalSettingsManager) {
        this.stringProvider = k9AutocryptStringProvider;
        this.generalSettingsManager = generalSettingsManager;
    }
}
