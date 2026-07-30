package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cthrow;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC3370n6;
import defpackage.C3442oJ;
import defpackage.InterfaceC0569Vp;
import defpackage.OJ;
import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.public, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cpublic extends Cfor<String> implements InterfaceC0569Vp, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList f6632do;

    static {
        ((Cfor) new Cpublic(10)).f6594do = false;
    }

    public Cpublic(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        m3881try();
        this.f6632do.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f6632do);
        return new Cpublic((ArrayList<Object>) arrayList);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m3881try();
        this.f6632do.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: for */
    public final List<?> mo2667for() {
        return DesugarCollections.unmodifiableList(this.f6632do);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        String str;
        ArrayList arrayList = this.f6632do;
        Object obj = arrayList.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC3370n6) {
            AbstractC3370n6 abstractC3370n6 = (AbstractC3370n6) obj;
            abstractC3370n6.getClass();
            str = abstractC3370n6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3370n6.mo7552catch(Cthrow.f6655do);
            if (abstractC3370n6.mo7555this()) {
                arrayList.set(i, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, Cthrow.f6655do);
            OJ.Cif cif = OJ.f2633do;
            if (OJ.f2633do.mo1667for(bArr, 0, bArr.length) == 0) {
                arrayList.set(i, str);
            }
        }
        return str;
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: interface */
    public final InterfaceC0569Vp mo2668interface() {
        return super.f6594do ? new C3442oJ(this) : this;
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: new */
    public final Object mo2669new(int i) {
        return this.f6632do.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        Object remove = this.f6632do.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (!(remove instanceof AbstractC3370n6)) {
            return new String((byte[]) remove, Cthrow.f6655do);
        }
        AbstractC3370n6 abstractC3370n6 = (AbstractC3370n6) remove;
        abstractC3370n6.getClass();
        return abstractC3370n6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3370n6.mo7552catch(Cthrow.f6655do);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m3881try();
        Object obj2 = this.f6632do.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof AbstractC3370n6)) {
            return new String((byte[]) obj2, Cthrow.f6655do);
        }
        AbstractC3370n6 abstractC3370n6 = (AbstractC3370n6) obj2;
        abstractC3370n6.getClass();
        return abstractC3370n6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3370n6.mo7552catch(Cthrow.f6655do);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6632do.size();
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: strictfp */
    public final void mo2670strictfp(AbstractC3370n6 abstractC3370n6) {
        m3881try();
        this.f6632do.add(abstractC3370n6);
        ((AbstractList) this).modCount++;
    }

    public Cpublic(ArrayList<Object> arrayList) {
        this.f6632do = arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m3881try();
        if (collection instanceof InterfaceC0569Vp) {
            collection = ((InterfaceC0569Vp) collection).mo2667for();
        }
        boolean addAll = this.f6632do.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }
}
