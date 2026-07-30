package defpackage;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* renamed from: e7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2673e7 extends AbstractC2732f7 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CarouselLayoutManager f12592do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2673e7(CarouselLayoutManager carouselLayoutManager) {
        super(0);
        this.f12592do = carouselLayoutManager;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: break */
    public final void mo6410break(View view, int i, int i2) {
        int mo6420this = mo6420this();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        CarouselLayoutManager carouselLayoutManager = this.f12592do;
        carouselLayoutManager.getClass();
        int m4382package = RecyclerView.Cclass.m4382package(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + mo6420this;
        carouselLayoutManager.getClass();
        RecyclerView.Cclass.f(view, i, mo6420this, i2, m4382package);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: case */
    public final int mo6411case() {
        return 0;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: catch */
    public final void mo6412catch(RectF rectF, RectF rectF2, RectF rectF3) {
        if (rectF2.right <= rectF3.left) {
            float floor = ((float) Math.floor(rectF.right)) - 1.0f;
            rectF.right = floor;
            rectF.left = Math.min(rectF.left, floor);
        }
        if (rectF2.left >= rectF3.right) {
            float ceil = ((float) Math.ceil(rectF.left)) + 1.0f;
            rectF.left = ceil;
            rectF.right = Math.max(ceil, rectF.right);
        }
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: class */
    public final void mo6413class(float f, float f2, Rect rect, View view) {
        view.offsetLeftAndRight((int) (f2 - (rect.left + f)));
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: do */
    public final void mo6414do(RectF rectF, RectF rectF2, RectF rectF3) {
        float f = rectF2.left;
        float f2 = rectF3.left;
        if (f < f2 && rectF2.right > f2) {
            float f3 = f2 - f;
            rectF.left += f3;
            rectF2.left += f3;
        }
        float f4 = rectF2.right;
        float f5 = rectF3.right;
        if (f4 <= f5 || rectF2.left >= f5) {
            return;
        }
        float f6 = f4 - f5;
        rectF.right = Math.max(rectF.right - f6, rectF.left);
        rectF2.right = Math.max(rectF2.right - f6, rectF2.left);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: else */
    public final int mo6415else() {
        return ((RecyclerView.Cclass) this.f12592do).f7384new;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: for */
    public final RectF mo6416for(float f, float f2, float f3, float f4) {
        return new RectF(f4, 0.0f, f2 - f4, f);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: goto */
    public final int mo6417goto() {
        CarouselLayoutManager carouselLayoutManager = this.f12592do;
        if (carouselLayoutManager.j0()) {
            return ((RecyclerView.Cclass) carouselLayoutManager).f7384new;
        }
        return 0;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: if */
    public final float mo6418if(RecyclerView.LayoutParams layoutParams) {
        return ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: new */
    public final int mo6419new() {
        CarouselLayoutManager carouselLayoutManager = this.f12592do;
        return ((RecyclerView.Cclass) carouselLayoutManager).f7386try - carouselLayoutManager.m4397volatile();
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: this */
    public final int mo6420this() {
        return this.f12592do.m4396transient();
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: try */
    public final int mo6421try() {
        CarouselLayoutManager carouselLayoutManager = this.f12592do;
        if (carouselLayoutManager.j0()) {
            return 0;
        }
        return ((RecyclerView.Cclass) carouselLayoutManager).f7384new;
    }
}
