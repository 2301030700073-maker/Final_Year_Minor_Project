package defpackage;

import android.os.Bundle;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public final class FD implements DialogPresenter.ParameterProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCall f995do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ShareContent<?, ?> f996do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f997do;

    public FD(AppCall appCall, ShareContent<?, ?> shareContent, boolean z) {
        this.f995do = appCall;
        this.f996do = shareContent;
        this.f997do = z;
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getLegacyParameters() {
        return C3850vF.m8444case(this.f995do.getCallId(), this.f996do, this.f997do);
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getParameters() {
        return C3645ro.m8015super(this.f995do.getCallId(), this.f996do, this.f997do);
    }
}
