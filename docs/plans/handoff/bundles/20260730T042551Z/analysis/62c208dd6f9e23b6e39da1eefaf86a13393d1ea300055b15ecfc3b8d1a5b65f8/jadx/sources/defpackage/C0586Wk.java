package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.login.LoginClient;

/* renamed from: Wk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0586Wk extends PlatformServiceClient {
    public C0586Wk(Context context, LoginClient.Request request) {
        super(context, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REPLY, NativeProtocol.PROTOCOL_VERSION_20121101, request.f9353break, request.f9369throw);
    }

    @Override // com.facebook.internal.PlatformServiceClient
    public final void populateRequestBundle(Bundle bundle) {
        C0173Do.m401try(bundle, "data");
    }
}
