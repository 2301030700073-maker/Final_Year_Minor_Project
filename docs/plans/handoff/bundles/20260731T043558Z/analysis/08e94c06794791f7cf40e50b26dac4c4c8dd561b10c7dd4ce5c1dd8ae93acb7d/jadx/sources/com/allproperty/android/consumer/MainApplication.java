package com.allproperty.android.consumer;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import asia.rea.android.apps.searchapp.modules.braze.BrazeGtmTagProvider;
import com.allproperty.android.consumer.modules.ModulesPackage;
import com.allproperty.android.consumer.modules.SplashScreen;
import com.allproperty.android.consumer.modules.performance.PerformanceMonitor;
import com.braze.BrazeActivityLifecycleCallbackListener;
import com.braze.ui.inappmessage.BrazeInAppMessageManager;
import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactHost;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactNativeHost;
import com.facebook.react.soloader.OpenSourceMergedSoMapping;
import com.facebook.soloader.SoLoader;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.metrics.Trace;
import com.jakewharton.picasso.OkHttp3Downloader;
import com.squareup.picasso.Picasso;
import expo.modules.ApplicationLifecycleDispatcher;
import expo.modules.ReactNativeHostWrapper;
import io.sentry.android.core.performance.AppStartMetrics;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainApplication.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/allproperty/android/consumer/MainApplication;", "Landroid/app/Application;", "Lcom/facebook/react/ReactApplication;", "<init>", "()V", "reactNativeHost", "Lcom/facebook/react/ReactNativeHost;", "getReactNativeHost", "()Lcom/facebook/react/ReactNativeHost;", "reactHost", "Lcom/facebook/react/ReactHost;", "getReactHost", "()Lcom/facebook/react/ReactHost;", "onCreate", "", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "initializePicasso", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MainApplication extends Application implements ReactApplication {
    private static long nativeStartTime;
    private final ReactNativeHost reactNativeHost = new ReactNativeHostWrapper(this, new DefaultReactNativeHost(this) { // from class: com.allproperty.android.consumer.MainApplication$reactNativeHost$1
        private final boolean isHermesEnabled;
        private final boolean isNewArchEnabled;

        @Override // com.facebook.react.ReactNativeHost
        public boolean getUseDeveloperSupport() {
            return false;
        }

        {
            super(this);
            this.isNewArchEnabled = true;
            this.isHermesEnabled = true;
        }

        @Override // com.facebook.react.ReactNativeHost
        protected List<ReactPackage> getPackages() {
            ArrayList<ReactPackage> packages = new PackageList(this).getPackages();
            packages.add(new ModulesPackage());
            Intrinsics.checkNotNullExpressionValue(packages, "apply(...)");
            return packages;
        }

        @Override // com.facebook.react.ReactNativeHost
        protected String getJSMainModuleName() {
            return BuildConfig.JS_MAIN_MODULE_NAME;
        }

        @Override // com.facebook.react.defaults.DefaultReactNativeHost
        /* renamed from: isNewArchEnabled, reason: from getter */
        protected boolean getIsNewArchEnabled() {
            return this.isNewArchEnabled;
        }

        @Override // com.facebook.react.defaults.DefaultReactNativeHost
        protected Boolean isHermesEnabled() {
            return Boolean.valueOf(this.isHermesEnabled);
        }
    });

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final PerformanceMonitor performanceMonitor = new PerformanceMonitor();

    /* compiled from: MainApplication.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/allproperty/android/consumer/MainApplication$Companion;", "", "<init>", "()V", "nativeStartTime", "", "getNativeStartTime", "()J", "setNativeStartTime", "(J)V", "performanceMonitor", "Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;", "getPerformanceMonitor", "()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long getNativeStartTime() {
            return MainApplication.nativeStartTime;
        }

        public final void setNativeStartTime(long j) {
            MainApplication.nativeStartTime = j;
        }

        public final PerformanceMonitor getPerformanceMonitor() {
            return MainApplication.performanceMonitor;
        }
    }

    @Override // com.facebook.react.ReactApplication
    public ReactNativeHost getReactNativeHost() {
        return this.reactNativeHost;
    }

    @Override // com.facebook.react.ReactApplication
    public ReactHost getReactHost() {
        ReactNativeHostWrapper.Companion companion = ReactNativeHostWrapper.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return companion.createReactHost(applicationContext, getReactNativeHost());
    }

    @Override // android.app.Application
    public void onCreate() {
        AppStartMetrics.onApplicationCreate(this);
        Trace startTrace = FirebasePerformance.startTrace("nativeApplicationLoad");
        super.onCreate();
        nativeStartTime = System.currentTimeMillis();
        performanceMonitor.nativeAppTrace(false);
        MainApplication mainApplication = this;
        SoLoader.init(mainApplication, OpenSourceMergedSoMapping.INSTANCE);
        DefaultNewArchitectureEntryPoint.load$default(false, false, false, 7, null);
        initializePicasso();
        SplashScreen.INSTANCE.preloadImage(mainApplication);
        registerActivityLifecycleCallbacks(new BrazeActivityLifecycleCallbackListener(false, false, null, null, 15, null));
        BrazeInAppMessageManager.INSTANCE.getInstance().setCustomInAppMessageManagerListener(new CustomInAppMessageManagerListener());
        ApplicationLifecycleDispatcher.onApplicationCreate(this);
        BrazeGtmTagProvider.INSTANCE.setApplicationContext(getApplicationContext());
        startTrace.stop();
        AppStartMetrics.onApplicationPostCreate(this);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        ApplicationLifecycleDispatcher.onConfigurationChanged(this, newConfig);
    }

    private final void initializePicasso() {
        MainApplication mainApplication = this;
        Picasso.Builder builder = new Picasso.Builder(mainApplication);
        builder.downloader(new OkHttp3Downloader(mainApplication, 2147483647L));
        Picasso build = builder.build();
        build.setIndicatorsEnabled(false);
        Picasso.setSingletonInstance(build);
    }
}
