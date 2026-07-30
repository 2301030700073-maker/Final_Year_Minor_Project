package b.m.b;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class K implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1116a;

    public K(RecyclerView recyclerView) {
        this.f1116a = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f1116a;
        if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
            return;
        }
        RecyclerView recyclerView2 = this.f1116a;
        if (!recyclerView2.mIsAttached) {
            recyclerView2.requestLayout();
        } else if (recyclerView2.mLayoutSuppressed) {
            recyclerView2.mLayoutWasDefered = true;
        } else {
            recyclerView2.consumePendingUpdateOperations();
        }
    }
}
