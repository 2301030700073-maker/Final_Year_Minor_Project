package com.facebook.ads.redexgen.core;

import android.media.AudioTrack;

/* loaded from: assets/audience_network.dex */
public class SO extends AudioTrack.StreamEventCallback {
    public final /* synthetic */ SP A00;
    public final /* synthetic */ XM A01;

    public SO(SP sp, XM xm) {
        this.A00 = sp;
        this.A01 = xm;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        InterfaceC1515Rv interfaceC1515Rv;
        boolean z;
        InterfaceC1515Rv interfaceC1515Rv2;
        audioTrack2 = this.A00.A02.A0D;
        if (!audioTrack.equals(audioTrack2)) {
            return;
        }
        interfaceC1515Rv = this.A00.A02.A0I;
        if (interfaceC1515Rv == null) {
            return;
        }
        z = this.A00.A02.A0X;
        if (!z) {
            return;
        }
        interfaceC1515Rv2 = this.A00.A02.A0I;
        interfaceC1515Rv2.AEH();
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        InterfaceC1515Rv interfaceC1515Rv;
        boolean z;
        InterfaceC1515Rv interfaceC1515Rv2;
        audioTrack2 = this.A00.A02.A0D;
        if (!audioTrack.equals(audioTrack2)) {
            return;
        }
        interfaceC1515Rv = this.A00.A02.A0I;
        if (interfaceC1515Rv == null) {
            return;
        }
        z = this.A00.A02.A0X;
        if (!z) {
            return;
        }
        interfaceC1515Rv2 = this.A00.A02.A0I;
        interfaceC1515Rv2.AEH();
    }
}
