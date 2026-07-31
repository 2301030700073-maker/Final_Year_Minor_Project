package net.openid.appauth;

import android.net.Uri;
import android.os.Trace;
import android.util.Base64;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PausedCompositionRemembers;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import net.openid.appauth.internal.Logger;
import okio.Okio;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationRequest implements AuthorizationManagementRequest {
    public final Map additionalParameters;
    public final JSONObject claims;
    public final String claimsLocales;
    public final String clientId;
    public final String codeVerifier;
    public final String codeVerifierChallenge;
    public final String codeVerifierChallengeMethod;
    public final LocalStore.AnonymousClass7 configuration;
    public final String display;
    public final String loginHint;
    public final String nonce;
    public final String prompt;
    public final Uri redirectUri;
    public final String responseMode;
    public final String responseType;
    public final String scope;
    public final String state;
    public final String uiLocales;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public Object mClientId;
        public Object mCodeVerifier;
        public Object mCodeVerifierChallenge;
        public Object mCodeVerifierChallengeMethod;
        public Object mConfiguration;
        public Object mLoginHint;
        public Object mNonce;
        public Object mRedirectUri;
        public Object mResponseType;
        public Object mScope;
        public Object mState;

        public Builder() {
            MutableVector mutableVector = new MutableVector(new GapRememberObserverHolder[16]);
            this.mLoginHint = mutableVector;
            MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
            this.mResponseType = new MutableScatterSet();
            this.mScope = mutableVector;
            this.mState = new MutableVector(new Object[16]);
            this.mNonce = new MutableVector(new Function0[16]);
        }

        public static final boolean forgetting$removeFrom(GapRememberObserverHolder gapRememberObserverHolder, MutableVector mutableVector) {
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                RememberObserver rememberObserver = ((GapRememberObserverHolder) objArr[i2]).wrapped;
                if (rememberObserver instanceof PausedCompositionRemembers) {
                    MutableVector mutableVector2 = ((PausedCompositionRemembers) rememberObserver).pausedRemembers;
                    if (mutableVector2.remove(gapRememberObserverHolder) || forgetting$removeFrom(gapRememberObserverHolder, mutableVector2)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void clear() {
            this.mConfiguration = null;
            this.mClientId = null;
            MutableVector mutableVector = (MutableVector) this.mLoginHint;
            mutableVector.clear();
            ((MutableScatterSet) this.mResponseType).clear();
            this.mScope = mutableVector;
            ((MutableVector) this.mState).clear();
            ((MutableVector) this.mNonce).clear();
            this.mCodeVerifier = null;
            this.mCodeVerifierChallenge = null;
            this.mCodeVerifierChallengeMethod = null;
        }

        public void dispatchAbandons() {
            Set set = (Set) this.mConfiguration;
            if (set == null || set.isEmpty()) {
                return;
            }
            Trace.beginSection("Compose:abandons");
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    RememberObserver rememberObserver = (RememberObserver) it.next();
                    it.remove();
                    rememberObserver.onAbandoned();
                }
            } finally {
                Trace.endSection();
            }
        }

        public void dispatchRememberObservers() {
            MutableVector mutableVector = (MutableVector) this.mLoginHint;
            MutableVector mutableVector2 = (MutableVector) this.mState;
            Set set = (Set) this.mConfiguration;
            if (set == null) {
                return;
            }
            this.mRedirectUri = null;
            int i = 26;
            if (mutableVector2.size != 0) {
                Trace.beginSection("Compose:onForgotten");
                try {
                    MutableScatterSet mutableScatterSet = (MutableScatterSet) this.mCodeVerifier;
                    int i2 = mutableVector2.size;
                    while (true) {
                        i2--;
                        if (-1 >= i2) {
                            break;
                        }
                        Object obj = mutableVector2.content[i2];
                        try {
                            if (obj instanceof GapRememberObserverHolder) {
                                RememberObserver rememberObserver = ((GapRememberObserverHolder) obj).wrapped;
                                set.remove(rememberObserver);
                                rememberObserver.onForgotten();
                            }
                            if (obj instanceof ComposeNodeLifecycleCallback) {
                                if (mutableScatterSet == null || !mutableScatterSet.contains(obj)) {
                                    ((ComposeNodeLifecycleCallback) obj).onDeactivate();
                                } else {
                                    ((ComposeNodeLifecycleCallback) obj).onRelease();
                                }
                            }
                        } catch (Throwable th) {
                            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.mClientId;
                            if (compositionErrorContextImpl != null) {
                                Data.Companion.tryAttachComposeStackTrace(th, new Recomposer$$ExternalSyntheticLambda6(i, compositionErrorContextImpl, obj));
                            }
                            throw th;
                        }
                    }
                } finally {
                    Trace.endSection();
                }
            }
            if (mutableVector.size != 0) {
                Trace.beginSection("Compose:onRemembered");
                try {
                    Set set2 = (Set) this.mConfiguration;
                    if (set2 != null) {
                        Object[] objArr = mutableVector.content;
                        int i3 = mutableVector.size;
                        for (int i4 = 0; i4 < i3; i4++) {
                            GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) objArr[i4];
                            RememberObserver rememberObserver2 = gapRememberObserverHolder.wrapped;
                            set2.remove(rememberObserver2);
                            try {
                                rememberObserver2.onRemembered();
                            } catch (Throwable th2) {
                                CompositionErrorContextImpl compositionErrorContextImpl2 = (CompositionErrorContextImpl) this.mClientId;
                                if (compositionErrorContextImpl2 != null) {
                                    Data.Companion.tryAttachComposeStackTrace(th2, new Recomposer$$ExternalSyntheticLambda6(i, compositionErrorContextImpl2, gapRememberObserverHolder));
                                }
                                throw th2;
                            }
                        }
                    }
                } finally {
                }
            }
        }

        public void dispatchSideEffects() {
            MutableVector mutableVector = (MutableVector) this.mNonce;
            if (mutableVector.size != 0) {
                Trace.beginSection("Compose:sideeffects");
                try {
                    Object[] objArr = mutableVector.content;
                    int i = mutableVector.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        ((Function0) objArr[i2]).invoke();
                    }
                    mutableVector.clear();
                } finally {
                    Trace.endSection();
                }
            }
        }

        public void forgetting(GapRememberObserverHolder gapRememberObserverHolder) {
            MutableVector mutableVector = (MutableVector) this.mLoginHint;
            if (!((MutableScatterSet) this.mResponseType).contains(gapRememberObserverHolder)) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.mRedirectUri;
                if (mutableScatterSet == null || !mutableScatterSet.contains(gapRememberObserverHolder)) {
                    ((MutableVector) this.mState).add(gapRememberObserverHolder);
                    return;
                }
                return;
            }
            ((MutableScatterSet) this.mResponseType).remove(gapRememberObserverHolder);
            if (!((MutableVector) this.mScope).remove(gapRememberObserverHolder) && !mutableVector.remove(gapRememberObserverHolder)) {
                forgetting$removeFrom(gapRememberObserverHolder, mutableVector);
            }
            Set set = (Set) this.mConfiguration;
            if (set == null) {
                return;
            }
            set.add(gapRememberObserverHolder.wrapped);
        }

        public void prepare(Set set, CompositionErrorContextImpl compositionErrorContextImpl) {
            clear();
            this.mConfiguration = set;
            this.mClientId = compositionErrorContextImpl;
        }

        public void setCodeVerifier(String str) {
            String str2;
            if (str == null) {
                this.mCodeVerifier = null;
                this.mCodeVerifierChallenge = null;
                this.mCodeVerifierChallengeMethod = null;
                return;
            }
            CodeVerifierUtil.checkCodeVerifier(str);
            this.mCodeVerifier = str;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(str.getBytes("ISO_8859_1"));
                str = Base64.encodeToString(messageDigest.digest(), 11);
            } catch (UnsupportedEncodingException e) {
                Logger.getInstance().log(6, null, "ISO-8859-1 encoding not supported on this device!", e);
                UriKt$$ExternalSyntheticBUOutline0.m("ISO-8859-1 encoding not supported", e);
                return;
            } catch (NoSuchAlgorithmException e2) {
                Logger.getInstance().log(5, null, "SHA-256 is not supported on this device! Using plain challenge", e2);
            }
            this.mCodeVerifierChallenge = str;
            try {
                MessageDigest.getInstance("SHA-256");
                str2 = "S256";
            } catch (NoSuchAlgorithmException unused) {
                str2 = "plain";
            }
            this.mCodeVerifierChallengeMethod = str2;
        }
    }

    static {
        StringsKt__IndentKt.builtInParams("client_id", "code_challenge", "code_challenge_method", "display", "login_hint", "prompt", "ui_locales", "redirect_uri", "response_mode", "response_type", "scope", "state", "claims", "claims_locales");
    }

    public AuthorizationRequest(LocalStore.AnonymousClass7 anonymousClass7, String str, String str2, Uri uri, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, JSONObject jSONObject, String str14, Map map) {
        this.configuration = anonymousClass7;
        this.clientId = str;
        this.responseType = str2;
        this.redirectUri = uri;
        this.additionalParameters = map;
        this.display = str3;
        this.loginHint = str4;
        this.prompt = str5;
        this.uiLocales = str6;
        this.scope = str7;
        this.state = str8;
        this.nonce = str9;
        this.codeVerifier = str10;
        this.codeVerifierChallenge = str11;
        this.codeVerifierChallengeMethod = str12;
        this.responseMode = str13;
        this.claims = jSONObject;
        this.claimsLocales = str14;
    }

    public static AuthorizationRequest jsonDeserialize(JSONObject jSONObject) {
        Okio.checkNotNull(jSONObject, "json cannot be null");
        return new AuthorizationRequest(LocalStore.AnonymousClass7.fromJson(jSONObject.getJSONObject("configuration")), AtomicFU.getString(jSONObject, "clientId"), AtomicFU.getString(jSONObject, "responseType"), AtomicFU.getUri(jSONObject, "redirectUri"), AtomicFU.getStringIfDefined(jSONObject, "display"), AtomicFU.getStringIfDefined(jSONObject, "login_hint"), AtomicFU.getStringIfDefined(jSONObject, "prompt"), AtomicFU.getStringIfDefined(jSONObject, "ui_locales"), AtomicFU.getStringIfDefined(jSONObject, "scope"), AtomicFU.getStringIfDefined(jSONObject, "state"), AtomicFU.getStringIfDefined(jSONObject, "nonce"), AtomicFU.getStringIfDefined(jSONObject, "codeVerifier"), AtomicFU.getStringIfDefined(jSONObject, "codeVerifierChallenge"), AtomicFU.getStringIfDefined(jSONObject, "codeVerifierChallengeMethod"), AtomicFU.getStringIfDefined(jSONObject, "responseMode"), AtomicFU.getJsonObjectIfDefined(jSONObject, "claims"), AtomicFU.getStringIfDefined(jSONObject, "claimsLocales"), AtomicFU.getStringMap(jSONObject, "additionalParameters"));
    }

    @Override // net.openid.appauth.AuthorizationManagementRequest
    public final String getState() {
        return this.state;
    }

    public final JSONObject jsonSerialize() {
        JSONObject jSONObject = new JSONObject();
        AtomicFU.put(jSONObject, "configuration", this.configuration.toJson());
        AtomicFU.put(jSONObject, "clientId", this.clientId);
        AtomicFU.put(jSONObject, "responseType", this.responseType);
        AtomicFU.put(jSONObject, "redirectUri", this.redirectUri.toString());
        AtomicFU.putIfNotNull(jSONObject, "display", this.display);
        AtomicFU.putIfNotNull(jSONObject, "login_hint", this.loginHint);
        AtomicFU.putIfNotNull(jSONObject, "scope", this.scope);
        AtomicFU.putIfNotNull(jSONObject, "prompt", this.prompt);
        AtomicFU.putIfNotNull(jSONObject, "ui_locales", this.uiLocales);
        AtomicFU.putIfNotNull(jSONObject, "state", this.state);
        AtomicFU.putIfNotNull(jSONObject, "nonce", this.nonce);
        AtomicFU.putIfNotNull(jSONObject, "codeVerifier", this.codeVerifier);
        AtomicFU.putIfNotNull(jSONObject, "codeVerifierChallenge", this.codeVerifierChallenge);
        AtomicFU.putIfNotNull(jSONObject, "codeVerifierChallengeMethod", this.codeVerifierChallengeMethod);
        AtomicFU.putIfNotNull(jSONObject, "responseMode", this.responseMode);
        JSONObject jSONObject2 = this.claims;
        if (jSONObject2 != null) {
            try {
                jSONObject.put("claims", jSONObject2);
            } catch (JSONException e) {
                UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
                return null;
            }
        }
        AtomicFU.putIfNotNull(jSONObject, "claimsLocales", this.claimsLocales);
        AtomicFU.put(jSONObject, "additionalParameters", AtomicFU.mapToJsonObject(this.additionalParameters));
        return jSONObject;
    }

    @Override // net.openid.appauth.AuthorizationManagementRequest
    public final String jsonSerializeString() {
        return jsonSerialize().toString();
    }
}
