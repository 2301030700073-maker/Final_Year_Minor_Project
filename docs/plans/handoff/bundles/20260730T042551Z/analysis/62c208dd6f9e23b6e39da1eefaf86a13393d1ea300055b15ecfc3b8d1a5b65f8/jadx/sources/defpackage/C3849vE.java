package defpackage;

import com.google.common.collect.Ctry;

/* renamed from: vE, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3849vE<E> extends Ctry<E> {

    /* renamed from: do, reason: not valid java name */
    public final transient E f16039do;

    public C3849vE(E e) {
        e.getClass();
        this.f16039do = e;
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: break */
    public final AbstractC3324mJ<E> iterator() {
        return new C0414Oo(this.f16039do);
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f16039do.equals(obj);
    }

    @Override // com.google.common.collect.Ctry, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f16039do.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: this */
    public final boolean mo6038this() {
        return false;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f16039do.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: try */
    public final int mo6039try(Object[] objArr) {
        objArr[0] = this.f16039do;
        return 1;
    }
}
