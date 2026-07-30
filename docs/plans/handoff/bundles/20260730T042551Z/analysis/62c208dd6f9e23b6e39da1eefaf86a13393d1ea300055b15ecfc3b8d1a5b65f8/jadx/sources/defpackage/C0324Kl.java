package defpackage;

import android.os.Handler;
import com.facebook.GraphRequest;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: Kl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0324Kl extends AbstractList<GraphRequest> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicInteger f1872do = new AtomicInteger();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Handler f1874do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f1875do;

    /* renamed from: break, reason: not valid java name */
    public final String f1873break = String.valueOf(Integer.valueOf(f1872do.incrementAndGet()));

    /* renamed from: if, reason: not valid java name */
    public final ArrayList f1876if = new ArrayList();

    /* renamed from: Kl$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: if, reason: not valid java name */
        void mo1205if(C0324Kl c0324Kl);
    }

    /* renamed from: Kl$if, reason: invalid class name */
    public interface Cif extends Cdo {
        /* renamed from: do, reason: not valid java name */
        void m1206do();
    }

    public C0324Kl(Collection<GraphRequest> collection) {
        this.f1875do = new ArrayList(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        C0173Do.m401try(graphRequest, "element");
        this.f1875do.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f1875do.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return super.contains((GraphRequest) obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return (GraphRequest) this.f1875do.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return super.indexOf((GraphRequest) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return super.lastIndexOf((GraphRequest) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return super.remove((GraphRequest) obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        C0173Do.m401try(graphRequest, "element");
        return (GraphRequest) this.f1875do.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1875do.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return (GraphRequest) this.f1875do.remove(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        C0173Do.m401try(graphRequest, "element");
        return this.f1875do.add(graphRequest);
    }

    public C0324Kl(GraphRequest... graphRequestArr) {
        this.f1875do = new ArrayList(J2.d(graphRequestArr));
    }
}
