package org.wikipedia.dataclient.okhttp;

import java.io.IOException;
import java.util.Map;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.wikipedia.dataclient.restbase.RbServiceError;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HttpStatusException extends IOException {
    public final int code;
    public final String message;
    public final RbServiceError serviceError;
    public final String url;

    public HttpStatusException(Response response) {
        this.code = response.code;
        String uri = response.request.url.uri().toString();
        uri.getClass();
        this.url = uri;
        try {
            ResponseBody responseBody = response.body;
            if (StringsKt.contains(String.valueOf(responseBody.contentType()), "json", false)) {
                String string = responseBody.string();
                if (StringsKt.contains(string, "$schema", false)) {
                    this.message = string;
                    return;
                }
                RbServiceError.Companion companion = RbServiceError.Companion;
                companion.getClass();
                JsonImpl jsonImpl = JsonUtil.json;
                Object obj = null;
                if (string.length() != 0) {
                    try {
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(companion.serializer()));
                    } catch (Exception e) {
                        L.w(e);
                    }
                }
                obj.getClass();
                this.serviceError = (RbServiceError) obj;
            }
        } catch (Exception e2) {
            L.e(e2);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2 = this.message;
        if (str2 != null && str2.length() != 0) {
            str2.getClass();
            return str2;
        }
        String str3 = "Code: " + this.code + ", URL: " + this.url;
        RbServiceError rbServiceError = this.serviceError;
        if (rbServiceError == null) {
            return str3;
        }
        String str4 = rbServiceError.errorKey;
        String str5 = "";
        if (str4 == null && (str4 = rbServiceError.title) == null) {
            str4 = "";
        }
        Map map = rbServiceError.messageTranslations;
        if (map == null ? (str = rbServiceError.detail) != null : (str = (String) CollectionsKt.firstOrNull(map.values())) != null) {
            str5 = str;
        }
        return ((Object) str3) + ", key: " + str4 + ", message: " + str5;
    }

    public HttpStatusException(int i, String str, String str2) {
        this.code = i;
        this.url = str;
        this.message = str2;
    }
}
