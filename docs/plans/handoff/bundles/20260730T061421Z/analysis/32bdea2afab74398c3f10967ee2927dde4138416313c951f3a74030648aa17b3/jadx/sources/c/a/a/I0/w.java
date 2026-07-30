package c.a.a.I0;

import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.PreviewBackground;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreviewBackground f1383a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CellLayout f1384b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1385c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1386d;

    public /* synthetic */ w(PreviewBackground previewBackground, CellLayout cellLayout, int i, int i2) {
        this.f1383a = previewBackground;
        this.f1384b = cellLayout;
        this.f1385c = i;
        this.f1386d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PreviewBackground previewBackground = this.f1383a;
        CellLayout cellLayout = this.f1384b;
        int i = this.f1385c;
        int i2 = this.f1386d;
        if (previewBackground.mDrawingDelegate != cellLayout) {
            cellLayout.mDelegatedCellDrawings.add(previewBackground);
        }
        previewBackground.mDrawingDelegate = cellLayout;
        previewBackground.mDelegateCellX = i;
        previewBackground.mDelegateCellY = i2;
        previewBackground.invalidate();
    }
}
