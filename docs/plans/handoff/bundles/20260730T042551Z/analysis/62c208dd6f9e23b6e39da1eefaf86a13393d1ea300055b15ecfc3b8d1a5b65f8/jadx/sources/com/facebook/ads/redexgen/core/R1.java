package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* loaded from: assets/audience_network.dex */
public final class R1 implements InterfaceC1803bV, InterfaceC1804bW {
    public final int A00;
    public final /* synthetic */ C10177h A01;

    public R1(C10177h c10177h, int i) {
        this.A01 = c10177h;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1804bW
    @MetaExoPlayerCustomization("Added in D21840558 for FBVP")
    public final long A7z() {
        C1489Qv[] c1489QvArr;
        c1489QvArr = this.A01.A0L;
        return c1489QvArr[this.A00].A0S();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1803bV
    public final boolean AAT() {
        return this.A01.A0f(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1803bV
    public final void ABm() throws IOException {
        this.A01.A0d(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1803bV
    public final int AGX(P6 p6, C1637Ww c1637Ww, int i) {
        return this.A01.A0Y(this.A00, p6, c1637Ww, i);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1803bV
    public final int AJ8(long j) {
        return this.A01.A0X(this.A00, j);
    }
}
