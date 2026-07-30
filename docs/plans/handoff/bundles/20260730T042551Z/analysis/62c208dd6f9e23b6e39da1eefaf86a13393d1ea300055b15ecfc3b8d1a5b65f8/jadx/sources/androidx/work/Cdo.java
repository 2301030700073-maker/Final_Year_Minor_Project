package androidx.work;

import com.google.android.gms.common.api.Api;
import defpackage.AbstractC0807cN;
import defpackage.C0589Wn;
import defpackage.C0748bN;
import defpackage.C3576qd;
import defpackage.P9;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: androidx.work.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public final int f8136do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0589Wn f8137do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0748bN f8138do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3576qd f8140do;

    /* renamed from: for, reason: not valid java name */
    public final int f8141for;

    /* renamed from: if, reason: not valid java name */
    public final int f8142if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f8139do = m4719do(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ExecutorService f8143if = m4719do(true);

    /* renamed from: androidx.work.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0047do {
    }

    /* renamed from: androidx.work.do$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do, reason: not valid java name */
        Cdo m4720do();
    }

    public Cdo(C0047do c0047do) {
        int i = AbstractC0807cN.f8527do;
        this.f8138do = new C0748bN();
        this.f8137do = new C0589Wn();
        this.f8140do = new C3576qd(0);
        this.f8136do = 4;
        this.f8142if = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f8141for = 20;
    }

    /* renamed from: do, reason: not valid java name */
    public static ExecutorService m4719do(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new P9(z));
    }
}
