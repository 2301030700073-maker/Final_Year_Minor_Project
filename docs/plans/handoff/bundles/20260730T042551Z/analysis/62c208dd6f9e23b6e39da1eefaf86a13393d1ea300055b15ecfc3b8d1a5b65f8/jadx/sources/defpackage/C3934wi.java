package defpackage;

import defpackage.C3366n2;

/* renamed from: wi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3934wi implements C3366n2.Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f16383do = Q0.m1818new();

    @Override // defpackage.C3366n2.Cdo
    /* renamed from: do */
    public final void mo7539do() {
        try {
            C3875vi.m8479do();
        } catch (IllegalStateException e) {
            f16383do.m1821else("FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s", e);
        }
    }
}
