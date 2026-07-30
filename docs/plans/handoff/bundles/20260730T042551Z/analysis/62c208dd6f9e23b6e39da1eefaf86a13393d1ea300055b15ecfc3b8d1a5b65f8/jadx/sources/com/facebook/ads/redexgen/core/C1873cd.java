package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.facebook.ads.redexgen.core.C1873cd;
import com.facebook.ads.redexgen.core.C2322k1;
import java.util.List;
import java.util.Objects;

/* renamed from: com.facebook.ads.redexgen.X.cd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1873cd extends AbstractC09745q<C1869cZ> {
    public int A01;
    public final int A02;
    public final MG A05;
    public final C2322k1 A06;
    public final ViewOnClickListenerC2111gW A07;
    public final List<String> A09;
    public int A00 = 0;
    public final Application.ActivityLifecycleCallbacks A03 = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.ads.internal.view.rewardedvideo.EndCardV2ScreenshotRecyclerAdapter$1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            C2322k1 c2322k1;
            Handler handler;
            Runnable runnable;
            c2322k1 = C1873cd.this.A06;
            if (activity != c2322k1.A0E()) {
                return;
            }
            handler = C1873cd.this.A04;
            runnable = C1873cd.this.A08;
            handler.removeCallbacks(runnable);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            Handler handler;
            Runnable runnable;
            handler = C1873cd.this.A04;
            runnable = C1873cd.this.A08;
            handler.post(runnable);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    };
    public final Handler A04 = new Handler(Looper.getMainLooper());
    public final Runnable A08 = new I4(this);

    public C1873cd(C2322k1 c2322k1, List<String> screenshotUrls, int i, MG mg, ViewOnClickListenerC2111gW viewOnClickListenerC2111gW, int i2) {
        this.A09 = screenshotUrls;
        this.A02 = i;
        this.A06 = c2322k1;
        this.A05 = mg;
        this.A07 = viewOnClickListenerC2111gW;
        this.A01 = i2;
        this.A04.post(this.A08);
        if (Build.VERSION.SDK_INT >= 29) {
            ((Activity) Objects.requireNonNull(this.A06.A0E())).registerActivityLifecycleCallbacks(this.A03);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A06, reason: merged with bridge method [inline-methods] */
    public final C1869cZ A0D(ViewGroup viewGroup, int i) {
        C1865cV c1865cV = new C1865cV(this.A06);
        if (C10729m.A1B(this.A06)) {
            c1865cV.setOnClickListener(new I5(this));
        }
        return new C1869cZ(c1865cV);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A08, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1869cZ c1869cZ, int i) {
        String str = this.A09.get(i % this.A09.size());
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(400, -1);
        int i2 = this.A02;
        int actualPosition = this.A02;
        marginLayoutParams.setMargins(i2, 0, actualPosition, 0);
        c1869cZ.A0j().setLayoutParams(marginLayoutParams);
        c1869cZ.A0j().setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final int A0C() {
        return this.A09.size() * 1000;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final void A0F(MG mg) {
        super.A0F(mg);
        this.A04.removeCallbacks(this.A08);
        if (Build.VERSION.SDK_INT >= 29) {
            ((Activity) Objects.requireNonNull(this.A06.A0E())).unregisterActivityLifecycleCallbacks(this.A03);
        }
    }

    public final void A0G(int i) {
        this.A01 = i;
    }
}
