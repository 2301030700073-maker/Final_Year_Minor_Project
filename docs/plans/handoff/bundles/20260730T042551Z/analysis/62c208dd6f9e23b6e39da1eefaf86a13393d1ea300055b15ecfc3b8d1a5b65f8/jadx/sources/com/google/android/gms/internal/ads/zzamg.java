package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzamg implements zzanw {
    private final List zza;

    public zzamg() {
        this(0);
    }

    public zzamg(int i, List list) {
        this.zza = list;
    }

    private final zzann zzc(zzanv zzanvVar) {
        return new zzann(zze(zzanvVar));
    }

    private final zzaoa zzd(zzanv zzanvVar) {
        return new zzaoa(zze(zzanvVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    private final List zze(zzanv zzanvVar) {
        String str;
        int i;
        List list;
        zzdy zzdyVar = new zzdy(zzanvVar.zze);
        ArrayList arrayList = this.zza;
        while (zzdyVar.zzb() > 0) {
            int zzm = zzdyVar.zzm();
            int zzd = zzdyVar.zzd() + zzdyVar.zzm();
            if (zzm == 134) {
                arrayList = new ArrayList();
                int zzm2 = zzdyVar.zzm() & 31;
                for (int i2 = 0; i2 < zzm2; i2++) {
                    String zzB = zzdyVar.zzB(3, StandardCharsets.UTF_8);
                    int zzm3 = zzdyVar.zzm();
                    boolean z = (zzm3 & 128) != 0;
                    if (z) {
                        i = zzm3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte zzm4 = (byte) zzdyVar.zzm();
                    zzdyVar.zzM(1);
                    if (z) {
                        int i3 = zzm4 & 64;
                        int i4 = zzcy.zza;
                        list = Collections.singletonList(i3 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    zzz zzzVar = new zzz();
                    zzzVar.zzaa(str);
                    zzzVar.zzQ(zzB);
                    zzzVar.zzx(i);
                    zzzVar.zzN(list);
                    arrayList.add(zzzVar.zzag());
                }
            }
            zzdyVar.zzL(zzd);
            arrayList = arrayList;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanw
    public final SparseArray zza() {
        return new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.zzanw
    public final zzany zzb(int i, zzanv zzanvVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzand(new zzamv(zzanvVar.zzb, zzanvVar.zza()));
            }
            if (i == 21) {
                return new zzand(new zzamt());
            }
            if (i == 27) {
                return new zzand(new zzamq(zzc(zzanvVar), false, false));
            }
            if (i == 36) {
                return new zzand(new zzams(zzc(zzanvVar)));
            }
            if (i == 45) {
                return new zzand(new zzamw());
            }
            if (i == 89) {
                return new zzand(new zzami(zzanvVar.zzd));
            }
            if (i == 172) {
                return new zzand(new zzamd(zzanvVar.zzb, zzanvVar.zza()));
            }
            if (i == 257) {
                return new zzanl(new zzanc("application/vnd.dvb.ait"));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i != 138) {
                        if (i == 139) {
                            return new zzand(new zzamh(zzanvVar.zzb, zzanvVar.zza(), 5408));
                        }
                        switch (i) {
                            case 15:
                                return new zzand(new zzamf(false, zzanvVar.zzb, zzanvVar.zza()));
                            case 16:
                                return new zzand(new zzamo(zzd(zzanvVar)));
                            case 17:
                                return new zzand(new zzamu(zzanvVar.zzb, zzanvVar.zza()));
                            default:
                                switch (i) {
                                    case 134:
                                        return new zzanl(new zzanc("application/x-scte35"));
                                    case 135:
                                        break;
                                    case 136:
                                        break;
                                    default:
                                        return null;
                                }
                        }
                    }
                    return new zzand(new zzamh(zzanvVar.zzb, zzanvVar.zza(), 4096));
                }
                return new zzand(new zzamb(zzanvVar.zzb, zzanvVar.zza()));
            }
        }
        return new zzand(new zzaml(zzd(zzanvVar)));
    }

    public zzamg(int i) {
        this.zza = zzfxn.zzn();
    }
}
