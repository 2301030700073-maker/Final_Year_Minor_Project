package com.facebook.appevents.internal;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.iap.InAppPurchaseEventManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.MJ;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AutomaticAnalyticsLogger {
    private static final String APP_EVENTS_IF_AUTO_LOG_SUBS = "app_events_if_auto_log_subs";
    public static final AutomaticAnalyticsLogger INSTANCE = new AutomaticAnalyticsLogger();
    private static final String TAG = AutomaticAnalyticsLogger.class.getCanonicalName();
    private static final InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(C3756th.m8299do());

    public static final class PurchaseLoggingParameters {
        private Currency currency;
        private Bundle param;
        private BigDecimal purchaseAmount;

        public PurchaseLoggingParameters(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            C0173Do.m401try(bigDecimal, "purchaseAmount");
            C0173Do.m401try(currency, "currency");
            C0173Do.m401try(bundle, "param");
            this.purchaseAmount = bigDecimal;
            this.currency = currency;
            this.param = bundle;
        }

        public final Currency getCurrency() {
            return this.currency;
        }

        public final Bundle getParam() {
            return this.param;
        }

        public final BigDecimal getPurchaseAmount() {
            return this.purchaseAmount;
        }

        public final void setCurrency(Currency currency) {
            C0173Do.m401try(currency, "<set-?>");
            this.currency = currency;
        }

        public final void setParam(Bundle bundle) {
            C0173Do.m401try(bundle, "<set-?>");
            this.param = bundle;
        }

        public final void setPurchaseAmount(BigDecimal bigDecimal) {
            C0173Do.m401try(bigDecimal, "<set-?>");
            this.purchaseAmount = bigDecimal;
        }
    }

    private AutomaticAnalyticsLogger() {
    }

    private final PurchaseLoggingParameters getPurchaseLoggingParameters(String str, String str2) {
        return getPurchaseLoggingParameters(str, str2, new HashMap());
    }

    public static final boolean isImplicitPurchaseLoggingEnabled() {
        FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(C3756th.m8303if());
        return appSettingsWithoutQuery != null && MJ.m1411if() && appSettingsWithoutQuery.getIAPAutomaticLoggingEnabled();
    }

    public static final void logActivateAppEvent() {
        Context m8299do = C3756th.m8299do();
        String m8303if = C3756th.m8303if();
        if (MJ.m1411if() && (m8299do instanceof Application)) {
            AppEventsLogger.Companion.activateApp((Application) m8299do, m8303if);
        }
    }

    public static final void logActivityTimeSpentEvent(String str, long j) {
        Context m8299do = C3756th.m8299do();
        FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
        if (queryAppSettings == null || !queryAppSettings.getAutomaticLoggingEnabled() || j <= 0) {
            return;
        }
        InternalAppEventsLogger internalAppEventsLogger2 = new InternalAppEventsLogger(m8299do);
        Bundle bundle = new Bundle(1);
        bundle.putCharSequence(Constants.AA_TIME_SPENT_SCREEN_PARAMETER_NAME, str);
        internalAppEventsLogger2.logEvent(Constants.AA_TIME_SPENT_EVENT_NAME, j, bundle);
    }

    public static final void logPurchase(String str, String str2, boolean z) {
        PurchaseLoggingParameters purchaseLoggingParameters;
        C0173Do.m401try(str, "purchase");
        C0173Do.m401try(str2, "skuDetails");
        if (isImplicitPurchaseLoggingEnabled() && (purchaseLoggingParameters = INSTANCE.getPurchaseLoggingParameters(str, str2)) != null) {
            boolean z2 = false;
            if (z) {
                FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
                if (FetchedAppGateKeepersManager.getGateKeeperForKey(APP_EVENTS_IF_AUTO_LOG_SUBS, C3756th.m8303if(), false)) {
                    z2 = true;
                }
            }
            if (z2) {
                internalAppEventsLogger.logEventImplicitly(InAppPurchaseEventManager.INSTANCE.hasFreeTrialPeirod(str2) ? AppEventsConstants.EVENT_NAME_START_TRIAL : AppEventsConstants.EVENT_NAME_SUBSCRIBE, purchaseLoggingParameters.getPurchaseAmount(), purchaseLoggingParameters.getCurrency(), purchaseLoggingParameters.getParam());
            } else {
                internalAppEventsLogger.logPurchaseImplicitly(purchaseLoggingParameters.getPurchaseAmount(), purchaseLoggingParameters.getCurrency(), purchaseLoggingParameters.getParam());
            }
        }
    }

    private final PurchaseLoggingParameters getPurchaseLoggingParameters(String str, String str2, Map<String, String> map) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject(str2);
            boolean z = true;
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence(Constants.IAP_PRODUCT_ID, jSONObject.getString("productId"));
            bundle.putCharSequence(Constants.IAP_PURCHASE_TIME, jSONObject.getString("purchaseTime"));
            bundle.putCharSequence(Constants.IAP_PURCHASE_TOKEN, jSONObject.getString("purchaseToken"));
            bundle.putCharSequence(Constants.IAP_PACKAGE_NAME, jSONObject.optString("packageName"));
            bundle.putCharSequence(Constants.IAP_PRODUCT_TITLE, jSONObject2.optString("title"));
            bundle.putCharSequence(Constants.IAP_PRODUCT_DESCRIPTION, jSONObject2.optString(ViewHierarchyConstants.DESC_KEY));
            String optString = jSONObject2.optString("type");
            bundle.putCharSequence(Constants.IAP_PRODUCT_TYPE, optString);
            if (C0173Do.m394do(optString, "subs")) {
                bundle.putCharSequence(Constants.IAP_SUBSCRIPTION_AUTORENEWING, Boolean.toString(jSONObject.optBoolean("autoRenewing", false)));
                bundle.putCharSequence(Constants.IAP_SUBSCRIPTION_PERIOD, jSONObject2.optString("subscriptionPeriod"));
                bundle.putCharSequence(Constants.IAP_FREE_TRIAL_PERIOD, jSONObject2.optString("freeTrialPeriod"));
                String optString2 = jSONObject2.optString("introductoryPriceCycles");
                C0173Do.m399new(optString2, "introductoryPriceCycles");
                if (optString2.length() != 0) {
                    z = false;
                }
                if (!z) {
                    bundle.putCharSequence(Constants.IAP_INTRO_PRICE_AMOUNT_MICROS, jSONObject2.optString("introductoryPriceAmountMicros"));
                    bundle.putCharSequence(Constants.IAP_INTRO_PRICE_CYCLES, optString2);
                }
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bundle.putCharSequence(entry.getKey(), entry.getValue());
            }
            BigDecimal bigDecimal = new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d);
            Currency currency = Currency.getInstance(jSONObject2.getString("price_currency_code"));
            C0173Do.m399new(currency, "getInstance(skuDetailsJSON.getString(\"price_currency_code\"))");
            return new PurchaseLoggingParameters(bigDecimal, currency, bundle);
        } catch (JSONException unused) {
            return null;
        }
    }
}
