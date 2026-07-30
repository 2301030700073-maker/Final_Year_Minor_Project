package defpackage;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public final class I0 extends S0 {
    public I0() {
        super(null, null, null, null);
    }

    @Override // defpackage.S0, defpackage.Ow
    @SuppressLint({"NewApi"})
    @IgnoreJRERequirement
    /* renamed from: case, reason: not valid java name */
    public final void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
        boolean isSupportedSocket;
        try {
            isSupportedSocket = SSLSockets.isSupportedSocket(sSLSocket);
            if (isSupportedSocket) {
                SSLSockets.setUseSessionTickets(sSLSocket, true);
            }
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            sSLParameters.setApplicationProtocols((String[]) Ow.m1704if(list).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override // defpackage.S0, defpackage.Ow
    @IgnoreJRERequirement
    /* renamed from: this, reason: not valid java name */
    public final String mo903this(SSLSocket sSLSocket) {
        String applicationProtocol;
        applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.isEmpty()) {
            return null;
        }
        return applicationProtocol;
    }
}
