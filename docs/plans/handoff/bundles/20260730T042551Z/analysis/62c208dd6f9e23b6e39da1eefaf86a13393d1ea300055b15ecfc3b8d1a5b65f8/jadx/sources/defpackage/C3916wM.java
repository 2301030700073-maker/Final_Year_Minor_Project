package defpackage;

import android.content.Context;
import android.text.TextUtils;
import defpackage.InterfaceC0741bG;

/* renamed from: wM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3916wM implements InterfaceC0741bG.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f16322do;

    public C3916wM(Context context) {
        this.f16322do = context;
    }

    @Override // defpackage.InterfaceC0741bG.Cfor
    /* renamed from: do */
    public final InterfaceC0741bG mo2663do(InterfaceC0741bG.Cif cif) {
        InterfaceC0741bG.Cdo cdo = cif.f8352do;
        if (cdo == null) {
            throw new IllegalArgumentException("Must set a callback to create the configuration.");
        }
        Context context = this.f16322do;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        String str = cif.f8353do;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
        }
        return new C0541Uj(context, str, cdo, true);
    }
}
