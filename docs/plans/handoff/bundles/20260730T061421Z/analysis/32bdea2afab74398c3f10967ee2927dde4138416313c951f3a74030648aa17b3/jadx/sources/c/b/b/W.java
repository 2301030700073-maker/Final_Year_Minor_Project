package c.b.b;

import com.google.protobuf.ByteString;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class W extends AbstractC0445c implements X, RandomAccess {

    /* renamed from: c, reason: collision with root package name */
    public static final W f3159c;

    /* renamed from: b, reason: collision with root package name */
    public final List f3160b;

    static {
        W w = new W(10);
        f3159c = w;
        w.f3173a = false;
    }

    public W(int i) {
        this.f3160b = new ArrayList(i);
    }

    public static String h(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).n() : P.h((byte[]) obj);
    }

    @Override // c.b.b.X
    public X a() {
        return this.f3173a ? new R0(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        g();
        this.f3160b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // c.b.b.X
    public Object c(int i) {
        return this.f3160b.get(i);
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        g();
        this.f3160b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f3160b);
        return new W(arrayList);
    }

    @Override // c.b.b.X
    public List e() {
        return Collections.unmodifiableList(this.f3160b);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        String h;
        Object obj = this.f3160b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            h = byteString.n();
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            int o = literalByteString.o();
            if (Y0.f(literalByteString.bytes, o, literalByteString.size() + o)) {
                this.f3160b.set(i, h);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            h = P.h(bArr);
            if (Y0.f3161a.c(0, bArr, 0, bArr.length) == 0) {
                this.f3160b.set(i, h);
            }
        }
        return h;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        Object remove = this.f3160b.remove(i);
        ((AbstractList) this).modCount++;
        return h(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        g();
        return h(this.f3160b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3160b.size();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection collection) {
        g();
        if (collection instanceof X) {
            collection = ((X) collection).e();
        }
        boolean addAll = this.f3160b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    public W(ArrayList arrayList) {
        this.f3160b = arrayList;
    }
}
