package net.thunderbird.feature.account.settings.impl.ui.general;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.eygraber.uri.uris.StringUri;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.avatar.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface GeneralSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAvatarChange implements GeneralSettingsContract$Event {
        public final Avatar avatar;

        public OnAvatarChange(Avatar avatar) {
            this.avatar = avatar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAvatarChange) && this.avatar.equals(((OnAvatarChange) obj).avatar);
        }

        public final int hashCode() {
            return this.avatar.hashCode();
        }

        public final String toString() {
            return "OnAvatarChange(avatar=" + this.avatar + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAvatarImagePicked implements GeneralSettingsContract$Event {
        public final StringUri uri;

        public OnAvatarImagePicked(StringUri stringUri) {
            this.uri = stringUri;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAvatarImagePicked) && this.uri.equals(((OnAvatarImagePicked) obj).uri);
        }

        public final int hashCode() {
            return this.uri.uriString.hashCode();
        }

        public final String toString() {
            return "OnAvatarImagePicked(uri=" + this.uri + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressed implements GeneralSettingsContract$Event {
        public static final OnBackPressed INSTANCE = new OnBackPressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackPressed);
        }

        public final int hashCode() {
            return -366765579;
        }

        public final String toString() {
            return "OnBackPressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnColorChange implements GeneralSettingsContract$Event {
        public final int color;

        public OnColorChange(int i) {
            this.color = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnColorChange) && this.color == ((OnColorChange) obj).color;
        }

        public final int hashCode() {
            return this.color;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.color, "OnColorChange(color=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNameChange implements GeneralSettingsContract$Event {
        public final String name;

        public OnNameChange(String str) {
            str.getClass();
            this.name = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnNameChange) && Intrinsics.areEqual(this.name, ((OnNameChange) obj).name);
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnNameChange(name=", this.name, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSelectAvatarImageClick implements GeneralSettingsContract$Event {
        public static final OnSelectAvatarImageClick INSTANCE = new OnSelectAvatarImageClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSelectAvatarImageClick);
        }

        public final int hashCode() {
            return 1780521800;
        }

        public final String toString() {
            return "OnSelectAvatarImageClick";
        }
    }
}
