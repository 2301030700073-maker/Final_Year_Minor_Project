package com.google.android.gms.internal.ads;

import com.google.common.net.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzaqx extends zzapu {
    private final Object zza;
    private final zzapz zzb;

    public zzaqx(int i, String str, zzapz zzapzVar, zzapy zzapyVar) {
        super(i, str, zzapyVar);
        this.zza = new Object();
        this.zzb = zzapzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapu
    protected final zzaqa zzr(zzapq zzapqVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzapqVar.zzb;
            Map map = zzapqVar.zzc;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get(HttpHeaders.CONTENT_TYPE)) != null) {
                String[] split = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzapqVar.zzb);
        }
        return zzaqa.zza(str, zzaqr.zza(zzapqVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzapu
    /* renamed from: zzz, reason: merged with bridge method [inline-methods] */
    public void zzs(String str) {
        zzapz zzapzVar;
        synchronized (this.zza) {
            zzapzVar = this.zzb;
        }
        zzapzVar.zza(str);
    }
}
