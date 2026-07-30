package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* loaded from: classes.dex */
final class zzgwq implements zzgzp {
    private final zzgwp zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzgwq(zzgwp zzgwpVar) {
        zzgye.zzc(zzgwpVar, "input");
        this.zza = zzgwpVar;
        zzgwpVar.zzc = this;
    }

    private final void zzO(Object obj, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzgzvVar.zzh(obj, this, zzgxbVar);
            if (this.zzb == this.zzc) {
            } else {
                throw new zzgyg("Failed to parse the message.");
            }
        } finally {
            this.zzc = i;
        }
    }

    private final void zzP(Object obj, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        zzgwp zzgwpVar = this.zza;
        int zzm = zzgwpVar.zzm();
        if (zzgwpVar.zza >= zzgwpVar.zzb) {
            throw new zzgyg("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int zzd = zzgwpVar.zzd(zzm);
        this.zza.zza++;
        zzgzvVar.zzh(obj, this, zzgxbVar);
        this.zza.zzy(0);
        r5.zza--;
        this.zza.zzz(zzd);
    }

    private final void zzQ(int i) {
        if (this.zza.zzc() != i) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final void zzR(int i) {
        if ((this.zzb & 7) != i) {
            throw new zzgyf("Protocol message tag had invalid wire type.");
        }
    }

    private static final void zzS(int i) {
        if ((i & 3) != 0) {
            throw new zzgyg("Failed to parse the message.");
        }
    }

    private static final void zzT(int i) {
        if ((i & 7) != 0) {
            throw new zzgyg("Failed to parse the message.");
        }
    }

    public static zzgwq zzq(zzgwp zzgwpVar) {
        zzgwq zzgwqVar = zzgwpVar.zzc;
        return zzgwqVar != null ? zzgwqVar : new zzgwq(zzgwpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzA(List list) {
        int zzl;
        int i;
        if (list instanceof zzgyr) {
            zzgyr zzgyrVar = (zzgyr) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm = this.zza.zzm();
                zzT(zzm);
                int zzc = zzm + this.zza.zzc();
                do {
                    zzgyrVar.zzg(this.zza.zzn());
                } while (this.zza.zzc() < zzc);
                return;
            }
            do {
                zzgyrVar.zzg(this.zza.zzn());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm2 = this.zza.zzm();
                zzT(zzm2);
                int zzc2 = zzm2 + this.zza.zzc();
                do {
                    list.add(Long.valueOf(this.zza.zzn()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzn()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzB(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxi) {
            zzgxi zzgxiVar = (zzgxi) list;
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzm = this.zza.zzm();
                zzS(zzm);
                int zzc = this.zza.zzc() + zzm;
                do {
                    zzgxiVar.zzh(this.zza.zzb());
                } while (this.zza.zzc() < zzc);
                return;
            }
            if (i2 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxiVar.zzh(this.zza.zzb());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 == 2) {
                int zzm2 = this.zza.zzm();
                zzS(zzm2);
                int zzc2 = this.zza.zzc() + zzm2;
                do {
                    list.add(Float.valueOf(this.zza.zzb()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            if (i3 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                list.add(Float.valueOf(this.zza.zzb()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    @Deprecated
    public final void zzC(List list, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        int zzl;
        int i = this.zzb;
        if ((i & 7) != 3) {
            throw new zzgyf("Protocol message tag had invalid wire type.");
        }
        do {
            Object zze = zzgzvVar.zze();
            zzO(zze, zzgzvVar, zzgxbVar);
            zzgzvVar.zzf(zze);
            list.add(zze);
            if (this.zza.zzA() || this.zzd != 0) {
                return;
            } else {
                zzl = this.zza.zzl();
            }
        } while (zzl == i);
        this.zzd = zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzD(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgxsVar.zzi(this.zza.zzg());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgxsVar.zzi(this.zza.zzg());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzg()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzE(List list) {
        int zzl;
        int i;
        if (list instanceof zzgyr) {
            zzgyr zzgyrVar = (zzgyr) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgyrVar.zzg(this.zza.zzo());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgyrVar.zzg(this.zza.zzo());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zzo()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzo()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzF(List list, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        int zzl;
        int i = this.zzb;
        if ((i & 7) != 2) {
            throw new zzgyf("Protocol message tag had invalid wire type.");
        }
        do {
            Object zze = zzgzvVar.zze();
            zzP(zze, zzgzvVar, zzgxbVar);
            zzgzvVar.zzf(zze);
            list.add(zze);
            if (this.zza.zzA() || this.zzd != 0) {
                return;
            } else {
                zzl = this.zza.zzl();
            }
        } while (zzl == i);
        this.zzd = zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzG(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzm = this.zza.zzm();
                zzS(zzm);
                int zzc = this.zza.zzc() + zzm;
                do {
                    zzgxsVar.zzi(this.zza.zzj());
                } while (this.zza.zzc() < zzc);
                return;
            }
            if (i2 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxsVar.zzi(this.zza.zzj());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 == 2) {
                int zzm2 = this.zza.zzm();
                zzS(zzm2);
                int zzc2 = this.zza.zzc() + zzm2;
                do {
                    list.add(Integer.valueOf(this.zza.zzj()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            if (i3 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                list.add(Integer.valueOf(this.zza.zzj()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzH(List list) {
        int zzl;
        int i;
        if (list instanceof zzgyr) {
            zzgyr zzgyrVar = (zzgyr) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm = this.zza.zzm();
                zzT(zzm);
                int zzc = zzm + this.zza.zzc();
                do {
                    zzgyrVar.zzg(this.zza.zzs());
                } while (this.zza.zzc() < zzc);
                return;
            }
            do {
                zzgyrVar.zzg(this.zza.zzs());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm2 = this.zza.zzm();
                zzT(zzm2);
                int zzc2 = zzm2 + this.zza.zzc();
                do {
                    list.add(Long.valueOf(this.zza.zzs()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzs()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzI(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgxsVar.zzi(this.zza.zzk());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgxsVar.zzi(this.zza.zzk());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzk()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzJ(List list) {
        int zzl;
        int i;
        if (list instanceof zzgyr) {
            zzgyr zzgyrVar = (zzgyr) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgyrVar.zzg(this.zza.zzt());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgyrVar.zzg(this.zza.zzt());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzt()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    public final void zzK(List list, boolean z) {
        int zzl;
        int i;
        if ((this.zzb & 7) != 2) {
            throw new zzgyf("Protocol message tag had invalid wire type.");
        }
        if ((list instanceof zzgyo) && !z) {
            zzgyo zzgyoVar = (zzgyo) list;
            do {
                zzp();
                zzgyoVar.zzb();
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            do {
                list.add(z ? zzs() : zzr());
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzL(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgxsVar.zzi(this.zza.zzm());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgxsVar.zzi(this.zza.zzm());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzm()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzm()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzM(List list) {
        int zzl;
        int i;
        if (list instanceof zzgyr) {
            zzgyr zzgyrVar = (zzgyr) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgyrVar.zzg(this.zza.zzu());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgyrVar.zzg(this.zza.zzu());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zzu()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzu()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final boolean zzN() {
        zzR(0);
        return this.zza.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final double zza() {
        zzR(1);
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final float zzb() {
        zzR(5);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzc() {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzl();
            this.zzb = i;
        }
        return (i == 0 || i == this.zzc) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zze() {
        zzR(0);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzf() {
        zzR(5);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzg() {
        zzR(0);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzh() {
        zzR(5);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzi() {
        zzR(0);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzj() {
        zzR(0);
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final long zzk() {
        zzR(1);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final long zzl() {
        zzR(0);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final long zzm() {
        zzR(1);
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final long zzn() {
        zzR(0);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final long zzo() {
        zzR(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final zzgwj zzp() {
        zzR(2);
        return this.zza.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final String zzr() {
        zzR(2);
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final String zzs() {
        zzR(2);
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzt(Object obj, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        zzR(3);
        zzO(obj, zzgzvVar, zzgxbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzu(Object obj, zzgzv zzgzvVar, zzgxb zzgxbVar) {
        zzR(2);
        zzP(obj, zzgzvVar, zzgxbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzv(List list) {
        int zzl;
        int i;
        if (list instanceof zzgvz) {
            zzgvz zzgvzVar = (zzgvz) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgvzVar.zzg(this.zza.zzB());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgvzVar.zzg(this.zza.zzB());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Boolean.valueOf(this.zza.zzB()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Boolean.valueOf(this.zza.zzB()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzw(List list) {
        int zzl;
        if ((this.zzb & 7) != 2) {
            throw new zzgyf("Protocol message tag had invalid wire type.");
        }
        do {
            list.add(zzp());
            if (this.zza.zzA()) {
                return;
            } else {
                zzl = this.zza.zzl();
            }
        } while (zzl == this.zzb);
        this.zzd = zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzx(List list) {
        int zzl;
        int i;
        if (list instanceof zzgwy) {
            zzgwy zzgwyVar = (zzgwy) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm = this.zza.zzm();
                zzT(zzm);
                int zzc = zzm + this.zza.zzc();
                do {
                    zzgwyVar.zzh(this.zza.zza());
                } while (this.zza.zzc() < zzc);
                return;
            }
            do {
                zzgwyVar.zzh(this.zza.zza());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                int zzm2 = this.zza.zzm();
                zzT(zzm2);
                int zzc2 = zzm2 + this.zza.zzc();
                do {
                    list.add(Double.valueOf(this.zza.zza()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            do {
                list.add(Double.valueOf(this.zza.zza()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzy(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar = this.zza;
                int zzc = zzgwpVar.zzc() + zzgwpVar.zzm();
                do {
                    zzgxsVar.zzi(this.zza.zze());
                } while (this.zza.zzc() < zzc);
                zzQ(zzc);
                return;
            }
            do {
                zzgxsVar.zzi(this.zza.zze());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyf("Protocol message tag had invalid wire type.");
                }
                zzgwp zzgwpVar2 = this.zza;
                int zzc2 = zzgwpVar2.zzc() + zzgwpVar2.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zze()));
                } while (this.zza.zzc() < zzc2);
                zzQ(zzc2);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zze()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzz(List list) {
        int zzl;
        int i;
        if (list instanceof zzgxs) {
            zzgxs zzgxsVar = (zzgxs) list;
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzm = this.zza.zzm();
                zzS(zzm);
                int zzc = this.zza.zzc() + zzm;
                do {
                    zzgxsVar.zzi(this.zza.zzf());
                } while (this.zza.zzc() < zzc);
                return;
            }
            if (i2 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxsVar.zzi(this.zza.zzf());
                if (this.zza.zzA()) {
                    return;
                } else {
                    i = this.zza.zzl();
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 == 2) {
                int zzm2 = this.zza.zzm();
                zzS(zzm2);
                int zzc2 = this.zza.zzc() + zzm2;
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                } while (this.zza.zzc() < zzc2);
                return;
            }
            if (i3 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            do {
                list.add(Integer.valueOf(this.zza.zzf()));
                if (this.zza.zzA()) {
                    return;
                } else {
                    zzl = this.zza.zzl();
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }
}
