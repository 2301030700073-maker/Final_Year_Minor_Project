package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;
import android.widget.MediaController;

/* loaded from: assets/audience_network.dex */
public class JF implements View.OnTouchListener {
    public static String[] A01 = {"9YpvPFzq4gA4ILum2PFw7tT2EwcxI8wV", "F47KlILUbWaCosO0", "IjRysyutmgGRdQsMt2txP2GECpx3k3Q1", "ciBLF0rumq0WEGUsEh07nHxU", "yDOgyb3x0PSD2bFM5iTRFbbFTymIPux3", "Sxy6px61nfjJHTffPjDZVR3ZYpa4rtVn", "5GXF5D2qooFEcnp1hk94nU2dqySkSdML", "AxzUGf"};
    public final /* synthetic */ TextureViewSurfaceTextureListenerC1761am A00;

    public JF(TextureViewSurfaceTextureListenerC1761am textureViewSurfaceTextureListenerC1761am) {
        this.A00 = textureViewSurfaceTextureListenerC1761am;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        MediaController mediaController;
        MediaController mediaController2;
        MediaController mediaController3;
        MediaController mediaController4;
        z = this.A00.A0G;
        if (z) {
            return true;
        }
        mediaController = this.A00.A0A;
        if (mediaController != null && motionEvent.getAction() == 1) {
            mediaController2 = this.A00.A0A;
            boolean isShowing = mediaController2.isShowing();
            if (A01[4].charAt(17) != 'i') {
                throw new RuntimeException();
            }
            A01[3] = "HYvtDEBsv2VZCb1XBIl4ljHb";
            if (isShowing) {
                mediaController4 = this.A00.A0A;
                mediaController4.hide();
            } else {
                mediaController3 = this.A00.A0A;
                mediaController3.show();
            }
        }
        return true;
    }
}
