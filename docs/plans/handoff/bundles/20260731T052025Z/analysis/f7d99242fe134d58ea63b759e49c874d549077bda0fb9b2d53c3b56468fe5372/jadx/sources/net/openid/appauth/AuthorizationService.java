package net.openid.appauth;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.fsck.k9.mailstore.LockableDatabase;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.IdToken;
import net.openid.appauth.browser.BrowserDescriptor;
import net.openid.appauth.browser.CustomTabManager$1;
import net.openid.appauth.connectivity.DefaultConnectionBuilder;
import net.openid.appauth.internal.Logger;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationService {
    public final BrowserDescriptor mBrowser;
    public final AppAuthConfiguration mClientConfiguration;
    public final Context mContext;
    public final Dispatcher mCustomTabManager;
    public boolean mDisposed;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TokenRequestTask extends AsyncTask {
        public final TokenResponseCallback mCallback;
        public final SystemClock mClientAuthentication;
        public final SystemClock mClock;
        public final DefaultConnectionBuilder mConnectionBuilder;
        public AuthorizationException mException;
        public final TokenRequest mRequest;
        public final boolean mSkipIssuerHttpsCheck;

        public TokenRequestTask(TokenRequest tokenRequest, TokenResponseCallback tokenResponseCallback, Boolean bool) {
            SystemClock systemClock = SystemClock.INSTANCE$1;
            SystemClock systemClock2 = SystemClock.INSTANCE;
            this.mRequest = tokenRequest;
            this.mClientAuthentication = systemClock;
            this.mConnectionBuilder = DefaultConnectionBuilder.INSTANCE;
            this.mClock = systemClock2;
            this.mCallback = tokenResponseCallback;
            this.mSkipIssuerHttpsCheck = bool.booleanValue();
        }

        public static void addJsonToAcceptHeader(HttpURLConnection httpURLConnection) {
            if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("Accept"))) {
                httpURLConnection.setRequestProperty("Accept", "application/json");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x00ca, code lost:
        
            if (r1 == null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00b2, code lost:
        
            r1.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00b0, code lost:
        
            if (r1 == null) goto L36;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r4v3 */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object doInBackground(java.lang.Object[] r10) {
            /*
                r9 = this;
                java.lang.String r0 = "Failed to complete exchange request"
                java.lang.Void[] r10 = (java.lang.Void[]) r10
                net.openid.appauth.SystemClock r10 = r9.mClientAuthentication
                net.openid.appauth.TokenRequest r1 = r9.mRequest
                r2 = 3
                r3 = 0
                r4 = 0
                net.openid.appauth.connectivity.DefaultConnectionBuilder r5 = r9.mConnectionBuilder     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                com.fsck.k9.mailstore.LocalStore$7 r6 = r1.configuration     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.Object r6 = r6.val$placeHolders     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                android.net.Uri r6 = (android.net.Uri) r6     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r5.getClass()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.net.HttpURLConnection r5 = net.openid.appauth.connectivity.DefaultConnectionBuilder.openConnection(r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r6 = "POST"
                r5.setRequestMethod(r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r6 = "Content-Type"
                java.lang.String r7 = "application/x-www-form-urlencoded"
                r5.setRequestProperty(r6, r7)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                addJsonToAcceptHeader(r5)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r6 = 1
                r5.setDoOutput(r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r10.getClass()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.util.HashMap r10 = r1.getRequestParameters()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r1 = r1.clientId     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r6 = "client_id"
                java.util.Map r1 = java.util.Collections.singletonMap(r6, r1)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                if (r1 == 0) goto L4c
                r10.putAll(r1)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                goto L4c
            L42:
                r9 = move-exception
                goto Lce
            L45:
                r10 = move-exception
                r1 = r4
                goto L9f
            L48:
                r10 = move-exception
                r1 = r4
                goto Lb9
            L4c:
                java.lang.String r10 = kotlin.io.ByteStreamsKt.formUrlEncode(r10)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r1 = "Content-Length"
                int r6 = r10.length()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r5.setRequestProperty(r1, r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.io.OutputStreamWriter r1 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                java.io.OutputStream r6 = r5.getOutputStream()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r1.<init>(r6)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r1.write(r10)     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r1.flush()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                int r10 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r1 = 200(0xc8, float:2.8E-43)
                if (r10 < r1) goto L81
                int r10 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                r1 = 300(0x12c, float:4.2E-43)
                if (r10 >= r1) goto L81
                java.io.InputStream r10 = r5.getInputStream()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
                goto L85
            L81:
                java.io.InputStream r10 = r5.getErrorStream()     // Catch: java.lang.Throwable -> L42 org.json.JSONException -> L45 java.io.IOException -> L48
            L85:
                java.lang.String r1 = okio.Options.Companion.readInputStream(r10)     // Catch: java.lang.Throwable -> L92 org.json.JSONException -> L95 java.io.IOException -> L9a
                org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L92 org.json.JSONException -> L95 java.io.IOException -> L9a
                r5.<init>(r1)     // Catch: java.lang.Throwable -> L92 org.json.JSONException -> L95 java.io.IOException -> L9a
                r10.close()     // Catch: java.io.IOException -> L91
            L91:
                return r5
            L92:
                r9 = move-exception
                r4 = r10
                goto Lce
            L95:
                r1 = move-exception
                r8 = r1
                r1 = r10
                r10 = r8
                goto L9f
            L9a:
                r1 = move-exception
                r8 = r1
                r1 = r10
                r10 = r8
                goto Lb9
            L9f:
                java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.internal.Logger r5 = net.openid.appauth.internal.Logger.getInstance()     // Catch: java.lang.Throwable -> Lb6
                r5.log(r2, r10, r0, r3)     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.AuthorizationException r0 = net.openid.appauth.AuthorizationException.GeneralErrors.JSON_DESERIALIZATION_ERROR     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.AuthorizationException r10 = net.openid.appauth.AuthorizationException.fromTemplate(r0, r10)     // Catch: java.lang.Throwable -> Lb6
                r9.mException = r10     // Catch: java.lang.Throwable -> Lb6
                if (r1 == 0) goto Lcd
            Lb2:
                r1.close()     // Catch: java.io.IOException -> Lcd
                goto Lcd
            Lb6:
                r9 = move-exception
                r4 = r1
                goto Lce
            Lb9:
                java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.internal.Logger r5 = net.openid.appauth.internal.Logger.getInstance()     // Catch: java.lang.Throwable -> Lb6
                r5.log(r2, r10, r0, r3)     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.AuthorizationException r0 = net.openid.appauth.AuthorizationException.GeneralErrors.NETWORK_ERROR     // Catch: java.lang.Throwable -> Lb6
                net.openid.appauth.AuthorizationException r10 = net.openid.appauth.AuthorizationException.fromTemplate(r0, r10)     // Catch: java.lang.Throwable -> Lb6
                r9.mException = r10     // Catch: java.lang.Throwable -> Lb6
                if (r1 == 0) goto Lcd
                goto Lb2
            Lcd:
                return r4
            Lce:
                if (r4 == 0) goto Ld3
                r4.close()     // Catch: java.io.IOException -> Ld3
            Ld3:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: net.openid.appauth.AuthorizationService.TokenRequestTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            AuthorizationException fromTemplate;
            JSONObject jSONObject = (JSONObject) obj;
            TokenRequest tokenRequest = this.mRequest;
            AuthorizationException authorizationException = this.mException;
            TokenResponseCallback tokenResponseCallback = this.mCallback;
            if (authorizationException != null) {
                tokenResponseCallback.onTokenRequestCompleted(null, authorizationException);
                return;
            }
            if (jSONObject.has("error")) {
                try {
                    String string = jSONObject.getString("error");
                    AuthorizationException authorizationException2 = (AuthorizationException) AuthorizationException.TokenRequestErrors.STRING_TO_EXCEPTION.get(string);
                    if (authorizationException2 == null) {
                        authorizationException2 = AuthorizationException.TokenRequestErrors.OTHER;
                    }
                    String optString = jSONObject.optString("error_description", null);
                    String optString2 = jSONObject.optString("error_uri");
                    Uri parse = optString2 == null ? null : Uri.parse(optString2);
                    int i = authorizationException2.type;
                    int i2 = authorizationException2.code;
                    if (string == null) {
                        string = authorizationException2.error;
                    }
                    String str = string;
                    if (optString == null) {
                        optString = authorizationException2.errorDescription;
                    }
                    String str2 = optString;
                    if (parse == null) {
                        parse = authorizationException2.errorUri;
                    }
                    fromTemplate = new AuthorizationException(i, i2, str, str2, parse, null);
                } catch (JSONException e) {
                    fromTemplate = AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.JSON_DESERIALIZATION_ERROR, e);
                }
                tokenResponseCallback.onTokenRequestCompleted(null, fromTemplate);
                return;
            }
            try {
                LockableDatabase lockableDatabase = new LockableDatabase();
                Okio.checkNotNull(tokenRequest, "request cannot be null");
                lockableDatabase.mDb = tokenRequest;
                lockableDatabase.generalSettingsManager = Collections.EMPTY_MAP;
                lockableDatabase.fromResponseJson(jSONObject);
                TokenRequest tokenRequest2 = (TokenRequest) lockableDatabase.mDb;
                String str3 = (String) lockableDatabase.mReadLock;
                String str4 = (String) lockableDatabase.mWriteLock;
                Long l = (Long) lockableDatabase.context;
                String str5 = (String) lockableDatabase.storageFilesProvider;
                TokenResponse tokenResponse = new TokenResponse(tokenRequest2, str3, str4, l, str5, (String) lockableDatabase.inTransaction, (String) lockableDatabase.mSchemaDefinition, (Map) lockableDatabase.generalSettingsManager);
                if (str5 != null) {
                    try {
                        try {
                            IdToken.from(str5).validate(tokenRequest, this.mClock, this.mSkipIssuerHttpsCheck);
                        } catch (AuthorizationException e2) {
                            tokenResponseCallback.onTokenRequestCompleted(null, e2);
                            return;
                        }
                    } catch (IdToken.IdTokenException | JSONException e3) {
                        tokenResponseCallback.onTokenRequestCompleted(null, AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.ID_TOKEN_PARSING_ERROR, e3));
                        return;
                    }
                }
                Logger.debug("Token exchange with %s completed", (Uri) tokenRequest.configuration.val$placeHolders);
                tokenResponseCallback.onTokenRequestCompleted(tokenResponse, null);
            } catch (JSONException e4) {
                tokenResponseCallback.onTokenRequestCompleted(null, AuthorizationException.fromTemplate(AuthorizationException.GeneralErrors.JSON_DESERIALIZATION_ERROR, e4));
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TokenResponseCallback {
        void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x0150, code lost:
    
        if (r14.bindService(r2, r0, 33) == false) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AuthorizationService(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.openid.appauth.AuthorizationService.<init>(android.content.Context):void");
    }

    public final void dispose() {
        if (this.mDisposed) {
            return;
        }
        Dispatcher dispatcher = this.mCustomTabManager;
        synchronized (dispatcher) {
            try {
                if (((CustomTabManager$1) dispatcher.runningSyncCalls) != null) {
                    Context context = (Context) ((WeakReference) dispatcher.executorServiceOrNull).get();
                    if (context != null) {
                        context.unbindService((CustomTabManager$1) dispatcher.runningSyncCalls);
                    }
                    ((AtomicReference) dispatcher.readyAsyncCalls).set(null);
                    Logger.debug("CustomTabsService is disconnected", new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mDisposed = true;
    }

    public final void performTokenRequest$1(TokenRequest tokenRequest, TokenResponseCallback tokenResponseCallback) {
        if (this.mDisposed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Service has been disposed and rendered inoperable");
            return;
        }
        Logger.debug("Initiating code exchange request to %s", (Uri) tokenRequest.configuration.val$placeHolders);
        AppAuthConfiguration appAuthConfiguration = this.mClientConfiguration;
        appAuthConfiguration.getClass();
        new TokenRequestTask(tokenRequest, tokenResponseCallback, Boolean.valueOf(appAuthConfiguration.mSkipIssuerHttpsCheck)).execute(new Void[0]);
    }
}
