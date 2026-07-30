package com.facebook.internal;

import android.R;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.google.android.gms.common.ConnectionResult;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class FeatureManager {
    private static final String FEATURE_MANAGER_STORE = "com.facebook.internal.FEATURE_MANAGER";
    public static final FeatureManager INSTANCE = new FeatureManager();
    private static final Map<Feature, String[]> featureMapping = new HashMap();

    public interface Callback {
        void onCompleted(boolean z);
    }

    public enum Feature {
        Unknown(-1),
        Core(0),
        AppEvents(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST),
        CodelessEvents(65792),
        CloudBridge(67584),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        IntelligentIntegrity(66562),
        ModelRequest(66563),
        EventDeactivation(66816),
        OnDeviceEventProcessing(67072),
        OnDevicePostInstallEventProcessing(67073),
        IapLogging(67328),
        IapLoggingLib2(67329),
        Instrument(131072),
        CrashReport(131328),
        CrashShield(131329),
        ThreadCheck(131330),
        ErrorReport(131584),
        AnrReport(131840),
        Monitoring(196608),
        ServiceUpdateCompliance(196864),
        Megatron(262144),
        Elora(327680),
        Login(16777216),
        ChromeCustomTabsPrefetching(R.attr.theme),
        IgnoreAppSwitchToLoggedOut(R.id.background),
        BypassAppSwitch(R.style.Animation),
        Share(33554432);

        public static final Companion Companion = new Companion(null);
        private final int code;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }

            public final Feature fromInt(int i) {
                Feature[] valuesCustom = Feature.valuesCustom();
                int length = valuesCustom.length;
                int i2 = 0;
                while (i2 < length) {
                    Feature feature = valuesCustom[i2];
                    i2++;
                    if (feature.code == i) {
                        return feature;
                    }
                }
                return Feature.Unknown;
            }
        }

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Feature.valuesCustom().length];
                iArr[Feature.Core.ordinal()] = 1;
                iArr[Feature.AppEvents.ordinal()] = 2;
                iArr[Feature.CodelessEvents.ordinal()] = 3;
                iArr[Feature.RestrictiveDataFiltering.ordinal()] = 4;
                iArr[Feature.Instrument.ordinal()] = 5;
                iArr[Feature.CrashReport.ordinal()] = 6;
                iArr[Feature.CrashShield.ordinal()] = 7;
                iArr[Feature.ThreadCheck.ordinal()] = 8;
                iArr[Feature.ErrorReport.ordinal()] = 9;
                iArr[Feature.AnrReport.ordinal()] = 10;
                iArr[Feature.AAM.ordinal()] = 11;
                iArr[Feature.CloudBridge.ordinal()] = 12;
                iArr[Feature.PrivacyProtection.ordinal()] = 13;
                iArr[Feature.SuggestedEvents.ordinal()] = 14;
                iArr[Feature.IntelligentIntegrity.ordinal()] = 15;
                iArr[Feature.ModelRequest.ordinal()] = 16;
                iArr[Feature.EventDeactivation.ordinal()] = 17;
                iArr[Feature.OnDeviceEventProcessing.ordinal()] = 18;
                iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 19;
                iArr[Feature.IapLogging.ordinal()] = 20;
                iArr[Feature.IapLoggingLib2.ordinal()] = 21;
                iArr[Feature.Monitoring.ordinal()] = 22;
                iArr[Feature.ServiceUpdateCompliance.ordinal()] = 23;
                iArr[Feature.Megatron.ordinal()] = 24;
                iArr[Feature.Elora.ordinal()] = 25;
                iArr[Feature.Login.ordinal()] = 26;
                iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 27;
                iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 28;
                iArr[Feature.BypassAppSwitch.ordinal()] = 29;
                iArr[Feature.Share.ordinal()] = 30;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        Feature(int i) {
            this.code = i;
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Feature[] valuesCustom() {
            Feature[] valuesCustom = values();
            return (Feature[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final Feature getParent() {
            int i = this.code;
            return (i & 255) > 0 ? Companion.fromInt(i & (-256)) : (65280 & i) > 0 ? Companion.fromInt(i & (-65536)) : (16711680 & i) > 0 ? Companion.fromInt(i & (-16777216)) : Companion.fromInt(0);
        }

        public final String toKey() {
            return C0173Do.m397goto(this, "FBSDKFeature");
        }

        @Override // java.lang.Enum
        public String toString() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return "CoreKit";
                case 2:
                    return "AppEvents";
                case 3:
                    return "CodelessEvents";
                case 4:
                    return "RestrictiveDataFiltering";
                case 5:
                    return "Instrument";
                case 6:
                    return "CrashReport";
                case 7:
                    return "CrashShield";
                case 8:
                    return "ThreadCheck";
                case 9:
                    return "ErrorReport";
                case 10:
                    return "AnrReport";
                case 11:
                    return "AAM";
                case 12:
                    return "AppEventsCloudbridge";
                case 13:
                    return "PrivacyProtection";
                case 14:
                    return "SuggestedEvents";
                case 15:
                    return "IntelligentIntegrity";
                case 16:
                    return "ModelRequest";
                case 17:
                    return "EventDeactivation";
                case 18:
                    return "OnDeviceEventProcessing";
                case 19:
                    return "OnDevicePostInstallEventProcessing";
                case 20:
                    return "IAPLogging";
                case 21:
                    return "IAPLoggingLib2";
                case 22:
                    return "Monitoring";
                case ConnectionResult.API_DISABLED /* 23 */:
                    return "ServiceUpdateCompliance";
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    return "Megatron";
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    return "Elora";
                case 26:
                    return "LoginKit";
                case 27:
                    return "ChromeCustomTabsPrefetching";
                case 28:
                    return "IgnoreAppSwitchToLoggedOut";
                case 29:
                    return "BypassAppSwitch";
                case 30:
                    return "ShareKit";
                default:
                    return "unknown";
            }
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Feature.valuesCustom().length];
            iArr[Feature.RestrictiveDataFiltering.ordinal()] = 1;
            iArr[Feature.Instrument.ordinal()] = 2;
            iArr[Feature.CrashReport.ordinal()] = 3;
            iArr[Feature.CrashShield.ordinal()] = 4;
            iArr[Feature.ThreadCheck.ordinal()] = 5;
            iArr[Feature.ErrorReport.ordinal()] = 6;
            iArr[Feature.AnrReport.ordinal()] = 7;
            iArr[Feature.AAM.ordinal()] = 8;
            iArr[Feature.CloudBridge.ordinal()] = 9;
            iArr[Feature.PrivacyProtection.ordinal()] = 10;
            iArr[Feature.SuggestedEvents.ordinal()] = 11;
            iArr[Feature.IntelligentIntegrity.ordinal()] = 12;
            iArr[Feature.ModelRequest.ordinal()] = 13;
            iArr[Feature.EventDeactivation.ordinal()] = 14;
            iArr[Feature.OnDeviceEventProcessing.ordinal()] = 15;
            iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 16;
            iArr[Feature.IapLogging.ordinal()] = 17;
            iArr[Feature.IapLoggingLib2.ordinal()] = 18;
            iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 19;
            iArr[Feature.Monitoring.ordinal()] = 20;
            iArr[Feature.Megatron.ordinal()] = 21;
            iArr[Feature.Elora.ordinal()] = 22;
            iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 23;
            iArr[Feature.BypassAppSwitch.ordinal()] = 24;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private FeatureManager() {
    }

    public static final void checkFeature(final Feature feature, final Callback callback) {
        C0173Do.m401try(feature, "feature");
        C0173Do.m401try(callback, "callback");
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
        FetchedAppGateKeepersManager.loadAppGateKeepersAsync(new FetchedAppGateKeepersManager.Callback() { // from class: com.facebook.internal.FeatureManager$checkFeature$1
            @Override // com.facebook.internal.FetchedAppGateKeepersManager.Callback
            public void onCompleted() {
                FeatureManager.Callback callback2 = FeatureManager.Callback.this;
                FeatureManager featureManager = FeatureManager.INSTANCE;
                callback2.onCompleted(FeatureManager.isEnabled(feature));
            }
        });
    }

    private final boolean defaultStatus(Feature feature) {
        switch (WhenMappings.$EnumSwitchMapping$0[feature.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return false;
            default:
                return true;
        }
    }

    public static final void disableFeature(Feature feature) {
        C0173Do.m401try(feature, "feature");
        C3756th.m8299do().getSharedPreferences(FEATURE_MANAGER_STORE, 0).edit().putString(feature.toKey(), "16.0.0").apply();
    }

    public static final Feature getFeature(String str) {
        C0173Do.m401try(str, "className");
        INSTANCE.initializeFeatureMapping();
        for (Map.Entry<Feature, String[]> entry : featureMapping.entrySet()) {
            Feature key = entry.getKey();
            String[] value = entry.getValue();
            int length = value.length;
            int i = 0;
            while (i < length) {
                String str2 = value[i];
                i++;
                if (BF.j(str, str2)) {
                    return key;
                }
            }
        }
        return Feature.Unknown;
    }

    private final boolean getGKStatus(Feature feature) {
        boolean defaultStatus = defaultStatus(feature);
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
        return FetchedAppGateKeepersManager.getGateKeeperForKey(feature.toKey(), C3756th.m8303if(), defaultStatus);
    }

    private final synchronized void initializeFeatureMapping() {
        Map<Feature, String[]> map = featureMapping;
        if (map.isEmpty()) {
            map.put(Feature.AAM, new String[]{"com.facebook.appevents.aam."});
            map.put(Feature.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
            map.put(Feature.CloudBridge, new String[]{"com.facebook.appevents.cloudbridge."});
            map.put(Feature.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
            map.put(Feature.AnrReport, new String[]{"com.facebook.internal.instrument.anrreport."});
            map.put(Feature.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
            map.put(Feature.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
            map.put(Feature.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
            map.put(Feature.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
            map.put(Feature.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
            map.put(Feature.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
            map.put(Feature.IapLogging, new String[]{"com.facebook.appevents.iap."});
            map.put(Feature.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
        }
    }

    public static final boolean isEnabled(Feature feature) {
        C0173Do.m401try(feature, "feature");
        if (Feature.Unknown == feature) {
            return false;
        }
        if (Feature.Core == feature) {
            return true;
        }
        String string = C3756th.m8299do().getSharedPreferences(FEATURE_MANAGER_STORE, 0).getString(feature.toKey(), null);
        if (string != null && C0173Do.m394do(string, "16.0.0")) {
            return false;
        }
        Feature parent = feature.getParent();
        return parent == feature ? INSTANCE.getGKStatus(feature) : isEnabled(parent) && INSTANCE.getGKStatus(feature);
    }
}
