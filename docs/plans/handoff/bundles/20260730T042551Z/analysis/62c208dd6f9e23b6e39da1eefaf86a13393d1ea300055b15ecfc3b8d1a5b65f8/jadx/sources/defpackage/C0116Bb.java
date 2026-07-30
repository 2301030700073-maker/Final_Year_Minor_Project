package defpackage;

import android.os.Bundle;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import defpackage.A0;
import java.util.Locale;

/* renamed from: Bb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0116Bb implements A0.Cdo {

    /* renamed from: do, reason: not valid java name */
    public F0 f245do;

    /* renamed from: if, reason: not valid java name */
    public F0 f246if;

    /* renamed from: do, reason: not valid java name */
    public final void m191do(int i, Bundle bundle) {
        String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle);
        String string = bundle.getString(FacebookRequestErrorClassification.KEY_NAME);
        if (string != null) {
            Bundle bundle2 = bundle.getBundle(NativeProtocol.WEB_DIALOG_PARAMS);
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            F0 f0 = "clx".equals(bundle2.getString("_o")) ? this.f245do : this.f246if;
            if (f0 == null) {
                return;
            }
            f0.mo542do(bundle2, string);
        }
    }
}
