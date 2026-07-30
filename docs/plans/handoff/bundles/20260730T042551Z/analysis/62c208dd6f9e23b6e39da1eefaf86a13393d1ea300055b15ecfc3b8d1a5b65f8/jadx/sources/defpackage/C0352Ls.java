package defpackage;

import android.os.Bundle;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.share.model.ShareContent;

/* renamed from: Ls, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0352Ls implements DialogPresenter.ParameterProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCall f2035do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ShareContent f2036do;

    public C0352Ls(AppCall appCall, ShareContent shareContent) {
        this.f2035do = appCall;
        this.f2036do = shareContent;
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getLegacyParameters() {
        return C3850vF.m8444case(this.f2035do.getCallId(), this.f2036do, false);
    }

    @Override // com.facebook.internal.DialogPresenter.ParameterProvider
    public final Bundle getParameters() {
        return C3645ro.m8015super(this.f2035do.getCallId(), this.f2036do, false);
    }
}
