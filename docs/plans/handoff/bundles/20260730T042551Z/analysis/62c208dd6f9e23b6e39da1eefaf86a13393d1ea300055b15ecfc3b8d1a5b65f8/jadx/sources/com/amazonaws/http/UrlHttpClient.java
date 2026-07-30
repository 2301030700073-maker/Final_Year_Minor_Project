package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import com.facebook.internal.Utility;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public class UrlHttpClient implements HttpClient {

    /* renamed from: do, reason: not valid java name */
    public final ClientConfiguration f8771do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SSLContext f8772do = null;

    public static class AllowAllHostnameVerifier implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public final boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public static class TrustAllManager implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public final X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.f8771do = clientConfiguration;
    }

    /* renamed from: do, reason: not valid java name */
    public final HttpResponse m5055do(HttpRequest httpRequest) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(httpRequest.f8755do.toURL().openConnection()));
        ClientConfiguration clientConfiguration = this.f8771do;
        httpURLConnection.setConnectTimeout(clientConfiguration.f8676for);
        httpURLConnection.setReadTimeout(clientConfiguration.f8677if);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (System.getProperty("com.amazonaws.sdk.disableCertChecking") != null) {
                if (this.f8772do == null) {
                    TrustManager[] trustManagerArr = {new TrustAllManager()};
                    try {
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        this.f8772do = sSLContext;
                        sSLContext.init(null, trustManagerArr, null);
                    } catch (GeneralSecurityException e) {
                        throw new RuntimeException(e);
                    }
                }
                httpsURLConnection.setSSLSocketFactory(this.f8772do.getSocketFactory());
                httpsURLConnection.setHostnameVerifier(new AllowAllHostnameVerifier());
            }
        }
        Map<String, String> map = httpRequest.f8756do;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals("Host")) {
                    key.equals("Expect");
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String str = httpRequest.f8754do;
        httpURLConnection.setRequestMethod(str);
        InputStream inputStream = httpRequest.f8753do;
        if (inputStream != null && httpRequest.m5045if() >= 0) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.m5045if());
            OutputStream outputStream = httpURLConnection.getOutputStream();
            byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
            }
            outputStream.flush();
            outputStream.close();
        }
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null && !str.equals("HEAD")) {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
            }
        }
        HttpResponse.Builder builder = new HttpResponse.Builder();
        builder.f8762do = responseCode;
        builder.f8764do = responseMessage;
        builder.f8763do = errorStream;
        Iterator<Map.Entry<String, List<String>>> it = httpURLConnection.getHeaderFields().entrySet().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            HashMap hashMap = builder.f8765do;
            if (!hasNext) {
                return new HttpResponse(builder.f8764do, builder.f8762do, DesugarCollections.unmodifiableMap(hashMap), builder.f8763do);
            }
            Map.Entry<String, List<String>> next = it.next();
            if (next.getKey() != null) {
                hashMap.put(next.getKey(), next.getValue().get(0));
            }
        }
    }
}
