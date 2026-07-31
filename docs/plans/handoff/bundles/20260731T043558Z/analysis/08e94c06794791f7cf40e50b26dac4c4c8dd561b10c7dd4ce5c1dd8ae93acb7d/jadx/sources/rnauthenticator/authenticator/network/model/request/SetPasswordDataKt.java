package rnauthenticator.authenticator.network.model.request;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetPasswordData.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\u0000\u001a\u0018\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0005"}, d2 = {"toRequestParams", "", "", "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "toHeaderParams", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SetPasswordDataKt {
    public static final Map<String, String> toRequestParams(SetPasswordData setPasswordData) {
        Intrinsics.checkNotNullParameter(setPasswordData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("current_password", setPasswordData.getCurrentPassword()), TuplesKt.to("new_password", setPasswordData.getNewPassword()));
    }

    public static final Map<String, String> toHeaderParams(SetPasswordData setPasswordData) {
        Intrinsics.checkNotNullParameter(setPasswordData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("refresh-token", setPasswordData.getRefreshToken()));
    }
}
