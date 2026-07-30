package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcy;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* renamed from: bU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC0755bU implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final String f8400break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ZT f8401do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final URL f8402do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3576qd f8403do;

    public RunnableC0755bU(ZT zt, String str, URL url, C3576qd c3576qd) {
        this.f8401do = zt;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(c3576qd);
        this.f8402do = url;
        this.f8403do = c3576qd;
        this.f8400break = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4841do(final int i, final IOException iOException, final byte[] bArr, final Map map) {
        this.f8401do.mo2253do().m1964public(new Runnable() { // from class: aU
            @Override // java.lang.Runnable
            public final void run() {
                int i2 = i;
                Exception exc = iOException;
                byte[] bArr2 = bArr;
                Map map2 = map;
                RunnableC0755bU runnableC0755bU = RunnableC0755bU.this;
                runnableC0755bU.f8403do.mo88if(runnableC0755bU.f8400break, i2, exc, bArr2, map2);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        HttpURLConnection httpURLConnection;
        Map<String, List<String>> map;
        IOException e;
        QS qs = ((TS) ((C3393nT) this.f8401do).f14527do).f3683do;
        TS.m2247this(qs);
        qs.m1968switch();
        int i = 0;
        try {
            URLConnection zza = zzcy.zza().zza(this.f8402do, "client-measurement");
            if (!(zza instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) zza;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                i = httpURLConnection.getResponseCode();
                map = httpURLConnection.getHeaderFields();
            } catch (IOException e2) {
                e = e2;
                map = null;
            } catch (Throwable th2) {
                th = th2;
                map = null;
            }
            try {
                byte[] m3014super = ZT.m3014super(httpURLConnection);
                httpURLConnection.disconnect();
                m4841do(i, null, m3014super, map);
            } catch (IOException e3) {
                e = e3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                m4841do(i, e, null, map);
            } catch (Throwable th3) {
                th = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                m4841do(i, null, null, map);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = null;
            map = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            map = null;
        }
    }
}
