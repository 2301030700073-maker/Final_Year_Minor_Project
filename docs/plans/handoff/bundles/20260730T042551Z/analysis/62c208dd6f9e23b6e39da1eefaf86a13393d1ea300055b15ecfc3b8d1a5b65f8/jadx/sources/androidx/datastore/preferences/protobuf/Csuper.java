package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cthrow;
import com.google.android.gms.common.api.Api;
import defpackage.Cif;
import defpackage.Cpublic;
import defpackage.Dx;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper extends Cfor<Integer> implements RandomAccess, Dx {

    /* renamed from: do, reason: not valid java name */
    public int[] f6641do;

    /* renamed from: for, reason: not valid java name */
    public int f6642for;

    static {
        ((Cfor) new Csuper(new int[0], 0)).f6594do = false;
    }

    public Csuper() {
        this(new int[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m3881try();
        if (i < 0 || i > (i2 = this.f6642for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6642for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        int[] iArr = this.f6641do;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f6641do, i, iArr2, i + 1, this.f6642for - i);
            this.f6641do = iArr2;
        }
        this.f6641do[i] = intValue;
        this.f6642for++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m3881try();
        Charset charset = Cthrow.f6655do;
        collection.getClass();
        if (!(collection instanceof Csuper)) {
            return super.addAll(collection);
        }
        Csuper csuper = (Csuper) collection;
        int i = csuper.f6642for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f6642for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f6641do;
        if (i3 > iArr.length) {
            this.f6641do = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(csuper.f6641do, 0, this.f6641do, this.f6642for, csuper.f6642for);
        this.f6642for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3990case(int i) {
        m3881try();
        int i2 = this.f6642for;
        int[] iArr = this.f6641do;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f6641do = iArr2;
        }
        int[] iArr3 = this.f6641do;
        int i3 = this.f6642for;
        this.f6642for = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6642for) {
            return new Csuper(Arrays.copyOf(this.f6641do, i), this.f6642for);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3991else(int i) {
        if (i < 0 || i >= this.f6642for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6642for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Csuper)) {
            return super.equals(obj);
        }
        Csuper csuper = (Csuper) obj;
        if (this.f6642for != csuper.f6642for) {
            return false;
        }
        int[] iArr = csuper.f6641do;
        for (int i = 0; i < this.f6642for; i++) {
            if (this.f6641do[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m3991else(i);
        return Integer.valueOf(this.f6641do[i]);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f6642for; i2++) {
            i = (i * 31) + this.f6641do[i2];
        }
        return i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3881try();
        for (int i = 0; i < this.f6642for; i++) {
            if (obj.equals(Integer.valueOf(this.f6641do[i]))) {
                int[] iArr = this.f6641do;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f6642for - i) - 1);
                this.f6642for--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m3881try();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f6641do;
        System.arraycopy(iArr, i2, iArr, i, this.f6642for - i2);
        this.f6642for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m3881try();
        m3991else(i);
        int[] iArr = this.f6641do;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6642for;
    }

    public Csuper(int[] iArr, int i) {
        this.f6641do = iArr;
        this.f6642for = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        m3991else(i);
        int[] iArr = this.f6641do;
        int i2 = iArr[i];
        if (i < this.f6642for - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f6642for--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3990case(((Integer) obj).intValue());
        return true;
    }
}
