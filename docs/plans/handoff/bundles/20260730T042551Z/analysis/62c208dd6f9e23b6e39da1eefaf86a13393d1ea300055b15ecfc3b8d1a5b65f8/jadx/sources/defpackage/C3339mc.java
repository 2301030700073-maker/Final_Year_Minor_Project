package defpackage;

import android.content.Context;

/* renamed from: mc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3339mc implements InterfaceC3933wh {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14364do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3597qy f14365do;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy f14366for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy f14367if;

    public /* synthetic */ C3339mc(InterfaceC3597qy interfaceC3597qy, InterfaceC3933wh interfaceC3933wh, InterfaceC3933wh interfaceC3933wh2, int i) {
        this.f14364do = i;
        this.f14365do = interfaceC3597qy;
        this.f14367if = interfaceC3933wh;
        this.f14366for = interfaceC3933wh2;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        int i = this.f14364do;
        InterfaceC3597qy interfaceC3597qy = this.f14366for;
        InterfaceC3597qy interfaceC3597qy2 = this.f14367if;
        InterfaceC3597qy interfaceC3597qy3 = this.f14365do;
        switch (i) {
            case 0:
                return new C3280lc((Context) interfaceC3597qy3.get(), (InterfaceC2792g8) interfaceC3597qy2.get(), (InterfaceC2792g8) interfaceC3597qy.get());
            default:
                return new JB((Context) interfaceC3597qy3.get(), (String) interfaceC3597qy2.get(), ((Integer) interfaceC3597qy.get()).intValue());
        }
    }
}
