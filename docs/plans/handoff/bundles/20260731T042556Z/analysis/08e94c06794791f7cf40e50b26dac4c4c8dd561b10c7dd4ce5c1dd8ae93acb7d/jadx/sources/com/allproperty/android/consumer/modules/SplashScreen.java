package com.allproperty.android.consumer.modules;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.widget.ImageView;
import com.allproperty.android.consumer.R;
import com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.squareup.picasso.Callback;
import com.squareup.picasso.NetworkPolicy;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: SplashScreen.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0007J\b\u0010\n\u001a\u00020\tH\u0007J\b\u0010\u000b\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/allproperty/android/consumer/modules/SplashScreen;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "show", "", "hide", "displayIAMIfRequired", "forceDownloadImage", "url", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SplashScreen extends ReactContextBaseJavaModule {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String REACT_CLASS = "SplashScreen";
    private static boolean isShowing;
    private static WeakReference<Dialog> launchScreenReference;
    private final ReactApplicationContext reactContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreen(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.reactContext = reactContext;
    }

    /* compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J(\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006 "}, d2 = {"Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "launchScreenReference", "Ljava/lang/ref/WeakReference;", "Landroid/app/Dialog;", "isShowing", "", "()Z", "setShowing", "(Z)V", "onCreate", "", "activity", "Landroid/app/Activity;", "getCacheImageUrl", "context", "Landroid/content/Context;", "loadImage", "imageView", "Landroid/widget/ImageView;", "callback", "Lcom/squareup/picasso/Callback;", "loadAlternateSplashImage", "preloadImage", "downloadImage", "url", "(Ljava/lang/String;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isAlternateSplashScreenEnabled", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isShowing() {
            return SplashScreen.isShowing;
        }

        public final void setShowing(boolean z) {
            SplashScreen.isShowing = z;
        }

        public final void onCreate(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (activity.isFinishing()) {
                return;
            }
            Dialog dialog = new Dialog(activity, R.style.SplashScreenTheme);
            dialog.setContentView(R.layout.launch_screen);
            dialog.setCancelable(false);
            ImageView imageView = (ImageView) dialog.findViewById(R.id.alternate_image);
            Intrinsics.checkNotNull(imageView);
            loadAlternateSplashImage(imageView, activity);
            dialog.show();
            SplashScreen.launchScreenReference = new WeakReference(dialog);
            setShowing(true);
        }

        private final String getCacheImageUrl(Context context) {
            if (isAlternateSplashScreenEnabled(context)) {
                return SplashScreenKt.getCacheUrl(context);
            }
            return null;
        }

        static /* synthetic */ void loadImage$default(Companion companion, Context context, ImageView imageView, Callback callback, int i, Object obj) {
            if ((i & 2) != 0) {
                imageView = null;
            }
            if ((i & 4) != 0) {
                callback = null;
            }
            companion.loadImage(context, imageView, callback);
        }

        private final void loadImage(Context context, ImageView imageView, final Callback callback) {
            String cacheImageUrl = getCacheImageUrl(context);
            if (cacheImageUrl != null) {
                RequestCreator networkPolicy = Picasso.with(context).load(cacheImageUrl).networkPolicy(NetworkPolicy.OFFLINE, new NetworkPolicy[0]);
                if (imageView == null) {
                    imageView = new ImageView(context);
                }
                networkPolicy.into(imageView, new Callback() { // from class: com.allproperty.android.consumer.modules.SplashScreen$Companion$loadImage$1$1
                    @Override // com.squareup.picasso.Callback
                    public void onSuccess() {
                        Callback callback2 = Callback.this;
                        if (callback2 != null) {
                            callback2.onSuccess();
                        }
                    }

                    @Override // com.squareup.picasso.Callback
                    public void onError() {
                        Callback callback2 = Callback.this;
                        if (callback2 != null) {
                            callback2.onError();
                        }
                    }
                });
            }
        }

        private final void loadAlternateSplashImage(final ImageView imageView, Activity activity) {
            loadImage(activity, imageView, new Callback() { // from class: com.allproperty.android.consumer.modules.SplashScreen$Companion$loadAlternateSplashImage$1
                @Override // com.squareup.picasso.Callback
                public void onSuccess() {
                    imageView.setVisibility(0);
                }

                @Override // com.squareup.picasso.Callback
                public void onError() {
                    Log.v("##Picasso", "Could not fetch image");
                    imageView.setVisibility(8);
                }
            });
        }

        public final void preloadImage(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            loadImage$default(this, context, null, null, 6, null);
        }

        public final Object downloadImage(String str, Activity activity, Continuation<? super Unit> continuation) {
            Object withContext = BuildersKt.withContext(Dispatchers.getMain().getImmediate(), new SplashScreen$Companion$downloadImage$2(activity, str, null), continuation);
            return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
        }

        private final boolean isAlternateSplashScreenEnabled(Context context) {
            RemoteConfig remoteConfig = FeatureHelper.INSTANCE.getRemoteConfig();
            String string = context.getString(R.string.splash_start_date);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String stringValue = remoteConfig.getStringValue(string, AppEventsConstants.EVENT_PARAM_VALUE_NO);
            RemoteConfig remoteConfig2 = FeatureHelper.INSTANCE.getRemoteConfig();
            String string2 = context.getString(R.string.splash_end_date);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String stringValue2 = remoteConfig2.getStringValue(string2, AppEventsConstants.EVENT_PARAM_VALUE_NO);
            if (Intrinsics.areEqual(stringValue, AppEventsConstants.EVENT_PARAM_VALUE_NO) || Intrinsics.areEqual(stringValue2, AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                return false;
            }
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
                Date parse = simpleDateFormat.parse(stringValue);
                Date parse2 = simpleDateFormat.parse(stringValue2);
                Date date = new Date();
                if (date.after(parse)) {
                    return date.before(parse2);
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @ReactMethod
    public final void show() {
        hide();
        getReactApplicationContext().runOnUiQueueThread(new Runnable() { // from class: com.allproperty.android.consumer.modules.SplashScreen$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SplashScreen.show$lambda$1(SplashScreen.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$1(SplashScreen splashScreen) {
        Activity currentActivity = splashScreen.getCurrentActivity();
        if (currentActivity != null) {
            INSTANCE.onCreate(currentActivity);
        }
    }

    @ReactMethod
    public final void hide() {
        final Dialog dialog;
        WeakReference<Dialog> weakReference = launchScreenReference;
        if (weakReference == null || (dialog = weakReference.get()) == null) {
            return;
        }
        if (!dialog.isShowing()) {
            dialog = null;
        }
        if (dialog == null) {
            return;
        }
        getReactApplicationContext().runOnUiQueueThread(new Runnable() { // from class: com.allproperty.android.consumer.modules.SplashScreen$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SplashScreen.hide$lambda$3(dialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hide$lambda$3(Dialog dialog) {
        dialog.dismiss();
        launchScreenReference = null;
        isShowing = false;
    }

    @ReactMethod
    public final void displayIAMIfRequired() {
        BuildersKt__BuildersKt.runBlocking$default(null, new SplashScreen$displayIAMIfRequired$1(null), 1, null);
    }

    @ReactMethod
    public final void forceDownloadImage(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Activity currentActivity = this.reactContext.getCurrentActivity();
        if (currentActivity != null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new SplashScreen$forceDownloadImage$1$1(url, currentActivity, null), 1, null);
        }
    }
}
