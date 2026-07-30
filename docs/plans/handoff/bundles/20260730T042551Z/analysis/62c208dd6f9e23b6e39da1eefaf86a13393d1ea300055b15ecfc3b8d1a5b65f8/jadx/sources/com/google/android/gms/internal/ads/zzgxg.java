package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgxg {
    private static final zzgxg zzb = new zzgxg(true);
    final zzhad zza = new zzgzy();
    private boolean zzc;
    private boolean zzd;

    private zzgxg() {
    }

    public static int zza(zzhau zzhauVar, int i, Object obj) {
        int zzD = zzgww.zzD(i << 3);
        if (zzhauVar == zzhau.zzj) {
            zzgzc zzgzcVar = (zzgzc) obj;
            byte[] bArr = zzgye.zzb;
            if (zzgzcVar instanceof zzgvt) {
                throw null;
            }
            zzD += zzD;
        }
        return zzD + zzb(zzhauVar, obj);
    }

    public static int zzb(zzhau zzhauVar, Object obj) {
        int zzd;
        int zzD;
        zzhau zzhauVar2 = zzhau.zza;
        zzhav zzhavVar = zzhav.INT;
        switch (zzhauVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                int i = zzgww.zzf;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                int i2 = zzgww.zzf;
                return 4;
            case 2:
                return zzgww.zzE(((Long) obj).longValue());
            case 3:
                return zzgww.zzE(((Long) obj).longValue());
            case 4:
                return zzgww.zzE(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                int i3 = zzgww.zzf;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                int i4 = zzgww.zzf;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                int i5 = zzgww.zzf;
                return 1;
            case 8:
                if (!(obj instanceof zzgwj)) {
                    return zzgww.zzC((String) obj);
                }
                int i6 = zzgww.zzf;
                zzd = ((zzgwj) obj).zzd();
                zzD = zzgww.zzD(zzd);
                break;
            case 9:
                int i7 = zzgww.zzf;
                return ((zzgzc) obj).zzaY();
            case 10:
                if (!(obj instanceof zzgym)) {
                    return zzgww.zzz((zzgzc) obj);
                }
                int i8 = zzgww.zzf;
                zzd = ((zzgym) obj).zza();
                zzD = zzgww.zzD(zzd);
                break;
            case 11:
                if (!(obj instanceof zzgwj)) {
                    int i9 = zzgww.zzf;
                    zzd = ((byte[]) obj).length;
                    zzD = zzgww.zzD(zzd);
                    break;
                } else {
                    int i10 = zzgww.zzf;
                    zzd = ((zzgwj) obj).zzd();
                    zzD = zzgww.zzD(zzd);
                    break;
                }
            case 12:
                return zzgww.zzD(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzgxv ? zzgww.zzE(((zzgxv) obj).zza()) : zzgww.zzE(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                int i11 = zzgww.zzf;
                return 4;
            case 15:
                ((Long) obj).longValue();
                int i12 = zzgww.zzf;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return zzgww.zzD((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return zzgww.zzE((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzD + zzd;
    }

    public static int zzc(zzgxf zzgxfVar, Object obj) {
        zzhau zzb2 = zzgxfVar.zzb();
        int zza = zzgxfVar.zza();
        if (!zzgxfVar.zze()) {
            return zza(zzb2, zza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzgxfVar.zzd()) {
            int i2 = 0;
            while (i < size) {
                i2 += zza(zzb2, zza, list.get(i));
                i++;
            }
            return i2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzb(zzb2, list.get(i));
            i++;
        }
        return zzgww.zzD(i3) + zzgww.zzD(zza << 3) + i3;
    }

    public static zzgxg zze() {
        return zzb;
    }

    private static boolean zzj(Map.Entry entry) {
        zzgxf zzgxfVar = (zzgxf) entry.getKey();
        if (zzgxfVar.zzc() != zzhav.MESSAGE) {
            return true;
        }
        if (!zzgxfVar.zze()) {
            return zzk(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!zzk(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzk(Object obj) {
        if (obj instanceof zzgzd) {
            return ((zzgzd) obj).zzbw();
        }
        if (obj instanceof zzgym) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzl(Map.Entry entry) {
        zzgxf zzgxfVar = (zzgxf) entry.getKey();
        Object value = entry.getValue();
        if (zzgxfVar.zzc() != zzhav.MESSAGE || zzgxfVar.zze() || zzgxfVar.zzd()) {
            return zzc(zzgxfVar, value);
        }
        if (!(value instanceof zzgym)) {
            int zza = ((zzgxf) entry.getKey()).zza();
            int zzD = zzgww.zzD(8);
            int zzD2 = zzgww.zzD(zza) + zzgww.zzD(16);
            return zzD + zzD + zzD2 + zzgww.zzz((zzgzc) value) + zzgww.zzD(24);
        }
        int zza2 = ((zzgxf) entry.getKey()).zza();
        int zzD3 = zzgww.zzD(8);
        int zzD4 = zzgww.zzD(zza2) + zzgww.zzD(16);
        int zzD5 = zzgww.zzD(24);
        int zza3 = ((zzgym) value).zza();
        return zzD3 + zzD3 + zzD4 + zzgww.zzD(zza3) + zza3 + zzD5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzm(com.google.android.gms.internal.ads.zzgxf r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.ads.zzhau r0 = r4.zzb()
            byte[] r1 = com.google.android.gms.internal.ads.zzgye.zzb
            r5.getClass()
            com.google.android.gms.internal.ads.zzhau r1 = com.google.android.gms.internal.ads.zzhau.zza
            com.google.android.gms.internal.ads.zzhav r1 = com.google.android.gms.internal.ads.zzhav.INT
            com.google.android.gms.internal.ads.zzhav r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L43;
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L2b;
                case 7: goto L22;
                case 8: goto L19;
                default: goto L18;
            }
        L18:
            goto L48
        L19:
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgzc
            if (r0 != 0) goto L47
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgym
            if (r0 == 0) goto L48
            goto L47
        L22:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L47
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgxv
            if (r0 == 0) goto L48
            goto L47
        L2b:
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgwj
            if (r0 != 0) goto L47
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L48
            goto L47
        L34:
            boolean r0 = r5 instanceof java.lang.String
            goto L45
        L37:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L45
        L3a:
            boolean r0 = r5 instanceof java.lang.Double
            goto L45
        L3d:
            boolean r0 = r5 instanceof java.lang.Float
            goto L45
        L40:
            boolean r0 = r5 instanceof java.lang.Long
            goto L45
        L43:
            boolean r0 = r5 instanceof java.lang.Integer
        L45:
            if (r0 == 0) goto L48
        L47:
            return
        L48:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            int r2 = r4.zza()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3 = 0
            r1[r3] = r2
            com.google.android.gms.internal.ads.zzhau r4 = r4.zzb()
            com.google.android.gms.internal.ads.zzhav r4 = r4.zza()
            r2 = 1
            r1[r2] = r4
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getName()
            r5 = 2
            r1[r5] = r4
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxg.zzm(com.google.android.gms.internal.ads.zzgxf, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzgxg zzgxgVar = new zzgxg();
        int zzc = this.zza.zzc();
        for (int i = 0; i < zzc; i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzgxgVar.zzh((zzgxf) ((zzgzz) zzg).zza(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzd()) {
            zzgxgVar.zzh((zzgxf) entry.getKey(), entry.getValue());
        }
        zzgxgVar.zzd = this.zzd;
        return zzgxgVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzgxg) {
            return this.zza.equals(((zzgxg) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzd() {
        int zzc = this.zza.zzc();
        int i = 0;
        for (int i2 = 0; i2 < zzc; i2++) {
            i += zzl(this.zza.zzg(i2));
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            i += zzl((Map.Entry) it.next());
        }
        return i;
    }

    public final Iterator zzf() {
        return this.zza.isEmpty() ? Collections.emptyIterator() : this.zzd ? new zzgyk(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzc) {
            return;
        }
        int zzc = this.zza.zzc();
        for (int i = 0; i < zzc; i++) {
            Object value = this.zza.zzg(i).getValue();
            if (value instanceof zzgxr) {
                ((zzgxr) value).zzbU();
            }
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzgxr) {
                ((zzgxr) value2).zzbU();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzh(zzgxf zzgxfVar, Object obj) {
        if (!zzgxfVar.zze()) {
            zzm(zzgxfVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                zzm(zzgxfVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzgym) {
            this.zzd = true;
        }
        this.zza.put(zzgxfVar, obj);
    }

    public final boolean zzi() {
        int zzc = this.zza.zzc();
        for (int i = 0; i < zzc; i++) {
            if (!zzj(this.zza.zzg(i))) {
                return false;
            }
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            if (!zzj((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private zzgxg(boolean z) {
        zzg();
        zzg();
    }
}
