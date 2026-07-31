package net.openid.appauth;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.text.StringsKt__IndentKt;
import kotlin.uuid.UuidKt;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.internal.Logger;
import okio.Okio;
import org.json.JSONException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AuthorizationManagementActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Intent mAuthIntent;
    public AuthorizationManagementRequest mAuthRequest;
    public boolean mAuthorizationStarted = false;
    public PendingIntent mCancelIntent;
    public PendingIntent mCompleteIntent;

    public final void extractState(Bundle bundle) {
        if (bundle == null) {
            Logger.getInstance().log(5, null, "No stored state - unable to handle response", new Object[0]);
            finish();
            return;
        }
        this.mAuthIntent = (Intent) bundle.getParcelable("authIntent");
        this.mAuthorizationStarted = bundle.getBoolean("authStarted", false);
        this.mCompleteIntent = (PendingIntent) bundle.getParcelable("completeIntent");
        this.mCancelIntent = (PendingIntent) bundle.getParcelable("cancelIntent");
        try {
            String string = bundle.getString("authRequest", null);
            this.mAuthRequest = string != null ? UuidKt.requestFrom(string, bundle.getString("authRequestType", null)) : null;
        } catch (JSONException unused) {
            sendResult(this.mCancelIntent, AuthorizationException.AuthorizationRequestErrors.INVALID_REQUEST.toIntent(), 0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            extractState(getIntent().getExtras());
        } else {
            extractState(bundle);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        char c;
        NodeUtils endSessionResponse;
        Intent intent;
        Long valueOf;
        String[] split;
        super.onResume();
        if (!this.mAuthorizationStarted) {
            try {
                startActivity(this.mAuthIntent);
                this.mAuthorizationStarted = true;
                return;
            } catch (ActivityNotFoundException unused) {
                Logger.debug("Authorization flow canceled due to missing browser", new Object[0]);
                sendResult(this.mCancelIntent, AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.PROGRAM_CANCELED_AUTH_FLOW, null).toIntent(), 0);
                finish();
                return;
            }
        }
        if (getIntent().getData() != null) {
            Uri data = getIntent().getData();
            if (data.getQueryParameterNames().contains("error")) {
                int i = AuthorizationException.$r8$clinit;
                String queryParameter = data.getQueryParameter("error");
                String queryParameter2 = data.getQueryParameter("error_description");
                String queryParameter3 = data.getQueryParameter("error_uri");
                AuthorizationException authorizationException = (AuthorizationException) AuthorizationException.AuthorizationRequestErrors.STRING_TO_EXCEPTION.get(queryParameter);
                if (authorizationException == null) {
                    authorizationException = AuthorizationException.AuthorizationRequestErrors.OTHER;
                }
                int i2 = authorizationException.type;
                int i3 = authorizationException.code;
                if (queryParameter2 == null) {
                    queryParameter2 = authorizationException.errorDescription;
                }
                intent = new AuthorizationException(i2, i3, queryParameter, queryParameter2, queryParameter3 != null ? Uri.parse(queryParameter3) : authorizationException.errorUri, null).toIntent();
            } else {
                AuthorizationManagementRequest authorizationManagementRequest = this.mAuthRequest;
                if (authorizationManagementRequest instanceof AuthorizationRequest) {
                    AuthorizationRequest authorizationRequest = (AuthorizationRequest) authorizationManagementRequest;
                    new LinkedHashMap();
                    String queryParameter4 = data.getQueryParameter("state");
                    Okio.checkNullOrNotEmpty(queryParameter4, "state must not be empty");
                    String queryParameter5 = data.getQueryParameter("token_type");
                    Okio.checkNullOrNotEmpty(queryParameter5, "tokenType must not be empty");
                    String queryParameter6 = data.getQueryParameter("code");
                    Okio.checkNullOrNotEmpty(queryParameter6, "authorizationCode must not be empty");
                    String queryParameter7 = data.getQueryParameter("access_token");
                    Okio.checkNullOrNotEmpty(queryParameter7, "accessToken must not be empty");
                    String queryParameter8 = data.getQueryParameter("expires_in");
                    Long valueOf2 = queryParameter8 != null ? Long.valueOf(Long.parseLong(queryParameter8)) : null;
                    if (valueOf2 == null) {
                        valueOf = null;
                        c = 0;
                    } else {
                        c = 0;
                        valueOf = Long.valueOf(TimeUnit.SECONDS.toMillis(valueOf2.longValue()) + System.currentTimeMillis());
                    }
                    String queryParameter9 = data.getQueryParameter("id_token");
                    Okio.checkNullOrNotEmpty(queryParameter9, "idToken cannot be empty");
                    String queryParameter10 = data.getQueryParameter("scope");
                    String iterableToString = (TextUtils.isEmpty(queryParameter10) || (split = queryParameter10.split(" +")) == null) ? null : Jsoup.iterableToString(Arrays.asList(split));
                    Set set = AuthorizationResponse.BUILT_IN_PARAMS;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (String str : data.getQueryParameterNames()) {
                        if (!set.contains(str)) {
                            linkedHashMap.put(str, data.getQueryParameter(str));
                        }
                    }
                    endSessionResponse = new AuthorizationResponse(authorizationRequest, queryParameter4, queryParameter5, queryParameter6, queryParameter7, valueOf, queryParameter9, iterableToString, DesugarCollections.unmodifiableMap(StringsKt__IndentKt.checkAdditionalParams(linkedHashMap, AuthorizationResponse.BUILT_IN_PARAMS)));
                } else {
                    c = 0;
                    if (!(authorizationManagementRequest instanceof EndSessionRequest)) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Malformed request or uri");
                        return;
                    }
                    EndSessionRequest endSessionRequest = (EndSessionRequest) authorizationManagementRequest;
                    String queryParameter11 = data.getQueryParameter("state");
                    if (queryParameter11 != null) {
                        Okio.checkNotEmpty(queryParameter11, "state must not be empty");
                    }
                    endSessionResponse = new EndSessionResponse(endSessionRequest, queryParameter11);
                }
                if ((this.mAuthRequest.getState() != null || endSessionResponse.getState() == null) && (this.mAuthRequest.getState() == null || this.mAuthRequest.getState().equals(endSessionResponse.getState()))) {
                    intent = endSessionResponse.toIntent();
                } else {
                    String state = endSessionResponse.getState();
                    String state2 = this.mAuthRequest.getState();
                    Object[] objArr = new Object[2];
                    objArr[c] = state;
                    objArr[1] = state2;
                    Logger.getInstance().log(5, null, "State returned in authorization response (%s) does not match state from request (%s) - discarding response", objArr);
                    intent = AuthorizationException.AuthorizationRequestErrors.STATE_MISMATCH.toIntent();
                }
            }
            intent.setData(data);
            sendResult(this.mCompleteIntent, intent, -1);
        } else {
            Logger.debug("Authorization flow canceled by user", new Object[0]);
            sendResult(this.mCancelIntent, AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.USER_CANCELED_AUTH_FLOW, null).toIntent(), 0);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("authStarted", this.mAuthorizationStarted);
        bundle.putParcelable("authIntent", this.mAuthIntent);
        bundle.putString("authRequest", this.mAuthRequest.jsonSerializeString());
        AuthorizationManagementRequest authorizationManagementRequest = this.mAuthRequest;
        bundle.putString("authRequestType", authorizationManagementRequest instanceof AuthorizationRequest ? "authorization" : authorizationManagementRequest instanceof EndSessionRequest ? "end_session" : null);
        bundle.putParcelable("completeIntent", this.mCompleteIntent);
        bundle.putParcelable("cancelIntent", this.mCancelIntent);
    }

    public final void sendResult(PendingIntent pendingIntent, Intent intent, int i) {
        if (pendingIntent == null) {
            setResult(i, intent);
            return;
        }
        try {
            pendingIntent.send(this, 0, intent);
        } catch (PendingIntent.CanceledException e) {
            Logger.getInstance().log(6, null, "Failed to send cancel intent", e);
        }
    }
}
