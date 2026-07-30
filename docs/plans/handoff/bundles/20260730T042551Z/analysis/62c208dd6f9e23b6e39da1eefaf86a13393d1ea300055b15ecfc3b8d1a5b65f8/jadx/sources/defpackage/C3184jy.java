package defpackage;

import androidx.datastore.preferences.protobuf.Cabstract;
import androidx.datastore.preferences.protobuf.Cbreak;
import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cimplements;
import androidx.datastore.preferences.protobuf.Cinterface;
import androidx.datastore.preferences.protobuf.Cprivate;
import androidx.datastore.preferences.protobuf.Creturn;
import androidx.datastore.preferences.protobuf.Cthrow;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* renamed from: jy, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3184jy {

    /* renamed from: do, reason: not valid java name */
    public static final C3184jy f13856do = new C3184jy();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f13857do = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3766tr f13858do = new C3766tr();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.datastore.preferences.protobuf.abstract] */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.datastore.preferences.protobuf.abstract] */
    /* renamed from: do, reason: not valid java name */
    public final <T> BB<T> m7180do(Class<T> cls) {
        Cprivate m3956switch;
        Cprivate cprivate;
        Class<?> cls2;
        Charset charset = Cthrow.f6655do;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f13857do;
        BB<T> bb = (BB) concurrentHashMap.get(cls);
        if (bb != null) {
            return bb;
        }
        C3766tr c3766tr = this.f13858do;
        c3766tr.getClass();
        Class<?> cls3 = Cinterface.f6607do;
        if (!Cfinal.class.isAssignableFrom(cls) && (cls2 = Cinterface.f6607do) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        InterfaceC0440Ps mo1992if = c3766tr.f15800do.mo1992if(cls);
        if (mo1992if.mo716do()) {
            if (Cfinal.class.isAssignableFrom(cls)) {
                cprivate = new Cabstract(Cinterface.f6606do, C2647dh.f12523do, mo1992if.mo717for());
            } else {
                Cimplements<?, ?> cimplements = Cinterface.f6605do;
                Cbreak<?> cbreak = C2647dh.f12522do;
                if (cbreak == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                cprivate = new Cabstract(cimplements, cbreak, mo1992if.mo717for());
            }
            m3956switch = cprivate;
        } else {
            if (Cfinal.class.isAssignableFrom(cls)) {
                m3956switch = mo1992if.mo718if() == 1 ? Cprivate.m3956switch(mo1992if, C0333Ku.f1895do, Creturn.f6634do, Cinterface.f6606do, C2647dh.f12523do, C4002xr.f16624do) : Cprivate.m3956switch(mo1992if, C0333Ku.f1895do, Creturn.f6634do, Cinterface.f6606do, null, C4002xr.f16624do);
            } else {
                if (mo1992if.mo718if() == 1) {
                    InterfaceC0267Hu interfaceC0267Hu = C0333Ku.f1894do;
                    Creturn.Cdo cdo = Creturn.f6633do;
                    Cimplements<?, ?> cimplements2 = Cinterface.f6605do;
                    Cbreak<?> cbreak2 = C2647dh.f12522do;
                    if (cbreak2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    m3956switch = Cprivate.m3956switch(mo1992if, interfaceC0267Hu, cdo, cimplements2, cbreak2, C4002xr.f16623do);
                } else {
                    m3956switch = Cprivate.m3956switch(mo1992if, C0333Ku.f1894do, Creturn.f6633do, Cinterface.f6608if, null, C4002xr.f16623do);
                }
            }
        }
        BB<T> bb2 = (BB) concurrentHashMap.putIfAbsent(cls, m3956switch);
        return bb2 != null ? bb2 : m3956switch;
    }
}
