package defpackage;

import defpackage.InterfaceC3161jb;
import defpackage.InterfaceC3161jb.Cif;

/* renamed from: break, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cbreak<B extends InterfaceC3161jb.Cif, E extends B> implements InterfaceC3161jb.Cfor<E> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2650dk<InterfaceC3161jb.Cif, E> f8458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb.Cfor<?> f8459do;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [jb$for<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [dk<? super jb$if, ? extends E extends B>, dk<jb$if, E extends B>, java.lang.Object] */
    public Cbreak(InterfaceC3161jb.Cfor<B> cfor, InterfaceC2650dk<? super InterfaceC3161jb.Cif, ? extends E> interfaceC2650dk) {
        C0173Do.m401try(cfor, "baseKey");
        C0173Do.m401try(interfaceC2650dk, "safeCast");
        this.f8458do = interfaceC2650dk;
        this.f8459do = cfor instanceof Cbreak ? (InterfaceC3161jb.Cfor<B>) ((Cbreak) cfor).f8459do : cfor;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ljb$if;)TE; */
    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3161jb.Cif m4865do(InterfaceC3161jb.Cif cif) {
        C0173Do.m401try(cif, "element");
        return (InterfaceC3161jb.Cif) this.f8458do.mo364this(cif);
    }
}
