package c.a.a.Y0;

import android.view.View;
import com.android.launcher3.touch.PagedOrientationHandler;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements PagedOrientationHandler.Int2DAction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ k f1715a = new k();

    @Override // com.android.launcher3.touch.PagedOrientationHandler.Int2DAction
    public final void call(Object obj, int i, int i2) {
        ((View) obj).scrollBy(i, i2);
    }
}
