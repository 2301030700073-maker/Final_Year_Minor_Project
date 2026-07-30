package rnauthenticator.authenticator.network.http;

import android.net.Uri;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HttpQueryHelper.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¨\u0006\u0006"}, d2 = {"appendQueryParam", "", "Landroid/net/Uri$Builder;", "queryParam", "", "", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HttpQueryHelperKt {
    public static final void appendQueryParam(Uri.Builder builder, Map<String, String> queryParam) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(queryParam, "queryParam");
        if (queryParam.isEmpty()) {
            return;
        }
        for (Map.Entry entry : MapsKt.toMutableMap(queryParam).entrySet()) {
            builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
    }
}
