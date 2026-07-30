package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfy;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.Map;

/* renamed from: mS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3333mS extends WU {
    public C3333mS(ZU zu) {
        super(zu);
    }

    /* renamed from: public, reason: not valid java name */
    public static byte[] m7453public(HttpURLConnection httpURLConnection) {
        InputStream inputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    inputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m7454import(String str, URL url, byte[] bArr, Map<String, String> map, InterfaceC3510pS interfaceC3510pS) {
        mo1960catch();
        m2733super();
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkNotNull(interfaceC3510pS);
        mo2253do().m1970while(new RunnableC3569qS(this, str, url, bArr, map, interfaceC3510pS));
    }

    /* renamed from: native, reason: not valid java name */
    public final void m7455native(String str, C0696aV c0696aV, zzfy.zzj zzjVar, InterfaceC3510pS interfaceC3510pS) {
        String str2 = c0696aV.f4960do;
        mo1960catch();
        m2733super();
        try {
            URL url = new URI(str2).toURL();
            m2832class();
            byte[] zzca = zzjVar.zzca();
            QS mo2253do = mo2253do();
            Map<String, String> map = c0696aV.f4961do;
            if (map == null) {
                map = Collections.emptyMap();
            }
            mo2253do.m1970while(new RunnableC3569qS(this, str, url, zzca, map, interfaceC3510pS));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Failed to parse URL. Not uploading MeasurementBatch. appId", str2);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m7456return() {
        m2733super();
        ConnectivityManager connectivityManager = (ConnectivityManager) mo2255for().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    @Override // defpackage.WU
    /* renamed from: while */
    public final boolean mo372while() {
        return false;
    }
}
