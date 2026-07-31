package net.openid.appauth;

import android.net.Uri;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.text.StringsKt__IndentKt;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RegistrationRequest {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final LinkedHashMap additionalParameters;
    public final LocalStore.AnonymousClass7 configuration;
    public final List grantTypes;
    public final JSONObject jwks;
    public final Uri jwksUri;
    public final ArrayList redirectUris;
    public final List responseTypes;
    public final String subjectType;
    public final String tokenEndpointAuthenticationMethod;

    static {
        StringsKt__IndentKt.builtInParams("redirect_uris", "response_types", "grant_types", "application_type", "subject_type", "jwks_uri", "jwks", "token_endpoint_auth_method");
    }

    public RegistrationRequest(LocalStore.AnonymousClass7 anonymousClass7, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str, Uri uri, JSONObject jSONObject, String str2, LinkedHashMap linkedHashMap) {
        this.configuration = anonymousClass7;
        this.redirectUris = arrayList;
        this.responseTypes = arrayList2;
        this.grantTypes = arrayList3;
        this.subjectType = str;
        this.jwksUri = uri;
        this.jwks = jSONObject;
        this.tokenEndpointAuthenticationMethod = str2;
        this.additionalParameters = linkedHashMap;
    }
}
