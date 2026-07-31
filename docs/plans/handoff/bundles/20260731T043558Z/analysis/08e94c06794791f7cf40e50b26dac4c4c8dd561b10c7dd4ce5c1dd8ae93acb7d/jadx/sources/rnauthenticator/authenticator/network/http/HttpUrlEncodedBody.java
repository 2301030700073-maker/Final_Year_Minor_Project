package rnauthenticator.authenticator.network.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.net.URLEncoder;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HttpBody.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0017\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0004HÖ\u0001R\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;", "Lrnauthenticator/authenticator/network/http/HttpBody;", "parameters", "", "", "", "<init>", "(Ljava/util/Map;)V", "getParameters", "()Ljava/util/Map;", "contentType", "getContentType", "()Ljava/lang/String;", "data", "encode", "component", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class HttpUrlEncodedBody implements HttpBody {
    private final Map<String, Object> parameters;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HttpUrlEncodedBody copy$default(HttpUrlEncodedBody httpUrlEncodedBody, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = httpUrlEncodedBody.parameters;
        }
        return httpUrlEncodedBody.copy(map);
    }

    public final Map<String, Object> component1() {
        return this.parameters;
    }

    public final HttpUrlEncodedBody copy(Map<String, ? extends Object> parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return new HttpUrlEncodedBody(parameters);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HttpUrlEncodedBody) && Intrinsics.areEqual(this.parameters, ((HttpUrlEncodedBody) other).parameters);
    }

    public int hashCode() {
        return this.parameters.hashCode();
    }

    public String toString() {
        return "HttpUrlEncodedBody(parameters=" + this.parameters + ")";
    }

    public HttpUrlEncodedBody(Map<String, ? extends Object> parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.parameters = parameters;
    }

    public final Map<String, Object> getParameters() {
        return this.parameters;
    }

    @Override // rnauthenticator.authenticator.network.http.HttpBody
    public String getContentType() {
        return ShareTarget.ENCODING_TYPE_URL_ENCODED;
    }

    @Override // rnauthenticator.authenticator.network.http.HttpBody
    public String data() {
        return CollectionsKt.joinToString$default(this.parameters.entrySet(), "&", null, null, 0, null, new Function1() { // from class: rnauthenticator.authenticator.network.http.HttpUrlEncodedBody$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence data$lambda$0;
                data$lambda$0 = HttpUrlEncodedBody.data$lambda$0(HttpUrlEncodedBody.this, (Map.Entry) obj);
                return data$lambda$0;
            }
        }, 30, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence data$lambda$0(HttpUrlEncodedBody httpUrlEncodedBody, Map.Entry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String encode = httpUrlEncodedBody.encode((String) it.getKey());
        Object value = it.getValue();
        if (value == null) {
            value = "";
        }
        return encode + "=" + httpUrlEncodedBody.encode((String) value);
    }

    private final String encode(String component) {
        String encode = URLEncoder.encode(component, "UTF-8");
        Intrinsics.checkNotNullExpressionValue(encode, "encode(...)");
        return encode;
    }
}
