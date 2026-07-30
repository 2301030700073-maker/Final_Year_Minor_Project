package com.facebook.ads.redexgen.core;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.1h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C08641h extends MG {
    public static String[] A00 = {"4mrgyhu5NuMSfoRJ7wvth", "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP", "Meba3O6SWeMBrZzPyfP10SBJe7jX", "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4", "YOQh7xYBrfW2123ECT3lDkRgUFpenV07", "JuO7BKBrPjkMVs4", "5m", "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"};

    public C08641h(C2322k1 c2322k1) {
        super(c2322k1);
        setCarouselLayoutManager(c2322k1);
    }

    public AbstractC1910dE getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 != 0) {
            getAdapter();
            return null;
        }
        if (A00[6].length() != 2) {
            throw new RuntimeException();
        }
        A00[2] = "XAsjP5XwQSgGjSaOGRXjEIyXW47w";
        return null;
    }

    @Override // com.facebook.ads.redexgen.core.MG
    public C2394lC getLayoutManager() {
        return (C2394lC) super.getLayoutManager();
    }

    public AnonymousClass67 getOnScrollListener() {
        return new C2194ht(this);
    }

    private void setCarouselLayoutManager(C2322k1 c2322k1) {
        C2394lC c2394lC = new C2394lC(c2322k1, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c2394lC.A1R(true);
        }
        super.setLayoutManager(c2394lC);
    }

    @Override // com.facebook.ads.redexgen.core.MG
    public void setLayoutManager(AnonymousClass62 anonymousClass62) {
    }
}
