package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;

/* loaded from: classes.dex */
public final class zzab {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9748do = false;

    /* renamed from: do, reason: not valid java name */
    public float f9747do = 1.0f;

    public static float zzb(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume != 0) {
            return streamVolume / streamMaxVolume;
        }
        return 0.0f;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized boolean m5561do() {
        return this.f9747do >= 0.0f;
    }

    public final synchronized float zza() {
        if (!m5561do()) {
            return 1.0f;
        }
        return this.f9747do;
    }

    public final synchronized void zzc(boolean z) {
        this.f9748do = z;
    }

    public final synchronized void zzd(float f) {
        this.f9747do = f;
    }

    public final synchronized boolean zze() {
        return this.f9748do;
    }
}
