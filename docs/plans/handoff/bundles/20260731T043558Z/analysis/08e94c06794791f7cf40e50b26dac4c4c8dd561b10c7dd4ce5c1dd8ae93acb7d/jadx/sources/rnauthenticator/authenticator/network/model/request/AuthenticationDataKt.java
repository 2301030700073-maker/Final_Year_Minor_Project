package rnauthenticator.authenticator.network.model.request;

import androidx.autofill.HintConstants;
import com.facebook.internal.ServerProtocol;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AuthenticationData.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"toRequestParams", "", "", "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationDataKt {
    public static final Map<String, String> toRequestParams(AuthenticationData authenticationData) {
        Intrinsics.checkNotNullParameter(authenticationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("grant_type", authenticationData.getGrantType()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, authenticationData.getResponseType()), TuplesKt.to("scope", authenticationData.getScope()), TuplesKt.to("username", authenticationData.getUsername()), TuplesKt.to(HintConstants.AUTOFILL_HINT_PASSWORD, authenticationData.getPassword()), TuplesKt.to("access_token", authenticationData.getSocialToken()), TuplesKt.to("provider", authenticationData.getProvider()), TuplesKt.to("otp_id", authenticationData.getOtpId()), TuplesKt.to("otp_token", authenticationData.getOtp()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE, authenticationData.getCodeChallenge()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE_METHOD, authenticationData.getCodeChallengeMethod()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, authenticationData.getRedirectUrl()));
    }
}
