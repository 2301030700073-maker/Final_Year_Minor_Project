package com.google.android.gms.internal.ads;

import java.lang.reflect.Constructor;
import java.util.List;

/* loaded from: classes.dex */
public final class zzach implements zzacs {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    private static final zzacg zzb = new zzacg(new zzacf() { // from class: com.google.android.gms.internal.ads.zzacd
        @Override // com.google.android.gms.internal.ads.zzacf
        public final Constructor zza() {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzacn.class).getConstructor(Integer.TYPE);
            }
            return null;
        }
    });
    private static final zzacg zzc = new zzacg(new zzacf() { // from class: com.google.android.gms.internal.ads.zzace
        @Override // com.google.android.gms.internal.ads.zzacf
        public final Constructor zza() {
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(zzacn.class).getConstructor(new Class[0]);
        }
    });
    private zzfxn zzd;
    private final zzakd zze = new zzajy();

    private final void zzb(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzama());
                break;
            case 1:
                list.add(new zzamc());
                break;
            case 2:
                list.add(new zzame(0));
                break;
            case 3:
                list.add(new zzaea(0));
                break;
            case 4:
                zzacn zza2 = zzb.zza(0);
                if (zza2 == null) {
                    list.add(new zzaes(0));
                    break;
                } else {
                    list.add(zza2);
                    break;
                }
            case 5:
                list.add(new zzaeu());
                break;
            case 6:
                list.add(new zzahm(this.zze, 0));
                break;
            case 7:
                list.add(new zzahs(0));
                break;
            case 8:
                list.add(new zzaiq(this.zze, 0, null, null, zzfxn.zzn(), null));
                list.add(new zzaiv(this.zze, 0));
                break;
            case 9:
                list.add(new zzajl());
                break;
            case 10:
                list.add(new zzanj());
                break;
            case 11:
                if (this.zzd == null) {
                    this.zzd = zzfxn.zzn();
                }
                list.add(new zzant(1, 0, this.zze, new zzef(0L), new zzamg(0, this.zzd), 112800));
                break;
            case 12:
                list.add(new zzaoe());
                break;
            case 14:
                list.add(new zzafa(0));
                break;
            case 15:
                zzacn zza3 = zzc.zza(new Object[0]);
                if (zza3 != null) {
                    list.add(zza3);
                    break;
                }
                break;
            case 16:
                list.add(new zzaef(0, this.zze));
                break;
            case 17:
                list.add(new zzajw());
                break;
            case 18:
                list.add(new zzaoj());
                break;
            case 19:
                list.add(new zzaen());
                break;
            case 20:
                list.add(new zzaez());
                break;
            case 21:
                list.add(new zzaem());
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0203 A[Catch: all -> 0x03f0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x0203, B:15:0x0206, B:20:0x03ce, B:21:0x03d1, B:23:0x03d6, B:26:0x03dc, B:28:0x03df, B:32:0x03e2, B:37:0x020f, B:39:0x0217, B:42:0x0221, B:45:0x022c, B:47:0x0234, B:50:0x023e, B:53:0x0249, B:56:0x0254, B:59:0x025f, B:61:0x0267, B:63:0x026f, B:66:0x0279, B:68:0x0287, B:71:0x0291, B:74:0x029c, B:76:0x02a4, B:78:0x02b2, B:80:0x02c0, B:83:0x02d0, B:85:0x02de, B:88:0x02e8, B:90:0x02f0, B:92:0x02f8, B:94:0x0300, B:97:0x030a, B:99:0x0312, B:102:0x0322, B:104:0x032a, B:107:0x0334, B:109:0x033c, B:112:0x0346, B:114:0x034e, B:117:0x0357, B:120:0x0363, B:123:0x036f, B:126:0x037a, B:128:0x0382, B:131:0x038b, B:133:0x0393, B:136:0x039c, B:152:0x0048, B:153:0x0050, B:156:0x01c5, B:179:0x0055, B:182:0x0061, B:185:0x006d, B:188:0x0079, B:191:0x0085, B:194:0x0090, B:197:0x009b, B:200:0x00a6, B:203:0x00b2, B:206:0x00be, B:209:0x00ca, B:212:0x00d6, B:215:0x00e1, B:218:0x00ec, B:221:0x00f7, B:224:0x0103, B:227:0x010f, B:230:0x011b, B:233:0x0127, B:236:0x0133, B:239:0x013f, B:242:0x014b, B:245:0x0157, B:248:0x0163, B:251:0x016e, B:254:0x0179, B:257:0x0184, B:260:0x018f, B:263:0x0199, B:266:0x01a4, B:269:0x01af, B:272:0x01ba), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0048 A[Catch: all -> 0x03f0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x0203, B:15:0x0206, B:20:0x03ce, B:21:0x03d1, B:23:0x03d6, B:26:0x03dc, B:28:0x03df, B:32:0x03e2, B:37:0x020f, B:39:0x0217, B:42:0x0221, B:45:0x022c, B:47:0x0234, B:50:0x023e, B:53:0x0249, B:56:0x0254, B:59:0x025f, B:61:0x0267, B:63:0x026f, B:66:0x0279, B:68:0x0287, B:71:0x0291, B:74:0x029c, B:76:0x02a4, B:78:0x02b2, B:80:0x02c0, B:83:0x02d0, B:85:0x02de, B:88:0x02e8, B:90:0x02f0, B:92:0x02f8, B:94:0x0300, B:97:0x030a, B:99:0x0312, B:102:0x0322, B:104:0x032a, B:107:0x0334, B:109:0x033c, B:112:0x0346, B:114:0x034e, B:117:0x0357, B:120:0x0363, B:123:0x036f, B:126:0x037a, B:128:0x0382, B:131:0x038b, B:133:0x0393, B:136:0x039c, B:152:0x0048, B:153:0x0050, B:156:0x01c5, B:179:0x0055, B:182:0x0061, B:185:0x006d, B:188:0x0079, B:191:0x0085, B:194:0x0090, B:197:0x009b, B:200:0x00a6, B:203:0x00b2, B:206:0x00be, B:209:0x00ca, B:212:0x00d6, B:215:0x00e1, B:218:0x00ec, B:221:0x00f7, B:224:0x0103, B:227:0x010f, B:230:0x011b, B:233:0x0127, B:236:0x0133, B:239:0x013f, B:242:0x014b, B:245:0x0157, B:248:0x0163, B:251:0x016e, B:254:0x0179, B:257:0x0184, B:260:0x018f, B:263:0x0199, B:266:0x01a4, B:269:0x01af, B:272:0x01ba), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x03cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x03d6 A[Catch: all -> 0x03f0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x0203, B:15:0x0206, B:20:0x03ce, B:21:0x03d1, B:23:0x03d6, B:26:0x03dc, B:28:0x03df, B:32:0x03e2, B:37:0x020f, B:39:0x0217, B:42:0x0221, B:45:0x022c, B:47:0x0234, B:50:0x023e, B:53:0x0249, B:56:0x0254, B:59:0x025f, B:61:0x0267, B:63:0x026f, B:66:0x0279, B:68:0x0287, B:71:0x0291, B:74:0x029c, B:76:0x02a4, B:78:0x02b2, B:80:0x02c0, B:83:0x02d0, B:85:0x02de, B:88:0x02e8, B:90:0x02f0, B:92:0x02f8, B:94:0x0300, B:97:0x030a, B:99:0x0312, B:102:0x0322, B:104:0x032a, B:107:0x0334, B:109:0x033c, B:112:0x0346, B:114:0x034e, B:117:0x0357, B:120:0x0363, B:123:0x036f, B:126:0x037a, B:128:0x0382, B:131:0x038b, B:133:0x0393, B:136:0x039c, B:152:0x0048, B:153:0x0050, B:156:0x01c5, B:179:0x0055, B:182:0x0061, B:185:0x006d, B:188:0x0079, B:191:0x0085, B:194:0x0090, B:197:0x009b, B:200:0x00a6, B:203:0x00b2, B:206:0x00be, B:209:0x00ca, B:212:0x00d6, B:215:0x00e1, B:218:0x00ec, B:221:0x00f7, B:224:0x0103, B:227:0x010f, B:230:0x011b, B:233:0x0127, B:236:0x0133, B:239:0x013f, B:242:0x014b, B:245:0x0157, B:248:0x0163, B:251:0x016e, B:254:0x0179, B:257:0x0184, B:260:0x018f, B:263:0x0199, B:266:0x01a4, B:269:0x01af, B:272:0x01ba), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x020f A[Catch: all -> 0x03f0, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001e, B:14:0x0203, B:15:0x0206, B:20:0x03ce, B:21:0x03d1, B:23:0x03d6, B:26:0x03dc, B:28:0x03df, B:32:0x03e2, B:37:0x020f, B:39:0x0217, B:42:0x0221, B:45:0x022c, B:47:0x0234, B:50:0x023e, B:53:0x0249, B:56:0x0254, B:59:0x025f, B:61:0x0267, B:63:0x026f, B:66:0x0279, B:68:0x0287, B:71:0x0291, B:74:0x029c, B:76:0x02a4, B:78:0x02b2, B:80:0x02c0, B:83:0x02d0, B:85:0x02de, B:88:0x02e8, B:90:0x02f0, B:92:0x02f8, B:94:0x0300, B:97:0x030a, B:99:0x0312, B:102:0x0322, B:104:0x032a, B:107:0x0334, B:109:0x033c, B:112:0x0346, B:114:0x034e, B:117:0x0357, B:120:0x0363, B:123:0x036f, B:126:0x037a, B:128:0x0382, B:131:0x038b, B:133:0x0393, B:136:0x039c, B:152:0x0048, B:153:0x0050, B:156:0x01c5, B:179:0x0055, B:182:0x0061, B:185:0x006d, B:188:0x0079, B:191:0x0085, B:194:0x0090, B:197:0x009b, B:200:0x00a6, B:203:0x00b2, B:206:0x00be, B:209:0x00ca, B:212:0x00d6, B:215:0x00e1, B:218:0x00ec, B:221:0x00f7, B:224:0x0103, B:227:0x010f, B:230:0x011b, B:233:0x0127, B:236:0x0133, B:239:0x013f, B:242:0x014b, B:245:0x0157, B:248:0x0163, B:251:0x016e, B:254:0x0179, B:257:0x0184, B:260:0x018f, B:263:0x0199, B:266:0x01a4, B:269:0x01af, B:272:0x01ba), top: B:3:0x0003 }] */
    @Override // com.google.android.gms.internal.ads.zzacs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzacn[] zza(android.net.Uri r25, java.util.Map r26) {
        /*
            Method dump skipped, instructions count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzach.zza(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzacn[]");
    }
}
