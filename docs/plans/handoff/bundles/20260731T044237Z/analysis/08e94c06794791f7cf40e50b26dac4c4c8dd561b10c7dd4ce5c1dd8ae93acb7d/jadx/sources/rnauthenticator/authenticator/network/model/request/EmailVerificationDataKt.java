package rnauthenticator.authenticator.network.model.request;

import com.facebook.internal.ServerProtocol;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EmailVerificationData.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"toQueryParams", "", "", "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EmailVerificationDataKt {
    public static final Map<String, String> toQueryParams(EmailVerificationData emailVerificationData) {
        Intrinsics.checkNotNullParameter(emailVerificationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("token", emailVerificationData.getToken()), TuplesKt.to("scope", emailVerificationData.getScope()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, emailVerificationData.getRedirectUrl()), TuplesKt.to("client_id", emailVerificationData.getClientId()));
    }
}
