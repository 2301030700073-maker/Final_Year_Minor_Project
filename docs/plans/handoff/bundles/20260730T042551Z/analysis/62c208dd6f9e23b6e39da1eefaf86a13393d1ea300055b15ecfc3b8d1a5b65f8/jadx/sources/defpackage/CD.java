package defpackage;

import android.os.Bundle;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public final class CD implements DialogPresenter.ParameterProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCall f342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ShareContent<?, ?> f343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f344do;

    public CD(AppCall appCall, ShareContent<?, ?> shareContent, boolean z) {
        this.f342do = appCall;
        this.f343do = shareContent;
        this.f344do = z;
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getLegacyParameters() {
        return C3850vF.m8444case(this.f342do.getCallId(), this.f343do, this.f344do);
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getParameters() {
        return C3645ro.m8015super(this.f342do.getCallId(), this.f343do, this.f344do);
    }
}
