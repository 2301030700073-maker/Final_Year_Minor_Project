package org.minidns.dnssec;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.Config;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import org.minidns.constants.DnssecConstants;
import org.minidns.dnsmessage.Question;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnssecUnverifiedReason {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AlgorithmExceptionThrownReason extends DnssecUnverifiedReason {
        public final int algorithmNumber;
        public final Exception reason;
        public final Record record;

        public AlgorithmExceptionThrownReason(DnssecConstants.DigestAlgorithm digestAlgorithm, Record record, Exception exc) {
            this.algorithmNumber = digestAlgorithm.value;
            this.record = record;
            this.reason = exc;
        }

        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            return "DS algorithm " + this.algorithmNumber + " threw exception while verifying " + String.valueOf(this.record.name) + ": " + String.valueOf(this.reason);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AlgorithmNotSupportedReason extends DnssecUnverifiedReason {
        public final String algorithm;
        public final Record record;
        public final Record.TYPE type;

        public AlgorithmNotSupportedReason(byte b, Record.TYPE type, Record record) {
            this.algorithm = Integer.toString(b & 255);
            this.type = type;
            this.record = record;
        }

        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            return this.type.name() + " algorithm " + this.algorithm + " required to verify " + String.valueOf(this.record.name) + " is unknown or not supported by platform";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NSECDoesNotMatchReason extends DnssecUnverifiedReason {
        public final Question question;
        public final Record record;

        public NSECDoesNotMatchReason(Question question, Record record) {
            this.question = question;
            this.record = record;
        }

        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            String valueOf = String.valueOf(this.record.name);
            Question question = this.question;
            String valueOf2 = String.valueOf(question.type);
            String valueOf3 = String.valueOf(question.name);
            StringBuilder m = Config.CC.m("NSEC ", valueOf, " does nat match question for ", valueOf2, " at ");
            m.append(valueOf3);
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoRootSecureEntryPointReason extends DnssecUnverifiedReason {
        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            return "No secure entry point was found for the root zone (\"Did you forget to configure a root SEP?\")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoTrustAnchorReason extends DnssecUnverifiedReason {
        public final /* synthetic */ int $r8$classId;
        public final DnsName zone;

        public /* synthetic */ NoTrustAnchorReason(int i, DnsName dnsName) {
            this.$r8$classId = i;
            this.zone = dnsName;
        }

        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            int i = this.$r8$classId;
            DnsName dnsName = this.zone;
            switch (i) {
                case 0:
                    return CameraDevices$CC.m("No trust anchor was found for zone ", String.valueOf(dnsName), ". Try enabling DLV");
                default:
                    return "No secure entry point was found for zone ".concat(String.valueOf(dnsName));
            }
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof DnssecUnverifiedReason) && ((DnssecUnverifiedReason) obj).getReasonString().equals(getReasonString());
    }

    public abstract String getReasonString();

    public final int hashCode() {
        return getReasonString().hashCode();
    }

    public final String toString() {
        return getReasonString();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConflictsWithSep extends DnssecUnverifiedReason {
        public final /* synthetic */ int $r8$classId;
        public final Object record;

        public ConflictsWithSep(Question question, ArrayList arrayList) {
            this.$r8$classId = 1;
            this.record = question;
            DesugarCollections.unmodifiableList(arrayList);
        }

        @Override // org.minidns.dnssec.DnssecUnverifiedReason
        public final String getReasonString() {
            int i = this.$r8$classId;
            Object obj = this.record;
            switch (i) {
                case 0:
                    return CameraDevices$CC.m("Zone ", ((Record) obj).name.ace, " is in list of known SEPs, but DNSKEY from response mismatches!");
                case 1:
                    Question question = (Question) obj;
                    return ImageAnalysis$$ExternalSyntheticLambda3.m("No currently active signatures were attached to answer on question for ", String.valueOf(question.type), " at ", String.valueOf(question.name));
                default:
                    Question question2 = (Question) obj;
                    return ImageAnalysis$$ExternalSyntheticLambda3.m("No signatures were attached to answer on question for ", String.valueOf(question2.type), " at ", String.valueOf(question2.name));
            }
        }

        public /* synthetic */ ConflictsWithSep(int i, Object obj) {
            this.$r8$classId = i;
            this.record = obj;
        }
    }
}
