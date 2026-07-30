package b.m.b;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.m.b.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0168b0 {
    @Deprecated
    public void getItemOffsets(Rect rect) {
        rect.set(0, 0, 0, 0);
    }

    @Deprecated
    public void onDraw() {
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        onDraw();
    }

    @Deprecated
    public void onDrawOver() {
    }

    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        onDrawOver();
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, t0 t0Var) {
        ((C0178g0) view.getLayoutParams()).a();
        getItemOffsets(rect);
    }
}
