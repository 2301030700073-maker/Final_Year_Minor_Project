package net.thunderbird.feature.account.settings.impl.ui.search;

import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.ui.setting.SettingValue;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchSettingBuilder {
    public final StringsResourceManager resources;
    public final AbstractPersistentList selectOptions = Okio.persistentListOf(new SettingValue.Select.SelectOption("10", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 1)), new SettingValue.Select.SelectOption("25", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 2)), new SettingValue.Select.SelectOption("50", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 3)), new SettingValue.Select.SelectOption("100", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 4)), new SettingValue.Select.SelectOption("250", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 5)), new SettingValue.Select.SelectOption("500", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 6)), new SettingValue.Select.SelectOption("1000", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 7)), new SettingValue.Select.SelectOption("0", new SearchSettingBuilder$$ExternalSyntheticLambda0(this, 8)));

    public SearchSettingBuilder(StringsResourceManager stringsResourceManager) {
        this.resources = stringsResourceManager;
    }
}
