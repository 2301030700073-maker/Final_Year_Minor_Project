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

/* renamed from: androidx.datastore.preferences.protobuf.const, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cconst extends Cfor<Float> implements RandomAccess, Dx {

    /* renamed from: do, reason: not valid java name */
    public float[] f6581do;

    /* renamed from: for, reason: not valid java name */
    public int f6582for;

    static {
        ((Cfor) new Cconst(new float[0], 0)).f6594do = false;
    }

    public Cconst() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m3881try();
        if (i < 0 || i > (i2 = this.f6582for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6582for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        float[] fArr = this.f6581do;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f6581do, i, fArr2, i + 1, this.f6582for - i);
            this.f6581do = fArr2;
        }
        this.f6581do[i] = floatValue;
        this.f6582for++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m3881try();
        Charset charset = Cthrow.f6655do;
        collection.getClass();
        if (!(collection instanceof Cconst)) {
            return super.addAll(collection);
        }
        Cconst cconst = (Cconst) collection;
        int i = cconst.f6582for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f6582for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f6581do;
        if (i3 > fArr.length) {
            this.f6581do = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(cconst.f6581do, 0, this.f6581do, this.f6582for, cconst.f6582for);
        this.f6582for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3832case(float f) {
        m3881try();
        int i = this.f6582for;
        float[] fArr = this.f6581do;
        if (i == fArr.length) {
            float[] fArr2 = new float[Cif.m6917if(i, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f6581do = fArr2;
        }
        float[] fArr3 = this.f6581do;
        int i2 = this.f6582for;
        this.f6582for = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class, reason: not valid java name */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6582for) {
            return new Cconst(Arrays.copyOf(this.f6581do, i), this.f6582for);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3834else(int i) {
        if (i < 0 || i >= this.f6582for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6582for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cconst)) {
            return super.equals(obj);
        }
        Cconst cconst = (Cconst) obj;
        if (this.f6582for != cconst.f6582for) {
            return false;
        }
        float[] fArr = cconst.f6581do;
        for (int i = 0; i < this.f6582for; i++) {
            if (Float.floatToIntBits(this.f6581do[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m3834else(i);
        return Float.valueOf(this.f6581do[i]);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f6582for; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f6581do[i2]);
        }
        return i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3881try();
        for (int i = 0; i < this.f6582for; i++) {
            if (obj.equals(Float.valueOf(this.f6581do[i]))) {
                float[] fArr = this.f6581do;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f6582for - i) - 1);
                this.f6582for--;
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
        float[] fArr = this.f6581do;
        System.arraycopy(fArr, i2, fArr, i, this.f6582for - i2);
        this.f6582for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m3881try();
        m3834else(i);
        float[] fArr = this.f6581do;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6582for;
    }

    public Cconst(float[] fArr, int i) {
        this.f6581do = fArr;
        this.f6582for = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        m3834else(i);
        float[] fArr = this.f6581do;
        float f = fArr[i];
        if (i < this.f6582for - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (r2 - i) - 1);
        }
        this.f6582for--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3832case(((Float) obj).floatValue());
        return true;
    }
}
