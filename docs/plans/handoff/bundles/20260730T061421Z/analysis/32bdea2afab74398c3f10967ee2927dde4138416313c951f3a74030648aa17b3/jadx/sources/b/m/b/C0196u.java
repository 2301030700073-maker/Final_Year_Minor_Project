package b.m.b;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

@SuppressLint({"VisibleForTests"})
/* renamed from: b.m.b.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0196u {

    /* renamed from: a, reason: collision with root package name */
    public int f1209a;

    /* renamed from: b, reason: collision with root package name */
    public int f1210b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f1211c;

    /* renamed from: d, reason: collision with root package name */
    public int f1212d;

    public void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i3 = this.f1212d * 2;
        int[] iArr = this.f1211c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f1211c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i3 >= iArr.length) {
            int[] iArr3 = new int[i3 * 2];
            this.f1211c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f1211c;
        iArr4[i3] = i;
        iArr4[i3 + 1] = i2;
        this.f1212d++;
    }

    public void b(RecyclerView recyclerView, boolean z) {
        this.f1212d = 0;
        int[] iArr = this.f1211c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC0176f0 abstractC0176f0 = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || abstractC0176f0 == null || !abstractC0176f0.mItemPrefetchEnabled) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.g()) {
                abstractC0176f0.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            abstractC0176f0.collectAdjacentPrefetchPositions(this.f1209a, this.f1210b, recyclerView.mState, this);
        }
        int i = this.f1212d;
        if (i > abstractC0176f0.mPrefetchMaxCountObserved) {
            abstractC0176f0.mPrefetchMaxCountObserved = i;
            abstractC0176f0.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.m();
        }
    }

    public boolean c(int i) {
        if (this.f1211c != null) {
            int i2 = this.f1212d * 2;
            for (int i3 = 0; i3 < i2; i3 += 2) {
                if (this.f1211c[i3] == i) {
                    return true;
                }
            }
        }
        return false;
    }
}
