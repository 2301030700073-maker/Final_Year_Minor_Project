package net.thunderbird.feature.account.settings.impl.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$UpdateReadMessageSettingsCommand {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateIsMarkMessageAsReadOnView implements AccountSettingsDomainContract$UpdateReadMessageSettingsCommand {
        public final boolean value;

        public UpdateIsMarkMessageAsReadOnView(boolean z) {
            this.value = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateIsMarkMessageAsReadOnView) && this.value == ((UpdateIsMarkMessageAsReadOnView) obj).value;
        }

        public final int hashCode() {
            return this.value ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("UpdateIsMarkMessageAsReadOnView(value=", ")", this.value);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateShowPictures implements AccountSettingsDomainContract$UpdateReadMessageSettingsCommand {
        public final String value;

        public UpdateShowPictures(String str) {
            str.getClass();
            this.value = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateShowPictures) && Intrinsics.areEqual(this.value, ((UpdateShowPictures) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UpdateShowPictures(value=", this.value, ")");
        }
    }
}
