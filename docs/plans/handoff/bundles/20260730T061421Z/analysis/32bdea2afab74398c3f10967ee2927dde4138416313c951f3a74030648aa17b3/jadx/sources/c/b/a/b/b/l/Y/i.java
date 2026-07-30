package c.b.a.b.b.l.Y;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;

/* loaded from: classes.dex */
public class i extends BaseDragLayer {

    /* renamed from: a, reason: collision with root package name */
    public final h f2663a;

    public i(h hVar, Context context) {
        super(context, null, 1);
        recreateControllers();
        this.f2663a = hVar;
        setFitsSystemWindows(true);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        setInsets(rect);
        return true;
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (getChildCount() == 0) {
            this.f2663a.a();
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = new TouchController[0];
    }
}
