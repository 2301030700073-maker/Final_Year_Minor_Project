package c.a.a.Y0;

import android.view.View;
import com.android.launcher3.touch.PagedOrientationHandler;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements PagedOrientationHandler.Int2DAction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ c f1703a = new c();

    @Override // com.android.launcher3.touch.PagedOrientationHandler.Int2DAction
    public final void call(Object obj, int i, int i2) {
        ((View) obj).scrollTo(i, i2);
    }
}
