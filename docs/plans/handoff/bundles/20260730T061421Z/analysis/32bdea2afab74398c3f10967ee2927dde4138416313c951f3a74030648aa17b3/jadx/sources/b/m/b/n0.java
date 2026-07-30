package b.m.b;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import b.e.i.C0088b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1191a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1192b = null;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1193c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final List f1194d = Collections.unmodifiableList(this.f1191a);
    public int e = 2;
    public int f = 2;
    public m0 g;
    public final /* synthetic */ RecyclerView h;

    public n0(RecyclerView recyclerView) {
        this.h = recyclerView;
    }

    public void a(w0 w0Var, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(w0Var);
        View view = w0Var.itemView;
        y0 y0Var = this.h.mAccessibilityDelegate;
        if (y0Var != null) {
            C0088b a2 = y0Var.a();
            b.e.i.q.D(view, a2 instanceof x0 ? (C0088b) ((x0) a2).f1226b.remove(view) : null);
        }
        if (z) {
            o0 o0Var = this.h.mRecyclerListener;
            if (o0Var != null) {
                o0Var.a(w0Var);
            }
            Q q = this.h.mAdapter;
            if (q != null) {
                q.onViewRecycled(w0Var);
            }
            RecyclerView recyclerView = this.h;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.g(w0Var);
            }
        }
        w0Var.mBindingAdapter = null;
        w0Var.mOwnerRecyclerView = null;
        d().c(w0Var);
    }

    public void b() {
        this.f1191a.clear();
        f();
    }

    public int c(int i) {
        if (i >= 0 && i < this.h.mState.b()) {
            RecyclerView recyclerView = this.h;
            return !recyclerView.mState.g ? i : recyclerView.mAdapterHelper.f(i, 0);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("invalid position ");
        sb.append(i);
        sb.append(". State item count is ");
        sb.append(this.h.mState.b());
        throw new IndexOutOfBoundsException(c.a.c.a.a.b(this.h, sb));
    }

    public m0 d() {
        if (this.g == null) {
            this.g = new m0();
        }
        return this.g;
    }

    public final void e(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                e((ViewGroup) childAt, true);
            }
        }
        if (z) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public void f() {
        for (int size = this.f1193c.size() - 1; size >= 0; size--) {
            g(size);
        }
        this.f1193c.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            C0196u c0196u = this.h.mPrefetchRegistry;
            int[] iArr = c0196u.f1211c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c0196u.f1212d = 0;
        }
    }

    public void g(int i) {
        a((w0) this.f1193c.get(i), true);
        this.f1193c.remove(i);
    }

    public void h(View view) {
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.h.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.mScrapContainer.l(childViewHolderInt);
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        i(childViewHolderInt);
        if (this.h.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        this.h.mItemAnimator.f(childViewHolderInt);
    }

    public void i(w0 w0Var) {
        boolean z;
        boolean z2;
        if (w0Var.isScrap() || w0Var.itemView.getParent() != null) {
            StringBuilder f = c.a.c.a.a.f("Scrapped or attached views may not be recycled. isScrap:");
            f.append(w0Var.isScrap());
            f.append(" isAttached:");
            f.append(w0Var.itemView.getParent() != null);
            throw new IllegalArgumentException(c.a.c.a.a.b(this.h, f));
        }
        if (w0Var.isTmpDetached()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb.append(w0Var);
            throw new IllegalArgumentException(c.a.c.a.a.b(this.h, sb));
        }
        if (w0Var.shouldIgnore()) {
            throw new IllegalArgumentException(c.a.c.a.a.b(this.h, c.a.c.a.a.f("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        boolean z3 = (w0Var.mFlags & 16) == 0 && b.e.i.q.r(w0Var.itemView);
        Q q = this.h.mAdapter;
        if ((q != null && z3 && q.onFailedToRecycleView(w0Var)) || w0Var.isRecyclable()) {
            if (this.f <= 0 || w0Var.hasAnyOfTheFlags(526)) {
                z = false;
            } else {
                int size = this.f1193c.size();
                if (size >= this.f && size > 0) {
                    g(0);
                    size--;
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !this.h.mPrefetchRegistry.c(w0Var.mPosition)) {
                    do {
                        size--;
                        if (size < 0) {
                            break;
                        }
                    } while (this.h.mPrefetchRegistry.c(((w0) this.f1193c.get(size)).mPosition));
                    size++;
                }
                this.f1193c.add(size, w0Var);
                z = true;
            }
            if (!z) {
                a(w0Var, true);
                r1 = true;
            }
            z2 = r1;
            r1 = z;
        } else {
            z2 = false;
        }
        this.h.mViewInfoStore.g(w0Var);
        if (r1 || z2 || !z3) {
            return;
        }
        w0Var.mBindingAdapter = null;
        w0Var.mOwnerRecyclerView = null;
    }

    public void j(View view) {
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !this.h.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f1192b == null) {
                this.f1192b = new ArrayList();
            }
            childViewHolderInt.mScrapContainer = this;
            childViewHolderInt.mInChangeScrap = true;
            this.f1192b.add(childViewHolderInt);
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.h.mAdapter.mHasStableIds) {
            throw new IllegalArgumentException(c.a.c.a.a.b(this.h, c.a.c.a.a.f("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.mScrapContainer = this;
        childViewHolderInt.mInChangeScrap = false;
        this.f1191a.add(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:168:0x02fb, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0431, code lost:
    
        if (r7.isInvalid() == false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0467, code lost:
    
        if ((r10 == 0 || r10 + r8 < r19) == false) goto L240;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x054e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b.m.b.w0 k(int r17, boolean r18, long r19) {
        /*
            Method dump skipped, instructions count: 1413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.n0.k(int, boolean, long):b.m.b.w0");
    }

    public void l(w0 w0Var) {
        if (w0Var.mInChangeScrap) {
            this.f1192b.remove(w0Var);
        } else {
            this.f1191a.remove(w0Var);
        }
        w0Var.mScrapContainer = null;
        w0Var.mInChangeScrap = false;
        w0Var.clearReturnedFromScrapFlag();
    }

    public void m() {
        AbstractC0176f0 abstractC0176f0 = this.h.mLayout;
        this.f = this.e + (abstractC0176f0 != null ? abstractC0176f0.mPrefetchMaxCountObserved : 0);
        for (int size = this.f1193c.size() - 1; size >= 0 && this.f1193c.size() > this.f; size--) {
            g(size);
        }
    }
}
