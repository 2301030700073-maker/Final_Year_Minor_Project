package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.Csuper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* renamed from: c7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0791c7 extends Csuper {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CarouselLayoutManager f8488do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0791c7(CarouselLayoutManager carouselLayoutManager, Context context) {
        super(context);
        this.f8488do = carouselLayoutManager;
    }

    @Override // androidx.recyclerview.widget.Csuper
    /* renamed from: case */
    public final int mo4570case(View view, int i) {
        CarouselLayoutManager carouselLayoutManager = this.f8488do;
        if (carouselLayoutManager.f10717do == null || !carouselLayoutManager.i0()) {
            return 0;
        }
        int m4380implements = RecyclerView.Cclass.m4380implements(view);
        return (int) (carouselLayoutManager.f10712case - carouselLayoutManager.f0(m4380implements, carouselLayoutManager.d0(m4380implements)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Creturn
    /* renamed from: do */
    public final PointF mo4443do(int i) {
        return this.f8488do.mo4318do(i);
    }

    @Override // androidx.recyclerview.widget.Csuper
    /* renamed from: else */
    public final int mo4571else(View view, int i) {
        CarouselLayoutManager carouselLayoutManager = this.f8488do;
        if (carouselLayoutManager.f10717do == null || carouselLayoutManager.i0()) {
            return 0;
        }
        int m4380implements = RecyclerView.Cclass.m4380implements(view);
        return (int) (carouselLayoutManager.f10712case - carouselLayoutManager.f0(m4380implements, carouselLayoutManager.d0(m4380implements)));
    }
}
