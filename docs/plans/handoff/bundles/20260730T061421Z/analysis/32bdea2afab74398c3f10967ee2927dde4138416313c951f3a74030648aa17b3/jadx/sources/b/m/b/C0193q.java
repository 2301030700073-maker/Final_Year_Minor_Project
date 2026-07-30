package b.m.b;

import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.m.b.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0193q extends AbstractC0186k0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FastScroller f1197a;

    public C0193q(FastScroller fastScroller) {
        this.f1197a = fastScroller;
    }

    @Override // b.m.b.AbstractC0186k0
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        FastScroller fastScroller = this.f1197a;
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        int computeVerticalScrollRange = fastScroller.m.computeVerticalScrollRange();
        int i3 = fastScroller.l;
        fastScroller.n = computeVerticalScrollRange - i3 > 0 && i3 >= fastScroller.f180a;
        int computeHorizontalScrollRange = fastScroller.m.computeHorizontalScrollRange();
        int i4 = fastScroller.k;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= fastScroller.f180a;
        fastScroller.o = z;
        if (!fastScroller.n && !z) {
            if (fastScroller.p != 0) {
                fastScroller.c(0);
                return;
            }
            return;
        }
        if (fastScroller.n) {
            float f = i3;
            fastScroller.mVerticalThumbCenterY = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
            fastScroller.mVerticalThumbHeight = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (fastScroller.o) {
            float f2 = computeHorizontalScrollOffset;
            float f3 = i4;
            fastScroller.mHorizontalThumbCenterX = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
            fastScroller.mHorizontalThumbWidth = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        int i5 = fastScroller.p;
        if (i5 == 0 || i5 == 1) {
            fastScroller.c(1);
        }
    }
}
