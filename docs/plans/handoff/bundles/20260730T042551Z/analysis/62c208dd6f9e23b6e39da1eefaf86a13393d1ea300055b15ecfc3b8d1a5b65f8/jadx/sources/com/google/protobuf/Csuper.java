package com.google.protobuf;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Ccatch;
import defpackage.AbstractC3429o6;
import defpackage.C3383nJ;
import defpackage.InterfaceC0547Up;
import defpackage.PJ;
import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper extends Cfor<String> implements InterfaceC0547Up, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public final List<Object> f12104do;

    static {
        new Csuper();
    }

    public Csuper(ArrayList<Object> arrayList) {
        super(true);
        this.f12104do = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        m6243try();
        this.f12104do.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m6243try();
        this.f12104do.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: for */
    public final List<?> mo2471for() {
        return DesugarCollections.unmodifiableList(this.f12104do);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        String str;
        List<Object> list = this.f12104do;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC3429o6) {
            AbstractC3429o6 abstractC3429o6 = (AbstractC3429o6) obj;
            abstractC3429o6.getClass();
            str = abstractC3429o6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3429o6.mo7681catch(Ccatch.f12045do);
            if (abstractC3429o6.mo7684goto()) {
                list.set(i, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, Ccatch.f12045do);
            PJ.Cdo cdo = PJ.f2772do;
            if (PJ.f2772do.mo1767if(bArr, 0, bArr.length) == 0) {
                list.set(i, str);
            }
        }
        return str;
    }

    @Override // com.google.protobuf.Ccatch.Cfor
    /* renamed from: instanceof */
    public final Ccatch.Cfor mo6180instanceof(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f12104do);
        return new Csuper((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: new */
    public final Object mo2472new(int i) {
        return this.f12104do.get(i);
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: public */
    public final InterfaceC0547Up mo2473public() {
        return super.f12068do ? new C3383nJ(this) : this;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m6243try();
        Object remove = this.f12104do.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (!(remove instanceof AbstractC3429o6)) {
            return new String((byte[]) remove, Ccatch.f12045do);
        }
        AbstractC3429o6 abstractC3429o6 = (AbstractC3429o6) remove;
        abstractC3429o6.getClass();
        return abstractC3429o6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3429o6.mo7681catch(Ccatch.f12045do);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m6243try();
        Object obj2 = this.f12104do.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof AbstractC3429o6)) {
            return new String((byte[]) obj2, Ccatch.f12045do);
        }
        AbstractC3429o6 abstractC3429o6 = (AbstractC3429o6) obj2;
        abstractC3429o6.getClass();
        return abstractC3429o6.size() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : abstractC3429o6.mo7681catch(Ccatch.f12045do);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12104do.size();
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: throws */
    public final void mo2474throws(AbstractC3429o6 abstractC3429o6) {
        m6243try();
        this.f12104do.add(abstractC3429o6);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m6243try();
        if (collection instanceof InterfaceC0547Up) {
            collection = ((InterfaceC0547Up) collection).mo2471for();
        }
        boolean addAll = this.f12104do.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    public Csuper() {
        super(false);
        this.f12104do = Collections.emptyList();
    }

    public Csuper(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }
}
