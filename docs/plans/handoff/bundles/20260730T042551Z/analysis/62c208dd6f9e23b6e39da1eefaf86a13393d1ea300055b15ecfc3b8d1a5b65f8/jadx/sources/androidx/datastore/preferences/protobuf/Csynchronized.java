package androidx.datastore.preferences.protobuf;

import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import java.util.Arrays;

/* renamed from: androidx.datastore.preferences.protobuf.synchronized, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csynchronized extends Cimplements<Cinstanceof, Cinstanceof> {
    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: break */
    public final void mo3884break(Object obj) {
        ((Cfinal) obj).unknownFields.f6601do = false;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: case */
    public final Cinstanceof mo3885case(Object obj) {
        Cfinal cfinal = (Cfinal) obj;
        Cinstanceof cinstanceof = cfinal.unknownFields;
        if (cinstanceof != Cinstanceof.f6599do) {
            return cinstanceof;
        }
        Cinstanceof cinstanceof2 = new Cinstanceof();
        cfinal.unknownFields = cinstanceof2;
        return cinstanceof2;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: catch */
    public final Cinstanceof mo3886catch(Object obj, Object obj2) {
        Cinstanceof cinstanceof = (Cinstanceof) obj;
        Cinstanceof cinstanceof2 = (Cinstanceof) obj2;
        if (cinstanceof2.equals(Cinstanceof.f6599do)) {
            return cinstanceof;
        }
        int i = cinstanceof.f6600do + cinstanceof2.f6600do;
        int[] copyOf = Arrays.copyOf(cinstanceof.f6602do, i);
        System.arraycopy(cinstanceof2.f6602do, 0, copyOf, cinstanceof.f6600do, cinstanceof2.f6600do);
        Object[] copyOf2 = Arrays.copyOf(cinstanceof.f6603do, i);
        System.arraycopy(cinstanceof2.f6603do, 0, copyOf2, cinstanceof.f6600do, cinstanceof2.f6600do);
        return new Cinstanceof(i, copyOf, copyOf2, true);
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: const */
    public final Cinstanceof mo3888const() {
        return new Cinstanceof();
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: do */
    public final void mo3889do(int i, int i2, Object obj) {
        ((Cinstanceof) obj).m3905if((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: else */
    public final Cinstanceof mo3890else(Object obj) {
        return ((Cfinal) obj).unknownFields;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: final */
    public final void mo3891final(Object obj, Cinstanceof cinstanceof) {
        ((Cfinal) obj).unknownFields = cinstanceof;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: for */
    public final void mo3892for(int i, Object obj, Object obj2) {
        ((Cinstanceof) obj).m3905if((i << 3) | 3, (Cinstanceof) obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: goto */
    public final int mo3893goto(Cinstanceof cinstanceof) {
        return cinstanceof.m3903do();
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: if */
    public final void mo3894if(Cinstanceof cinstanceof, int i, long j) {
        cinstanceof.m3905if((i << 3) | 1, Long.valueOf(j));
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: import */
    public final void mo3895import(Object obj, Celse celse) {
        Cinstanceof cinstanceof = (Cinstanceof) obj;
        cinstanceof.getClass();
        celse.getClass();
        for (int i = 0; i < cinstanceof.f6600do; i++) {
            celse.m3850class(cinstanceof.f6602do[i] >>> 3, cinstanceof.f6603do[i]);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: native */
    public final void mo3896native(Object obj, Celse celse) {
        ((Cinstanceof) obj).m3904for(celse);
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: new */
    public final void mo3897new(Cinstanceof cinstanceof, int i, AbstractC3370n6 abstractC3370n6) {
        cinstanceof.m3905if((i << 3) | 2, abstractC3370n6);
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: super */
    public final void mo3898super(Object obj, Cinstanceof cinstanceof) {
        ((Cfinal) obj).unknownFields = cinstanceof;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: this */
    public final int mo3899this(Cinstanceof cinstanceof) {
        Cinstanceof cinstanceof2 = cinstanceof;
        int i = cinstanceof2.f6604if;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < cinstanceof2.f6600do; i3++) {
            int i4 = cinstanceof2.f6602do[i3] >>> 3;
            AbstractC3370n6 abstractC3370n6 = (AbstractC3370n6) cinstanceof2.f6603do[i3];
            i2 += AbstractC3666s8.m8078while(3, abstractC3370n6) + AbstractC3666s8.m8068protected(2, i4) + (AbstractC3666s8.m8064interface(1) * 2);
        }
        cinstanceof2.f6604if = i2;
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: throw */
    public final void mo3900throw() {
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: try */
    public final void mo3901try(Cinstanceof cinstanceof, int i, long j) {
        cinstanceof.m3905if((i << 3) | 0, Long.valueOf(j));
    }

    @Override // androidx.datastore.preferences.protobuf.Cimplements
    /* renamed from: while */
    public final Cinstanceof mo3902while(Object obj) {
        Cinstanceof cinstanceof = (Cinstanceof) obj;
        cinstanceof.f6601do = false;
        return cinstanceof;
    }
}
