package com.facebook.ads.redexgen.core;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.Ic, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1278Ic implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ KP A00;

    public C1278Ic(KP kp) {
        this.A00 = kp;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        new Handler(Looper.getMainLooper()).post(new C1811bd(this, i));
    }
}
