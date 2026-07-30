package com.facebook.ads.redexgen.core;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;

/* renamed from: com.facebook.ads.redexgen.X.Jg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC1308Jg {
    boolean AD7(C1306Je c1306Je);

    HttpURLConnection AFt(String str, Proxy proxy) throws IOException;

    InputStream AFu(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream AFv(HttpURLConnection httpURLConnection) throws IOException;

    void AGE(HttpURLConnection httpURLConnection, EnumC1304Jc enumC1304Jc, String str) throws IOException;

    byte[] AGb(InputStream inputStream) throws IOException;

    void AKD(OutputStream outputStream, byte[] bArr) throws IOException;
}
