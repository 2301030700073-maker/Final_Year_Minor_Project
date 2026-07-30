package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.AbstractC3338mb;
import defpackage.C0173Do;
import defpackage.C0513Td;
import defpackage.C0793c9;
import defpackage.C3645ro;
import defpackage.Dy;
import defpackage.G4;
import defpackage.InterfaceC0803cJ;
import defpackage.InterfaceC2891hq;
import defpackage.InterfaceC3314m9;
import defpackage.InterfaceC4017y5;
import defpackage.O4;
import defpackage.Xz;
import java.util.List;
import java.util.concurrent.Executor;

@Keep
/* loaded from: classes3.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    /* renamed from: com.google.firebase.FirebaseCommonKtxRegistrar$do, reason: invalid class name */
    public static final class Cdo<T> implements InterfaceC3314m9 {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo<T> f11860do = new Cdo<>();

        @Override // defpackage.InterfaceC3314m9
        /* renamed from: try */
        public final Object mo1186try(Xz xz) {
            Object mo2883if = xz.mo2883if(new Dy<>(G4.class, Executor.class));
            C0173Do.m399new(mo2883if, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return C3645ro.m8020throws((Executor) mo2883if);
        }
    }

    /* renamed from: com.google.firebase.FirebaseCommonKtxRegistrar$for, reason: invalid class name */
    public static final class Cfor<T> implements InterfaceC3314m9 {

        /* renamed from: do, reason: not valid java name */
        public static final Cfor<T> f11861do = new Cfor<>();

        @Override // defpackage.InterfaceC3314m9
        /* renamed from: try */
        public final Object mo1186try(Xz xz) {
            Object mo2883if = xz.mo2883if(new Dy<>(InterfaceC4017y5.class, Executor.class));
            C0173Do.m399new(mo2883if, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return C3645ro.m8020throws((Executor) mo2883if);
        }
    }

    /* renamed from: com.google.firebase.FirebaseCommonKtxRegistrar$if, reason: invalid class name */
    public static final class Cif<T> implements InterfaceC3314m9 {

        /* renamed from: do, reason: not valid java name */
        public static final Cif<T> f11862do = new Cif<>();

        @Override // defpackage.InterfaceC3314m9
        /* renamed from: try */
        public final Object mo1186try(Xz xz) {
            Object mo2883if = xz.mo2883if(new Dy<>(InterfaceC2891hq.class, Executor.class));
            C0173Do.m399new(mo2883if, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return C3645ro.m8020throws((Executor) mo2883if);
        }
    }

    /* renamed from: com.google.firebase.FirebaseCommonKtxRegistrar$new, reason: invalid class name */
    public static final class Cnew<T> implements InterfaceC3314m9 {

        /* renamed from: do, reason: not valid java name */
        public static final Cnew<T> f11863do = new Cnew<>();

        @Override // defpackage.InterfaceC3314m9
        /* renamed from: try */
        public final Object mo1186try(Xz xz) {
            Object mo2883if = xz.mo2883if(new Dy<>(InterfaceC0803cJ.class, Executor.class));
            C0173Do.m399new(mo2883if, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return C3645ro.m8020throws((Executor) mo2883if);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4888do = C0793c9.m4888do(new Dy(G4.class, AbstractC3338mb.class));
        m4888do.m4891do(new C0513Td((Dy<?>) new Dy(G4.class, Executor.class), 1, 0));
        m4888do.f8508do = Cdo.f11860do;
        C0793c9.Cdo m4888do2 = C0793c9.m4888do(new Dy(InterfaceC2891hq.class, AbstractC3338mb.class));
        m4888do2.m4891do(new C0513Td((Dy<?>) new Dy(InterfaceC2891hq.class, Executor.class), 1, 0));
        m4888do2.f8508do = Cif.f11862do;
        C0793c9.Cdo m4888do3 = C0793c9.m4888do(new Dy(InterfaceC4017y5.class, AbstractC3338mb.class));
        m4888do3.m4891do(new C0513Td((Dy<?>) new Dy(InterfaceC4017y5.class, Executor.class), 1, 0));
        m4888do3.f8508do = Cfor.f11861do;
        C0793c9.Cdo m4888do4 = C0793c9.m4888do(new Dy(InterfaceC0803cJ.class, AbstractC3338mb.class));
        m4888do4.m4891do(new C0513Td((Dy<?>) new Dy(InterfaceC0803cJ.class, Executor.class), 1, 0));
        m4888do4.f8508do = Cnew.f11863do;
        return O4.m1618private(m4888do.m4893if(), m4888do2.m4893if(), m4888do3.m4893if(), m4888do4.m4893if());
    }
}
