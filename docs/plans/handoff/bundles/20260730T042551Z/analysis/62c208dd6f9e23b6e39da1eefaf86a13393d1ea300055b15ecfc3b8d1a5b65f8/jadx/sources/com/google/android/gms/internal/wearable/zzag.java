package com.google.android.gms.internal.wearable;

import com.google.android.gms.internal.wearable.zzaf;
import com.google.android.gms.internal.wearable.zzag;
import defpackage.Cif;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class zzag<MessageType extends zzag<MessageType, BuilderType>, BuilderType extends zzaf<MessageType, BuilderType>> implements zzdc {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzJ(Iterable iterable, List list) {
        zzcd.zze(iterable);
        if (iterable instanceof zzck) {
            List zzh = ((zzck) iterable).zzh();
            zzck zzckVar = (zzck) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    String str = "Element at index " + (zzckVar.size() - size) + " is null.";
                    int size2 = zzckVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(str);
                        }
                        zzckVar.remove(size2);
                    }
                } else if (obj instanceof zzaw) {
                    zzckVar.zzi((zzaw) obj);
                } else {
                    zzckVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzdj) {
            list.addAll(iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(str2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    public int zzH() {
        throw null;
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final zzaw zzI() {
        try {
            int zzM = zzM();
            zzaw zzawVar = zzaw.zzb;
            byte[] bArr = new byte[zzM];
            zzbe zzC = zzbe.zzC(bArr);
            zzaa(zzC);
            zzC.zzD();
            return new zzat(bArr);
        } catch (IOException e) {
            throw new RuntimeException(Cif.m6908case("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    void zzK(int i) {
        throw null;
    }

    public final byte[] zzL() {
        try {
            byte[] bArr = new byte[zzM()];
            zzbe zzC = zzbe.zzC(bArr);
            zzaa(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(Cif.m6908case("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
        }
    }
}
