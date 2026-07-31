package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzacw implements zzadg {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    private static final zzacv zzc = new zzacv(zzact.zza);
    private static final zzacv zzd = new zzacv(zzacs.zza);
    private zzgpe zze;
    private final zzakg zzf = new zzakb();

    @Override // com.google.android.gms.internal.ads.zzadg
    public final synchronized zzada[] zza() {
        return zzb(Uri.EMPTY, new HashMap());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x01fa A[Catch: all -> 0x03e0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x01fa, B:15:0x01fd, B:20:0x03c2, B:21:0x03c5, B:23:0x03ca, B:26:0x03d0, B:28:0x03d3, B:32:0x03d6, B:37:0x0206, B:39:0x020e, B:42:0x0218, B:45:0x0224, B:47:0x022c, B:50:0x0236, B:53:0x0241, B:56:0x024c, B:59:0x0257, B:61:0x025f, B:63:0x0267, B:66:0x0271, B:68:0x027f, B:71:0x0289, B:74:0x0294, B:76:0x029c, B:78:0x02aa, B:80:0x02b8, B:83:0x02c8, B:85:0x02d6, B:88:0x02e0, B:90:0x02e8, B:92:0x02f0, B:94:0x02f8, B:97:0x0302, B:99:0x030a, B:102:0x031a, B:104:0x0322, B:107:0x032c, B:109:0x0334, B:112:0x033e, B:114:0x0346, B:117:0x034f, B:120:0x035b, B:123:0x0367, B:126:0x0373, B:128:0x037b, B:131:0x0384, B:133:0x038c, B:136:0x0395, B:152:0x0047, B:153:0x004f, B:156:0x01c0, B:179:0x0054, B:182:0x0060, B:185:0x006b, B:188:0x0077, B:191:0x0083, B:194:0x008e, B:197:0x009a, B:200:0x00a5, B:203:0x00b1, B:206:0x00bd, B:209:0x00c8, B:212:0x00d4, B:215:0x00df, B:218:0x00ea, B:221:0x00f5, B:224:0x0101, B:227:0x010c, B:230:0x0118, B:233:0x0124, B:236:0x0130, B:239:0x013c, B:242:0x0148, B:245:0x0154, B:248:0x0160, B:251:0x016b, B:254:0x0176, B:257:0x0181, B:260:0x018c, B:263:0x0197, B:266:0x01a1, B:269:0x01ab, B:272:0x01b5), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0047 A[Catch: all -> 0x03e0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x01fa, B:15:0x01fd, B:20:0x03c2, B:21:0x03c5, B:23:0x03ca, B:26:0x03d0, B:28:0x03d3, B:32:0x03d6, B:37:0x0206, B:39:0x020e, B:42:0x0218, B:45:0x0224, B:47:0x022c, B:50:0x0236, B:53:0x0241, B:56:0x024c, B:59:0x0257, B:61:0x025f, B:63:0x0267, B:66:0x0271, B:68:0x027f, B:71:0x0289, B:74:0x0294, B:76:0x029c, B:78:0x02aa, B:80:0x02b8, B:83:0x02c8, B:85:0x02d6, B:88:0x02e0, B:90:0x02e8, B:92:0x02f0, B:94:0x02f8, B:97:0x0302, B:99:0x030a, B:102:0x031a, B:104:0x0322, B:107:0x032c, B:109:0x0334, B:112:0x033e, B:114:0x0346, B:117:0x034f, B:120:0x035b, B:123:0x0367, B:126:0x0373, B:128:0x037b, B:131:0x0384, B:133:0x038c, B:136:0x0395, B:152:0x0047, B:153:0x004f, B:156:0x01c0, B:179:0x0054, B:182:0x0060, B:185:0x006b, B:188:0x0077, B:191:0x0083, B:194:0x008e, B:197:0x009a, B:200:0x00a5, B:203:0x00b1, B:206:0x00bd, B:209:0x00c8, B:212:0x00d4, B:215:0x00df, B:218:0x00ea, B:221:0x00f5, B:224:0x0101, B:227:0x010c, B:230:0x0118, B:233:0x0124, B:236:0x0130, B:239:0x013c, B:242:0x0148, B:245:0x0154, B:248:0x0160, B:251:0x016b, B:254:0x0176, B:257:0x0181, B:260:0x018c, B:263:0x0197, B:266:0x01a1, B:269:0x01ab, B:272:0x01b5), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x03c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x03ca A[Catch: all -> 0x03e0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x01fa, B:15:0x01fd, B:20:0x03c2, B:21:0x03c5, B:23:0x03ca, B:26:0x03d0, B:28:0x03d3, B:32:0x03d6, B:37:0x0206, B:39:0x020e, B:42:0x0218, B:45:0x0224, B:47:0x022c, B:50:0x0236, B:53:0x0241, B:56:0x024c, B:59:0x0257, B:61:0x025f, B:63:0x0267, B:66:0x0271, B:68:0x027f, B:71:0x0289, B:74:0x0294, B:76:0x029c, B:78:0x02aa, B:80:0x02b8, B:83:0x02c8, B:85:0x02d6, B:88:0x02e0, B:90:0x02e8, B:92:0x02f0, B:94:0x02f8, B:97:0x0302, B:99:0x030a, B:102:0x031a, B:104:0x0322, B:107:0x032c, B:109:0x0334, B:112:0x033e, B:114:0x0346, B:117:0x034f, B:120:0x035b, B:123:0x0367, B:126:0x0373, B:128:0x037b, B:131:0x0384, B:133:0x038c, B:136:0x0395, B:152:0x0047, B:153:0x004f, B:156:0x01c0, B:179:0x0054, B:182:0x0060, B:185:0x006b, B:188:0x0077, B:191:0x0083, B:194:0x008e, B:197:0x009a, B:200:0x00a5, B:203:0x00b1, B:206:0x00bd, B:209:0x00c8, B:212:0x00d4, B:215:0x00df, B:218:0x00ea, B:221:0x00f5, B:224:0x0101, B:227:0x010c, B:230:0x0118, B:233:0x0124, B:236:0x0130, B:239:0x013c, B:242:0x0148, B:245:0x0154, B:248:0x0160, B:251:0x016b, B:254:0x0176, B:257:0x0181, B:260:0x018c, B:263:0x0197, B:266:0x01a1, B:269:0x01ab, B:272:0x01b5), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0206 A[Catch: all -> 0x03e0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x01fa, B:15:0x01fd, B:20:0x03c2, B:21:0x03c5, B:23:0x03ca, B:26:0x03d0, B:28:0x03d3, B:32:0x03d6, B:37:0x0206, B:39:0x020e, B:42:0x0218, B:45:0x0224, B:47:0x022c, B:50:0x0236, B:53:0x0241, B:56:0x024c, B:59:0x0257, B:61:0x025f, B:63:0x0267, B:66:0x0271, B:68:0x027f, B:71:0x0289, B:74:0x0294, B:76:0x029c, B:78:0x02aa, B:80:0x02b8, B:83:0x02c8, B:85:0x02d6, B:88:0x02e0, B:90:0x02e8, B:92:0x02f0, B:94:0x02f8, B:97:0x0302, B:99:0x030a, B:102:0x031a, B:104:0x0322, B:107:0x032c, B:109:0x0334, B:112:0x033e, B:114:0x0346, B:117:0x034f, B:120:0x035b, B:123:0x0367, B:126:0x0373, B:128:0x037b, B:131:0x0384, B:133:0x038c, B:136:0x0395, B:152:0x0047, B:153:0x004f, B:156:0x01c0, B:179:0x0054, B:182:0x0060, B:185:0x006b, B:188:0x0077, B:191:0x0083, B:194:0x008e, B:197:0x009a, B:200:0x00a5, B:203:0x00b1, B:206:0x00bd, B:209:0x00c8, B:212:0x00d4, B:215:0x00df, B:218:0x00ea, B:221:0x00f5, B:224:0x0101, B:227:0x010c, B:230:0x0118, B:233:0x0124, B:236:0x0130, B:239:0x013c, B:242:0x0148, B:245:0x0154, B:248:0x0160, B:251:0x016b, B:254:0x0176, B:257:0x0181, B:260:0x018c, B:263:0x0197, B:266:0x01a1, B:269:0x01ab, B:272:0x01b5), top: B:3:0x0003 }] */
    @Override // com.google.android.gms.internal.ads.zzadg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzada[] zzb(android.net.Uri r25, java.util.Map r26) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacw.zzb(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzada[]");
    }

    private final void zzc(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzamf());
                break;
            case 1:
                list.add(new zzami());
                break;
            case 2:
                list.add(new zzaml(0));
                break;
            case 3:
                list.add(new zzaeu(0));
                break;
            case 4:
                zzada zza2 = zzc.zza(0);
                if (zza2 == null) {
                    list.add(new zzafl(0));
                    break;
                } else {
                    list.add(zza2);
                    break;
                }
            case 5:
                list.add(new zzafo());
                break;
            case 6:
                list.add(new zzahk(this.zzf, 0));
                break;
            case 7:
                list.add(new zzahs(0));
                break;
            case 8:
                zzakg zzakgVar = this.zzf;
                list.add(new zzair(zzakgVar, 0, null, null, zzgpe.zzi(), null));
                list.add(new zzaiz(zzakgVar, 0));
                break;
            case 9:
                list.add(new zzajp());
                break;
            case 10:
                list.add(new zzanp());
                break;
            case 11:
                if (this.zze == null) {
                    this.zze = zzgpe.zzi();
                }
                list.add(new zzaoa(1, 0, this.zzf, new zzem(0L), new zzamn(0, this.zze), TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES));
                break;
            case 12:
                list.add(new zzaon());
                break;
            case 14:
                list.add(new zzafu(0));
                break;
            case 15:
                zzada zza3 = zzd.zza(new Object[0]);
                if (zza3 != null) {
                    list.add(zza3);
                    break;
                }
                break;
            case 16:
                list.add(new zzaey(0, this.zzf));
                break;
            case 17:
                list.add(new zzajz());
                break;
            case 18:
                list.add(new zzaos());
                break;
            case 19:
                list.add(new zzafg());
                break;
            case 20:
                list.add(new zzaft());
                break;
            case 21:
                list.add(new zzaff());
                break;
        }
    }
}
