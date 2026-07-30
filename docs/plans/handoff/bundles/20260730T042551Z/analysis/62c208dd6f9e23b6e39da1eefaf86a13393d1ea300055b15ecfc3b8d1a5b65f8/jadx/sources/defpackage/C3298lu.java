package defpackage;

import android.content.Context;
import android.view.View;
import com.joeykrim.rootcheck.R;

/* renamed from: lu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3298lu extends AbstractC2718eu {
    public C3298lu(Context context) {
        super(context);
    }

    @Override // defpackage.AbstractC2718eu
    /* renamed from: new */
    public final int mo810new() {
        return R.dimen.mtrl_navigation_rail_icon_margin;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i2) == 0) {
            setMeasuredDimension(getMeasuredWidthAndState(), Math.max(getMeasuredHeight(), View.MeasureSpec.getSize(i2)));
        }
    }

    @Override // defpackage.AbstractC2718eu
    /* renamed from: try */
    public final int mo811try() {
        return R.layout.mtrl_navigation_rail_item;
    }
}
