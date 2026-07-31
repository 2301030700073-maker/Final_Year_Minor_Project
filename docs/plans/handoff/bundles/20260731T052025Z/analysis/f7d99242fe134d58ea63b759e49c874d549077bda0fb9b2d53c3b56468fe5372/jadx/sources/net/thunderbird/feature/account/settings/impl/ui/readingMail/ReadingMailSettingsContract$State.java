package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReadingMailSettingsContract$State {
    public final boolean isMarkMessageAsReadOnView;
    public final SettingValue.Select.SelectOption showPictures;
    public final String subtitle;

    public ReadingMailSettingsContract$State(String str, SettingValue.Select.SelectOption selectOption, boolean z) {
        this.subtitle = str;
        this.showPictures = selectOption;
        this.isMarkMessageAsReadOnView = z;
    }

    public static ReadingMailSettingsContract$State copy$default(ReadingMailSettingsContract$State readingMailSettingsContract$State, String str, SettingValue.Select.SelectOption selectOption, boolean z, int i) {
        if ((i & 1) != 0) {
            str = readingMailSettingsContract$State.subtitle;
        }
        if ((i & 2) != 0) {
            selectOption = readingMailSettingsContract$State.showPictures;
        }
        if ((i & 4) != 0) {
            z = readingMailSettingsContract$State.isMarkMessageAsReadOnView;
        }
        readingMailSettingsContract$State.getClass();
        selectOption.getClass();
        return new ReadingMailSettingsContract$State(str, selectOption, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadingMailSettingsContract$State)) {
            return false;
        }
        ReadingMailSettingsContract$State readingMailSettingsContract$State = (ReadingMailSettingsContract$State) obj;
        return Intrinsics.areEqual(this.subtitle, readingMailSettingsContract$State.subtitle) && this.showPictures.equals(readingMailSettingsContract$State.showPictures) && this.isMarkMessageAsReadOnView == readingMailSettingsContract$State.isMarkMessageAsReadOnView;
    }

    public final int hashCode() {
        String str = this.subtitle;
        return ((this.showPictures.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31) + (this.isMarkMessageAsReadOnView ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(subtitle=");
        sb.append(this.subtitle);
        sb.append(", showPictures=");
        sb.append(this.showPictures);
        sb.append(", isMarkMessageAsReadOnView=");
        return CameraDevices$CC.m(")", sb, this.isMarkMessageAsReadOnView);
    }
}
