package rnauthenticator.authenticator.network.model.request;

import com.google.common.net.HttpHeaders;
import com.google.gson.Gson;
import io.sentry.protocol.Device;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: OTPAuthenticationData.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003*\u00020\u0006H\u0000\u001a\u0018\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0006H\u0000\u001a\u0018\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0006H\u0000\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u001a\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"digitRegex", "Lkotlin/text/Regex;", "toRequestParams", "", "", "", "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;", "toQueryParams", "toHeaderParams", "getNotificationOptions", "Lrnauthenticator/authenticator/network/model/request/NotificationOptions;", "recipient", "isPhoneNumber", "", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OTPAuthenticationDataKt {
    private static final Regex digitRegex = new Regex("\\d+");

    public static final Map<String, Object> toRequestParams(OTPAuthenticationData oTPAuthenticationData) {
        Intrinsics.checkNotNullParameter(oTPAuthenticationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("recipient", oTPAuthenticationData.getRecipient()), TuplesKt.to("id", oTPAuthenticationData.getId()), TuplesKt.to("notificationOptions", new Gson().toJson(getNotificationOptions(oTPAuthenticationData.getRecipient()))), TuplesKt.to("otpOptions", new Gson().toJson(new OtpOptions(5, 300, true))));
    }

    public static final Map<String, String> toQueryParams(OTPAuthenticationData oTPAuthenticationData) {
        Intrinsics.checkNotNullParameter(oTPAuthenticationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to(Device.JsonKeys.BRAND, "ipp"), TuplesKt.to("country", oTPAuthenticationData.getRegion()), TuplesKt.to("locale", oTPAuthenticationData.getLocale()));
    }

    public static final Map<String, String> toHeaderParams(OTPAuthenticationData oTPAuthenticationData) {
        Intrinsics.checkNotNullParameter(oTPAuthenticationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to(HttpHeaders.CONTENT_TYPE, "application/json"));
    }

    private static final NotificationOptions getNotificationOptions(String str) {
        if (isPhoneNumber(str)) {
            return new NotificationOptions("AUTH", "AUTH_API", "AUTH_SMS_OTP", "MY", null, "AUTH_IPP_MY_EN_SMS_OTP_TEMPLATE", "iProperty");
        }
        return new NotificationOptions("AUTH_MY", "AUTH_API_MY", "AUTH_EMAIL_OTP_MY", "MY", "AUTH/AUTH_API/AUTH_EMAIL_OTP/auth_ipp_email_otp.consumer.en.twig", null, null);
    }

    private static final boolean isPhoneNumber(String str) {
        return digitRegex.matches(str);
    }
}
