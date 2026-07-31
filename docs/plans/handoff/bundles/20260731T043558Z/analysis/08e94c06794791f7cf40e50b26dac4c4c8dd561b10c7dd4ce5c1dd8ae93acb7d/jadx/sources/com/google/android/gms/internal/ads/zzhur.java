package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzhuq;
import com.google.android.gms.internal.ads.zzhur;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzhur<MessageType extends zzhur<MessageType, BuilderType>, BuilderType extends zzhuq<MessageType, BuilderType>> implements zzhxz {
    protected int zzq = 0;

    protected static void zzaV(zzhvi zzhviVar) throws IllegalArgumentException {
        if (!zzhviVar.zzm()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    protected static <T> void zzaW(Iterable<T> iterable, List<? super T> list) {
        zzhuq.zzaT(iterable, list);
    }

    private String zzdZ(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 18 + String.valueOf(str).length() + 44);
        sb.append("Serializing ");
        sb.append(name);
        sb.append(" to a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    public zzhvi zzaM() {
        try {
            int zzbr = zzbr();
            zzhvi zzhviVar = zzhvi.zzb;
            byte[] bArr = new byte[zzbr];
            int i = zzhvt.zzf;
            zzhvq zzhvqVar = new zzhvq(bArr, 0, zzbr);
            zzdc(zzhvqVar);
            return zzhve.zza(zzhvqVar, bArr);
        } catch (IOException e) {
            throw new RuntimeException(zzdZ("ByteString"), e);
        }
    }

    public byte[] zzaN() {
        try {
            int zzbr = zzbr();
            byte[] bArr = new byte[zzbr];
            int i = zzhvt.zzf;
            zzhvq zzhvqVar = new zzhvq(bArr, 0, zzbr);
            zzdc(zzhvqVar);
            zzhvqVar.zzE();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(zzdZ("byte array"), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    public void zzaO(OutputStream outputStream) throws IOException {
        zzhvs zzhvsVar = new zzhvs(outputStream, zzhvt.zzz(zzbr()));
        zzdc(zzhvsVar);
        zzhvsVar.zzy();
    }

    public void zzaP(OutputStream outputStream) throws IOException {
        int zzbr = zzbr();
        zzhvs zzhvsVar = new zzhvs(outputStream, zzhvt.zzz(zzhvt.zzA(zzbr) + zzbr));
        zzhvsVar.zzs(zzbr);
        zzdc(zzhvsVar);
        zzhvsVar.zzy();
    }

    int zzaQ() {
        throw new UnsupportedOperationException();
    }

    void zzaR(int i) {
        throw new UnsupportedOperationException();
    }

    public zzhye zzaS() {
        throw new UnsupportedOperationException("mutableCopy() is not implemented.");
    }

    int zzaT(zzhyr zzhyrVar) {
        return zzaQ();
    }

    zzhzb zzaU() {
        return new zzhzb(this);
    }
}
