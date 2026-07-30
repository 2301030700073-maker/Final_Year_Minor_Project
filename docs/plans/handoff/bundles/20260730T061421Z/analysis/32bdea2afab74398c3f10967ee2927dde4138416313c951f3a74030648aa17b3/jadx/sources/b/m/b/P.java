package b.m.b;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class P {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1120a;

    public P(RecyclerView recyclerView) {
        this.f1120a = recyclerView;
    }

    public void a(C0165a c0165a) {
        int i = c0165a.f1127a;
        if (i == 1) {
            RecyclerView recyclerView = this.f1120a;
            recyclerView.mLayout.onItemsAdded(recyclerView, c0165a.f1128b, c0165a.f1130d);
            return;
        }
        if (i == 2) {
            RecyclerView recyclerView2 = this.f1120a;
            recyclerView2.mLayout.onItemsRemoved(recyclerView2, c0165a.f1128b, c0165a.f1130d);
        } else if (i == 4) {
            RecyclerView recyclerView3 = this.f1120a;
            recyclerView3.mLayout.onItemsUpdated(recyclerView3, c0165a.f1128b, c0165a.f1130d, c0165a.f1129c);
        } else {
            if (i != 8) {
                return;
            }
            RecyclerView recyclerView4 = this.f1120a;
            recyclerView4.mLayout.onItemsMoved(recyclerView4, c0165a.f1128b, c0165a.f1130d, 1);
        }
    }

    public w0 b(int i) {
        w0 findViewHolderForPosition = this.f1120a.findViewHolderForPosition(i, true);
        if (findViewHolderForPosition == null) {
            return null;
        }
        C0171d c0171d = this.f1120a.mChildHelper;
        if (c0171d.f1141c.contains(findViewHolderForPosition.itemView)) {
            return null;
        }
        return findViewHolderForPosition;
    }

    public void c(int i, int i2, Object obj) {
        this.f1120a.viewRangeUpdate(i, i2, obj);
        this.f1120a.mItemsChanged = true;
    }
}
