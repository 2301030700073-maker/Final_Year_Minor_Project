package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzqh {
    void zzA();

    default void zzB() {
    }

    void zza(zzqe zzqeVar);

    default void zzb(zzpc zzpcVar) {
    }

    default void zzc(zzdc zzdcVar) {
    }

    boolean zzd(zzv zzvVar);

    int zze(zzv zzvVar);

    default zzpl zzf(zzv zzvVar) {
        throw null;
    }

    long zzg(boolean z);

    void zzh(zzv zzvVar, int i, int[] iArr) throws zzqc;

    void zzi();

    void zzj();

    boolean zzk(ByteBuffer byteBuffer, long j, int i) throws zzqd, zzqg;

    void zzl() throws zzqg;

    boolean zzm();

    boolean zzn();

    void zzo(zzav zzavVar);

    zzav zzp();

    void zzq(boolean z);

    void zzr(zzd zzdVar);

    void zzs(int i);

    void zzt(zze zzeVar);

    default void zzu(AudioDeviceInfo audioDeviceInfo) {
    }

    long zzv();

    default void zzw(int i, int i2) {
    }

    void zzx(float f);

    void zzy();

    void zzz();
}
