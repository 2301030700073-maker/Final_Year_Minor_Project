package defpackage;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: Ko, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0327Ko implements InterfaceC3933wh {

    /* renamed from: do, reason: not valid java name */
    public final Object f1881do;

    /* renamed from: if, reason: not valid java name */
    public final Object f1882if;

    public /* synthetic */ C0327Ko() {
        this.f1881do = new AtomicInteger();
        this.f1882if = new AtomicInteger();
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new C0717at((Context) ((InterfaceC3597qy) this.f1881do).get(), (C3280lc) ((InterfaceC3597qy) this.f1882if).get());
    }

    public /* synthetic */ C0327Ko(C2830go c2830go, C3339mc c3339mc) {
        this.f1881do = c2830go;
        this.f1882if = c3339mc;
    }
}
