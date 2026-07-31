package rnauthenticator.authenticator.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.network.model.response.TokenVerificationResponse;

/* compiled from: VerifiedToken.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toVerifiedToken", "Lrnauthenticator/authenticator/model/VerifiedToken;", "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VerifiedTokenKt {
    public static final VerifiedToken toVerifiedToken(TokenVerificationResponse tokenVerificationResponse) {
        Intrinsics.checkNotNullParameter(tokenVerificationResponse, "<this>");
        return new VerifiedToken(tokenVerificationResponse.getStatus(), tokenVerificationResponse.getMessage(), tokenVerificationResponse.getValidToken());
    }
}
