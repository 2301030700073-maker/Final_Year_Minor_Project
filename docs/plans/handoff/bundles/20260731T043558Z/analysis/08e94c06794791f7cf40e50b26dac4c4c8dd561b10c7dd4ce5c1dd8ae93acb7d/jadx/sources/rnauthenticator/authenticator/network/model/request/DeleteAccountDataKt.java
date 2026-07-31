package rnauthenticator.authenticator.network.model.request;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeleteAccountData.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"toQueryParams", "", "", "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DeleteAccountDataKt {
    public static final Map<String, String> toQueryParams(DeleteAccountData deleteAccountData) {
        Intrinsics.checkNotNullParameter(deleteAccountData, "<this>");
        return MapsKt.mapOf(TuplesKt.to("id", deleteAccountData.getId()));
    }
}
