package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import b.l.W;
import b.m.b.A;
import b.m.b.A0;
import b.m.b.AbstractC0176f0;
import b.m.b.B0;
import b.m.b.C0174e0;
import b.m.b.C0178g0;
import b.m.b.C0196u;
import b.m.b.D0;
import b.m.b.E0;
import b.m.b.F;
import b.m.b.F0;
import b.m.b.J;
import b.m.b.Q;
import b.m.b.n0;
import b.m.b.s0;
import b.m.b.t0;
import b.m.b.z0;
import com.android.quickstep.fallback.RecentsState;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC0176f0 implements s0 {

    /* renamed from: a, reason: collision with root package name */
    public int f193a;

    /* renamed from: b, reason: collision with root package name */
    public F0[] f194b;

    /* renamed from: c, reason: collision with root package name */
    public J f195c;

    /* renamed from: d, reason: collision with root package name */
    public J f196d;
    public int e;
    public int f;
    public final A g;
    public boolean h;
    public BitSet j;
    public boolean o;
    public boolean p;
    public SavedState q;
    public int r;
    public int[] w;
    public boolean i = false;
    public int k = -1;
    public int l = RecyclerView.UNDEFINED_DURATION;
    public D0 m = new D0();
    public int n = 2;
    public final Rect s = new Rect();
    public final A0 t = new A0(this);
    public boolean u = false;
    public boolean v = true;
    public final Runnable x = new z0(this);

    @SuppressLint({"BanParcelableUsage"})
    public class SavedState implements Parcelable {
        public static final Parcelable.Creator CREATOR = new E0();

        /* renamed from: a, reason: collision with root package name */
        public int f201a;

        /* renamed from: b, reason: collision with root package name */
        public int f202b;

        /* renamed from: c, reason: collision with root package name */
        public int f203c;

        /* renamed from: d, reason: collision with root package name */
        public int[] f204d;
        public int e;
        public int[] f;
        public List g;
        public boolean h;
        public boolean i;
        public boolean j;

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f201a);
            parcel.writeInt(this.f202b);
            parcel.writeInt(this.f203c);
            if (this.f203c > 0) {
                parcel.writeIntArray(this.f204d);
            }
            parcel.writeInt(this.e);
            if (this.e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.g);
        }

        public SavedState(Parcel parcel) {
            this.f201a = parcel.readInt();
            this.f202b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f203c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f204d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.g = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f203c = savedState.f203c;
            this.f201a = savedState.f201a;
            this.f202b = savedState.f202b;
            this.f204d = savedState.f204d;
            this.e = savedState.e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.g = savedState.g;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f193a = -1;
        this.h = false;
        C0174e0 properties = AbstractC0176f0.getProperties(context, attributeSet, i, i2);
        int i3 = properties.f1145a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i3 != this.e) {
            this.e = i3;
            J j = this.f195c;
            this.f195c = this.f196d;
            this.f196d = j;
            requestLayout();
        }
        int i4 = properties.f1146b;
        assertNotInLayoutOrScroll(null);
        if (i4 != this.f193a) {
            this.m.a();
            requestLayout();
            this.f193a = i4;
            this.j = new BitSet(this.f193a);
            this.f194b = new F0[this.f193a];
            for (int i5 = 0; i5 < this.f193a; i5++) {
                this.f194b[i5] = new F0(this, i5);
            }
            requestLayout();
        }
        boolean z = properties.f1147c;
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.q;
        if (savedState != null && savedState.h != z) {
            savedState.h = z;
        }
        this.h = z;
        requestLayout();
        this.g = new A();
        this.f195c = J.a(this, this.e);
        this.f196d = J.a(this, 1 - this.e);
    }

    public final int a(int i) {
        if (getChildCount() == 0) {
            return this.i ? 1 : -1;
        }
        return (i < h()) != this.i ? -1 : 1;
    }

    @Override // b.m.b.AbstractC0176f0
    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView;
        if (this.q != null || (recyclerView = this.mRecyclerView) == null) {
            return;
        }
        recyclerView.assertNotInLayoutOrScroll(str);
    }

    public boolean b() {
        int h;
        if (getChildCount() != 0 && this.n != 0 && this.mIsAttachedToWindow) {
            if (this.i) {
                h = i();
                h();
            } else {
                h = h();
                i();
            }
            if (h == 0 && m() != null) {
                this.m.a();
                this.mRequestedSimpleAnimations = true;
                requestLayout();
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager, b.m.b.f0] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v20, types: [int] */
    /* JADX WARN: Type inference failed for: r3v24, types: [int] */
    /* JADX WARN: Type inference failed for: r3v27, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    public final int c(n0 n0Var, A a2, t0 t0Var) {
        F0 f0;
        ?? r2;
        int i;
        int c2;
        int k;
        int c3;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3 = false;
        this.j.set(0, this.f193a, true);
        int i4 = this.g.i ? a2.e == 1 ? Integer.MAX_VALUE : RecyclerView.UNDEFINED_DURATION : a2.e == 1 ? a2.g + a2.f1077b : a2.f - a2.f1077b;
        u(a2.e, i4);
        int g = this.i ? this.f195c.g() : this.f195c.k();
        boolean z4 = false;
        while (true) {
            int i5 = a2.f1078c;
            if (!((i5 < 0 || i5 >= t0Var.b()) ? z3 : true) || (!this.g.i && this.j.isEmpty())) {
                break;
            }
            View view = n0Var.k(a2.f1078c, z3, RecyclerView.FOREVER_NS).itemView;
            a2.f1078c += a2.f1079d;
            B0 b0 = (B0) view.getLayoutParams();
            int a3 = b0.a();
            int[] iArr = this.m.f1096a;
            int i6 = (iArr == null || a3 >= iArr.length) ? -1 : iArr[a3];
            if (i6 == -1 ? true : z3) {
                if (o(a2.e)) {
                    i2 = -1;
                    i3 = -1;
                    z2 = this.f193a - 1;
                } else {
                    i2 = this.f193a;
                    z2 = z3;
                    i3 = 1;
                }
                F0 f02 = null;
                if (a2.e == 1) {
                    int k2 = this.f195c.k();
                    int i7 = Integer.MAX_VALUE;
                    for (?? r3 = z2; r3 != i2; r3 += i3) {
                        F0 f03 = this.f194b[r3];
                        int h = f03.h(k2);
                        if (h < i7) {
                            f02 = f03;
                            i7 = h;
                        }
                    }
                } else {
                    int g2 = this.f195c.g();
                    int i8 = RecyclerView.UNDEFINED_DURATION;
                    for (?? r32 = z2; r32 != i2; r32 += i3) {
                        F0 f04 = this.f194b[r32];
                        int k3 = f04.k(g2);
                        if (k3 > i8) {
                            f02 = f04;
                            i8 = k3;
                        }
                    }
                }
                f0 = f02;
                D0 d0 = this.m;
                d0.b(a3);
                d0.f1096a[a3] = f0.e;
            } else {
                f0 = this.f194b[i6];
            }
            F0 f05 = f0;
            b0.e = f05;
            if (a2.e == 1) {
                r2 = 0;
                addViewInt(view, -1, false);
            } else {
                r2 = 0;
                addViewInt(view, 0, false);
            }
            if (this.e == 1) {
                measureChildWithDecorationsAndMargin(view, AbstractC0176f0.getChildMeasureSpec(this.f, this.mWidthMode, r2, ((ViewGroup.MarginLayoutParams) b0).width, r2), AbstractC0176f0.getChildMeasureSpec(this.mHeight, this.mHeightMode, getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) b0).height, true), r2);
            } else {
                measureChildWithDecorationsAndMargin(view, AbstractC0176f0.getChildMeasureSpec(this.mWidth, this.mWidthMode, getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) b0).width, true), AbstractC0176f0.getChildMeasureSpec(this.f, this.mHeightMode, 0, ((ViewGroup.MarginLayoutParams) b0).height, false), false);
            }
            if (a2.e == 1) {
                int h2 = f05.h(g);
                c2 = h2;
                i = this.f195c.c(view) + h2;
            } else {
                int k4 = f05.k(g);
                i = k4;
                c2 = k4 - this.f195c.c(view);
            }
            if (a2.e == 1) {
                b0.e.a(view);
            } else {
                b0.e.n(view);
            }
            if (isLayoutRTL() && this.e == 1) {
                c3 = this.f196d.g() - (((this.f193a - 1) - f05.e) * this.f);
                k = c3 - this.f196d.c(view);
            } else {
                k = this.f196d.k() + (f05.e * this.f);
                c3 = this.f196d.c(view) + k;
            }
            int i9 = c3;
            int i10 = k;
            if (this.e == 1) {
                layoutDecoratedWithMargins(view, i10, c2, i9, i);
            } else {
                layoutDecoratedWithMargins(view, c2, i10, i, i9);
            }
            w(f05, this.g.e, i4);
            q(n0Var, this.g);
            if (this.g.h && view.hasFocusable()) {
                z = false;
                this.j.set(f05.e, false);
            } else {
                z = false;
            }
            z3 = z;
            z4 = true;
        }
        boolean z5 = z3;
        if (!z4) {
            q(n0Var, this.g);
        }
        int k5 = this.g.e == -1 ? this.f195c.k() - k(this.f195c.k()) : j(this.f195c.g()) - this.f195c.g();
        return k5 > 0 ? Math.min(a2.f1077b, k5) : z5 ? 1 : 0;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean canScrollHorizontally() {
        return this.e == 0;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean canScrollVertically() {
        return this.e == 1;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean checkLayoutParams(C0178g0 c0178g0) {
        return c0178g0 instanceof B0;
    }

    @Override // b.m.b.AbstractC0176f0
    public void collectAdjacentPrefetchPositions(int i, int i2, t0 t0Var, C0196u c0196u) {
        int h;
        int i3;
        if (this.e != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        p(i, t0Var);
        int[] iArr = this.w;
        if (iArr == null || iArr.length < this.f193a) {
            this.w = new int[this.f193a];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f193a; i5++) {
            A a2 = this.g;
            if (a2.f1079d == -1) {
                h = a2.f;
                i3 = this.f194b[i5].k(h);
            } else {
                h = this.f194b[i5].h(a2.g);
                i3 = this.g.g;
            }
            int i6 = h - i3;
            if (i6 >= 0) {
                this.w[i4] = i6;
                i4++;
            }
        }
        Arrays.sort(this.w, 0, i4);
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = this.g.f1078c;
            if (!(i8 >= 0 && i8 < t0Var.b())) {
                return;
            }
            c0196u.a(this.g.f1078c, this.w[i7]);
            A a3 = this.g;
            a3.f1078c += a3.f1079d;
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollExtent(t0 t0Var) {
        return computeScrollExtent(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    public final int computeScrollExtent(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return W.a(t0Var, this.f195c, e(!this.v), d(!this.v), this, this.v);
    }

    public final int computeScrollOffset(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return W.b(t0Var, this.f195c, e(!this.v), d(!this.v), this, this.v, this.i);
    }

    public final int computeScrollRange(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return W.c(t0Var, this.f195c, e(!this.v), d(!this.v), this, this.v);
    }

    @Override // b.m.b.s0
    public PointF computeScrollVectorForPosition(int i) {
        int a2 = a(i);
        PointF pointF = new PointF();
        if (a2 == 0) {
            return null;
        }
        if (this.e == 0) {
            pointF.x = a2;
            pointF.y = RecentsState.NO_OFFSET;
        } else {
            pointF.x = RecentsState.NO_OFFSET;
            pointF.y = a2;
        }
        return pointF;
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollExtent(t0 t0Var) {
        return computeScrollExtent(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    public View d(boolean z) {
        int k = this.f195c.k();
        int g = this.f195c.g();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int e = this.f195c.e(childAt);
            int b2 = this.f195c.b(childAt);
            if (b2 > k && e < g) {
                if (b2 <= g || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public View e(boolean z) {
        int k = this.f195c.k();
        int g = this.f195c.g();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int e = this.f195c.e(childAt);
            if (this.f195c.b(childAt) > k && e < g) {
                if (e >= k || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void f(n0 n0Var, t0 t0Var, boolean z) {
        int g;
        int j = j(RecyclerView.UNDEFINED_DURATION);
        if (j != Integer.MIN_VALUE && (g = this.f195c.g() - j) > 0) {
            int i = g - (-scrollBy(-g, n0Var, t0Var));
            if (!z || i <= 0) {
                return;
            }
            this.f195c.p(i);
        }
    }

    public final void g(n0 n0Var, t0 t0Var, boolean z) {
        int k;
        int k2 = k(Integer.MAX_VALUE);
        if (k2 != Integer.MAX_VALUE && (k = k2 - this.f195c.k()) > 0) {
            int scrollBy = k - scrollBy(k, n0Var, t0Var);
            if (!z || scrollBy <= 0) {
                return;
            }
            this.f195c.p(-scrollBy);
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateDefaultLayoutParams() {
        return this.e == 0 ? new B0(-2, -1) : new B0(-1, -2);
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new B0(context, attributeSet);
    }

    public int h() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public int i() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean isAutoMeasureEnabled() {
        return this.n != 0;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public final int j(int i) {
        int h = this.f194b[0].h(i);
        for (int i2 = 1; i2 < this.f193a; i2++) {
            int h2 = this.f194b[i2].h(i);
            if (h2 > h) {
                h = h2;
            }
        }
        return h;
    }

    public final int k(int i) {
        int k = this.f194b[0].k(i);
        for (int i2 = 1; i2 < this.f193a; i2++) {
            int k2 = this.f194b[i2].k(i);
            if (k2 < k) {
                k = k2;
            }
        }
        return k;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.i
            if (r0 == 0) goto L9
            int r0 = r6.i()
            goto Ld
        L9:
            int r0 = r6.h()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            b.m.b.D0 r4 = r6.m
            r4.d(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            b.m.b.D0 r9 = r6.m
            r9.f(r7, r4)
            b.m.b.D0 r7 = r6.m
            r7.e(r8, r4)
            goto L41
        L36:
            b.m.b.D0 r9 = r6.m
            r9.f(r7, r8)
            goto L41
        L3c:
            b.m.b.D0 r9 = r6.m
            r9.e(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.i
            if (r7 == 0) goto L4d
            int r7 = r6.h()
            goto L51
        L4d:
            int r7 = r6.i()
        L51:
            if (r3 > r7) goto L56
            r6.requestLayout()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.l(int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
    
        if (r10 == r11) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d0, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ce, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00cc, code lost:
    
        if (r10 == r11) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m():android.view.View");
    }

    public final void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        Rect rect = this.s;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
        B0 b0 = (B0) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) b0).leftMargin;
        Rect rect2 = this.s;
        int x = x(i, i3 + rect2.left, ((ViewGroup.MarginLayoutParams) b0).rightMargin + rect2.right);
        int i4 = ((ViewGroup.MarginLayoutParams) b0).topMargin;
        Rect rect3 = this.s;
        int x2 = x(i2, i4 + rect3.top, ((ViewGroup.MarginLayoutParams) b0).bottomMargin + rect3.bottom);
        if (z ? shouldReMeasureChild(view, x, x2, b0) : shouldMeasureChild(view, x, x2, b0)) {
            view.measure(x, x2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:256:0x0415, code lost:
    
        if (b() != false) goto L249;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(b.m.b.n0 r12, b.m.b.t0 r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.n(b.m.b.n0, b.m.b.t0, boolean):void");
    }

    public final boolean o(int i) {
        if (this.e == 0) {
            return (i == -1) != this.i;
        }
        return ((i == -1) == this.i) == isLayoutRTL();
    }

    @Override // b.m.b.AbstractC0176f0
    public void offsetChildrenHorizontal(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i);
        }
        for (int i2 = 0; i2 < this.f193a; i2++) {
            F0 f0 = this.f194b[i2];
            int i3 = f0.f1099b;
            if (i3 != Integer.MIN_VALUE) {
                f0.f1099b = i3 + i;
            }
            int i4 = f0.f1100c;
            if (i4 != Integer.MIN_VALUE) {
                f0.f1100c = i4 + i;
            }
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public void offsetChildrenVertical(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i);
        }
        for (int i2 = 0; i2 < this.f193a; i2++) {
            F0 f0 = this.f194b[i2];
            int i3 = f0.f1099b;
            if (i3 != Integer.MIN_VALUE) {
                f0.f1099b = i3 + i;
            }
            int i4 = f0.f1100c;
            if (i4 != Integer.MIN_VALUE) {
                f0.f1100c = i4 + i;
            }
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public void onAdapterChanged(Q q, Q q2) {
        this.m.a();
        for (int i = 0; i < this.f193a; i++) {
            this.f194b[i].d();
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public void onDetachedFromWindow(RecyclerView recyclerView, n0 n0Var) {
        onDetachedFromWindow();
        Runnable runnable = this.x;
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(runnable);
        }
        for (int i = 0; i < this.f193a; i++) {
            this.f194b[i].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x003b, code lost:
    
        if (r8.e == 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0041, code lost:
    
        if (r8.e == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x004d, code lost:
    
        if (isLayoutRTL() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0059, code lost:
    
        if (isLayoutRTL() == false) goto L30;
     */
    @Override // b.m.b.AbstractC0176f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r9, int r10, b.m.b.n0 r11, b.m.b.t0 r12) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, b.m.b.n0, b.m.b.t0):android.view.View");
    }

    @Override // b.m.b.AbstractC0176f0
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        n0 n0Var = this.mRecyclerView.mRecycler;
        onInitializeAccessibilityEvent1(accessibilityEvent);
        if (getChildCount() > 0) {
            View e = e(false);
            View d2 = d(false);
            if (e == null || d2 == null) {
                return;
            }
            int position = getPosition(e);
            int position2 = getPosition(d2);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        l(i, i2, 1);
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsChanged(RecyclerView recyclerView) {
        this.m.a();
        requestLayout();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        l(i, i2, 8);
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        l(i, i2, 2);
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        l(i, i2, 4);
    }

    @Override // b.m.b.AbstractC0176f0
    public void onLayoutChildren(n0 n0Var, t0 t0Var) {
        n(n0Var, t0Var, true);
    }

    @Override // b.m.b.AbstractC0176f0
    public void onLayoutCompleted(t0 t0Var) {
        this.k = -1;
        this.l = RecyclerView.UNDEFINED_DURATION;
        this.q = null;
        this.t.b();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.q = savedState;
            if (this.k != -1) {
                savedState.f204d = null;
                savedState.f203c = 0;
                savedState.f201a = -1;
                savedState.f202b = -1;
                savedState.f204d = null;
                savedState.f203c = 0;
                savedState.e = 0;
                savedState.f = null;
                savedState.g = null;
            }
            requestLayout();
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public Parcelable onSaveInstanceState() {
        int k;
        int k2;
        int[] iArr;
        SavedState savedState = this.q;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.h = this.h;
        savedState2.i = this.o;
        savedState2.j = this.p;
        D0 d0 = this.m;
        if (d0 == null || (iArr = d0.f1096a) == null) {
            savedState2.e = 0;
        } else {
            savedState2.f = iArr;
            savedState2.e = iArr.length;
            savedState2.g = d0.f1097b;
        }
        if (getChildCount() > 0) {
            savedState2.f201a = this.o ? i() : h();
            View d2 = this.i ? d(true) : e(true);
            savedState2.f202b = d2 != null ? getPosition(d2) : -1;
            int i = this.f193a;
            savedState2.f203c = i;
            savedState2.f204d = new int[i];
            for (int i2 = 0; i2 < this.f193a; i2++) {
                if (this.o) {
                    k = this.f194b[i2].h(RecyclerView.UNDEFINED_DURATION);
                    if (k != Integer.MIN_VALUE) {
                        k2 = this.f195c.g();
                        k -= k2;
                        savedState2.f204d[i2] = k;
                    } else {
                        savedState2.f204d[i2] = k;
                    }
                } else {
                    k = this.f194b[i2].k(RecyclerView.UNDEFINED_DURATION);
                    if (k != Integer.MIN_VALUE) {
                        k2 = this.f195c.k();
                        k -= k2;
                        savedState2.f204d[i2] = k;
                    } else {
                        savedState2.f204d[i2] = k;
                    }
                }
            }
        } else {
            savedState2.f201a = -1;
            savedState2.f202b = -1;
            savedState2.f203c = 0;
        }
        return savedState2;
    }

    @Override // b.m.b.AbstractC0176f0
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            b();
        }
    }

    public void p(int i, t0 t0Var) {
        int i2;
        int h;
        if (i > 0) {
            h = i();
            i2 = 1;
        } else {
            i2 = -1;
            h = h();
        }
        this.g.f1076a = true;
        v(h, t0Var);
        t(i2);
        A a2 = this.g;
        a2.f1078c = h + a2.f1079d;
        a2.f1077b = Math.abs(i);
    }

    public final void q(n0 n0Var, A a2) {
        if (!a2.f1076a || a2.i) {
            return;
        }
        if (a2.f1077b == 0) {
            if (a2.e == -1) {
                r(n0Var, a2.g);
                return;
            } else {
                s(n0Var, a2.f);
                return;
            }
        }
        int i = 1;
        if (a2.e == -1) {
            int i2 = a2.f;
            int k = this.f194b[0].k(i2);
            while (i < this.f193a) {
                int k2 = this.f194b[i].k(i2);
                if (k2 > k) {
                    k = k2;
                }
                i++;
            }
            int i3 = i2 - k;
            r(n0Var, i3 < 0 ? a2.g : a2.g - Math.min(i3, a2.f1077b));
            return;
        }
        int i4 = a2.g;
        int h = this.f194b[0].h(i4);
        while (i < this.f193a) {
            int h2 = this.f194b[i].h(i4);
            if (h2 < h) {
                h = h2;
            }
            i++;
        }
        int i5 = h - a2.g;
        s(n0Var, i5 < 0 ? a2.f : Math.min(i5, a2.f1077b) + a2.f);
    }

    public final void r(n0 n0Var, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f195c.e(childAt) < i || this.f195c.o(childAt) < i) {
                return;
            }
            B0 b0 = (B0) childAt.getLayoutParams();
            boolean z = b0.f;
            if (b0.e.f1098a.size() == 1) {
                return;
            }
            b0.e.l();
            removeAndRecycleView(childAt, n0Var);
        }
    }

    public final void resolveShouldLayoutReverse() {
        if (this.e == 1 || !isLayoutRTL()) {
            this.i = this.h;
        } else {
            this.i = !this.h;
        }
    }

    public final void s(n0 n0Var, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f195c.b(childAt) > i || this.f195c.n(childAt) > i) {
                return;
            }
            B0 b0 = (B0) childAt.getLayoutParams();
            boolean z = b0.f;
            if (b0.e.f1098a.size() == 1) {
                return;
            }
            b0.e.m();
            removeAndRecycleView(childAt, n0Var);
        }
    }

    public int scrollBy(int i, n0 n0Var, t0 t0Var) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        p(i, t0Var);
        int c2 = c(n0Var, this.g, t0Var);
        if (this.g.f1077b >= c2) {
            i = i < 0 ? -c2 : c2;
        }
        this.f195c.p(-i);
        this.o = this.i;
        A a2 = this.g;
        a2.f1077b = 0;
        q(n0Var, a2);
        return i;
    }

    @Override // b.m.b.AbstractC0176f0
    public int scrollHorizontallyBy(int i, n0 n0Var, t0 t0Var) {
        return scrollBy(i, n0Var, t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public void scrollToPosition(int i) {
        SavedState savedState = this.q;
        if (savedState != null && savedState.f201a != i) {
            savedState.f204d = null;
            savedState.f203c = 0;
            savedState.f201a = -1;
            savedState.f202b = -1;
        }
        this.k = i;
        this.l = RecyclerView.UNDEFINED_DURATION;
        requestLayout();
    }

    @Override // b.m.b.AbstractC0176f0
    public int scrollVerticallyBy(int i, n0 n0Var, t0 t0Var) {
        return scrollBy(i, n0Var, t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.e == 1) {
            chooseSize2 = AbstractC0176f0.chooseSize(i2, rect.height() + paddingBottom, getMinimumHeight());
            chooseSize = AbstractC0176f0.chooseSize(i, (this.f * this.f193a) + paddingRight, getMinimumWidth());
        } else {
            chooseSize = AbstractC0176f0.chooseSize(i, rect.width() + paddingRight, getMinimumWidth());
            chooseSize2 = AbstractC0176f0.chooseSize(i2, (this.f * this.f193a) + paddingBottom, getMinimumHeight());
        }
        this.mRecyclerView.setMeasuredDimension(chooseSize, chooseSize2);
    }

    @Override // b.m.b.AbstractC0176f0
    public void smoothScrollToPosition(RecyclerView recyclerView, t0 t0Var, int i) {
        F f = new F(recyclerView.getContext());
        f.mTargetPosition = i;
        startSmoothScroll(f);
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean supportsPredictiveItemAnimations() {
        return this.q == null;
    }

    public final void t(int i) {
        A a2 = this.g;
        a2.e = i;
        a2.f1079d = this.i != (i == -1) ? -1 : 1;
    }

    public final void u(int i, int i2) {
        for (int i3 = 0; i3 < this.f193a; i3++) {
            if (!this.f194b[i3].f1098a.isEmpty()) {
                w(this.f194b[i3], i, i2);
            }
        }
    }

    public final void v(int i, t0 t0Var) {
        int i2;
        int i3;
        int i4;
        A a2 = this.g;
        boolean z = false;
        a2.f1077b = 0;
        a2.f1078c = i;
        F f = this.mSmoothScroller;
        if (!(f != null && f.mRunning) || (i4 = t0Var.f1205a) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.i == (i4 < i)) {
                i2 = this.f195c.l();
                i3 = 0;
            } else {
                i3 = this.f195c.l();
                i2 = 0;
            }
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null && recyclerView.mClipToPadding) {
            this.g.f = this.f195c.k() - i3;
            this.g.g = this.f195c.g() + i2;
        } else {
            this.g.g = this.f195c.f() + i2;
            this.g.f = -i3;
        }
        A a3 = this.g;
        a3.h = false;
        a3.f1076a = true;
        if (this.f195c.i() == 0 && this.f195c.f() == 0) {
            z = true;
        }
        a3.i = z;
    }

    public final void w(F0 f0, int i, int i2) {
        int i3 = f0.f1101d;
        if (i == -1) {
            int i4 = f0.f1099b;
            if (i4 == Integer.MIN_VALUE) {
                f0.c();
                i4 = f0.f1099b;
            }
            if (i4 + i3 <= i2) {
                this.j.set(f0.e, false);
                return;
            }
            return;
        }
        int i5 = f0.f1100c;
        if (i5 == Integer.MIN_VALUE) {
            f0.b();
            i5 = f0.f1100c;
        }
        if (i5 - i3 >= i2) {
            this.j.set(f0.e, false);
        }
    }

    public final int x(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new B0((ViewGroup.MarginLayoutParams) layoutParams) : new B0(layoutParams);
    }
}
