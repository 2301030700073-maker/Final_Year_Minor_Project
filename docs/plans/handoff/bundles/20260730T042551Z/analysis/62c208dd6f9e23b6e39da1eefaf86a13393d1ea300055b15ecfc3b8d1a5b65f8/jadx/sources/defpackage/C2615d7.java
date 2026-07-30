package defpackage;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* renamed from: d7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2615d7 extends AbstractC2732f7 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CarouselLayoutManager f12429do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2615d7(CarouselLayoutManager carouselLayoutManager) {
        super(1);
        this.f12429do = carouselLayoutManager;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: break, reason: not valid java name */
    public final void mo6410break(View view, int i, int i2) {
        int mo6411case = mo6411case();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        CarouselLayoutManager carouselLayoutManager = this.f12429do;
        carouselLayoutManager.getClass();
        int m4383private = RecyclerView.Cclass.m4383private(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + mo6411case;
        carouselLayoutManager.getClass();
        RecyclerView.Cclass.f(view, mo6411case, i, m4383private, i2);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: case, reason: not valid java name */
    public final int mo6411case() {
        return this.f12429do.m4391interface();
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: catch, reason: not valid java name */
    public final void mo6412catch(RectF rectF, RectF rectF2, RectF rectF3) {
        if (rectF2.bottom <= rectF3.top) {
            float floor = ((float) Math.floor(rectF.bottom)) - 1.0f;
            rectF.bottom = floor;
            rectF.top = Math.min(rectF.top, floor);
        }
        if (rectF2.top >= rectF3.bottom) {
            float ceil = ((float) Math.ceil(rectF.top)) + 1.0f;
            rectF.top = ceil;
            rectF.bottom = Math.max(ceil, rectF.bottom);
        }
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: class, reason: not valid java name */
    public final void mo6413class(float f, float f2, Rect rect, View view) {
        view.offsetTopAndBottom((int) (f2 - (rect.top + f)));
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: do, reason: not valid java name */
    public final void mo6414do(RectF rectF, RectF rectF2, RectF rectF3) {
        float f = rectF2.top;
        float f2 = rectF3.top;
        if (f < f2 && rectF2.bottom > f2) {
            float f3 = f2 - f;
            rectF.top += f3;
            rectF3.top += f3;
        }
        float f4 = rectF2.bottom;
        float f5 = rectF3.bottom;
        if (f4 <= f5 || rectF2.top >= f5) {
            return;
        }
        float f6 = f4 - f5;
        rectF.bottom = Math.max(rectF.bottom - f6, rectF.top);
        rectF2.bottom = Math.max(rectF2.bottom - f6, rectF2.top);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: else, reason: not valid java name */
    public final int mo6415else() {
        CarouselLayoutManager carouselLayoutManager = this.f12429do;
        return ((RecyclerView.Cclass) carouselLayoutManager).f7384new - carouselLayoutManager.m4393protected();
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: for, reason: not valid java name */
    public final RectF mo6416for(float f, float f2, float f3, float f4) {
        return new RectF(0.0f, f3, f2, f - f3);
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: goto, reason: not valid java name */
    public final int mo6417goto() {
        return 0;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: if, reason: not valid java name */
    public final float mo6418if(RecyclerView.LayoutParams layoutParams) {
        return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: new, reason: not valid java name */
    public final int mo6419new() {
        return ((RecyclerView.Cclass) this.f12429do).f7386try;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: this, reason: not valid java name */
    public final int mo6420this() {
        return 0;
    }

    @Override // defpackage.AbstractC2732f7
    /* renamed from: try, reason: not valid java name */
    public final int mo6421try() {
        return ((RecyclerView.Cclass) this.f12429do).f7386try;
    }
}
