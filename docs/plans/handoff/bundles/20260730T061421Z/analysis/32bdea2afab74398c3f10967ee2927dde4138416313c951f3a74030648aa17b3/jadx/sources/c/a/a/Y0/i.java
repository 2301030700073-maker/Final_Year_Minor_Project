package c.a.a.Y0;

import android.graphics.Matrix;
import com.android.launcher3.touch.PagedOrientationHandler;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements PagedOrientationHandler.Float2DAction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ i f1713a = new i();

    @Override // com.android.launcher3.touch.PagedOrientationHandler.Float2DAction
    public final void call(Object obj, float f, float f2) {
        ((Matrix) obj).postTranslate(f, f2);
    }
}
