package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* renamed from: zv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4124zv extends M2 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Socket f16970do;

    public C4124zv(Socket socket) {
        this.f16970do = socket;
    }

    @Override // defpackage.M2
    /* renamed from: const */
    public final IOException mo1383const(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // defpackage.M2
    /* renamed from: final */
    public final void mo1384final() {
        Socket socket = this.f16970do;
        try {
            socket.close();
        } catch (AssertionError e) {
            if (!((e.getCause() == null || e.getMessage() == null || !e.getMessage().contains("getsockname failed")) ? false : true)) {
                throw e;
            }
            C0114Av.f168do.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
        } catch (Exception e2) {
            C0114Av.f168do.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        }
    }
}
