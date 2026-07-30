package com.google.protobuf;

import com.google.protobuf.Ccatch;
import defpackage.C3383nJ;
import defpackage.C3677sJ;
import defpackage.Cx;
import defpackage.InterfaceC0547Up;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.protobuf.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthrow {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f12115do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f12116do = new Cif();

    /* renamed from: com.google.protobuf.throw$do, reason: invalid class name */
    public static final class Cdo extends Cthrow {

        /* renamed from: do, reason: not valid java name */
        public static final Class<?> f12117do = DesugarCollections.unmodifiableList(Collections.emptyList()).getClass();

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: for, reason: not valid java name */
        public static List m6311for(Object obj, int i, long j) {
            Csuper csuper;
            List list = (List) C3677sJ.m8105super(j, obj);
            if (list.isEmpty()) {
                List csuper2 = list instanceof InterfaceC0547Up ? new Csuper(i) : ((list instanceof Cx) && (list instanceof Ccatch.Cfor)) ? ((Ccatch.Cfor) list).mo6180instanceof(i) : new ArrayList(i);
                C3677sJ.m8104static(obj, j, csuper2);
                return csuper2;
            }
            if (f12117do.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                C3677sJ.m8104static(obj, j, arrayList);
                csuper = arrayList;
            } else {
                if (!(list instanceof C3383nJ)) {
                    if (!(list instanceof Cx) || !(list instanceof Ccatch.Cfor)) {
                        return list;
                    }
                    Ccatch.Cfor cfor = (Ccatch.Cfor) list;
                    if (cfor.mo6188do()) {
                        return list;
                    }
                    Ccatch.Cfor mo6180instanceof = cfor.mo6180instanceof(list.size() + i);
                    C3677sJ.m8104static(obj, j, mo6180instanceof);
                    return mo6180instanceof;
                }
                Csuper csuper3 = new Csuper(list.size() + i);
                csuper3.addAll((C3383nJ) list);
                C3677sJ.m8104static(obj, j, csuper3);
                csuper = csuper3;
            }
            return csuper;
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: do */
        public final void mo6309do(long j, Object obj) {
            Object unmodifiableList;
            List list = (List) C3677sJ.m8105super(j, obj);
            if (list instanceof InterfaceC0547Up) {
                unmodifiableList = ((InterfaceC0547Up) list).mo2473public();
            } else {
                if (f12117do.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof Cx) && (list instanceof Ccatch.Cfor)) {
                    Ccatch.Cfor cfor = (Ccatch.Cfor) list;
                    if (cfor.mo6188do()) {
                        cfor.mo6189if();
                        return;
                    }
                    return;
                }
                unmodifiableList = DesugarCollections.unmodifiableList(list);
            }
            C3677sJ.m8104static(obj, j, unmodifiableList);
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if */
        public final void mo6310if(Object obj, long j, Object obj2) {
            List list = (List) C3677sJ.m8105super(j, obj2);
            List m6311for = m6311for(obj, list.size(), j);
            int size = m6311for.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                m6311for.addAll(list);
            }
            if (size > 0) {
                list = m6311for;
            }
            C3677sJ.m8104static(obj, j, list);
        }
    }

    /* renamed from: com.google.protobuf.throw$if, reason: invalid class name */
    public static final class Cif extends Cthrow {
        @Override // com.google.protobuf.Cthrow
        /* renamed from: do */
        public final void mo6309do(long j, Object obj) {
            ((Ccatch.Cfor) C3677sJ.m8105super(j, obj)).mo6189if();
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if */
        public final void mo6310if(Object obj, long j, Object obj2) {
            Ccatch.Cfor cfor = (Ccatch.Cfor) C3677sJ.m8105super(j, obj);
            Ccatch.Cfor cfor2 = (Ccatch.Cfor) C3677sJ.m8105super(j, obj2);
            int size = cfor.size();
            int size2 = cfor2.size();
            if (size > 0 && size2 > 0) {
                if (!cfor.mo6188do()) {
                    cfor = cfor.mo6180instanceof(size2 + size);
                }
                cfor.addAll(cfor2);
            }
            if (size > 0) {
                cfor2 = cfor;
            }
            C3677sJ.m8104static(obj, j, cfor2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo6309do(long j, Object obj);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo6310if(Object obj, long j, Object obj2);
}
