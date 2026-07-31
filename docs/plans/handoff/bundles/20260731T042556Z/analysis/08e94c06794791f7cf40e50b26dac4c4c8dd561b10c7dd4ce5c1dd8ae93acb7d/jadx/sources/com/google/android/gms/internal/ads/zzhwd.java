package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhwd {
    private static final zzhwd zzd = new zzhwd(true);
    final zzhyy zza = new zzhyu();
    boolean zzb;
    boolean zzc;

    private zzhwd() {
    }

    public static zzhwd zza() {
        return zzd;
    }

    static void zzf(zzhvt zzhvtVar, zzhzp zzhzpVar, int i, Object obj) throws IOException {
        if (zzhzpVar == zzhzp.GROUP) {
            zzhvtVar.zzJ(i, 3);
            ((zzhxz) obj).zzdc(zzhvtVar);
            zzhvtVar.zzJ(i, 4);
            return;
        }
        zzhvtVar.zzJ(i, zzhzpVar.zzb());
        zzhzq zzhzqVar = zzhzq.INT;
        switch (zzhzpVar) {
            case DOUBLE:
                zzhvtVar.zzv(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case FLOAT:
                zzhvtVar.zzt(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case INT64:
                zzhvtVar.zzu(((Long) obj).longValue());
                break;
            case UINT64:
                zzhvtVar.zzu(((Long) obj).longValue());
                break;
            case INT32:
                zzhvtVar.zzr(((Integer) obj).intValue());
                break;
            case FIXED64:
                zzhvtVar.zzv(((Long) obj).longValue());
                break;
            case FIXED32:
                zzhvtVar.zzt(((Integer) obj).intValue());
                break;
            case BOOL:
                zzhvtVar.zzq(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case STRING:
                if (!(obj instanceof zzhvi)) {
                    zzhvtVar.zzx((String) obj);
                    break;
                } else {
                    zzhvtVar.zzl((zzhvi) obj);
                    break;
                }
            case GROUP:
                ((zzhxz) obj).zzdc(zzhvtVar);
                break;
            case MESSAGE:
                zzhvtVar.zzp((zzhxz) obj);
                break;
            case BYTES:
                if (!(obj instanceof zzhvi)) {
                    byte[] bArr = (byte[]) obj;
                    zzhvtVar.zzm(bArr, 0, bArr.length);
                    break;
                } else {
                    zzhvtVar.zzl((zzhvi) obj);
                    break;
                }
            case UINT32:
                zzhvtVar.zzs(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof zzhws)) {
                    zzhvtVar.zzr(((Integer) obj).intValue());
                    break;
                } else {
                    zzhvtVar.zzr(((zzhws) obj).zza());
                    break;
                }
            case SFIXED32:
                zzhvtVar.zzt(((Integer) obj).intValue());
                break;
            case SFIXED64:
                zzhvtVar.zzv(((Long) obj).longValue());
                break;
            case SINT32:
                int intValue = ((Integer) obj).intValue();
                zzhvtVar.zzs((intValue >> 31) ^ (intValue + intValue));
                break;
            case SINT64:
                long longValue = ((Long) obj).longValue();
                zzhvtVar.zzu((longValue >> 63) ^ (longValue + longValue));
                break;
        }
    }

    static int zzh(zzhzp zzhzpVar, int i, Object obj) {
        int zzA = zzhvt.zzA(i << 3);
        if (zzhzpVar == zzhzp.GROUP) {
            zzA += zzA;
        }
        return zzA + zzi(zzhzpVar, obj);
    }

    static int zzi(zzhzp zzhzpVar, Object obj) {
        int zzc;
        int zzA;
        zzhzp zzhzpVar2 = zzhzp.DOUBLE;
        zzhzq zzhzqVar = zzhzq.INT;
        switch (zzhzpVar) {
            case DOUBLE:
                ((Double) obj).doubleValue();
                int i = zzhvt.zzf;
                return 8;
            case FLOAT:
                ((Float) obj).floatValue();
                int i2 = zzhvt.zzf;
                return 4;
            case INT64:
                return zzhvt.zzB(((Long) obj).longValue());
            case UINT64:
                return zzhvt.zzB(((Long) obj).longValue());
            case INT32:
                return zzhvt.zzB(((Integer) obj).intValue());
            case FIXED64:
                ((Long) obj).longValue();
                int i3 = zzhvt.zzf;
                return 8;
            case FIXED32:
                ((Integer) obj).intValue();
                int i4 = zzhvt.zzf;
                return 4;
            case BOOL:
                ((Boolean) obj).booleanValue();
                int i5 = zzhvt.zzf;
                return 1;
            case STRING:
                if (!(obj instanceof zzhvi)) {
                    return zzhvt.zzC((String) obj);
                }
                int i6 = zzhvt.zzf;
                zzc = ((zzhvi) obj).zzc();
                zzA = zzhvt.zzA(zzc);
                break;
            case GROUP:
                return ((zzhxz) obj).zzbr();
            case MESSAGE:
                if (!(obj instanceof zzhxi)) {
                    return zzhvt.zzD((zzhxz) obj);
                }
                zzc = ((zzhxi) obj).zzb();
                zzA = zzhvt.zzA(zzc);
                break;
            case BYTES:
                if (!(obj instanceof zzhvi)) {
                    int i7 = zzhvt.zzf;
                    zzc = ((byte[]) obj).length;
                    zzA = zzhvt.zzA(zzc);
                    break;
                } else {
                    int i8 = zzhvt.zzf;
                    zzc = ((zzhvi) obj).zzc();
                    zzA = zzhvt.zzA(zzc);
                    break;
                }
            case UINT32:
                return zzhvt.zzA(((Integer) obj).intValue());
            case ENUM:
                return obj instanceof zzhws ? zzhvt.zzB(((zzhws) obj).zza()) : zzhvt.zzB(((Integer) obj).intValue());
            case SFIXED32:
                ((Integer) obj).intValue();
                int i9 = zzhvt.zzf;
                return 4;
            case SFIXED64:
                ((Long) obj).longValue();
                int i10 = zzhvt.zzf;
                return 8;
            case SINT32:
                int intValue = ((Integer) obj).intValue();
                return zzhvt.zzA((intValue >> 31) ^ (intValue + intValue));
            case SINT64:
                long longValue = ((Long) obj).longValue();
                return zzhvt.zzB((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzA + zzc;
    }

    public static int zzj(zzhwc zzhwcVar, Object obj) {
        zzhzp zzb = zzhwcVar.zzb();
        int zza = zzhwcVar.zza();
        if (!zzhwcVar.zzd()) {
            return zzh(zzb, zza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzhwcVar.zze()) {
            int i2 = 0;
            while (i < size) {
                i2 += zzh(zzb, zza, list.get(i));
                i++;
            }
            return i2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzi(zzb, list.get(i));
            i++;
        }
        return zzhvt.zzA(zza << 3) + i3 + zzhvt.zzA(i3);
    }

    private static boolean zzk(Map.Entry entry) {
        zzhwc zzhwcVar = (zzhwc) entry.getKey();
        if (zzhwcVar.zzc() != zzhzq.MESSAGE) {
            return true;
        }
        if (!zzhwcVar.zzd()) {
            return zzl(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!zzl(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzl(Object obj) {
        if (obj instanceof zzhya) {
            return ((zzhya) obj).zzbi();
        }
        if (obj instanceof zzhxi) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzm(Map.Entry entry) {
        int i;
        int zzA;
        int zzA2;
        zzhwc zzhwcVar = (zzhwc) entry.getKey();
        Object value = entry.getValue();
        if (zzhwcVar.zzc() != zzhzq.MESSAGE || zzhwcVar.zzd() || zzhwcVar.zze()) {
            return zzj(zzhwcVar, value);
        }
        if (value instanceof zzhxi) {
            int zza = ((zzhwc) entry.getKey()).zza();
            int zzA3 = zzhvt.zzA(8);
            i = zzA3 + zzA3;
            zzA = zzhvt.zzA(16) + zzhvt.zzA(zza);
            int zzA4 = zzhvt.zzA(24);
            int zzb = ((zzhxi) value).zzb();
            zzA2 = zzA4 + zzhvt.zzA(zzb) + zzb;
        } else {
            int zza2 = ((zzhwc) entry.getKey()).zza();
            int zzA5 = zzhvt.zzA(8);
            i = zzA5 + zzA5;
            zzA = zzhvt.zzA(16) + zzhvt.zzA(zza2);
            zzA2 = zzhvt.zzA(24) + zzhvt.zzD((zzhxz) value);
        }
        return i + zzA + zzA2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzn(com.google.android.gms.internal.ads.zzhwc r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.ads.zzhzp r0 = r2.zzb()
            byte[] r1 = com.google.android.gms.internal.ads.zzhxb.zzb
            r3.getClass()
            com.google.android.gms.internal.ads.zzhzp r1 = com.google.android.gms.internal.ads.zzhzp.DOUBLE
            com.google.android.gms.internal.ads.zzhzq r1 = com.google.android.gms.internal.ads.zzhzq.INT
            com.google.android.gms.internal.ads.zzhzq r0 = r0.zza()
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
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzhxz
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzhxi
            if (r0 == 0) goto L48
            goto L47
        L22:
            boolean r0 = r3 instanceof java.lang.Integer
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzhws
            if (r0 == 0) goto L48
            goto L47
        L2b:
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzhvi
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof byte[]
            if (r0 == 0) goto L48
            goto L47
        L34:
            boolean r0 = r3 instanceof java.lang.String
            goto L45
        L37:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L45
        L3a:
            boolean r0 = r3 instanceof java.lang.Double
            goto L45
        L3d:
            boolean r0 = r3 instanceof java.lang.Float
            goto L45
        L40:
            boolean r0 = r3 instanceof java.lang.Long
            goto L45
        L43:
            boolean r0 = r3 instanceof java.lang.Integer
        L45:
            if (r0 == 0) goto L48
        L47:
            return
        L48:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r2.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.ads.zzhzp r2 = r2.zzb()
            com.google.android.gms.internal.ads.zzhzq r2 = r2.zza()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r1, r2, r3}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhwd.zzn(com.google.android.gms.internal.ads.zzhwc, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzhwd zzhwdVar = new zzhwd();
        zzhyy zzhyyVar = this.zza;
        int zzc = zzhyyVar.zzc();
        for (int i = 0; i < zzc; i++) {
            Map.Entry zzd2 = zzhyyVar.zzd(i);
            zzhwdVar.zzd((zzhwc) ((zzhyv) zzd2).zza(), zzd2.getValue());
        }
        for (Map.Entry entry : zzhyyVar.zze()) {
            zzhwdVar.zzd((zzhwc) entry.getKey(), entry.getValue());
        }
        zzhwdVar.zzc = this.zzc;
        return zzhwdVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzhwd) {
            return this.zza.equals(((zzhwd) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        zzhyy zzhyyVar = this.zza;
        int zzc = zzhyyVar.zzc();
        for (int i = 0; i < zzc; i++) {
            Object value = zzhyyVar.zzd(i).getValue();
            if (value instanceof zzhwo) {
                ((zzhwo) value).zzbm();
            }
        }
        Iterator it = zzhyyVar.zze().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzhwo) {
                ((zzhwo) value2).zzbm();
            }
        }
        zzhyyVar.zza();
        this.zzb = true;
    }

    public final Iterator zzc() {
        zzhyy zzhyyVar = this.zza;
        return zzhyyVar.isEmpty() ? Collections.emptyIterator() : this.zzc ? new zzhxh(zzhyyVar.entrySet().iterator()) : zzhyyVar.entrySet().iterator();
    }

    public final void zzd(zzhwc zzhwcVar, Object obj) {
        if (!zzhwcVar.zzd()) {
            zzn(zzhwcVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                zzn(zzhwcVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzhxi) {
            this.zzc = true;
        }
        this.zza.put(zzhwcVar, obj);
    }

    public final boolean zze() {
        zzhyy zzhyyVar = this.zza;
        int zzc = zzhyyVar.zzc();
        for (int i = 0; i < zzc; i++) {
            if (!zzk(zzhyyVar.zzd(i))) {
                return false;
            }
        }
        Iterator it = zzhyyVar.zze().iterator();
        while (it.hasNext()) {
            if (!zzk((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int zzg() {
        zzhyy zzhyyVar = this.zza;
        int zzc = zzhyyVar.zzc();
        int i = 0;
        for (int i2 = 0; i2 < zzc; i2++) {
            i += zzm(zzhyyVar.zzd(i2));
        }
        Iterator it = zzhyyVar.zze().iterator();
        while (it.hasNext()) {
            i += zzm((Map.Entry) it.next());
        }
        return i;
    }

    private zzhwd(boolean z) {
        zzb();
        zzb();
    }
}
