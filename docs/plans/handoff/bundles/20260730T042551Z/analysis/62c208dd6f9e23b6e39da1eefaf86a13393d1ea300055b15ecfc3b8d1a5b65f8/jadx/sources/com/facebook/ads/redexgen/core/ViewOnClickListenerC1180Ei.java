package com.facebook.ads.redexgen.core;

import android.view.View;
import android.webkit.WebView;

/* renamed from: com.facebook.ads.redexgen.X.Ei, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1180Ei implements View.OnClickListener {
    public final /* synthetic */ C1184Em A00;

    public ViewOnClickListenerC1180Ei(C1184Em c1184Em) {
        this.A00 = c1184Em;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WebView webView;
        WebView webView2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            webView = this.A00.A09;
            if (!webView.canGoBack()) {
                return;
            }
            webView2 = this.A00.A09;
            webView2.goBack();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
