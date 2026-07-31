package androidx.viewpager2.widget;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {
    public final LinearLayoutManager mLayoutManager;
    public ViewPager2.PageTransformer mPageTransformer;

    public PageTransformerAdapter(ViewPager2.LinearLayoutManagerImpl linearLayoutManagerImpl) {
        this.mLayoutManager = linearLayoutManagerImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("Expected the page view to be managed by a ViewPager2 instance.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        return;
     */
    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPageScrolled(int r6, float r7, int r8) {
        /*
            r5 = this;
            androidx.viewpager2.widget.ViewPager2$PageTransformer r8 = r5.mPageTransformer
            if (r8 != 0) goto L5
            goto L69
        L5:
            float r7 = -r7
            r8 = 0
        L7:
            androidx.recyclerview.widget.LinearLayoutManager r0 = r5.mLayoutManager
            int r1 = r0.getChildCount()
            if (r8 >= r1) goto L69
            android.view.View r1 = r0.getChildAt(r8)
            if (r1 == 0) goto L56
            int r0 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r1)
            int r0 = r0 - r6
            float r0 = (float) r0
            float r0 = r0 + r7
            androidx.viewpager2.widget.ViewPager2$PageTransformer r2 = r5.mPageTransformer
            net.openid.appauth.internal.Logger r2 = (net.openid.appauth.internal.Logger) r2
            r2.getClass()
            android.view.ViewParent r3 = r1.getParent()
            android.view.ViewParent r4 = r3.getParent()
            boolean r3 = r3 instanceof androidx.recyclerview.widget.RecyclerView
            if (r3 == 0) goto L50
            boolean r3 = r4 instanceof androidx.viewpager2.widget.ViewPager2
            if (r3 == 0) goto L50
            androidx.viewpager2.widget.ViewPager2 r4 = (androidx.viewpager2.widget.ViewPager2) r4
            int r2 = r2.mLogLevel
            float r2 = (float) r2
            float r2 = r2 * r0
            int r0 = r4.getOrientation()
            if (r0 != 0) goto L4a
            boolean r0 = r4.isRtl()
            if (r0 == 0) goto L46
            float r2 = -r2
        L46:
            r1.setTranslationX(r2)
            goto L4d
        L4a:
            r1.setTranslationY(r2)
        L4d:
            int r8 = r8 + 1
            goto L7
        L50:
            java.lang.String r5 = "Expected the page view to be managed by a ViewPager2 instance."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return
        L56:
            java.util.Locale r5 = java.util.Locale.US
            int r5 = r0.getChildCount()
            java.lang.String r6 = "/"
            java.lang.String r7 = " while transforming pages"
            java.lang.String r0 = "LayoutManager returned a null child at pos "
            java.lang.String r5 = androidx.camera.core.impl.Config.CC.m(r0, r8, r6, r5, r7)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.PageTransformerAdapter.onPageScrolled(int, float, int):void");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
    }
}
