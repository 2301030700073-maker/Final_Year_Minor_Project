package com.facebook.react;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import cl.json.RNSharePackage;
import com.BV.LinearGradient.LinearGradientPackage;
import com.ReactNativeBlobUtil.ReactNativeBlobUtilPackage;
import com.airbnb.android.react.lottie.LottiePackage;
import com.appsflyer.reactnative.PCAppsFlyerPackage;
import com.appsflyer.reactnative.RNAppsFlyerPackage;
import com.braze.reactbridge.BrazeReactBridgePackage;
import com.brentvatne.react.ReactVideoPackage;
import com.facebook.react.shell.MainPackageConfig;
import com.facebook.react.shell.MainReactPackage;
import com.facebook.reactnative.androidsdk.FBSDKPackage;
import com.horcrux.svg.SvgPackage;
import com.lugg.RNCConfig.RNCConfigPackage;
import com.mrousavy.mmkv.MmkvPackage;
import com.nozbe.watermelondb.WatermelonDBPackage;
import com.propertyguru.webkit.WebKitPackage;
import com.reactnativeclusterer.ClustererPackage;
import com.reactnativecommunity.asyncstorage.AsyncStoragePackage;
import com.reactnativecommunity.clipboard.ClipboardPackage;
import com.reactnativecommunity.geolocation.GeolocationPackage;
import com.reactnativecommunity.netinfo.NetInfoPackage;
import com.reactnativecommunity.picker.RNCPickerPackage;
import com.reactnativecommunity.webview.RNCWebViewPackage;
import com.reactnativegooglesignin.RNGoogleSigninPackage;
import com.reactnativekeyboardcontroller.KeyboardControllerPackage;
import com.reactnativepagerview.PagerViewPackage;
import com.rnmaps.maps.MapsPackage;
import com.segmentanalyticsreactnative.AnalyticsReactNativePackage;
import com.shopify.reactnative.flash_list.ReactNativeFlashListPackage;
import com.shopify.reactnative.skia.RNSkiaPackage;
import com.sovranreactnative.Sovran;
import com.swmansion.gesturehandler.RNGestureHandlerPackage;
import com.swmansion.reanimated.ReanimatedPackage;
import com.swmansion.rnscreens.RNScreensPackage;
import com.th3rdwave.safeareacontext.SafeAreaContextPackage;
import com.zoontek.rnpermissions.RNPermissionsPackage;
import expo.modules.ExpoModulesPackage;
import io.sentry.react.RNSentryPackage;
import java.util.ArrayList;
import java.util.Arrays;
import org.linusu.RNGetRandomValuesPackage;
import org.reactnative.maskedview.RNCMaskedViewPackage;
import org.wonday.pdf.RNPDFPackage;
import rnauthenticator.AuthenticatorPackage;

/* loaded from: classes.dex */
public class PackageList {
    private Application application;
    private MainPackageConfig mConfig;
    private ReactNativeHost reactNativeHost;

    public PackageList(ReactNativeHost reactNativeHost) {
        this(reactNativeHost, (MainPackageConfig) null);
    }

    public PackageList(Application application) {
        this(application, (MainPackageConfig) null);
    }

    public PackageList(ReactNativeHost reactNativeHost, MainPackageConfig mainPackageConfig) {
        this.reactNativeHost = reactNativeHost;
        this.mConfig = mainPackageConfig;
    }

    public PackageList(Application application, MainPackageConfig mainPackageConfig) {
        this.reactNativeHost = null;
        this.application = application;
        this.mConfig = mainPackageConfig;
    }

    private ReactNativeHost getReactNativeHost() {
        return this.reactNativeHost;
    }

    private Resources getResources() {
        return getApplication().getResources();
    }

    private Application getApplication() {
        ReactNativeHost reactNativeHost = this.reactNativeHost;
        return reactNativeHost == null ? this.application : reactNativeHost.getApplication();
    }

    private Context getApplicationContext() {
        return getApplication().getApplicationContext();
    }

    public ArrayList<ReactPackage> getPackages() {
        return new ArrayList<>(Arrays.asList(new MainReactPackage(this.mConfig), new BrazeReactBridgePackage(), new WatermelonDBPackage(), new AuthenticatorPackage(), new WebKitPackage(), new AsyncStoragePackage(), new ClipboardPackage(), new GeolocationPackage(), new NetInfoPackage(), new RNGoogleSigninPackage(), new RNCMaskedViewPackage(), new RNCPickerPackage(), new AnalyticsReactNativePackage(), new Sovran(), new RNSentryPackage(), new ReactNativeFlashListPackage(), new RNSkiaPackage(), new ExpoModulesPackage(), new LottiePackage(), new RNAppsFlyerPackage(), new PCAppsFlyerPackage(), new ReactNativeBlobUtilPackage(), new ClustererPackage(), new RNCConfigPackage(), new FBSDKPackage(), new RNGestureHandlerPackage(), new RNGetRandomValuesPackage(), new KeyboardControllerPackage(), new LinearGradientPackage(), new MapsPackage(), new MmkvPackage(), new PagerViewPackage(), new RNPDFPackage(), new RNPermissionsPackage(), new ReanimatedPackage(), new SafeAreaContextPackage(), new RNScreensPackage(), new RNSharePackage(), new SvgPackage(), new ReactVideoPackage(), new RNCWebViewPackage()));
    }
}
