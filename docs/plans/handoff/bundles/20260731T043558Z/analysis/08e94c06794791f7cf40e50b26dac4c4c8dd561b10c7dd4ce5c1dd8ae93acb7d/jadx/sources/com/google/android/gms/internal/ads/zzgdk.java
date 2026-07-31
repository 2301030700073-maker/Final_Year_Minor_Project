package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgdk extends zzgdh {
    private final Map zza;
    private final zzgcd zzb;
    private final DisplayMetrics zzc;

    zzgdk(zzauc zzaucVar, zzgcd zzgcdVar, Map map, DisplayMetrics displayMetrics, zzgjd zzgjdVar) {
        super("gbI2a8ruQFsh7iJbKP5csiDrRqRaAG+o51RWglq6SF+q1HNUXOxpmDRR6GgQlE1Z", "C7gHksN/1NwyNvzCHdeBzJsOxB75cHtIeny2v2KpeXA=", zzaucVar, zzgcdVar, zzgjdVar.zza(123));
        this.zzb = zzgcdVar;
        this.zza = map;
        this.zzc = displayMetrics;
    }

    private static long zzb(double d, DisplayMetrics displayMetrics) {
        return Math.round(d / displayMetrics.density);
    }

    private static boolean zzc(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzgdh
    protected final void zza(Method method, zzauc zzaucVar) throws IllegalAccessException, InvocationTargetException {
        Map map = this.zza;
        MotionEvent motionEvent = (MotionEvent) map.get("nv");
        DisplayMetrics displayMetrics = this.zzc;
        Object[] objArr = (Object[]) method.invoke("", motionEvent, displayMetrics);
        objArr.getClass();
        Object[] objArr2 = objArr;
        zzauv zza = zzauw.zza();
        Object obj = objArr2[0];
        if (obj != null && objArr2[1] != null) {
            zza.zza(((Long) obj).longValue());
            zza.zzb(((Long) objArr2[1]).longValue());
        }
        Object obj2 = objArr2[2];
        if (obj2 != null) {
            zza.zzh(((Long) obj2).longValue());
        }
        Object obj3 = objArr2[3];
        if (obj3 != null) {
            zza.zzf(((Long) obj3).longValue());
        }
        Object obj4 = objArr2[4];
        if (obj4 != null) {
            zza.zzc(((Long) obj4).longValue());
        }
        Object obj5 = objArr2[5];
        if (obj5 != null) {
            zza.zzs(((Long) obj5).longValue() != 0 ? 2 : 1);
        }
        Object obj6 = objArr2[6];
        if (obj6 != null) {
            zza.zzj(((Long) obj6).longValue());
        }
        Object obj7 = objArr2[7];
        if (obj7 != null) {
            zza.zzi(((Long) obj7).longValue());
        }
        Object obj8 = objArr2[8];
        if (obj8 != null) {
            zza.zzt(((Long) obj8).longValue() != 0 ? 2 : 1);
        }
        synchronized (zzaucVar) {
            Method zzc = this.zzb.zzc("TJcXhplO1c7oeAIzyyjGCjnhXIAfNaFNWGhya9KHb9++zv8J1h9atpUrZL1Yjg6v", "v7ewhEi0QRfAHjcos6RExS5aIOB6pcbb0aW+P30gIsQ=");
            if (zzc == null) {
                throw null;
            }
            Method method2 = zzc;
            Object[] objArr3 = (Object[]) zzc.invoke("", (MotionEvent) map.get("nv"), displayMetrics);
            if (objArr3 == null) {
                throw null;
            }
            Object[] objArr4 = objArr3;
            Object obj9 = objArr4[0];
            if (obj9 != null) {
                zzaucVar.zzh(((Long) obj9).longValue());
            }
            Object obj10 = objArr4[1];
            if (obj10 != null) {
                zzaucVar.zzi(((Long) obj10).longValue());
            }
            Object obj11 = objArr4[2];
            if (obj11 != null) {
                zzaucVar.zzj(((Long) obj11).longValue());
            }
            Object obj12 = objArr4[3];
            if (obj12 != null) {
                zzaucVar.zzv(((Long) obj12).longValue());
            }
            Object obj13 = objArr4[4];
            if (obj13 != null) {
                zzaucVar.zzw(((Long) obj13).longValue());
            }
            zzgax zzgaxVar = (zzgax) map.get("oe");
            if (zzgaxVar != null) {
                long j = zzgaxVar.zza;
                if (j > 0) {
                    zzaucVar.zzz(j);
                }
                long j2 = zzgaxVar.zzb;
                if (j2 > 0) {
                    zzaucVar.zzy(j2);
                }
                long j3 = zzgaxVar.zzc;
                if (j3 > 0) {
                    zzaucVar.zzx(j3);
                }
                long j4 = zzgaxVar.zzd;
                if (j4 > 0) {
                    zzaucVar.zzA(j4);
                }
            }
            zzgax zzgaxVar2 = (zzgax) map.get("oe");
            if (zzgaxVar2 != null && zzgaxVar2.zza != 0 && zzc(displayMetrics)) {
                double d = zzgaxVar2.zze;
                if (displayMetrics == null) {
                    throw null;
                }
                DisplayMetrics displayMetrics2 = displayMetrics;
                zza.zzl(zzb(d, displayMetrics));
                zza.zzm(zzb(zzgaxVar2.zzh - zzgaxVar2.zzf, displayMetrics));
                zza.zzn(zzb(zzgaxVar2.zzi - zzgaxVar2.zzg, displayMetrics));
                zza.zzq(zzb(zzgaxVar2.zzf, displayMetrics));
                zza.zzr(zzb(zzgaxVar2.zzg, displayMetrics));
                if (((MotionEvent) map.get("nv")) != null) {
                    long zzb = zzb(((zzgaxVar2.zzf - zzgaxVar2.zzh) + r4.getRawX()) - r4.getX(), displayMetrics);
                    if (zzb != 0) {
                        zza.zzo(zzb);
                    }
                    long zzb2 = zzb(((zzgaxVar2.zzg - zzgaxVar2.zzi) + r4.getRawY()) - r4.getY(), displayMetrics);
                    if (zzb2 != 0) {
                        zza.zzp(zzb2);
                    }
                }
            }
            zzaucVar.zzJ(zza);
            zzgay[] zzgayVarArr = (zzgay[]) map.get("ro");
            if (zzgayVarArr != null && zzc(displayMetrics)) {
                for (int i = 0; i <= zzgayVarArr.length - 2; i++) {
                    zzgay zzgayVar = zzgayVarArr[i];
                    zzauv zza2 = zzauw.zza();
                    double d2 = zzgayVar.zza;
                    if (displayMetrics == null) {
                        throw null;
                    }
                    DisplayMetrics displayMetrics3 = displayMetrics;
                    zza2.zza(zzb(d2, displayMetrics));
                    zza2.zzb(zzb(zzgayVar.zzb, displayMetrics));
                    zzaucVar.zzK((zzauw) zza2.zzbu());
                }
            }
        }
    }
}
