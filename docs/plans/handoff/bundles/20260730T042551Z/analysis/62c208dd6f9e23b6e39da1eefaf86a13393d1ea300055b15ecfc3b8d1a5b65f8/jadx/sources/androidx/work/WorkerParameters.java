package androidx.work;

import android.net.Network;
import android.net.Uri;
import defpackage.AbstractC0807cN;
import defpackage.BM;
import defpackage.C0748bN;
import defpackage.IG;
import defpackage.InterfaceC3758tj;
import defpackage.PM;
import defpackage.Wx;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class WorkerParameters {

    /* renamed from: do, reason: not valid java name */
    public final int f8123do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IG f8124do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Wx f8125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f8126do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f8127do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0807cN f8128do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f8129do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UUID f8130do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f8131do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3758tj f8132do;

    /* renamed from: androidx.work.WorkerParameters$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Network f8133do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<String> f8134do = Collections.emptyList();

        /* renamed from: if, reason: not valid java name */
        public List<Uri> f8135if = Collections.emptyList();
    }

    public WorkerParameters(UUID uuid, Cif cif, List list, Cdo cdo, int i, ExecutorService executorService, IG ig, C0748bN c0748bN, PM pm, BM bm) {
        this.f8130do = uuid;
        this.f8127do = cif;
        this.f8129do = new HashSet(list);
        this.f8126do = cdo;
        this.f8123do = i;
        this.f8131do = executorService;
        this.f8124do = ig;
        this.f8128do = c0748bN;
        this.f8125do = pm;
        this.f8132do = bm;
    }
}
