package c.b.b;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.b.b.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0489y0 extends AbstractC0445c {

    /* renamed from: c, reason: collision with root package name */
    public static final C0489y0 f3227c;

    /* renamed from: b, reason: collision with root package name */
    public final List f3228b;

    static {
        C0489y0 c0489y0 = new C0489y0(new ArrayList(0));
        f3227c = c0489y0;
        c0489y0.f3173a = false;
    }

    public C0489y0(List list) {
        this.f3228b = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        g();
        this.f3228b.add(i, obj);
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f3228b);
        return new C0489y0(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return this.f3228b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        Object remove = this.f3228b.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        g();
        Object obj2 = this.f3228b.set(i, obj);
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3228b.size();
    }
}
