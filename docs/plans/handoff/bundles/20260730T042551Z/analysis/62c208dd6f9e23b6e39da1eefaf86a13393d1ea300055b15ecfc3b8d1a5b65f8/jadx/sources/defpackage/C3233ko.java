package defpackage;

import android.os.Build;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: ko, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3233ko extends HttpsURLConnection {

    /* renamed from: do, reason: not valid java name */
    public final HttpsURLConnection f14049do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3292lo f14050do;

    public C3233ko(HttpsURLConnection httpsURLConnection, Timer timer, C0113Au c0113Au) {
        super(httpsURLConnection.getURL());
        this.f14049do = httpsURLConnection;
        this.f14050do = new C3292lo(httpsURLConnection, timer, c0113Au);
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        this.f14050do.f14250do.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public final void connect() {
        this.f14050do.m7388do();
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        C3292lo c3292lo = this.f14050do;
        long m6126do = c3292lo.f14249do.m6126do();
        C0113Au c0113Au = c3292lo.f14248do;
        c0113Au.m116super(m6126do);
        c0113Au.m114if();
        c3292lo.f14250do.disconnect();
    }

    public final boolean equals(Object obj) {
        return this.f14050do.equals(obj);
    }

    @Override // java.net.URLConnection
    public final boolean getAllowUserInteraction() {
        return this.f14050do.f14250do.getAllowUserInteraction();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final String getCipherSuite() {
        return this.f14049do.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public final int getConnectTimeout() {
        return this.f14050do.f14250do.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public final Object getContent() {
        return this.f14050do.m7392if();
    }

    @Override // java.net.URLConnection
    public final String getContentEncoding() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getContentLength();
    }

    @Override // java.net.URLConnection
    public final long getContentLengthLong() {
        long contentLengthLong;
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        if (Build.VERSION.SDK_INT < 24) {
            return 0L;
        }
        contentLengthLong = c3292lo.f14250do.getContentLengthLong();
        return contentLengthLong;
    }

    @Override // java.net.URLConnection
    public final String getContentType() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getContentType();
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getDate();
    }

    @Override // java.net.URLConnection
    public final boolean getDefaultUseCaches() {
        return this.f14050do.f14250do.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public final boolean getDoInput() {
        return this.f14050do.f14250do.getDoInput();
    }

    @Override // java.net.URLConnection
    public final boolean getDoOutput() {
        return this.f14050do.f14250do.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        return this.f14050do.m7393new();
    }

    @Override // java.net.URLConnection
    public final long getExpiration() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderField(i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final long getHeaderFieldDate(String str, long j) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public final int getHeaderFieldInt(String str, int i) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public final long getHeaderFieldLong(String str, long j) {
        long headerFieldLong;
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        if (Build.VERSION.SDK_INT < 24) {
            return 0L;
        }
        headerFieldLong = c3292lo.f14250do.getHeaderFieldLong(str, j);
        return headerFieldLong;
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getHeaderFields() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderFields();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final HostnameVerifier getHostnameVerifier() {
        return this.f14049do.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public final long getIfModifiedSince() {
        return this.f14050do.f14250do.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        return this.f14050do.m7395try();
    }

    @Override // java.net.HttpURLConnection
    public final boolean getInstanceFollowRedirects() {
        return this.f14050do.f14250do.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getLastModified();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getLocalCertificates() {
        return this.f14049do.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getLocalPrincipal() {
        return this.f14049do.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() {
        return this.f14050do.m7387case();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getPeerPrincipal() {
        return this.f14049do.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() {
        C3292lo c3292lo = this.f14050do;
        c3292lo.getClass();
        try {
            return c3292lo.f14250do.getPermission();
        } catch (IOException e) {
            long m6126do = c3292lo.f14249do.m6126do();
            C0113Au c0113Au = c3292lo.f14248do;
            c0113Au.m116super(m6126do);
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Override // java.net.URLConnection
    public final int getReadTimeout() {
        return this.f14050do.f14250do.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public final String getRequestMethod() {
        return this.f14050do.f14250do.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getRequestProperties() {
        return this.f14050do.f14250do.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        return this.f14050do.f14250do.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() {
        return this.f14050do.m7389else();
    }

    @Override // java.net.HttpURLConnection
    public final String getResponseMessage() {
        return this.f14050do.m7391goto();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final SSLSocketFactory getSSLSocketFactory() {
        return this.f14049do.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getServerCertificates() {
        return this.f14049do.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public final URL getURL() {
        return this.f14050do.f14250do.getURL();
    }

    @Override // java.net.URLConnection
    public final boolean getUseCaches() {
        return this.f14050do.f14250do.getUseCaches();
    }

    public final int hashCode() {
        return this.f14050do.hashCode();
    }

    @Override // java.net.URLConnection
    public final void setAllowUserInteraction(boolean z) {
        this.f14050do.f14250do.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setChunkedStreamingMode(int i) {
        this.f14050do.f14250do.setChunkedStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public final void setConnectTimeout(int i) {
        this.f14050do.f14250do.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public final void setDefaultUseCaches(boolean z) {
        this.f14050do.f14250do.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final void setDoInput(boolean z) {
        this.f14050do.f14250do.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public final void setDoOutput(boolean z) {
        this.f14050do.f14250do.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(int i) {
        this.f14050do.f14250do.setFixedLengthStreamingMode(i);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f14049do.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public final void setIfModifiedSince(long j) {
        this.f14050do.f14250do.setIfModifiedSince(j);
    }

    @Override // java.net.HttpURLConnection
    public final void setInstanceFollowRedirects(boolean z) {
        this.f14050do.f14250do.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public final void setReadTimeout(int i) {
        this.f14050do.f14250do.setReadTimeout(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setRequestMethod(String str) {
        this.f14050do.f14250do.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.getClass();
        if ("User-Agent".equalsIgnoreCase(str)) {
            c3292lo.f14248do.f160break = str2;
        }
        c3292lo.f14250do.setRequestProperty(str, str2);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f14049do.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override // java.net.URLConnection
    public final void setUseCaches(boolean z) {
        this.f14050do.f14250do.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final String toString() {
        return this.f14050do.toString();
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        return this.f14050do.f14250do.usingProxy();
    }

    @Override // java.net.URLConnection
    public final Object getContent(Class[] clsArr) {
        return this.f14050do.m7390for(clsArr);
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        C3292lo c3292lo = this.f14050do;
        c3292lo.m7394this();
        return c3292lo.f14250do.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(long j) {
        this.f14050do.f14250do.setFixedLengthStreamingMode(j);
    }
}
