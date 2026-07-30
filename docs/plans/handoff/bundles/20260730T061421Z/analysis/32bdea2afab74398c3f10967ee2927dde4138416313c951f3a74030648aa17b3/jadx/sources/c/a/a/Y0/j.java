package c.a.a.Y0;

import android.graphics.Canvas;
import com.android.launcher3.touch.PagedOrientationHandler;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements PagedOrientationHandler.Float2DAction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ j f1714a = new j();

    @Override // com.android.launcher3.touch.PagedOrientationHandler.Float2DAction
    public final void call(Object obj, float f, float f2) {
        ((Canvas) obj).translate(f, f2);
    }
}
