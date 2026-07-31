package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzaqj implements zzapn {
    protected final zzaql zza;
    private final zzaqi zzb;

    public zzaqj(zzaqi zzaqiVar) {
        zzaql zzaqlVar = new zzaql(4096);
        this.zzb = zzaqiVar;
        this.zza = zzaqlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    public zzapq zza(zzapu zzapuVar) throws zzaqd {
        byte[] bArr;
        zzaqd zzappVar;
        String str;
        int zzo;
        Map map;
        int zza;
        List zzb;
        byte[] bArr2;
        zzaql zzaqlVar;
        zzaqw zzaqwVar;
        byte[] bArr3;
        byte[] byteArray;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            zzaqs zzaqsVar = null;
            try {
                zzapd zzk = zzapuVar.zzk();
                if (zzk == null) {
                    map = Collections.emptyMap();
                } else {
                    HashMap hashMap = new HashMap();
                    String str2 = zzk.zzb;
                    if (str2 != null) {
                        hashMap.put(HttpHeaders.IF_NONE_MATCH, str2);
                    }
                    long j = zzk.zzd;
                    if (j > 0) {
                        hashMap.put(HttpHeaders.IF_MODIFIED_SINCE, zzaqr.zzc(j));
                    }
                    map = hashMap;
                }
                zzaqs zza2 = this.zzb.zza(zzapuVar, map);
                try {
                    zza = zza2.zza();
                    zzb = zza2.zzb();
                    if (zza == 304) {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        zzapd zzk2 = zzapuVar.zzk();
                        if (zzk2 == null) {
                            return new zzapq(304, (byte[]) null, true, elapsedRealtime2, zzb);
                        }
                        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                        if (!zzb.isEmpty()) {
                            Iterator it = zzb.iterator();
                            while (it.hasNext()) {
                                treeSet.add(((zzapm) it.next()).zza());
                            }
                        }
                        ArrayList arrayList = new ArrayList(zzb);
                        List list = zzk2.zzh;
                        if (list != null) {
                            if (!list.isEmpty()) {
                                for (zzapm zzapmVar : zzk2.zzh) {
                                    if (!treeSet.contains(zzapmVar.zza())) {
                                        arrayList.add(zzapmVar);
                                    }
                                }
                            }
                        } else if (!zzk2.zzg.isEmpty()) {
                            for (Map.Entry entry : zzk2.zzg.entrySet()) {
                                if (!treeSet.contains(entry.getKey())) {
                                    arrayList.add(new zzapm((String) entry.getKey(), (String) entry.getValue()));
                                }
                            }
                        }
                        return new zzapq(304, zzk2.zza, true, elapsedRealtime2, (List) arrayList);
                    }
                    InputStream zzd = zza2.zzd();
                    if (zzd == null) {
                        bArr2 = new byte[0];
                        break;
                    }
                    int zzc = zza2.zzc();
                    zzaqlVar = this.zza;
                    zzaqwVar = new zzaqw(zzaqlVar, zzc);
                    try {
                        bArr3 = zzaqlVar.zza(1024);
                        while (true) {
                            try {
                                int read = zzd.read(bArr3);
                                if (read == -1) {
                                    break;
                                }
                                zzaqwVar.write(bArr3, 0, read);
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    zzd.close();
                                    break;
                                } catch (IOException unused) {
                                    zzaqg.zza("Error occurred when closing InputStream", new Object[0]);
                                }
                                zzaqlVar.zzb(bArr3);
                                zzaqwVar.close();
                                throw th;
                            }
                        }
                        byteArray = zzaqwVar.toByteArray();
                        try {
                            zzd.close();
                            break;
                        } catch (IOException unused2) {
                            zzaqg.zza("Error occurred when closing InputStream", new Object[0]);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bArr3 = null;
                    }
                } catch (IOException e) {
                    e = e;
                    bArr = null;
                    zzaqsVar = zza2;
                    if (e instanceof SocketTimeoutException) {
                        zzappVar = new zzaqc();
                        str = "socket";
                    } else {
                        if (e instanceof MalformedURLException) {
                            String zzh = zzapuVar.zzh();
                            String.valueOf(zzh);
                            throw new RuntimeException("Bad URL ".concat(String.valueOf(zzh)), e);
                        }
                        if (zzaqsVar == null) {
                            throw new zzapr(e);
                        }
                        int zza3 = zzaqsVar.zza();
                        zzaqg.zzc("Unexpected response code %d for %s", Integer.valueOf(zza3), zzapuVar.zzh());
                        if (bArr != null) {
                            zzapq zzapqVar = new zzapq(zza3, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, zzaqsVar.zzb());
                            if (zza3 != 401 && zza3 != 403) {
                                if (zza3 < 400 || zza3 > 499) {
                                    throw new zzaqb(zzapqVar);
                                }
                                throw new zzaph(zzapqVar);
                            }
                            zzappVar = new zzapc(zzapqVar);
                            str = "auth";
                        } else {
                            zzappVar = new zzapp();
                            str = "network";
                        }
                    }
                    zzapi zzy = zzapuVar.zzy();
                    zzo = zzapuVar.zzo();
                    try {
                        zzy.zzc(zzappVar);
                        zzapuVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzo)));
                    } catch (zzaqd e2) {
                        zzapuVar.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzo)));
                        throw e2;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                bArr = null;
            }
            zzapuVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzo)));
        }
        zzaqlVar.zzb(bArr3);
        zzaqwVar.close();
        bArr2 = byteArray;
        long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
        if (zzaqg.zzb || elapsedRealtime3 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            zzaqg.zzb("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", zzapuVar, Long.valueOf(elapsedRealtime3), bArr2 != null ? Integer.valueOf(bArr2.length) : "null", Integer.valueOf(zza), Integer.valueOf(zzapuVar.zzy().zzb()));
        }
        if (zza < 200 || zza > 299) {
            throw new IOException();
        }
        return new zzapq(zza, bArr2, false, SystemClock.elapsedRealtime() - elapsedRealtime, zzb);
    }
}
