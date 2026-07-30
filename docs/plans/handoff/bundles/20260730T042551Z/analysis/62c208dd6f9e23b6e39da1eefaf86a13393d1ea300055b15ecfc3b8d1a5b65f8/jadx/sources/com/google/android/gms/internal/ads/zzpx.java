package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* loaded from: classes.dex */
final class zzpx {
    public static void zza(AudioTrack audioTrack, zzoo zzooVar) {
        audioTrack.setPreferredDevice(zzooVar == null ? null : zzooVar.zza);
    }
}
