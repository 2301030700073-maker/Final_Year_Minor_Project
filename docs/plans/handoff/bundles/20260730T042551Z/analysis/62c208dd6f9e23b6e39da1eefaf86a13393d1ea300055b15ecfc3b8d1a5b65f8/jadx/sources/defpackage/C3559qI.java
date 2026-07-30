package defpackage;

import android.content.Context;
import android.util.SparseArray;
import defpackage.C3381nH;

/* renamed from: qI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3559qI implements InterfaceC3933wh {

    /* renamed from: do, reason: not valid java name */
    public final Object f15090do;

    /* renamed from: for, reason: not valid java name */
    public final Object f15091for;

    /* renamed from: if, reason: not valid java name */
    public final Object f15092if;

    /* renamed from: new, reason: not valid java name */
    public final Object f15093new;

    public /* synthetic */ C3559qI(InterfaceC3597qy interfaceC3597qy, InterfaceC3597qy interfaceC3597qy2, C4082zB c4082zB) {
        C3381nH c3381nH = C3381nH.Cdo.f14489do;
        this.f15090do = interfaceC3597qy;
        this.f15092if = interfaceC3597qy2;
        this.f15091for = c4082zB;
        this.f15093new = c3381nH;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        Context context = (Context) ((InterfaceC3597qy) this.f15090do).get();
        InterfaceC4109zg interfaceC4109zg = (InterfaceC4109zg) ((InterfaceC3597qy) this.f15092if).get();
        AbstractC3905wB abstractC3905wB = (AbstractC3905wB) ((InterfaceC3597qy) this.f15091for).get();
        return new C2596cp(context, interfaceC4109zg, abstractC3905wB);
    }

    public /* synthetic */ C3559qI() {
        this.f15090do = new F2();
        this.f15091for = new SparseArray();
        this.f15093new = new C3354mr();
        this.f15092if = new F2();
    }
}
