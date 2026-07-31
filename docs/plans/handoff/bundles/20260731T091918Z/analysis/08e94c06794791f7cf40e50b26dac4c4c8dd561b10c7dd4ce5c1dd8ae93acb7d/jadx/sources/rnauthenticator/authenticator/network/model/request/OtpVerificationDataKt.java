package rnauthenticator.authenticator.network.model.request;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OtpVerificationData.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"toRequestParams", "", "", "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OtpVerificationDataKt {
    public static final Map<String, String> toRequestParams(OtpVerificationData otpVerificationData) {
        Intrinsics.checkNotNullParameter(otpVerificationData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("otp_id", otpVerificationData.getOtpId()), TuplesKt.to("otp", otpVerificationData.getOtp()));
    }
}
