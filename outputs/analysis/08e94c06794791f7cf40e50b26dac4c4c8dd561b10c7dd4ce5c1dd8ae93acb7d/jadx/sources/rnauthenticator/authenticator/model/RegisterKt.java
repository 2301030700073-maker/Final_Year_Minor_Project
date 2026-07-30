package rnauthenticator.authenticator.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.network.model.response.RegistrationResponse;

/* compiled from: Register.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toRegister", "Lrnauthenticator/authenticator/model/Register;", "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RegisterKt {
    public static final Register toRegister(RegistrationResponse registrationResponse) {
        Intrinsics.checkNotNullParameter(registrationResponse, "<this>");
        return new Register(registrationResponse.getBody());
    }
}
