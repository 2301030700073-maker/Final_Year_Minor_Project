package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.ui.setting.SettingValue;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReadingMailSettingsBuilder {
    public final StringsResourceManager resources;
    public final AbstractPersistentList selectOptions = Okio.persistentListOf(new SettingValue.Select.SelectOption("NEVER", new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(this, 3)), new SettingValue.Select.SelectOption("ALWAYS", new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(this, 4)), new SettingValue.Select.SelectOption("ONLY_FROM_CONTACTS", new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(this, 5)));

    public ReadingMailSettingsBuilder(StringsResourceManager stringsResourceManager) {
        this.resources = stringsResourceManager;
    }
}
