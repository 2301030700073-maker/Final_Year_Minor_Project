package defpackage;

import android.app.Activity;
import defpackage.InterfaceC3690sa;

/* renamed from: El, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0192El implements IJ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f885do;

    /* renamed from: El$do, reason: invalid class name */
    public class Cdo implements InterfaceC3690sa.Cdo {
        public Cdo() {
        }

        @Override // defpackage.InterfaceC3690sa.Cdo
        /* renamed from: do, reason: not valid java name */
        public final void mo503do() {
            C0170Dl.f646if = true;
            C0170Dl.m379do(C0192El.this.f885do);
        }
    }

    public C0192El(Activity activity) {
        this.f885do = activity;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override // defpackage.IJ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onConsentFormLoadSuccess(defpackage.InterfaceC3690sa r3) {
        /*
            r2 = this;
            defpackage.C0170Dl.f644do = r3     // Catch: java.lang.RuntimeException -> L28
            com.google.android.gms.internal.consent_sdk.zzj r0 = defpackage.C0170Dl.f642do     // Catch: java.lang.RuntimeException -> L28
            if (r0 == 0) goto Lf
            int r0 = r0.getConsentStatus()     // Catch: java.lang.RuntimeException -> L28
            r1 = 2
            if (r0 != r1) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            if (r0 != 0) goto L18
            android.app.Activity r3 = r2.f885do
            defpackage.C0170Dl.m379do(r3)
            return
        L18:
            android.app.Activity r0 = r2.f885do     // Catch: java.lang.RuntimeException -> L23
            El$do r1 = new El$do     // Catch: java.lang.RuntimeException -> L23
            r1.<init>()     // Catch: java.lang.RuntimeException -> L23
            r3.show(r0, r1)     // Catch: java.lang.RuntimeException -> L23
            goto L27
        L23:
            r3 = move-exception
            defpackage.C0170Dl.m382new(r3)
        L27:
            return
        L28:
            r3 = move-exception
            defpackage.C0170Dl.m382new(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0192El.onConsentFormLoadSuccess(sa):void");
    }
}
