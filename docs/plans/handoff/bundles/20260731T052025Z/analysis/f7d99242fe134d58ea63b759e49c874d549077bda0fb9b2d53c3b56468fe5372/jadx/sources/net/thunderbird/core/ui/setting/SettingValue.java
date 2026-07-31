package net.thunderbird.core.ui.setting;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.feature.account.avatar.Avatar;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SettingValue extends Setting {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ActionText implements SettingValue {
        public final Function0 description;
        public final Function0 icon;
        public final String id;
        public final Function0 onClick;
        public final Function0 title;
        public final String value;

        public ActionText(String str, Function0 function0, Function0 function02, Function0 function03, String str2, Function0 function04) {
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.icon = function03;
            this.value = str2;
            this.onClick = function04;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ActionText)) {
                return false;
            }
            ActionText actionText = (ActionText) obj;
            return this.id.equals(actionText.id) && this.title.equals(actionText.title) && this.description.equals(actionText.description) && this.icon.equals(actionText.icon) && this.value.equals(actionText.value) && this.onClick.equals(actionText.onClick);
        }

        public final int hashCode() {
            return this.onClick.hashCode() + Modifier.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description), 31, this.icon), this.value, 31);
        }

        public final String toString() {
            return "ActionText(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", icon=" + this.icon + ", value=" + this.value + ", onClick=" + this.onClick + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Color implements SettingValue {
        public final ImmutableList colors;
        public final Function0 description;
        public final Function0 icon;
        public final String id;
        public final Function0 title;
        public final int value;

        public Color(String str, Function0 function0, Function0 function02, Function0 function03, int i, ImmutableList immutableList) {
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.icon = function03;
            this.value = i;
            this.colors = immutableList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Color)) {
                return false;
            }
            Color color = (Color) obj;
            return this.id.equals(color.id) && this.title.equals(color.title) && this.description.equals(color.description) && this.icon.equals(color.icon) && this.value == color.value && this.colors.equals(color.colors);
        }

        public final int hashCode() {
            return this.colors.hashCode() + ((Config.CC.m(Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description), 31, this.icon) + this.value) * 31);
        }

        public final String toString() {
            return "Color(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", icon=" + this.icon + ", value=" + this.value + ", colors=" + this.colors + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IconList implements SettingValue {
        public final long color;
        public final Function0 description;
        public final Function0 icon;
        public final ImmutableList icons;
        public final String id;
        public final Function0 title;
        public final IconOption value;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class IconOption {
            public final ResourceFileSystem$$ExternalSyntheticLambda0 icon;
            public final String id;

            public IconOption(String str, ResourceFileSystem$$ExternalSyntheticLambda0 resourceFileSystem$$ExternalSyntheticLambda0) {
                str.getClass();
                this.id = str;
                this.icon = resourceFileSystem$$ExternalSyntheticLambda0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof IconOption) {
                    IconOption iconOption = (IconOption) obj;
                    return Intrinsics.areEqual(this.id, iconOption.id) && this.icon == iconOption.icon;
                }
                return false;
            }

            public final int hashCode() {
                return this.icon.hashCode() + (this.id.hashCode() * 31);
            }

            public final String toString() {
                return "IconOption(id=" + this.id + ", icon=" + this.icon + ")";
            }
        }

        public IconList(String str, Function0 function0, Function0 function02, Function0 function03, long j, IconOption iconOption, ImmutableList immutableList) {
            iconOption.getClass();
            immutableList.getClass();
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.icon = function03;
            this.color = j;
            this.value = iconOption;
            this.icons = immutableList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IconList)) {
                return false;
            }
            IconList iconList = (IconList) obj;
            return this.id.equals(iconList.id) && this.title.equals(iconList.title) && this.description.equals(iconList.description) && this.icon.equals(iconList.icon) && androidx.compose.ui.graphics.Color.m482equalsimpl0(this.color, iconList.color) && Intrinsics.areEqual(this.value, iconList.value) && Intrinsics.areEqual(this.icons, iconList.icons);
        }

        public final int hashCode() {
            int m = Config.CC.m(Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description), 31, this.icon);
            int i = androidx.compose.ui.graphics.Color.$r8$clinit;
            return this.icons.hashCode() + ((this.value.hashCode() + Config.CC.m(m, 31, this.color)) * 31);
        }

        public final String toString() {
            return "IconList(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", icon=" + this.icon + ", color=" + androidx.compose.ui.graphics.Color.m488toStringimpl(this.color) + ", value=" + this.value + ", icons=" + this.icons + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SegmentedButton implements SettingValue {
        public final Function0 description;
        public final String id;
        public final ImmutableList options;
        public final Function0 title;
        public final SegmentedButtonOption value;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class SegmentedButtonOption {
            public final String id;
            public final Function0 title;
            public final Avatar value;

            public SegmentedButtonOption(String str, Function0 function0, Avatar avatar) {
                this.id = str;
                this.title = function0;
                this.value = avatar;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SegmentedButtonOption)) {
                    return false;
                }
                SegmentedButtonOption segmentedButtonOption = (SegmentedButtonOption) obj;
                return this.id.equals(segmentedButtonOption.id) && this.title.equals(segmentedButtonOption.title) && this.value.equals(segmentedButtonOption.value);
            }

            public final int hashCode() {
                return this.value.hashCode() + Config.CC.m(this.id.hashCode() * 31, 31, this.title);
            }

            public final String toString() {
                return "SegmentedButtonOption(id=" + this.id + ", title=" + this.title + ", value=" + this.value + ")";
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SegmentedButton(String str, Function0 function0, Function0 function02, SegmentedButtonOption segmentedButtonOption, ImmutableList immutableList) {
            segmentedButtonOption.getClass();
            immutableList.getClass();
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.value = segmentedButtonOption;
            this.options = immutableList;
            AbstractCollection abstractCollection = (AbstractCollection) immutableList;
            if (abstractCollection.getSize() < 2) {
                UriKt$$ExternalSyntheticBUOutline0.m("There must be at least two options.");
                throw null;
            }
            if (abstractCollection.getSize() <= 4) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("There can be at most four options.");
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SegmentedButton)) {
                return false;
            }
            SegmentedButton segmentedButton = (SegmentedButton) obj;
            return this.id.equals(segmentedButton.id) && this.title.equals(segmentedButton.title) && this.description.equals(segmentedButton.description) && Intrinsics.areEqual(this.value, segmentedButton.value) && Intrinsics.areEqual(this.options, segmentedButton.options);
        }

        public final int hashCode() {
            return this.options.hashCode() + ((this.value.hashCode() + Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description)) * 31);
        }

        public final String toString() {
            return "SegmentedButton(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", value=" + this.value + ", options=" + this.options + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Select implements SettingValue {
        public final Function0 description;
        public final boolean displayValueAsSecondaryText;
        public final Function0 icon;
        public final String id;
        public final ImmutableList options;
        public final Function0 title;
        public final SelectOption value;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class SelectOption {
            public final String id;
            public final Function0 title;

            public SelectOption(String str, Function0 function0) {
                str.getClass();
                this.id = str;
                this.title = function0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SelectOption)) {
                    return false;
                }
                SelectOption selectOption = (SelectOption) obj;
                return Intrinsics.areEqual(this.id, selectOption.id) && this.title.equals(selectOption.title);
            }

            public final int hashCode() {
                return this.title.hashCode() + (this.id.hashCode() * 31);
            }

            public final String toString() {
                return "SelectOption(id=" + this.id + ", title=" + this.title + ")";
            }
        }

        public Select(String str, Function0 function0, Function0 function02, Function0 function03, boolean z, SelectOption selectOption, ImmutableList immutableList) {
            selectOption.getClass();
            immutableList.getClass();
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.icon = function03;
            this.displayValueAsSecondaryText = z;
            this.value = selectOption;
            this.options = immutableList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Select)) {
                return false;
            }
            Select select = (Select) obj;
            return this.id.equals(select.id) && this.title.equals(select.title) && this.description.equals(select.description) && this.icon.equals(select.icon) && this.displayValueAsSecondaryText == select.displayValueAsSecondaryText && Intrinsics.areEqual(this.value, select.value) && Intrinsics.areEqual(this.options, select.options);
        }

        public final int hashCode() {
            return this.options.hashCode() + ((this.value.hashCode() + ((Config.CC.m(Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description), 31, this.icon) + (this.displayValueAsSecondaryText ? 1231 : 1237)) * 31)) * 31);
        }

        public final String toString() {
            return "Select(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", icon=" + this.icon + ", displayValueAsSecondaryText=" + this.displayValueAsSecondaryText + ", value=" + this.value + ", options=" + this.options + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Switch implements SettingValue {
        public final Function0 description;
        public final String id;
        public final Function0 title;
        public final boolean value;

        public Switch(String str, Function0 function0, Function0 function02, boolean z) {
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.value = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Switch)) {
                return false;
            }
            Switch r3 = (Switch) obj;
            return this.id.equals(r3.id) && this.title.equals(r3.title) && this.description.equals(r3.description) && this.value == r3.value;
        }

        public final int hashCode() {
            return Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description) + (this.value ? 1231 : 1237);
        }

        public final String toString() {
            return "Switch(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", value=" + this.value + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Text implements SettingValue {
        public final Function0 description;
        public final Function0 icon;
        public final String id;
        public final Function0 title;
        public final Function1 transform;
        public final Function1 validate;
        public final String value;

        public Text(String str, Function0 function0, Function0 function02, Function0 function03, String str2, Function1 function1, Function1 function12) {
            str2.getClass();
            this.id = str;
            this.title = function0;
            this.description = function02;
            this.icon = function03;
            this.value = str2;
            this.transform = function1;
            this.validate = function12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Text)) {
                return false;
            }
            Text text = (Text) obj;
            return this.id.equals(text.id) && this.title.equals(text.title) && this.description.equals(text.description) && this.icon.equals(text.icon) && Intrinsics.areEqual(this.value, text.value) && this.transform.equals(text.transform) && this.validate.equals(text.validate);
        }

        public final int hashCode() {
            return this.validate.hashCode() + ((this.transform.hashCode() + Modifier.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(this.id.hashCode() * 31, 31, this.title), 31, this.description), 31, this.icon), this.value, 31)) * 31);
        }

        public final String toString() {
            return "Text(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", icon=" + this.icon + ", value=" + this.value + ", transform=" + this.transform + ", validate=" + this.validate + ")";
        }
    }
}
