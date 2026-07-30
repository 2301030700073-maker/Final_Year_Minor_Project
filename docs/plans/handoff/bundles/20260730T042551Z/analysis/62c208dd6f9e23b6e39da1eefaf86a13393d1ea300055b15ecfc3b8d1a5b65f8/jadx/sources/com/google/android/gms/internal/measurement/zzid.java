package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzid;
import defpackage.A3;
import defpackage.Creturn;
import defpackage.V1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class zzid<MessageType extends zzib<MessageType, BuilderType>, BuilderType extends zzid<MessageType, BuilderType>> implements zzlb {
    @Override // 
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzb(zziw zziwVar, zzjg zzjgVar);

    public BuilderType zza(byte[] bArr, int i, int i2) {
        try {
            zziw zza = zziw.zza(bArr, 0, i2, false);
            zzb(zza, zzjg.zza);
            zza.zzc(0);
            return this;
        } catch (zzkb e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // 
    /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    public BuilderType zza(byte[] bArr, int i, int i2, zzjg zzjgVar) {
        try {
            zziw zza = zziw.zza(bArr, 0, i2, false);
            zzb(zza, zzjgVar);
            zza.zzc(0);
            return this;
        } catch (zzkb e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zza(byte[] bArr, zzjg zzjgVar) {
        return zza(bArr, 0, bArr.length, zzjgVar);
    }

    private final String zza(String str) {
        return V1.m2499else("Reading ", getClass().getName(), " from a ", str, " threw an IOException (should never happen).");
    }

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzjv.zza(iterable);
        if (iterable instanceof zzkj) {
            List<?> zza = ((zzkj) iterable).zza();
            zzkj zzkjVar = (zzkj) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    String m7981if = Creturn.m7981if("Element at index ", zzkjVar.size() - size, " is null.");
                    int size2 = zzkjVar.size();
                    while (true) {
                        size2--;
                        if (size2 >= size) {
                            zzkjVar.remove(size2);
                        } else {
                            throw new NullPointerException(m7981if);
                        }
                    }
                } else if (obj instanceof zzik) {
                    zzkjVar.zza((zzik) obj);
                } else if (obj instanceof byte[]) {
                    zzkjVar.zza(zzik.zza((byte[]) obj));
                } else {
                    zzkjVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzlo) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size3 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size3);
            }
            if (list instanceof zzlp) {
                ((zzlp) list).zzb(list.size() + size3);
            }
        }
        int size4 = list.size();
        if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
            List list2 = (List) iterable;
            int size5 = list2.size();
            for (int i = 0; i < size5; i++) {
                A3 a3 = (Object) list2.get(i);
                if (a3 == null) {
                    zza(list, size4);
                }
                list.add(a3);
            }
            return;
        }
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                zza(list, size4);
            }
            list.add(obj2);
        }
    }

    private static void zza(List<?> list, int i) {
        String m7981if = Creturn.m7981if("Element at index ", list.size() - i, " is null.");
        int size = list.size();
        while (true) {
            size--;
            if (size >= i) {
                list.remove(size);
            } else {
                throw new NullPointerException(m7981if);
            }
        }
    }
}
