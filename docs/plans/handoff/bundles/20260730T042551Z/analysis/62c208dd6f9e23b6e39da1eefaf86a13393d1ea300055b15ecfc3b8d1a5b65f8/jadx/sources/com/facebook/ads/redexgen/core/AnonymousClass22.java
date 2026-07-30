package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener;
import com.facebook.ads.redexgen.core.AnonymousClass22;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.22, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass22 {
    public static byte[] A09;
    public static String[] A0A = {"jjDsG8QlYrxY", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TMhFK0S9G1", "6qW7u5SP6R0wlmhQUiBuXDFp8yf", "n7Dasyj9dq5sG0xOL43e0c5rVQV9l70l", "dOqhBdKnx9bW", "a7CXWDqETze4gqUmjqRBhcRjVGu0d2y8", "nE3PHSl6bqsIePbBJ"};
    public Application A03;
    public UserReturnTracker$UserReturnListener A05;
    public final A7 A08;
    public long A01 = 0;
    public long A00 = 0;
    public long A02 = 0;
    public String A06 = null;
    public EnumC08771u A04 = null;
    public boolean A07 = false;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A09 = new byte[]{95, 92, 94, 86, 98, 73, 84, 80, 88, 12, 5, 1, 22, 5, 63, 20, 9, 13, 5, 17, 11, 10, 29, 17, 19, 27};
    }

    static {
        A03();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener] */
    public AnonymousClass22(A7 a7, final Activity activity, int i) {
        this.A08 = a7;
        this.A03 = activity.getApplication();
        this.A05 = new Application.ActivityLifecycleCallbacks(activity, this) { // from class: com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener
            public AnonymousClass22 A00;
            public final WeakReference<Activity> A01;

            {
                this.A01 = new WeakReference<>(activity);
                this.A00 = this;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity2) {
                if (this.A00 == null) {
                    return;
                }
                Activity trackedActivity = this.A01.get();
                if (trackedActivity == null || (trackedActivity != null && activity2.equals(trackedActivity))) {
                    this.A00.A06();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity2) {
            }
        };
    }

    public static AnonymousClass22 A00(A7 a7, Activity activity) {
        return A01(a7, activity, Build.VERSION.SDK_INT);
    }

    public static AnonymousClass22 A01(A7 a7, Activity activity, int i) {
        if (activity != null && i >= 14) {
            return new AnonymousClass22(a7, activity, i);
        }
        return null;
    }

    private void A04(String str, long j, long j2, EnumC08771u enumC08771u) {
        HashMap hashMap = new HashMap();
        hashMap.put(A02(9, 10, 113), Long.toString(j));
        hashMap.put(A02(0, 9, 44), Long.toString(j2));
        if (enumC08771u != null) {
            hashMap.put(A02(19, 7, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), enumC08771u.name());
        }
        this.A08.ABT(str, hashMap);
    }

    public final long A05() {
        return this.A02;
    }

    public final void A06() {
        this.A00 = System.currentTimeMillis();
        this.A02 = this.A00 - this.A01;
        A04(this.A06, this.A01, this.A00, this.A04);
        if (this.A03 != null && this.A05 != null) {
            this.A03.unregisterActivityLifecycleCallbacks(this.A05);
            if (A0A[1].length() != 0) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[5] = "Bj7dFfY1wcZx";
            strArr[0] = "MwUlwbTeTJkw";
            this.A07 = false;
        }
    }

    public final void A07(EnumC08771u enumC08771u) {
        this.A04 = enumC08771u;
    }

    public final void A08(String str) {
        this.A06 = str;
        this.A01 = System.currentTimeMillis();
        if (this.A05 == null || this.A03 == null || this.A07) {
            A04(str, -1L, -1L, EnumC08771u.A05);
        } else {
            this.A07 = true;
            this.A03.registerActivityLifecycleCallbacks(this.A05);
        }
    }
}
