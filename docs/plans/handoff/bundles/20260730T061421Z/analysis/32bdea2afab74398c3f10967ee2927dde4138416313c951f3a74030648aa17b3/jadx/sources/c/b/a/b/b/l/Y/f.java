package c.b.a.b.b.l.Y;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;

/* loaded from: classes.dex */
public class f extends View.DragShadowBuilder {
    public f(h hVar, View view) {
        super(view);
    }

    @Override // android.view.View.DragShadowBuilder
    public void onDrawShadow(Canvas canvas) {
    }

    @Override // android.view.View.DragShadowBuilder
    public void onProvideShadowMetrics(Point point, Point point2) {
        point.set(10, 10);
        point2.set(5, 5);
    }
}
