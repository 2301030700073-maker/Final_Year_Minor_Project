package com.facebook.ads.redexgen.core;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ly, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1377Ly extends C2393lB {
    public static String[] A01 = {"5vbH5h", "J", "C4GDfN5QjjsYSTm6MxZFmUsCMcA9wBBJ", "6VFwzkwOMMM2Di2Z85K5QmwqwgWhrd8W", "uhhUuQP5WsjWPtKrx", "v18Pv4VwePGedZr395LFzqQB6yfdWBSj", "eHjrumjSh1wPfIUStRl2rH8Zl9vSSm7d", "psLA63BrOeuZ89bQmrhMweOfIVNK7DGd"};
    public final /* synthetic */ C1376Lx A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final int A0O(View view, int i) {
        int i2;
        AnonymousClass62 A08 = A08();
        if (!A08.A20()) {
            return 0;
        }
        AnonymousClass63 anonymousClass63 = (AnonymousClass63) view.getLayoutParams();
        int A0N = A0N(A08.A0k(view) - anonymousClass63.leftMargin, A08.A0n(view) + anonymousClass63.rightMargin, A08.A0e(), A08.A0h() - A08.A0f(), i);
        i2 = this.A00.A02;
        int i3 = A0N + i2;
        if (A01[0].length() != 6) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "LE8phwfR0RxAHMOOl0X9IEx3wOgwcDNd";
        strArr[7] = "Bj9ROfqsKQjGAcpCTsOWpU0U4DTJlpud";
        return i3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1377Ly(C1376Lx c1376Lx, C2322k1 c2322k1) {
        super(c2322k1);
        this.A00 = c1376Lx;
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final float A0J(DisplayMetrics displayMetrics) {
        float f;
        f = this.A00.A00;
        return f / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final int A0K() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final PointF A0P(int i) {
        return this.A00.A4w(i);
    }
}
