package net.openid.appauth;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import net.openid.appauth.AuthorizationException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdToken {
    public static final Set BUILT_IN_CLAIMS = StringsKt__IndentKt.builtInParams("iss", "sub", "aud", "exp", "iat", "nonce", "azp");
    public final HashMap additionalClaims;
    public final ArrayList audience;
    public final String authorizedParty;
    public final Long expiration;
    public final Long issuedAt;
    public final String issuer;
    public final String nonce;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IdTokenException extends Exception {
    }

    public IdToken(String str, ArrayList arrayList, Long l, Long l2, String str2, String str3, HashMap hashMap) {
        this.issuer = str;
        this.audience = arrayList;
        this.expiration = l;
        this.issuedAt = l2;
        this.nonce = str2;
        this.authorizedParty = str3;
        this.additionalClaims = hashMap;
    }

    public static IdToken from(String str) {
        ArrayList arrayList;
        String[] split = str.split("\\.");
        if (split.length <= 1) {
            throw new IdTokenException("ID token must have both header and claims section");
        }
        new JSONObject(new String(Base64.decode(split[0], 8)));
        JSONObject jSONObject = new JSONObject(new String(Base64.decode(split[1], 8)));
        String string = AtomicFU.getString(jSONObject, "iss");
        AtomicFU.getString(jSONObject, "sub");
        try {
        } catch (JSONException unused) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(AtomicFU.getString(jSONObject, "aud"));
            arrayList = arrayList2;
        }
        if (!jSONObject.has("aud")) {
            throw new JSONException("field \"aud\" not found in json object");
        }
        arrayList = AtomicFU.toStringList(jSONObject.getJSONArray("aud"));
        Long valueOf = Long.valueOf(jSONObject.getLong("exp"));
        Long valueOf2 = Long.valueOf(jSONObject.getLong("iat"));
        String stringIfDefined = AtomicFU.getStringIfDefined(jSONObject, "nonce");
        String stringIfDefined2 = AtomicFU.getStringIfDefined(jSONObject, "azp");
        Iterator it = BUILT_IN_CLAIMS.iterator();
        while (it.hasNext()) {
            jSONObject.remove((String) it.next());
        }
        return new IdToken(string, arrayList, valueOf, valueOf2, stringIfDefined, stringIfDefined2, AtomicFU.toMap(jSONObject));
    }

    public final void validate(TokenRequest tokenRequest, SystemClock systemClock, boolean z) {
        AuthorizationServiceDiscovery authorizationServiceDiscovery = (AuthorizationServiceDiscovery) tokenRequest.configuration.this$0;
        if (authorizationServiceDiscovery != null) {
            String str = (String) authorizationServiceDiscovery.get(AuthorizationServiceDiscovery.ISSUER);
            String str2 = this.issuer;
            if (!str2.equals(str)) {
                throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Issuer mismatch"));
            }
            Uri parse = Uri.parse(str2);
            if (!z && !parse.getScheme().equals("https")) {
                throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Issuer must be an https URL"));
            }
            if (TextUtils.isEmpty(parse.getHost())) {
                throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Issuer host can not be empty"));
            }
            if (parse.getFragment() != null || parse.getQueryParameterNames().size() > 0) {
                throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Issuer URL should not containt query parameters or fragment components"));
            }
        }
        String str3 = tokenRequest.clientId;
        if (!this.audience.contains(str3) && !str3.equals(this.authorizedParty)) {
            throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Audience mismatch"));
        }
        systemClock.getClass();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (currentTimeMillis > this.expiration.longValue()) {
            throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("ID Token expired"));
        }
        if (Math.abs(currentTimeMillis - this.issuedAt.longValue()) > 600) {
            throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Issued at time is more than 10 minutes before or after the current time"));
        }
        if ("authorization_code".equals(tokenRequest.grantType)) {
            if (!TextUtils.equals(this.nonce, tokenRequest.nonce)) {
                throw AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_VALIDATION_ERROR, new IdTokenException("Nonce mismatch"));
            }
        }
    }
}
