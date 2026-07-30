package defpackage;

import android.content.Context;
import android.os.Bundle;

/* renamed from: Aq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0109Aq implements InterfaceC3141jD {

    /* renamed from: do, reason: not valid java name */
    public final Bundle f141do;

    public C0109Aq(Context context) {
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.f141do = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // defpackage.InterfaceC3141jD
    /* renamed from: do, reason: not valid java name */
    public final C3342mf mo99do() {
        Bundle bundle = this.f141do;
        if (bundle.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return new C3342mf(C3645ro.c(bundle.getInt("firebase_sessions_sessions_restart_timeout"), EnumC3460of.SECONDS));
        }
        return null;
    }

    @Override // defpackage.InterfaceC3141jD
    /* renamed from: for, reason: not valid java name */
    public final Double mo100for() {
        Bundle bundle = this.f141do;
        if (bundle.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(bundle.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    @Override // defpackage.InterfaceC3141jD
    /* renamed from: if, reason: not valid java name */
    public final Object mo101if(InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return C3206kJ.f13965do;
    }

    @Override // defpackage.InterfaceC3141jD
    /* renamed from: new, reason: not valid java name */
    public final Boolean mo102new() {
        Bundle bundle = this.f141do;
        if (bundle.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(bundle.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }
}
