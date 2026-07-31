package rnauthenticator.authenticator.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.network.model.response.SetPasswordResponse;

/* compiled from: SetPassword.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toSetPassword", "Lrnauthenticator/authenticator/model/SetPassword;", "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SetPasswordKt {
    public static final SetPassword toSetPassword(SetPasswordResponse setPasswordResponse) {
        Intrinsics.checkNotNullParameter(setPasswordResponse, "<this>");
        return new SetPassword(setPasswordResponse.getErrorCode(), setPasswordResponse.getMessage());
    }
}
