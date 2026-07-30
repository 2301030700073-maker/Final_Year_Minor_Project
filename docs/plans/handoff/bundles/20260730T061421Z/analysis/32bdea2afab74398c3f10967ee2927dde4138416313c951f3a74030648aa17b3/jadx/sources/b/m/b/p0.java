package b.m.b;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

/* loaded from: classes.dex */
public class p0 extends T {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1196a;

    public p0(RecyclerView recyclerView) {
        this.f1196a = recyclerView;
    }

    public void a() {
        if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
            RecyclerView recyclerView = this.f1196a;
            if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                b.e.i.q.z(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                return;
            }
        }
        RecyclerView recyclerView2 = this.f1196a;
        recyclerView2.mAdapterUpdateDuringMeasure = true;
        recyclerView2.requestLayout();
    }

    @Override // b.m.b.T
    public void onChanged() {
        this.f1196a.assertNotInLayoutOrScroll(null);
        RecyclerView recyclerView = this.f1196a;
        recyclerView.mState.f = true;
        recyclerView.processDataSetCompletelyChanged(true);
        if (this.f1196a.mAdapterHelper.g()) {
            return;
        }
        this.f1196a.requestLayout();
    }

    @Override // b.m.b.T
    public void onItemRangeChanged(int i, int i2, Object obj) {
        this.f1196a.assertNotInLayoutOrScroll(null);
        C0167b c0167b = this.f1196a.mAdapterHelper;
        Objects.requireNonNull(c0167b);
        boolean z = false;
        if (i2 >= 1) {
            c0167b.f1133b.add(c0167b.h(4, i, i2, obj));
            c0167b.g |= 4;
            if (c0167b.f1133b.size() == 1) {
                z = true;
            }
        }
        if (z) {
            a();
        }
    }

    @Override // b.m.b.T
    public void onItemRangeInserted(int i, int i2) {
        this.f1196a.assertNotInLayoutOrScroll(null);
        C0167b c0167b = this.f1196a.mAdapterHelper;
        Objects.requireNonNull(c0167b);
        boolean z = false;
        if (i2 >= 1) {
            c0167b.f1133b.add(c0167b.h(1, i, i2, null));
            c0167b.g |= 1;
            if (c0167b.f1133b.size() == 1) {
                z = true;
            }
        }
        if (z) {
            a();
        }
    }

    @Override // b.m.b.T
    public void onItemRangeRemoved(int i, int i2) {
        this.f1196a.assertNotInLayoutOrScroll(null);
        C0167b c0167b = this.f1196a.mAdapterHelper;
        Objects.requireNonNull(c0167b);
        boolean z = false;
        if (i2 >= 1) {
            c0167b.f1133b.add(c0167b.h(2, i, i2, null));
            c0167b.g |= 2;
            if (c0167b.f1133b.size() == 1) {
                z = true;
            }
        }
        if (z) {
            a();
        }
    }
}
