package defpackage;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;

/* renamed from: px, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3537px extends AbstractC0459Qp implements InterfaceC0768bk<File> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0768bk<File> f15015do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3537px(C3596qx c3596qx) {
        super(0);
        this.f15015do = c3596qx;
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final File mo585new() {
        File mo585new = this.f15015do.mo585new();
        C0173Do.m401try(mo585new, "<this>");
        String name = mo585new.getName();
        C0173Do.m399new(name, FacebookRequestErrorClassification.KEY_NAME);
        if (C0173Do.m394do(EF.w(name, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), "preferences_pb")) {
            return mo585new;
        }
        throw new IllegalStateException(("File extension for file: " + mo585new + " does not match required extension for Preferences file: preferences_pb").toString());
    }
}
