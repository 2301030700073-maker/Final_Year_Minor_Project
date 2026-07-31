package app.k9mail.autodiscovery.autoconfig;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AutoconfigParserResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ParserError implements AutoconfigParserResult {
        public final AutoconfigParserException error;

        public ParserError(AutoconfigParserException autoconfigParserException) {
            this.error = autoconfigParserException;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ParserError) && this.error == ((ParserError) obj).error;
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "ParserError(error=" + this.error + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Settings implements AutoconfigParserResult {
        public final ArrayList incomingServerSettings;
        public final ArrayList outgoingServerSettings;

        public Settings(ArrayList arrayList, ArrayList arrayList2) {
            this.incomingServerSettings = arrayList;
            this.outgoingServerSettings = arrayList2;
            if (arrayList.isEmpty()) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                throw null;
            }
            if (arrayList2.isEmpty()) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Settings)) {
                return false;
            }
            Settings settings = (Settings) obj;
            return this.incomingServerSettings.equals(settings.incomingServerSettings) && this.outgoingServerSettings.equals(settings.outgoingServerSettings);
        }

        public final int hashCode() {
            return this.outgoingServerSettings.hashCode() + (this.incomingServerSettings.hashCode() * 31);
        }

        public final String toString() {
            return "Settings(incomingServerSettings=" + this.incomingServerSettings + ", outgoingServerSettings=" + this.outgoingServerSettings + ")";
        }
    }
}
