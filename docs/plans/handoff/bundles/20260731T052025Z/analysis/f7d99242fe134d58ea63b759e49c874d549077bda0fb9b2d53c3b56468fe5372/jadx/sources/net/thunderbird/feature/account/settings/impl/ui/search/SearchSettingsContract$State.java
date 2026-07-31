package net.thunderbird.feature.account.settings.impl.ui.search;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchSettingsContract$State {
    public final SettingValue.Select.SelectOption serverSearchLimit;
    public final String subtitle;

    public SearchSettingsContract$State(String str, SettingValue.Select.SelectOption selectOption) {
        this.subtitle = str;
        this.serverSearchLimit = selectOption;
    }

    public static SearchSettingsContract$State copy$default(SearchSettingsContract$State searchSettingsContract$State, String str, SettingValue.Select.SelectOption selectOption, int i) {
        if ((i & 1) != 0) {
            str = searchSettingsContract$State.subtitle;
        }
        if ((i & 2) != 0) {
            selectOption = searchSettingsContract$State.serverSearchLimit;
        }
        searchSettingsContract$State.getClass();
        return new SearchSettingsContract$State(str, selectOption);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchSettingsContract$State)) {
            return false;
        }
        SearchSettingsContract$State searchSettingsContract$State = (SearchSettingsContract$State) obj;
        return Intrinsics.areEqual(this.subtitle, searchSettingsContract$State.subtitle) && this.serverSearchLimit.equals(searchSettingsContract$State.serverSearchLimit);
    }

    public final int hashCode() {
        String str = this.subtitle;
        return this.serverSearchLimit.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "State(subtitle=" + this.subtitle + ", serverSearchLimit=" + this.serverSearchLimit + ")";
    }
}
