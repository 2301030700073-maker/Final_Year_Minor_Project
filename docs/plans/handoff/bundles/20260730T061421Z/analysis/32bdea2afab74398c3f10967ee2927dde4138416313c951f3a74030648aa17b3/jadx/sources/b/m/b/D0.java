package b.m.b;

import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class D0 {

    /* renamed from: a, reason: collision with root package name */
    public int[] f1096a;

    /* renamed from: b, reason: collision with root package name */
    public List f1097b;

    public void a() {
        int[] iArr = this.f1096a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f1097b = null;
    }

    public void b(int i) {
        int[] iArr = this.f1096a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f1096a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f1096a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f1096a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem c(int i) {
        List list = this.f1097b;
        if (list == null) {
            return null;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f1097b.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f197a == i) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int d(int r5) {
        /*
            r4 = this;
            int[] r0 = r4.f1096a
            r1 = -1
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r0.length
            if (r5 < r0) goto La
            return r1
        La:
            java.util.List r0 = r4.f1097b
            if (r0 != 0) goto L10
        Le:
            r0 = r1
            goto L46
        L10:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r4.c(r5)
            if (r0 == 0) goto L1b
            java.util.List r2 = r4.f1097b
            r2.remove(r0)
        L1b:
            java.util.List r0 = r4.f1097b
            int r0 = r0.size()
            r2 = 0
        L22:
            if (r2 >= r0) goto L34
            java.util.List r3 = r4.f1097b
            java.lang.Object r3 = r3.get(r2)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) r3
            int r3 = r3.f197a
            if (r3 < r5) goto L31
            goto L35
        L31:
            int r2 = r2 + 1
            goto L22
        L34:
            r2 = r1
        L35:
            if (r2 == r1) goto Le
            java.util.List r0 = r4.f1097b
            java.lang.Object r0 = r0.get(r2)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) r0
            java.util.List r3 = r4.f1097b
            r3.remove(r2)
            int r0 = r0.f197a
        L46:
            if (r0 != r1) goto L52
            int[] r0 = r4.f1096a
            int r2 = r0.length
            java.util.Arrays.fill(r0, r5, r2, r1)
            int[] r4 = r4.f1096a
            int r4 = r4.length
            return r4
        L52:
            int[] r4 = r4.f1096a
            int r0 = r0 + 1
            java.util.Arrays.fill(r4, r5, r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.D0.d(int):int");
    }

    public void e(int i, int i2) {
        int[] iArr = this.f1096a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        b(i3);
        int[] iArr2 = this.f1096a;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill(this.f1096a, i, i3, -1);
        List list = this.f1097b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f1097b.get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f197a;
            if (i4 >= i) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f197a = i4 + i2;
            }
        }
    }

    public void f(int i, int i2) {
        int[] iArr = this.f1096a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        b(i3);
        int[] iArr2 = this.f1096a;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = this.f1096a;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        List list = this.f1097b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f1097b.get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f197a;
            if (i4 >= i) {
                if (i4 < i3) {
                    this.f1097b.remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f197a = i4 - i2;
                }
            }
        }
    }
}
