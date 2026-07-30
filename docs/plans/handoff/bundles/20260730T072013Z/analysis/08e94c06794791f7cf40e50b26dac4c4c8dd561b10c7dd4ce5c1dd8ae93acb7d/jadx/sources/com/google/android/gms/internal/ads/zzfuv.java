package com.google.android.gms.internal.ads;

import android.net.Network;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfuv extends zzfuj {
    private zzgmv<Integer> zza;
    private zzgmv<Integer> zzb;
    private zzful zzc;
    private HttpURLConnection zzd;

    zzfuv() {
        this(zzfuu.zza, zzfum.zza, null);
    }

    zzfuv(zzgmv<Integer> zzgmvVar, zzgmv<Integer> zzgmvVar2, zzful zzfulVar) {
        this.zza = zzgmvVar;
        this.zzb = zzgmvVar2;
        this.zzc = zzfulVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer zzA() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer zzB() {
        return -1;
    }

    public static void zzi(HttpURLConnection httpURLConnection) {
        zzfuk.zzb();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ URLConnection zzy(URL url) throws IOException {
        int i = zzfue.zzb;
        return url.openConnection();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzi(this.zzd);
    }

    public URLConnection zzf(final URL url, final int i) throws IOException {
        this.zza = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzfun
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzc = new zzful() { // from class: com.google.android.gms.internal.ads.zzfuo
            @Override // com.google.android.gms.internal.ads.zzful
            public final /* synthetic */ URLConnection zza() {
                URLConnection zzy;
                zzy = zzfuv.zzy(url);
                return zzy;
            }
        };
        return zzj();
    }

    public HttpURLConnection zzg(final Network network, final URL url, final int i, final int i2) throws IOException {
        this.zza = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzfup
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzfuq
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = new zzful() { // from class: com.google.android.gms.internal.ads.zzfur
            @Override // com.google.android.gms.internal.ads.zzful
            public final /* synthetic */ URLConnection zza() {
                URLConnection openConnection;
                openConnection = network.openConnection(url);
                return openConnection;
            }
        };
        return zzj();
    }

    public HttpURLConnection zzh(zzful zzfulVar, final int i, final int i2) throws IOException {
        this.zza = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzfus
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzfut
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = zzfulVar;
        return zzj();
    }

    public HttpURLConnection zzj() throws IOException {
        zzfuk.zza(((Integer) this.zza.zza()).intValue(), ((Integer) this.zzb.zza()).intValue());
        zzful zzfulVar = this.zzc;
        zzfulVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfulVar.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }
}
