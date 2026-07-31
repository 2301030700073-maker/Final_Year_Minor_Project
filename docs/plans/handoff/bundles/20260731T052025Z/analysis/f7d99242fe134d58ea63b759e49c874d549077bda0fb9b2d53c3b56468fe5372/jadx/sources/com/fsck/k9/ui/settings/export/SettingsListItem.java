package com.fsck.k9.ui.settings.export;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SettingsListItem {
    public boolean selected = true;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Account extends SettingsListItem {
        public final int accountNumber;
        public final String displayName;
        public final String email;

        public Account(int i, String str, String str2) {
            this.accountNumber = i;
            this.displayName = str;
            this.email = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Account)) {
                return false;
            }
            Account account = (Account) obj;
            return this.accountNumber == account.accountNumber && this.displayName.equals(account.displayName) && this.email.equals(account.email);
        }

        public final int hashCode() {
            return this.email.hashCode() + Modifier.CC.m(this.accountNumber * 31, this.displayName, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Account(accountNumber=");
            sb.append(this.accountNumber);
            sb.append(", displayName=");
            sb.append(this.displayName);
            sb.append(", email=");
            return CameraDevices$CC.m(sb, this.email, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GeneralSettings extends SettingsListItem {
        public static final GeneralSettings INSTANCE = new GeneralSettings();
    }
}
