package c.a.a.I0;

import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.PreviewBackground;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreviewBackground f1382a;

    public /* synthetic */ v(PreviewBackground previewBackground) {
        this.f1382a = previewBackground;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PreviewBackground previewBackground = this.f1382a;
        CellLayout cellLayout = previewBackground.mDrawingDelegate;
        if (cellLayout != null) {
            cellLayout.mDelegatedCellDrawings.remove(previewBackground);
        }
        previewBackground.mDrawingDelegate = null;
        previewBackground.isClipping = true;
        previewBackground.invalidate();
    }
}
