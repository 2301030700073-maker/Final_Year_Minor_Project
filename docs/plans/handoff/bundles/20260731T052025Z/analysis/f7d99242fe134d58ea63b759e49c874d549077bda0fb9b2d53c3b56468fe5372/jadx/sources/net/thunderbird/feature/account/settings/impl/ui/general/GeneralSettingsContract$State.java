package net.thunderbird.feature.account.settings.impl.ui.general;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.input.IntegerInputField;
import net.thunderbird.core.validation.input.StringInputField;
import net.thunderbird.feature.account.avatar.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsContract$State {
    public final Avatar avatar;
    public final StringInputField avatarMonogram;
    public final GeneralSettingsContract$AvatarType avatarType;
    public final IntegerInputField color;
    public final StringInputField name;
    public final String subtitle;

    public GeneralSettingsContract$State(String str, StringInputField stringInputField, IntegerInputField integerInputField, GeneralSettingsContract$AvatarType generalSettingsContract$AvatarType, Avatar avatar, StringInputField stringInputField2) {
        generalSettingsContract$AvatarType.getClass();
        this.subtitle = str;
        this.name = stringInputField;
        this.color = integerInputField;
        this.avatarType = generalSettingsContract$AvatarType;
        this.avatar = avatar;
        this.avatarMonogram = stringInputField2;
    }

    public static GeneralSettingsContract$State copy$default(GeneralSettingsContract$State generalSettingsContract$State, String str, StringInputField stringInputField, IntegerInputField integerInputField, Avatar avatar, int i) {
        if ((i & 1) != 0) {
            str = generalSettingsContract$State.subtitle;
        }
        String str2 = str;
        if ((i & 2) != 0) {
            stringInputField = generalSettingsContract$State.name;
        }
        StringInputField stringInputField2 = stringInputField;
        if ((i & 4) != 0) {
            integerInputField = generalSettingsContract$State.color;
        }
        IntegerInputField integerInputField2 = integerInputField;
        GeneralSettingsContract$AvatarType generalSettingsContract$AvatarType = generalSettingsContract$State.avatarType;
        if ((i & 16) != 0) {
            avatar = generalSettingsContract$State.avatar;
        }
        StringInputField stringInputField3 = generalSettingsContract$State.avatarMonogram;
        generalSettingsContract$State.getClass();
        generalSettingsContract$AvatarType.getClass();
        return new GeneralSettingsContract$State(str2, stringInputField2, integerInputField2, generalSettingsContract$AvatarType, avatar, stringInputField3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GeneralSettingsContract$State)) {
            return false;
        }
        GeneralSettingsContract$State generalSettingsContract$State = (GeneralSettingsContract$State) obj;
        return Intrinsics.areEqual(this.subtitle, generalSettingsContract$State.subtitle) && this.name.equals(generalSettingsContract$State.name) && this.color.equals(generalSettingsContract$State.color) && this.avatarType == generalSettingsContract$State.avatarType && Intrinsics.areEqual(this.avatar, generalSettingsContract$State.avatar) && this.avatarMonogram.equals(generalSettingsContract$State.avatarMonogram);
    }

    public final int hashCode() {
        String str = this.subtitle;
        int hashCode = (this.avatarType.hashCode() + ((this.color.hashCode() + ((this.name.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31)) * 31)) * 31;
        Avatar avatar = this.avatar;
        return this.avatarMonogram.hashCode() + ((hashCode + (avatar != null ? avatar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "State(subtitle=" + this.subtitle + ", name=" + this.name + ", color=" + this.color + ", avatarType=" + this.avatarType + ", avatar=" + this.avatar + ", avatarMonogram=" + this.avatarMonogram + ")";
    }
}
