package net.thunderbird.feature.account.settings.impl.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.avatar.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$UpdateGeneralSettingCommand {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateAvatar implements AccountSettingsDomainContract$UpdateGeneralSettingCommand {
        public final Avatar value;

        public UpdateAvatar(Avatar avatar) {
            avatar.getClass();
            this.value = avatar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateAvatar) && Intrinsics.areEqual(this.value, ((UpdateAvatar) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return "UpdateAvatar(value=" + this.value + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateColor implements AccountSettingsDomainContract$UpdateGeneralSettingCommand {
        public final int value;

        public UpdateColor(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateColor) && this.value == ((UpdateColor) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateColor(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateName implements AccountSettingsDomainContract$UpdateGeneralSettingCommand {
        public final String value;

        public UpdateName(String str) {
            str.getClass();
            this.value = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateName) && Intrinsics.areEqual(this.value, ((UpdateName) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UpdateName(value=", this.value, ")");
        }
    }
}
