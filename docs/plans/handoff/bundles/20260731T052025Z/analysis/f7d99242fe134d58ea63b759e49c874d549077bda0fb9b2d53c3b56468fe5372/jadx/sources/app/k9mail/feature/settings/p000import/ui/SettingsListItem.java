package app.k9mail.feature.settings.p000import.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SettingsListItem {
    public boolean selected = true;
    public boolean enabled = true;
    public ImportStatus importStatus = ImportStatus.NOT_AVAILABLE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Account extends SettingsListItem {
        public final int accountIndex;
        public String displayName;

        public Account(String str, int i) {
            str.getClass();
            this.accountIndex = i;
            this.displayName = str;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GeneralSettings extends SettingsListItem {
    }
}
