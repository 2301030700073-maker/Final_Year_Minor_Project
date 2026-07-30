package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import androidx.activity.result.Cdo;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookActivity;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.NativeProtocol;
import defpackage.AbstractC0665a0;
import defpackage.B6;
import defpackage.C0173Do;
import defpackage.C2723ez;
import defpackage.C3206kJ;
import defpackage.C3341me;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.W;

/* loaded from: classes.dex */
public final class DialogPresenter {
    public static final DialogPresenter INSTANCE = new DialogPresenter();

    public interface ParameterProvider {
        Bundle getLegacyParameters();

        Bundle getParameters();
    }

    private DialogPresenter() {
    }

    public static final boolean canPresentNativeDialogWithFeature(DialogFeature dialogFeature) {
        C0173Do.m401try(dialogFeature, "feature");
        return getProtocolVersionForNativeDialog(dialogFeature).getProtocolVersion() != -1;
    }

    public static final boolean canPresentWebFallbackDialogWithFeature(DialogFeature dialogFeature) {
        C0173Do.m401try(dialogFeature, "feature");
        return INSTANCE.getDialogWebFallbackUri(dialogFeature) != null;
    }

    private final Uri getDialogWebFallbackUri(DialogFeature dialogFeature) {
        String name = dialogFeature.name();
        String action = dialogFeature.getAction();
        FetchedAppSettings.DialogFeatureConfig dialogFeatureConfig = FetchedAppSettings.Companion.getDialogFeatureConfig(C3756th.m8303if(), action, name);
        if (dialogFeatureConfig != null) {
            return dialogFeatureConfig.getFallbackUrl();
        }
        return null;
    }

    public static final NativeProtocol.ProtocolVersionQueryResult getProtocolVersionForNativeDialog(DialogFeature dialogFeature) {
        C0173Do.m401try(dialogFeature, "feature");
        String m8303if = C3756th.m8303if();
        String action = dialogFeature.getAction();
        return NativeProtocol.getLatestAvailableProtocolVersionForAction(action, INSTANCE.getVersionSpecForFeature(m8303if, action, dialogFeature));
    }

    private final int[] getVersionSpecForFeature(String str, String str2, DialogFeature dialogFeature) {
        FetchedAppSettings.DialogFeatureConfig dialogFeatureConfig = FetchedAppSettings.Companion.getDialogFeatureConfig(str, str2, dialogFeature.name());
        int[] versionSpec = dialogFeatureConfig == null ? null : dialogFeatureConfig.getVersionSpec();
        return versionSpec == null ? new int[]{dialogFeature.getMinVersion()} : versionSpec;
    }

