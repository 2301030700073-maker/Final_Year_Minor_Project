package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqe;
import com.google.android.gms.internal.zzqf;

/* loaded from: classes.dex */
public abstract class zzqn {
    private zzqd zzaPU;
    private zzqb zzaPV;
    private zzlb zzpw;

    public enum zza {
        NOT_AVAILABLE,
        IO_ERROR,
        SERVER_ERROR
    }

    public class zzb {
        private final zzqe.zza.EnumC0156zza zzaPp;
        private final long zzaPr;
        private final Object zzaQa;

        public Object zzAH() {
            return this.zzaQa;
        }

        public zzqe.zza.EnumC0156zza zzAh() {
            return this.zzaPp;
        }

        public long zzAl() {
            return this.zzaPr;
        }
    }

    public zzqn(zzqd zzqdVar, zzqb zzqbVar) {
        this(zzqdVar, zzqbVar, zzld.zzoQ());
    }

    public zzqn(zzqd zzqdVar, zzqb zzqbVar, zzlb zzlbVar) {
        com.google.android.gms.common.internal.zzu.zzV(zzqdVar.zzAf().size() == 1);
        this.zzaPU = zzqdVar;
        this.zzaPV = zzqbVar;
        this.zzpw = zzlbVar;
    }

    protected abstract zzb zza(zzpy zzpyVar);

    protected abstract void zza(zzqe zzqeVar);

    public void zza(zza zzaVar) {
        com.google.android.gms.tagmanager.zzbg.zzaz("ResourceManager: Failed to download a resource: " + zzaVar.name());
        zzpy zzpyVar = this.zzaPU.zzAf().get(0);
        zzb zza2 = zza(zzpyVar);
        zza(new zzqe((zza2 == null || !(zza2.zzAH() instanceof zzqf.zzc)) ? new zzqe.zza(Status.zzXR, zzpyVar, zzqe.zza.EnumC0156zza.NETWORK) : new zzqe.zza(Status.zzXP, zzpyVar, null, (zzqf.zzc) zza2.zzAH(), zza2.zzAh(), zza2.zzAl())));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzu(byte[] r10) {
        /*
            r9 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "ResourceManager: Resource downloaded from Network: "
            r0.append(r1)
            com.google.android.gms.internal.zzqd r1 = r9.zzaPU
            java.lang.String r1 = r1.getId()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.google.android.gms.tagmanager.zzbg.zzaB(r0)
            com.google.android.gms.internal.zzqd r0 = r9.zzaPU
            java.util.List r0 = r0.zzAf()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            r3 = r0
            com.google.android.gms.internal.zzpy r3 = (com.google.android.gms.internal.zzpy) r3
            com.google.android.gms.internal.zzqe$zza$zza r0 = com.google.android.gms.internal.zzqe.zza.EnumC0156zza.NETWORK
            r1 = 0
            r4 = 0
            com.google.android.gms.internal.zzqb r2 = r9.zzaPV     // Catch: com.google.android.gms.internal.zzqf.zzg -> L60
            java.lang.Object r2 = r2.zzt(r10)     // Catch: com.google.android.gms.internal.zzqf.zzg -> L60
            com.google.android.gms.internal.zzlb r1 = r9.zzpw     // Catch: com.google.android.gms.internal.zzqf.zzg -> L5e
            long r6 = r1.currentTimeMillis()     // Catch: com.google.android.gms.internal.zzqf.zzg -> L5e
            if (r2 != 0) goto L76
            java.lang.String r1 = "Parsed resource from network is null"
            com.google.android.gms.tagmanager.zzbg.zzaA(r1)     // Catch: com.google.android.gms.internal.zzqf.zzg -> L5c
            com.google.android.gms.internal.zzqn$zzb r1 = r9.zza(r3)     // Catch: com.google.android.gms.internal.zzqf.zzg -> L5c
            if (r1 == 0) goto L76
            java.lang.Object r4 = r1.zzAH()     // Catch: com.google.android.gms.internal.zzqf.zzg -> L5c
            com.google.android.gms.internal.zzqe$zza$zza r2 = r1.zzAh()     // Catch: com.google.android.gms.internal.zzqf.zzg -> L59
            long r0 = r1.zzAl()     // Catch: com.google.android.gms.internal.zzqf.zzg -> L56
            r6 = r0
            r0 = r2
            r2 = r4
            goto L76
        L56:
            r0 = move-exception
            r0 = r2
            goto L5a
        L59:
            r1 = move-exception
        L5a:
            r2 = r4
            goto L63
        L5c:
            r1 = move-exception
            goto L63
        L5e:
            r1 = move-exception
            goto L62
        L60:
            r2 = move-exception
            r2 = r1
        L62:
            r6 = r4
        L63:
            java.lang.String r1 = "Resource from network is corrupted"
            com.google.android.gms.tagmanager.zzbg.zzaA(r1)
            com.google.android.gms.internal.zzqn$zzb r1 = r9.zza(r3)
            if (r1 == 0) goto L76
            java.lang.Object r2 = r1.zzAH()
            com.google.android.gms.internal.zzqe$zza$zza r0 = r1.zzAh()
        L76:
            r7 = r6
            r6 = r0
            if (r2 == 0) goto L88
            com.google.android.gms.internal.zzqe$zza r0 = new com.google.android.gms.internal.zzqe$zza
            com.google.android.gms.common.api.Status r4 = com.google.android.gms.common.api.Status.zzXP
            r5 = r2
            com.google.android.gms.internal.zzqf$zzc r5 = (com.google.android.gms.internal.zzqf.zzc) r5
            r1 = r0
            r2 = r4
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7)
            goto L91
        L88:
            com.google.android.gms.internal.zzqe$zza r0 = new com.google.android.gms.internal.zzqe$zza
            com.google.android.gms.common.api.Status r10 = com.google.android.gms.common.api.Status.zzXR
            com.google.android.gms.internal.zzqe$zza$zza r1 = com.google.android.gms.internal.zzqe.zza.EnumC0156zza.NETWORK
            r0.<init>(r10, r3, r1)
        L91:
            com.google.android.gms.internal.zzqe r10 = new com.google.android.gms.internal.zzqe
            r10.<init>(r0)
            r9.zza(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqn.zzu(byte[]):void");
    }
}
