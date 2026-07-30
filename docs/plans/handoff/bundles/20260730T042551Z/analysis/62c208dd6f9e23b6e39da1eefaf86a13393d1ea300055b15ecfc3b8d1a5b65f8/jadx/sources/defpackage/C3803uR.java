package defpackage;

import android.os.Bundle;
import com.google.common.collect.Ctry;

/* renamed from: uR, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3803uR implements InterfaceC3805uT {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BR f15885do;

    public C3803uR(BR br) {
        this.f15885do = br;
    }

    @Override // defpackage.InterfaceC3805uT
    /* renamed from: do */
    public final void mo1152do(String str, String str2, Bundle bundle, long j) {
        BR br = this.f15885do;
        if (br.f237do.contains(str2)) {
            Bundle bundle2 = new Bundle();
            Ctry<String> ctry = C0810cQ.f8529do;
            String m1592throw = O2.m1592throw(str2, O4.f2547for, O4.f2538do);
            if (m1592throw != null) {
                str2 = m1592throw;
            }
            bundle2.putString("events", str2);
            ((C0116Bb) br.f236do).m191do(2, bundle2);
        }
    }
}
