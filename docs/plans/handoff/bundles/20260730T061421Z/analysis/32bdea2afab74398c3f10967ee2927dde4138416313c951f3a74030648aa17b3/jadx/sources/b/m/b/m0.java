package b.m.b;

import android.util.SparseArray;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class m0 {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f1185a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public int f1186b = 0;

    public void a() {
        for (int i = 0; i < this.f1185a.size(); i++) {
            ((C0188l0) this.f1185a.valueAt(i)).f1177a.clear();
        }
    }

    public final C0188l0 b(int i) {
        C0188l0 c0188l0 = (C0188l0) this.f1185a.get(i);
        if (c0188l0 != null) {
            return c0188l0;
        }
        C0188l0 c0188l02 = new C0188l0();
        this.f1185a.put(i, c0188l02);
        return c0188l02;
    }

    public void c(w0 w0Var) {
        int i = w0Var.mItemViewType;
        ArrayList arrayList = b(i).f1177a;
        if (((C0188l0) this.f1185a.get(i)).f1178b <= arrayList.size()) {
            return;
        }
        w0Var.resetInternal();
        arrayList.add(w0Var);
    }

    public long d(long j, long j2) {
        if (j == 0) {
            return j2;
        }
        return (j2 / 4) + ((j / 4) * 3);
    }

    public void e(int i, int i2) {
        C0188l0 b2 = b(i);
        b2.f1178b = i2;
        ArrayList arrayList = b2.f1177a;
        while (arrayList.size() > i2) {
            arrayList.remove(arrayList.size() - 1);
        }
    }
}
