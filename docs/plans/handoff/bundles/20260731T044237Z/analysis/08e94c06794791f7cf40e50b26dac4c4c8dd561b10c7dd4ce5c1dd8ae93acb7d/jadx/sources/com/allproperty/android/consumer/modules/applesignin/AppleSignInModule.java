package com.allproperty.android.consumer.modules.applesignin;

import android.app.Activity;
import android.net.Uri;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment;
import com.allproperty.android.consumer.modules.applesignin.LoginResult;
import com.facebook.internal.ServerProtocol;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableNativeMap;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppleSignInModule.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\t\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "clientId", "", "redirectUri", "getName", "setUp", "", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", FirebaseAnalytics.Event.LOGIN, "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AppleSignInModule extends ReactContextBaseJavaModule {
    private static final String REACT_CLASS = "AppleSignIn";
    private String clientId;
    private String redirectUri;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppleSignInModule(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @ReactMethod
    public final void setUp(String clientId, String redirectUri, Promise promise) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
        Intrinsics.checkNotNullParameter(promise, "promise");
        this.clientId = clientId;
        this.redirectUri = redirectUri;
        promise.resolve(null);
    }

    @ReactMethod
    public final void login(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        Activity currentActivity = getCurrentActivity();
        Intrinsics.checkNotNull(currentActivity, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) currentActivity;
        final FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        final String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        fragmentActivity.runOnUiThread(new Runnable() { // from class: com.allproperty.android.consumer.modules.applesignin.AppleSignInModule$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppleSignInModule.login$lambda$2(AppleSignInModule.this, uuid, supportFragmentManager, promise);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void login$lambda$2(AppleSignInModule appleSignInModule, String str, FragmentManager fragmentManager, final Promise promise) {
        AppleSignInFragment.Companion companion = AppleSignInFragment.INSTANCE;
        String str2 = appleSignInModule.redirectUri;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("redirectUri");
            str2 = null;
        }
        Uri.Builder buildUpon = Uri.parse("https://appleid.apple.com/auth/authorize").buildUpon();
        buildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, "code id_token");
        buildUpon.appendQueryParameter("scope", "email");
        String str3 = appleSignInModule.clientId;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clientId");
            str3 = null;
        }
        buildUpon.appendQueryParameter("client_id", str3);
        String str4 = appleSignInModule.redirectUri;
        if (str4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("redirectUri");
            str4 = null;
        }
        buildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str4);
        buildUpon.appendQueryParameter("state", str);
        buildUpon.appendQueryParameter("response_mode", "form_post");
        Unit unit = Unit.INSTANCE;
        String uri = buildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        companion.newInstance(str2, uri, str, new Function1() { // from class: com.allproperty.android.consumer.modules.applesignin.AppleSignInModule$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit login$lambda$2$lambda$1;
                login$lambda$2$lambda$1 = AppleSignInModule.login$lambda$2$lambda$1(Promise.this, (LoginResult) obj);
                return login$lambda$2$lambda$1;
            }
        }).show(fragmentManager, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit login$lambda$2$lambda$1(Promise promise, LoginResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof LoginResult.Success) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            LoginResult.Success success = (LoginResult.Success) result;
            writableNativeMap.putString("identityToken", success.getIdToken());
            writableNativeMap.putString("authorizationCode", success.getAuthorizationCode());
            promise.resolve(writableNativeMap);
        } else {
            if (!(result instanceof LoginResult.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            LoginResult.Failure failure = (LoginResult.Failure) result;
            Log.d(REACT_CLASS, "Error: " + failure.getError().getMessage());
            promise.reject("E_GENERAL", failure.getError());
        }
        return Unit.INSTANCE;
    }
}
