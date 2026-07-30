package defpackage;

import defpackage.C0551Ut;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: Tt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0529Tt extends AbstractC0459Qp implements InterfaceC2650dk<Throwable, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0551Ut.Cdo f3753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C0551Ut f3754do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0529Tt(C0551Ut c0551Ut, C0551Ut.Cdo cdo) {
        super(1);
        this.f3754do = c0551Ut;
        this.f3753do = cdo;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0551Ut.f3994for;
        C0551Ut.Cdo cdo = this.f3753do;
        Object obj = cdo.f3997do;
        C0551Ut c0551Ut = this.f3754do;
        atomicReferenceFieldUpdater.set(c0551Ut, obj);
        c0551Ut.mo2074do(cdo.f3997do);
        return C3206kJ.f13965do;
    }
}
