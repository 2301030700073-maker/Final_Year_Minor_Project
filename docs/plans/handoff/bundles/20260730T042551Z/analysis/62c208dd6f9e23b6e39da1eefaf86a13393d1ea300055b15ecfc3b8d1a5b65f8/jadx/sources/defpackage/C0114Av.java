package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* renamed from: Av, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0114Av {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f168do = Logger.getLogger(C0114Av.class.getName());

    /* renamed from: do, reason: not valid java name */
    public static K2 m119do(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        C4124zv c4124zv = new C4124zv(socket);
        OutputStream outputStream = socket.getOutputStream();
        if (outputStream != null) {
            return new K2(c4124zv, new C4006xv(outputStream, c4124zv));
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: if, reason: not valid java name */
    public static L2 m120if(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        C4124zv c4124zv = new C4124zv(socket);
        InputStream inputStream = socket.getInputStream();
        if (inputStream != null) {
            return new L2(c4124zv, new C4065yv(inputStream, c4124zv));
        }
        throw new IllegalArgumentException("in == null");
    }
}
