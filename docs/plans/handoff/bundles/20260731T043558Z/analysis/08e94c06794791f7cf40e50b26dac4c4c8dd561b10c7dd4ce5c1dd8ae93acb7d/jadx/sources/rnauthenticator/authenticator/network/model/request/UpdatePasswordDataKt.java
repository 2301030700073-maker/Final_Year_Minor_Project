package rnauthenticator.authenticator.network.model.request;

import androidx.autofill.HintConstants;
import com.facebook.internal.ServerProtocol;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdatePasswordData.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000\u001a\u0018\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0005"}, d2 = {"toRequestParams", "", "", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "toQueryParams", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UpdatePasswordDataKt {
    public static final Map<String, String> toRequestParams(UpdatePasswordData updatePasswordData) {
        Intrinsics.checkNotNullParameter(updatePasswordData, "<this>");
        return MapsKt.mapOf(TuplesKt.to(HintConstants.AUTOFILL_HINT_NEW_PASSWORD, updatePasswordData.getNewPassword()));
    }

    public static final Map<String, String> toQueryParams(UpdatePasswordData updatePasswordData) {
        Intrinsics.checkNotNullParameter(updatePasswordData, "<this>");
        return MapsKt.mapOf(TuplesKt.to(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, updatePasswordData.getResponseType()), TuplesKt.to("client_id", updatePasswordData.getClientId()), TuplesKt.to("lang", updatePasswordData.getLocale()), TuplesKt.to(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, updatePasswordData.getRedirectUrl()), TuplesKt.to("token", updatePasswordData.getToken()), TuplesKt.to("audience", updatePasswordData.getClientType()));
    }
}
