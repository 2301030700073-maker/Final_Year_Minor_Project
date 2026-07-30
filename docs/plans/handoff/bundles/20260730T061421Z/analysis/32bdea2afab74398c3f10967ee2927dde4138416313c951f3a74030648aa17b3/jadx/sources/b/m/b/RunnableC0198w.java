package b.m.b;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: b.m.b.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0198w implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();
    public static Comparator f = new C0195t();

    /* renamed from: b, reason: collision with root package name */
    public long f1222b;

    /* renamed from: c, reason: collision with root package name */
    public long f1223c;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1221a = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f1224d = new ArrayList();

    public void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f1222b == 0) {
            this.f1222b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        C0196u c0196u = recyclerView.mPrefetchRegistry;
        c0196u.f1209a = i;
        c0196u.f1210b = i2;
    }

    public void b(long j) {
        RecyclerView recyclerView;
        C0197v c0197v;
        int size = this.f1221a.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView2 = (RecyclerView) this.f1221a.get(i2);
            if (recyclerView2.getWindowVisibility() == 0) {
                recyclerView2.mPrefetchRegistry.b(recyclerView2, false);
                i += recyclerView2.mPrefetchRegistry.f1212d;
            }
        }
        this.f1224d.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView3 = (RecyclerView) this.f1221a.get(i4);
            if (recyclerView3.getWindowVisibility() == 0) {
                C0196u c0196u = recyclerView3.mPrefetchRegistry;
                int abs = Math.abs(c0196u.f1210b) + Math.abs(c0196u.f1209a);
                for (int i5 = 0; i5 < c0196u.f1212d * 2; i5 += 2) {
                    if (i3 >= this.f1224d.size()) {
                        c0197v = new C0197v();
                        this.f1224d.add(c0197v);
                    } else {
                        c0197v = (C0197v) this.f1224d.get(i3);
                    }
                    int i6 = c0196u.f1211c[i5 + 1];
                    c0197v.f1213a = i6 <= abs;
                    c0197v.f1214b = abs;
                    c0197v.f1215c = i6;
                    c0197v.f1216d = recyclerView3;
                    c0197v.e = c0196u.f1211c[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f1224d, f);
        for (int i7 = 0; i7 < this.f1224d.size(); i7++) {
            C0197v c0197v2 = (C0197v) this.f1224d.get(i7);
            if (c0197v2.f1216d == null) {
                return;
            }
            w0 c2 = c(c0197v2.f1216d, c0197v2.e, c0197v2.f1213a ? RecyclerView.FOREVER_NS : j);
            if (c2 != null && c2.mNestedRecyclerView != null && c2.isBound() && !c2.isInvalid() && (recyclerView = (RecyclerView) c2.mNestedRecyclerView.get()) != null) {
                if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.h() != 0) {
                    recyclerView.removeAndRecycleViews();
                }
                C0196u c0196u2 = recyclerView.mPrefetchRegistry;
                c0196u2.b(recyclerView, true);
                if (c0196u2.f1212d != 0) {
                    try {
                        Trace.beginSection(RecyclerView.TRACE_NESTED_PREFETCH_TAG);
                        t0 t0Var = recyclerView.mState;
                        Q q = recyclerView.mAdapter;
                        t0Var.f1208d = 1;
                        t0Var.e = q.getItemCount();
                        t0Var.g = false;
                        t0Var.h = false;
                        t0Var.i = false;
                        for (int i8 = 0; i8 < c0196u2.f1212d * 2; i8 += 2) {
                            c(recyclerView, c0196u2.f1211c[i8], j);
                        }
                    } finally {
                        Trace.endSection();
                    }
                } else {
                    continue;
                }
            }
            c0197v2.f1213a = false;
            c0197v2.f1214b = 0;
            c0197v2.f1215c = 0;
            c0197v2.f1216d = null;
            c0197v2.e = 0;
        }
    }

    public final w0 c(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int h = recyclerView.mChildHelper.h();
        int i2 = 0;
        while (true) {
            if (i2 >= h) {
                z = false;
                break;
            }
            w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.g(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        n0 n0Var = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            w0 k = n0Var.k(i, false, j);
            if (k != null) {
                if (!k.isBound() || k.isInvalid()) {
                    n0Var.a(k, false);
                } else {
                    n0Var.h(k.itemView);
                }
            }
            return k;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Trace.beginSection(RecyclerView.TRACE_PREFETCH_TAG);
            if (this.f1221a.isEmpty()) {
                return;
            }
            int size = this.f1221a.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                RecyclerView recyclerView = (RecyclerView) this.f1221a.get(i);
                if (recyclerView.getWindowVisibility() == 0) {
                    j = Math.max(recyclerView.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                return;
            }
            b(TimeUnit.MILLISECONDS.toNanos(j) + this.f1223c);
        } finally {
            this.f1222b = 0L;
            Trace.endSection();
        }
    }
}
