package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* renamed from: Hg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0253Hg implements InterfaceC3933wh<Executor> {

    /* renamed from: Hg$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final C0253Hg f1372do = new C0253Hg();
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new ExecutorC3198kB(Executors.newSingleThreadExecutor());
    }
}
