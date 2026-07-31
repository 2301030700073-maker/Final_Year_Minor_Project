package net.thunderbird.core.ui.setting;

import androidx.compose.runtime.internal.ComposableLambdaImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingDecoration$Custom implements Setting {
    public final ComposableLambdaImpl customUi;
    public final String id;

    public SettingDecoration$Custom(String str, ComposableLambdaImpl composableLambdaImpl) {
        this.id = str;
        this.customUi = composableLambdaImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SettingDecoration$Custom) {
            SettingDecoration$Custom settingDecoration$Custom = (SettingDecoration$Custom) obj;
            return this.id.equals(settingDecoration$Custom.id) && this.customUi == settingDecoration$Custom.customUi;
        }
        return false;
    }

    public final int hashCode() {
        return this.customUi.hashCode() + (this.id.hashCode() * 31);
    }

    public final String toString() {
        return "Custom(id=" + this.id + ", customUi=" + this.customUi + ")";
    }
}
