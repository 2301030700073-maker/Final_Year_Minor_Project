package defpackage;

import defpackage.C3305m0;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Set;

/* renamed from: q0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3541q0 extends C3305m0.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Type[] f15024do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Set f15025if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3541q0(Type type, Set set, Object obj, Method method, boolean z, Type[] typeArr, Set set2) {
        super(type, set, obj, method, z);
        this.f15024do = typeArr;
        this.f15025if = set2;
    }

    @Override // defpackage.C3305m0.Cif
    /* renamed from: do */
    public final Object mo7442do(C3886vt c3886vt, C3470op c3470op) {
        return ((C3305m0.Cif) this).f14288do.invoke(((C3305m0.Cif) this).f14287do, c3886vt.m8486if(this.f15024do[0], this.f15025if).mo249do(c3470op));
    }
}
