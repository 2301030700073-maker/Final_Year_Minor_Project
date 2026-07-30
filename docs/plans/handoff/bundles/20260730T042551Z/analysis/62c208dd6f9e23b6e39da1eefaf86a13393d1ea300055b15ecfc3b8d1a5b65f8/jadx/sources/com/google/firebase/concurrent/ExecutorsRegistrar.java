package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import defpackage.C0406Og;
import defpackage.C0428Pg;
import defpackage.C0472Rg;
import defpackage.C0503Sp;
import defpackage.C0793c9;
import defpackage.C3459oe;
import defpackage.C3608r9;
import defpackage.Cpackage;
import defpackage.Dy;
import defpackage.G4;
import defpackage.InterfaceC0803cJ;
import defpackage.InterfaceC2891hq;
import defpackage.InterfaceC3655ry;
import defpackage.InterfaceC4017y5;
import defpackage.V1;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes3.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* renamed from: do, reason: not valid java name */
    public static final C0503Sp<ScheduledExecutorService> f11870do = new C0503Sp<>(new C3608r9(2));

    /* renamed from: if, reason: not valid java name */
    public static final C0503Sp<ScheduledExecutorService> f11872if = new C0503Sp<>(new C0406Og(0));

    /* renamed from: for, reason: not valid java name */
    public static final C0503Sp<ScheduledExecutorService> f11871for = new C0503Sp<>(new C0428Pg(0));

    /* renamed from: new, reason: not valid java name */
    public static final C0503Sp<ScheduledExecutorService> f11873new = new C0503Sp<>(new InterfaceC3655ry() { // from class: Qg
        @Override // defpackage.InterfaceC3655ry
        public final Object get() {
            C0503Sp<ScheduledExecutorService> c0503Sp = ExecutorsRegistrar.f11870do;
            return Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC0117Bc("Firebase Scheduler", 0, null));
        }
    });

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<C0793c9<?>> getComponents() {
        C0793c9[] c0793c9Arr = new C0793c9[4];
        Dy dy = new Dy(G4.class, ScheduledExecutorService.class);
        int i = 0;
        int i2 = 1;
        Dy[] dyArr = {new Dy(G4.class, ExecutorService.class), new Dy(G4.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(dy);
        for (Dy dy2 : dyArr) {
            if (dy2 == null) {
                throw new NullPointerException("Null interface");
            }
        }
        Collections.addAll(hashSet, dyArr);
        c0793c9Arr[0] = new C0793c9(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C0472Rg(i), hashSet3);
        Dy dy3 = new Dy(InterfaceC4017y5.class, ScheduledExecutorService.class);
        Dy[] dyArr2 = {new Dy(InterfaceC4017y5.class, ExecutorService.class), new Dy(InterfaceC4017y5.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(dy3);
        for (Dy dy4 : dyArr2) {
            if (dy4 == null) {
                throw new NullPointerException("Null interface");
            }
        }
        Collections.addAll(hashSet4, dyArr2);
        c0793c9Arr[1] = new C0793c9(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new V1(), hashSet6);
        Dy dy5 = new Dy(InterfaceC2891hq.class, ScheduledExecutorService.class);
        Dy[] dyArr3 = {new Dy(InterfaceC2891hq.class, ExecutorService.class), new Dy(InterfaceC2891hq.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(dy5);
        for (Dy dy6 : dyArr3) {
            if (dy6 == null) {
                throw new NullPointerException("Null interface");
            }
        }
        Collections.addAll(hashSet7, dyArr3);
        c0793c9Arr[2] = new C0793c9(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new Cpackage(i2), hashSet9);
        C0793c9.Cdo m4888do = C0793c9.m4888do(new Dy(InterfaceC0803cJ.class, Executor.class));
        m4888do.f8508do = new C3459oe(i);
        c0793c9Arr[3] = m4888do.m4893if();
        return Arrays.asList(c0793c9Arr);
    }
}