    public static final void logDialogActivity(Context context, String str, String str2) {
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "eventName");
        C0173Do.m401try(str2, "outcome");
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME, str2);
        internalAppEventsLogger.logEventImplicitly(str, bundle);
    }

    public static final void present(AppCall appCall, Activity activity) {
        C0173Do.m401try(appCall, "appCall");
        C0173Do.m401try(activity, "activity");
        activity.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static final void setupAppCallForCannotShowError(AppCall appCall) {
        C0173Do.m401try(appCall, "appCall");
        setupAppCallForValidationError(appCall, new C3344mh("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    public static final void setupAppCallForCustomTabDialog(AppCall appCall, String str, Bundle bundle) {
        C0173Do.m401try(appCall, "appCall");
        Validate validate = Validate.INSTANCE;
        Validate.hasCustomTabRedirectActivity(C3756th.m8299do(), CustomTabUtils.getDefaultRedirectURI());
        Validate.hasInternetPermissions(C3756th.m8299do());
        Intent intent = new Intent(C3756th.m8299do(), (Class<?>) CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f9243break, str);
        intent.putExtra(CustomTabMainActivity.f9244catch, bundle);
        intent.putExtra(CustomTabMainActivity.f9245class, CustomTabUtils.getChromePackage());
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), str, NativeProtocol.getLatestKnownVersion(), null);
        appCall.setRequestIntent(intent);
    }

    public static final void setupAppCallForErrorResult(AppCall appCall, C3344mh c3344mh) {
        C0173Do.m401try(appCall, "appCall");
        if (c3344mh == null) {
            return;
        }
        Validate validate = Validate.INSTANCE;
        Validate.hasFacebookActivity(C3756th.m8299do());
        Intent intent = new Intent();
        intent.setClass(C3756th.m8299do(), FacebookActivity.class);
        intent.setAction("PassThrough");
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), null, NativeProtocol.getLatestKnownVersion(), NativeProtocol.createBundleForException(c3344mh));
        appCall.setRequestIntent(intent);
    }

    public static final void setupAppCallForNativeDialog(AppCall appCall, ParameterProvider parameterProvider, DialogFeature dialogFeature) {
        C0173Do.m401try(appCall, "appCall");
        C0173Do.m401try(parameterProvider, "parameterProvider");
        C0173Do.m401try(dialogFeature, "feature");
        Context m8299do = C3756th.m8299do();
        String action = dialogFeature.getAction();
        NativeProtocol.ProtocolVersionQueryResult protocolVersionForNativeDialog = getProtocolVersionForNativeDialog(dialogFeature);
        int protocolVersion = protocolVersionForNativeDialog.getProtocolVersion();
        if (protocolVersion == -1) {
            throw new C3344mh("Cannot present this dialog. This likely means that the Facebook app is not installed.");
        }
        Bundle parameters = NativeProtocol.isVersionCompatibleWithBucketedIntent(protocolVersion) ? parameterProvider.getParameters() : parameterProvider.getLegacyParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        Intent createPlatformActivityIntent = NativeProtocol.createPlatformActivityIntent(m8299do, appCall.getCallId().toString(), action, protocolVersionForNativeDialog, parameters);
        if (createPlatformActivityIntent == null) {
            throw new C3344mh("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        appCall.setRequestIntent(createPlatformActivityIntent);
    }

    public static final void setupAppCallForValidationError(AppCall appCall, C3344mh c3344mh) {
        C0173Do.m401try(appCall, "appCall");
        setupAppCallForErrorResult(appCall, c3344mh);
    }

    public static final void setupAppCallForWebDialog(AppCall appCall, String str, Bundle bundle) {
        C0173Do.m401try(appCall, "appCall");
        Validate validate = Validate.INSTANCE;
        Validate.hasFacebookActivity(C3756th.m8299do());
        Validate.hasInternetPermissions(C3756th.m8299do());
        Bundle bundle2 = new Bundle();
        bundle2.putString(NativeProtocol.WEB_DIALOG_ACTION, str);
        bundle2.putBundle(NativeProtocol.WEB_DIALOG_PARAMS, bundle);
        Intent intent = new Intent();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), str, NativeProtocol.getLatestKnownVersion(), bundle2);
        intent.setClass(C3756th.m8299do(), FacebookActivity.class);
        intent.setAction(FacebookDialogFragment.TAG);
        appCall.setRequestIntent(intent);
    }

    public static final void setupAppCallForWebFallbackDialog(AppCall appCall, Bundle bundle, DialogFeature dialogFeature) {
        Uri buildUri;
        C0173Do.m401try(appCall, "appCall");
        C0173Do.m401try(dialogFeature, "feature");
        Validate validate = Validate.INSTANCE;
        Validate.hasFacebookActivity(C3756th.m8299do());
        Validate.hasInternetPermissions(C3756th.m8299do());
        String name = dialogFeature.name();
        Uri dialogWebFallbackUri = INSTANCE.getDialogWebFallbackUri(dialogFeature);
        if (dialogWebFallbackUri == null) {
            throw new C3344mh("Unable to fetch the Url for the DialogFeature : '" + name + '\'');
        }
        int latestKnownVersion = NativeProtocol.getLatestKnownVersion();
        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
        String uuid = appCall.getCallId().toString();
        C0173Do.m399new(uuid, "appCall.callId.toString()");
        Bundle queryParamsForPlatformActivityIntentWebFallback = ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(uuid, latestKnownVersion, bundle);
        if (queryParamsForPlatformActivityIntentWebFallback == null) {
            throw new C3344mh("Unable to fetch the app's key-hash");
        }
        if (dialogWebFallbackUri.isRelative()) {
            Utility utility = Utility.INSTANCE;
            buildUri = Utility.buildUri(ServerProtocol.getDialogAuthority(), dialogWebFallbackUri.toString(), queryParamsForPlatformActivityIntentWebFallback);
        } else {
            Utility utility2 = Utility.INSTANCE;
            buildUri = Utility.buildUri(dialogWebFallbackUri.getAuthority(), dialogWebFallbackUri.getPath(), queryParamsForPlatformActivityIntentWebFallback);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("url", buildUri.toString());
        bundle2.putBoolean(NativeProtocol.WEB_DIALOG_IS_FALLBACK, true);
        Intent intent = new Intent();
        NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), dialogFeature.getAction(), NativeProtocol.getLatestKnownVersion(), bundle2);
        intent.setClass(C3756th.m8299do(), FacebookActivity.class);
        intent.setAction(FacebookDialogFragment.TAG);
        appCall.setRequestIntent(intent);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [T, c0] */
    public static final void startActivityForResultWithAndroidX(Cdo cdo, B6 b6, Intent intent, int i) {
        C0173Do.m401try(cdo, "registry");
        C0173Do.m401try(intent, "intent");
        C2723ez c2723ez = new C2723ez();
        ?? m3207new = cdo.m3207new(C0173Do.m397goto(Integer.valueOf(i), "facebook-dialog-request-"), new W<Intent, Pair<Integer, Intent>>() { // from class: com.facebook.internal.DialogPresenter$startActivityForResultWithAndroidX$1
            @Override // defpackage.W
            public Intent createIntent(Context context, Intent intent2) {
                C0173Do.m401try(context, "context");
                C0173Do.m401try(intent2, "input");
                return intent2;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.W
            public Pair<Integer, Intent> parseResult(int i2, Intent intent2) {
                Pair<Integer, Intent> create = Pair.create(Integer.valueOf(i2), intent2);
                C0173Do.m399new(create, "create(resultCode, intent)");
                return create;
            }
        }, new C3341me(b6, i, c2723ez));
        c2723ez.f12779do = m3207new;
        m3207new.mo3104do(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityForResultWithAndroidX$lambda-2, reason: not valid java name */
    public static final void m5402startActivityForResultWithAndroidX$lambda2(B6 b6, int i, C2723ez c2723ez, Pair pair) {
        C0173Do.m401try(c2723ez, "$launcher");
        if (b6 == null) {
            b6 = new CallbackManagerImpl();
        }
        Object obj = pair.first;
        C0173Do.m399new(obj, "result.first");
        b6.onActivityResult(i, ((Number) obj).intValue(), (Intent) pair.second);
        AbstractC0665a0 abstractC0665a0 = (AbstractC0665a0) c2723ez.f12779do;
        if (abstractC0665a0 == null) {
            return;
        }
        synchronized (abstractC0665a0) {
            abstractC0665a0.mo3105if();
            c2723ez.f12779do = null;
            C3206kJ c3206kJ = C3206kJ.f13965do;
        }
    }

    public static final void present(AppCall appCall, FragmentWrapper fragmentWrapper) {
        C0173Do.m401try(appCall, "appCall");
        C0173Do.m401try(fragmentWrapper, "fragmentWrapper");
        fragmentWrapper.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static final void present(AppCall appCall, Cdo cdo, B6 b6) {
        C0173Do.m401try(appCall, "appCall");
        C0173Do.m401try(cdo, "registry");
        Intent requestIntent = appCall.getRequestIntent();
        if (requestIntent == null) {
            return;
        }
        startActivityForResultWithAndroidX(cdo, b6, requestIntent, appCall.getRequestCode());
        appCall.setPending();
    }
}
