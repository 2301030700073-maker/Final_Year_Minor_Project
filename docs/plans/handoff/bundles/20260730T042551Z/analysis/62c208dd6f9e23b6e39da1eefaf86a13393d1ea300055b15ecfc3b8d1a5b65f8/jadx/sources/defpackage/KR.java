package defpackage;

import android.os.Bundle;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;

/* loaded from: classes3.dex */
public final class KR implements InterfaceC3805uT {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ WR f1810do;

    public KR(WR wr) {
        this.f1810do = wr;
    }

    @Override // defpackage.InterfaceC3805uT
    /* renamed from: do, reason: not valid java name */
    public final void mo1152do(String str, String str2, Bundle bundle, long j) {
        if (str == null || !(!C0810cQ.f8529do.contains(str2))) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(FacebookRequestErrorClassification.KEY_NAME, str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle(NativeProtocol.WEB_DIALOG_PARAMS, bundle);
        ((C0116Bb) this.f1810do.f4382do).m191do(3, bundle2);
    }
}
