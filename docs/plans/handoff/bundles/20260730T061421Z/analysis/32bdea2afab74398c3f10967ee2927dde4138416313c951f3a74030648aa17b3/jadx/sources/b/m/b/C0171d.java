package b.m.b;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: b.m.b.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0171d {

    /* renamed from: a, reason: collision with root package name */
    public final O f1139a;

    /* renamed from: b, reason: collision with root package name */
    public final C0169c f1140b = new C0169c();

    /* renamed from: c, reason: collision with root package name */
    public final List f1141c = new ArrayList();

    public C0171d(O o) {
        this.f1139a = o;
    }

    public void a(View view, int i, boolean z) {
        int b2 = i < 0 ? this.f1139a.b() : f(i);
        this.f1140b.e(b2, z);
        if (z) {
            i(view);
        }
        O o = this.f1139a;
        o.f1119a.addView(view, b2);
        o.f1119a.dispatchChildAttached(view);
    }

    public void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int b2 = i < 0 ? this.f1139a.b() : f(i);
        this.f1140b.e(b2, z);
        if (z) {
            i(view);
        }
        O o = this.f1139a;
        Objects.requireNonNull(o);
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(c.a.c.a.a.b(o.f1119a, sb));
            }
            childViewHolderInt.mFlags &= -257;
        }
        o.f1119a.attachViewToParent(view, b2, layoutParams);
    }

    public void c(int i) {
        w0 childViewHolderInt;
        int f = f(i);
        this.f1140b.f(f);
        O o = this.f1139a;
        View childAt = o.f1119a.getChildAt(f);
        if (childAt != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) != null) {
            if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(c.a.c.a.a.b(o.f1119a, sb));
            }
            childViewHolderInt.addFlags(256);
        }
        o.f1119a.detachViewFromParent(f);
    }

    public View d(int i) {
        return this.f1139a.a(f(i));
    }

    public int e() {
        return this.f1139a.b() - this.f1141c.size();
    }

    public final int f(int i) {
        if (i < 0) {
            return -1;
        }
        int b2 = this.f1139a.b();
        int i2 = i;
        while (i2 < b2) {
            int b3 = i - (i2 - this.f1140b.b(i2));
            if (b3 == 0) {
                while (this.f1140b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += b3;
        }
        return -1;
    }

    public View g(int i) {
        return this.f1139a.f1119a.getChildAt(i);
    }

    public int h() {
        return this.f1139a.b();
    }

    public final void i(View view) {
        this.f1141c.add(view);
        O o = this.f1139a;
        Objects.requireNonNull(o);
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            RecyclerView recyclerView = o.f1119a;
            int i = childViewHolderInt.mPendingAccessibilityState;
            if (i != -1) {
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = b.e.i.q.g(childViewHolderInt.itemView);
            }
            recyclerView.setChildImportantForAccessibilityInternal(childViewHolderInt, 4);
        }
    }

    public int j(View view) {
        int indexOfChild = this.f1139a.f1119a.indexOfChild(view);
        if (indexOfChild == -1 || this.f1140b.d(indexOfChild)) {
            return -1;
        }
        return indexOfChild - this.f1140b.b(indexOfChild);
    }

    public boolean k(View view) {
        return this.f1141c.contains(view);
    }

    public final boolean l(View view) {
        if (!this.f1141c.remove(view)) {
            return false;
        }
        O o = this.f1139a;
        Objects.requireNonNull(o);
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null) {
            return true;
        }
        o.f1119a.setChildImportantForAccessibilityInternal(childViewHolderInt, childViewHolderInt.mWasImportantForAccessibilityBeforeHidden);
        childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = 0;
        return true;
    }

    public String toString() {
        return this.f1140b.toString() + ", hidden list:" + this.f1141c.size();
    }
}
