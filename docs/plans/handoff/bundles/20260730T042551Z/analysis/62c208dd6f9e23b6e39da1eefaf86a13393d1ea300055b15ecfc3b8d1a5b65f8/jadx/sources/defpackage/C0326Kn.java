package defpackage;

import android.database.DataSetObserver;
import com.heinrichreimersoftware.materialintro.view.InkPageIndicator;

/* renamed from: Kn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0326Kn extends DataSetObserver {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InkPageIndicator f1880do;

    public C0326Kn(InkPageIndicator inkPageIndicator) {
        this.f1880do = inkPageIndicator;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        InkPageIndicator inkPageIndicator = this.f1880do;
        inkPageIndicator.f12206try = inkPageIndicator.f12181do.mo4678catch().mo171try();
        inkPageIndicator.m6376if(inkPageIndicator.getWidth(), inkPageIndicator.getHeight());
        inkPageIndicator.m6377try();
        inkPageIndicator.requestLayout();
        inkPageIndicator.invalidate();
    }
}
