package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ReadingMailSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressed implements ReadingMailSettingsContract$Event {
        public static final OnBackPressed INSTANCE = new OnBackPressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackPressed);
        }

        public final int hashCode() {
            return 1420576875;
        }

        public final String toString() {
            return "OnBackPressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnIsMarkMessageAsReadOnViewToggle implements ReadingMailSettingsContract$Event {
        public final boolean isMarkMessageAsReadOnView;

        public OnIsMarkMessageAsReadOnViewToggle(boolean z) {
            this.isMarkMessageAsReadOnView = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnIsMarkMessageAsReadOnViewToggle) && this.isMarkMessageAsReadOnView == ((OnIsMarkMessageAsReadOnViewToggle) obj).isMarkMessageAsReadOnView;
        }

        public final int hashCode() {
            return this.isMarkMessageAsReadOnView ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("OnIsMarkMessageAsReadOnViewToggle(isMarkMessageAsReadOnView=", ")", this.isMarkMessageAsReadOnView);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnShowPicturesChange implements ReadingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption showPictures;

        public OnShowPicturesChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.showPictures = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnShowPicturesChange) && Intrinsics.areEqual(this.showPictures, ((OnShowPicturesChange) obj).showPictures);
        }

        public final int hashCode() {
            return this.showPictures.hashCode();
        }

        public final String toString() {
            return "OnShowPicturesChange(showPictures=" + this.showPictures + ")";
        }
    }
}
