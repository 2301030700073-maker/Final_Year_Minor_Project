package org.minidns;

import androidx.compose.ui.Modifier;
import java.io.IOException;
import org.minidns.dnsmessage.DnsMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MiniDnsException extends IOException {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IdMismatch extends MiniDnsException {
        public IdMismatch(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
            super(Modifier.CC.m(dnsMessage.id, dnsMessage2.id, "The response's ID doesn't matches the request ID. Request: ", ". Response: "));
        }
    }
}
