package com.facebook.appevents;

import com.facebook.appevents.aam.MetadataIndexer;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.iap.InAppPurchaseManager;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import defpackage.C0472Rg;
import defpackage.C3382nI;
import defpackage.C3400ne;
import defpackage.C3441oI;
import defpackage.C3459oe;
import defpackage.C3697sh;

/* loaded from: classes.dex */
public final class AppEventsManager$start$1 implements FetchedAppSettingsManager.FetchedAppSettingsCallback {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-0, reason: not valid java name */
    public static final void m5322onSuccess$lambda0(boolean z) {
        if (z) {
            MetadataIndexer.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-1, reason: not valid java name */
    public static final void m5323onSuccess$lambda1(boolean z) {
        if (z) {
            RestrictiveDataManager.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-2, reason: not valid java name */
    public static final void m5324onSuccess$lambda2(boolean z) {
        if (z) {
            ModelManager.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-3, reason: not valid java name */
    public static final void m5325onSuccess$lambda3(boolean z) {
        if (z) {
            EventDeactivationManager.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-4, reason: not valid java name */
    public static final void m5326onSuccess$lambda4(boolean z) {
        if (z) {
            InAppPurchaseManager.enableAutoLogging();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-5, reason: not valid java name */
    public static final void m5327onSuccess$lambda5(boolean z) {
        if (z) {
            AppEventsCAPIManager.enable();
        }
    }

    @Override // com.facebook.internal.FetchedAppSettingsManager.FetchedAppSettingsCallback
    public void onError() {
    }

    @Override // com.facebook.internal.FetchedAppSettingsManager.FetchedAppSettingsCallback
    public void onSuccess(FetchedAppSettings fetchedAppSettings) {
        FeatureManager featureManager = FeatureManager.INSTANCE;
        int i = 1;
        FeatureManager.checkFeature(FeatureManager.Feature.AAM, new C3697sh(i));
        FeatureManager.checkFeature(FeatureManager.Feature.RestrictiveDataFiltering, new C3382nI(i));
        FeatureManager.checkFeature(FeatureManager.Feature.PrivacyProtection, new C3441oI(i));
        int i2 = 3;
        FeatureManager.checkFeature(FeatureManager.Feature.EventDeactivation, new C3400ne(i2));
        FeatureManager.checkFeature(FeatureManager.Feature.IapLogging, new C3459oe(i2));
        FeatureManager.checkFeature(FeatureManager.Feature.CloudBridge, new C0472Rg(2));
    }
}
