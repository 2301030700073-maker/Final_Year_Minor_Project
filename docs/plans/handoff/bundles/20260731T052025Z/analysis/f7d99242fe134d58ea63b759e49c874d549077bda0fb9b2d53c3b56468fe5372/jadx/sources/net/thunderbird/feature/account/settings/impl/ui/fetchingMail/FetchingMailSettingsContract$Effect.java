package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FetchingMailSettingsContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements FetchingMailSettingsContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateToAdvancedFetchingMailSettings implements FetchingMailSettingsContract$Effect {
        public static final NavigateToAdvancedFetchingMailSettings INSTANCE = new NavigateToAdvancedFetchingMailSettings();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateToIncomingServerSettings implements FetchingMailSettingsContract$Effect {
        public static final NavigateToIncomingServerSettings INSTANCE = new NavigateToIncomingServerSettings();
    }
}
