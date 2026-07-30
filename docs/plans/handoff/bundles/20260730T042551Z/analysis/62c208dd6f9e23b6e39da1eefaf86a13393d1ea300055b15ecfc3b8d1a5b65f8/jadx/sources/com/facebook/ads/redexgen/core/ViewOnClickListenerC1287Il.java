package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Il, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1287Il implements View.OnClickListener {
    public final /* synthetic */ IX A00;

    public ViewOnClickListenerC1287Il(IX ix) {
        this.A00 = ix;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1855cL videoView;
        AF af;
        C2322k1 c2322k1;
        C1855cL videoView2;
        C1855cL videoView3;
        C1855cL videoView4;
        AF af2;
        if (BQ.A02(this)) {
        }
        try {
            videoView = this.A00.getVideoView();
            if (videoView != null) {
                af = this.A00.A02;
                if (af != null) {
                    af2 = this.A00.A02;
                    af2.A04(AE.A0x, null);
                }
                c2322k1 = this.A00.A01;
                c2322k1.A0F().A3W();
                int[] iArr = C1288Im.A00;
                videoView2 = this.A00.getVideoView();
                switch (iArr[videoView2.getState().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        videoView3 = this.A00.getVideoView();
                        videoView3.A0g(IP.A04, 12);
                        break;
                    case 5:
                        videoView4 = this.A00.getVideoView();
                        videoView4.A0k(true, 8);
                        break;
                }
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
