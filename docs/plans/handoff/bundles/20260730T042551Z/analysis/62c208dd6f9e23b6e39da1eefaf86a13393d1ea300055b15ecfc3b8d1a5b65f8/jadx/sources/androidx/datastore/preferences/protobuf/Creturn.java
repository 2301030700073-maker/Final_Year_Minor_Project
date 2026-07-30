package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cthrow;
import defpackage.C3442oJ;
import defpackage.C3736tJ;
import defpackage.Dx;
import defpackage.InterfaceC0569Vp;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: androidx.datastore.preferences.protobuf.return, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Creturn {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f6633do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f6634do = new Cif();

    /* renamed from: androidx.datastore.preferences.protobuf.return$do, reason: invalid class name */
    public static final class Cdo extends Creturn {

        /* renamed from: do, reason: not valid java name */
        public static final Class<?> f6635do = DesugarCollections.unmodifiableList(Collections.emptyList()).getClass();

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: new, reason: not valid java name */
        public static List m3986new(Object obj, int i, long j) {
            Cpublic cpublic;
            List list = (List) C3736tJ.m8248final(j, obj);
            if (list.isEmpty()) {
                List cpublic2 = list instanceof InterfaceC0569Vp ? new Cpublic(i) : ((list instanceof Dx) && (list instanceof Cthrow.Cfor)) ? ((Cthrow.Cfor) list).mo3833class(i) : new ArrayList(i);
                C3736tJ.m8256return(obj, j, cpublic2);
                return cpublic2;
            }
            if (f6635do.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                C3736tJ.m8256return(obj, j, arrayList);
                cpublic = arrayList;
            } else {
                if (!(list instanceof C3442oJ)) {
                    if (!(list instanceof Dx) || !(list instanceof Cthrow.Cfor)) {
                        return list;
                    }
                    Cthrow.Cfor cfor = (Cthrow.Cfor) list;
                    if (cfor.mo3879do()) {
                        return list;
                    }
                    Cthrow.Cfor mo3833class = cfor.mo3833class(list.size() + i);
                    C3736tJ.m8256return(obj, j, mo3833class);
                    return mo3833class;
                }
                Cpublic cpublic3 = new Cpublic(list.size() + i);
                cpublic3.addAll((C3442oJ) list);
                C3736tJ.m8256return(obj, j, cpublic3);
                cpublic = cpublic3;
            }
            return cpublic;
        }

        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: do */
        public final void mo3983do(long j, Object obj) {
            Object unmodifiableList;
            List list = (List) C3736tJ.m8248final(j, obj);
            if (list instanceof InterfaceC0569Vp) {
                unmodifiableList = ((InterfaceC0569Vp) list).mo2668interface();
            } else {
                if (f6635do.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof Dx) && (list instanceof Cthrow.Cfor)) {
                    Cthrow.Cfor cfor = (Cthrow.Cfor) list;
                    if (cfor.mo3879do()) {
                        cfor.mo3880if();
                        return;
                    }
                    return;
                }
                unmodifiableList = DesugarCollections.unmodifiableList(list);
            }
            C3736tJ.m8256return(obj, j, unmodifiableList);
        }

        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: for */
        public final List mo3984for(long j, Object obj) {
            return m3986new(obj, 10, j);
        }

        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: if */
        public final void mo3985if(Object obj, long j, Object obj2) {
            List list = (List) C3736tJ.m8248final(j, obj2);
            List m3986new = m3986new(obj, list.size(), j);
            int size = m3986new.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                m3986new.addAll(list);
            }
            if (size > 0) {
                list = m3986new;
            }
            C3736tJ.m8256return(obj, j, list);
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.return$if, reason: invalid class name */
    public static final class Cif extends Creturn {
        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: do */
        public final void mo3983do(long j, Object obj) {
            ((Cthrow.Cfor) C3736tJ.m8248final(j, obj)).mo3880if();
        }

        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: for */
        public final List mo3984for(long j, Object obj) {
            Cthrow.Cfor cfor = (Cthrow.Cfor) C3736tJ.m8248final(j, obj);
            if (cfor.mo3879do()) {
                return cfor;
            }
            int size = cfor.size();
            Cthrow.Cfor mo3833class = cfor.mo3833class(size == 0 ? 10 : size * 2);
            C3736tJ.m8256return(obj, j, mo3833class);
            return mo3833class;
        }

        @Override // androidx.datastore.preferences.protobuf.Creturn
        /* renamed from: if */
        public final void mo3985if(Object obj, long j, Object obj2) {
            Cthrow.Cfor cfor = (Cthrow.Cfor) C3736tJ.m8248final(j, obj);
            Cthrow.Cfor cfor2 = (Cthrow.Cfor) C3736tJ.m8248final(j, obj2);
            int size = cfor.size();
            int size2 = cfor2.size();
            if (size > 0 && size2 > 0) {
                if (!cfor.mo3879do()) {
                    cfor = cfor.mo3833class(size2 + size);
                }
                cfor.addAll(cfor2);
            }
            if (size > 0) {
                cfor2 = cfor;
            }
            C3736tJ.m8256return(obj, j, cfor2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo3983do(long j, Object obj);

    /* renamed from: for, reason: not valid java name */
    public abstract List mo3984for(long j, Object obj);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo3985if(Object obj, long j, Object obj2);
}
