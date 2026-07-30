package defpackage;

import java.io.File;
import java.util.LinkedHashSet;

/* renamed from: qE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3555qE extends AbstractC0459Qp implements InterfaceC0768bk<File> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3201kE<Object> f15081do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3555qE(C3201kE<Object> c3201kE) {
        super(0);
        this.f15081do = c3201kE;
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final File mo585new() {
        File mo585new = this.f15081do.f13887do.mo585new();
        String absolutePath = mo585new.getAbsolutePath();
        synchronized (C3201kE.f13885do) {
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            if (!(!linkedHashSet.contains(absolutePath))) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + mo585new + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            C0173Do.m399new(absolutePath, "it");
            linkedHashSet.add(absolutePath);
        }
        return mo585new;
    }
}
