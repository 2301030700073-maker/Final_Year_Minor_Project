package defpackage;

import android.os.Bundle;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public final class ED implements DialogPresenter.ParameterProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCall f761do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ShareContent<?, ?> f762do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f763do;

    public ED(AppCall appCall, ShareContent<?, ?> shareContent, boolean z) {
        this.f761do = appCall;
        this.f762do = shareContent;
        this.f763do = z;
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getLegacyParameters() {
        return C3850vF.m8444case(this.f761do.getCallId(), this.f762do, this.f763do);
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getParameters() {
        return C3645ro.m8015super(this.f761do.getCallId(), this.f762do, this.f763do);
    }
}
