package app.k9mail.autodiscovery.api;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AutoDiscoveryResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NetworkError implements AutoDiscoveryResult {
        public final IOException exception;

        public NetworkError(IOException iOException) {
            this.exception = iOException;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NetworkError) && this.exception.equals(((NetworkError) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "NetworkError(exception=" + this.exception + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoUsableSettingsFound implements AutoDiscoveryResult {
        public static final NoUsableSettingsFound INSTANCE = new NoUsableSettingsFound();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Settings implements AutoDiscoveryResult {
        public final ImapServerSettings incomingServerSettings;
        public final boolean isTrusted;
        public final SmtpServerSettings outgoingServerSettings;
        public final String source;

        public Settings(ImapServerSettings imapServerSettings, SmtpServerSettings smtpServerSettings, boolean z, String str) {
            imapServerSettings.getClass();
            smtpServerSettings.getClass();
            this.incomingServerSettings = imapServerSettings;
            this.outgoingServerSettings = smtpServerSettings;
            this.isTrusted = z;
            this.source = str;
        }

        public static Settings copy$default(Settings settings, ImapServerSettings imapServerSettings, SmtpServerSettings smtpServerSettings, boolean z, int i) {
            if ((i & 1) != 0) {
                imapServerSettings = settings.incomingServerSettings;
            }
            if ((i & 2) != 0) {
                smtpServerSettings = settings.outgoingServerSettings;
            }
            if ((i & 4) != 0) {
                z = settings.isTrusted;
            }
            String str = settings.source;
            imapServerSettings.getClass();
            smtpServerSettings.getClass();
            return new Settings(imapServerSettings, smtpServerSettings, z, str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Settings)) {
                return false;
            }
            Settings settings = (Settings) obj;
            return Intrinsics.areEqual(this.incomingServerSettings, settings.incomingServerSettings) && Intrinsics.areEqual(this.outgoingServerSettings, settings.outgoingServerSettings) && this.isTrusted == settings.isTrusted && this.source.equals(settings.source);
        }

        public final int hashCode() {
            return this.source.hashCode() + ((((this.outgoingServerSettings.hashCode() + (this.incomingServerSettings.hashCode() * 31)) * 31) + (this.isTrusted ? 1231 : 1237)) * 31);
        }

        public final String toString() {
            return "Settings(incomingServerSettings=" + this.incomingServerSettings + ", outgoingServerSettings=" + this.outgoingServerSettings + ", isTrusted=" + this.isTrusted + ", source=" + this.source + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnexpectedException implements AutoDiscoveryResult {
        public final Exception exception;

        public UnexpectedException(Exception exc) {
            this.exception = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnexpectedException) && this.exception.equals(((UnexpectedException) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "UnexpectedException(exception=" + this.exception + ")";
        }
    }
}
