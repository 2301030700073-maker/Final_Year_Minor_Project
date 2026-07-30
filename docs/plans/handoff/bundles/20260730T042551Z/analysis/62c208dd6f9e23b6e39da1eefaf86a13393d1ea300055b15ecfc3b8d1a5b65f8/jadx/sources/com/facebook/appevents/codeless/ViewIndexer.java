package com.facebook.appevents.codeless;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.codeless.ViewIndexer;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C0786c2;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.Cabstract;
import defpackage.EnumC0658Zq;
import defpackage.Pz;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ViewIndexer {
    private static final String APP_VERSION_PARAM = "app_version";
    public static final Companion Companion = new Companion(null);
    private static final String PLATFORM_PARAM = "platform";
    private static final String REQUEST_TYPE = "request_type";
    private static final String SUCCESS = "success";
    private static final String TAG;
    private static final String TREE_PARAM = "tree";
    private static ViewIndexer instance;
    private final WeakReference<Activity> activityReference;
    private Timer indexingTimer;
    private String previousDigest;
    private final Handler uiThreadHandler;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: buildAppIndexingRequest$lambda-0, reason: not valid java name */
        public static final void m5357buildAppIndexingRequest$lambda0(C0346Ll c0346Ll) {
            C0173Do.m401try(c0346Ll, "it");
            Logger.Companion.log(EnumC0658Zq.APP_EVENTS, ViewIndexer.access$getTAG$cp(), "App index sent to FB!");
        }

        public final GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
            C0173Do.m401try(str3, "requestType");
            if (str == null) {
                return null;
            }
            String str4 = GraphRequest.f9271for;
            int i = 1;
            String format = String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            GraphRequest m5289goto = GraphRequest.Cfor.m5289goto(accessToken, format, null, null);
            Bundle bundle = m5289goto.f9274do;
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString(ViewIndexer.TREE_PARAM, str);
            bundle.putString(ViewIndexer.APP_VERSION_PARAM, AppEventUtility.getAppVersion());
            bundle.putString(ViewIndexer.PLATFORM_PARAM, Constants.PLATFORM);
            bundle.putString(ViewIndexer.REQUEST_TYPE, str3);
            if (C0173Do.m394do(str3, Constants.APP_INDEXING)) {
                bundle.putString(Constants.DEVICE_SESSION_ID, CodelessManager.getCurrentDeviceSessionID$facebook_core_release());
            }
            m5289goto.f9274do = bundle;
            m5289goto.m5271this(new C0786c2(i));
            return m5289goto;
        }

        public final void sendToServerUnityInstance(String str) {
            C0173Do.m401try(str, ViewIndexer.TREE_PARAM);
            ViewIndexer access$getInstance$cp = ViewIndexer.access$getInstance$cp();
            if (access$getInstance$cp == null) {
                return;
            }
            ViewIndexer.access$sendToServer(access$getInstance$cp, str);
        }
    }

    public static final class ScreenshotTaker implements Callable<String> {
        private final WeakReference<View> rootView;

        public ScreenshotTaker(View view) {
            C0173Do.m401try(view, "rootView");
            this.rootView = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            View view = this.rootView.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            view.draw(new Canvas(createBitmap));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
            String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            C0173Do.m399new(encodeToString, "encodeToString(outputStream.toByteArray(), Base64.NO_WRAP)");
            return encodeToString;
        }
    }

    static {
        String canonicalName = ViewIndexer.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        TAG = canonicalName;
    }

    public ViewIndexer(Activity activity) {
        C0173Do.m401try(activity, "activity");
        this.activityReference = new WeakReference<>(activity);
        this.previousDigest = null;
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        instance = this;
    }

    public static final /* synthetic */ WeakReference access$getActivityReference$p(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.activityReference;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ ViewIndexer access$getInstance$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return instance;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ Handler access$getUiThreadHandler$p(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.uiThreadHandler;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$sendToServer(ViewIndexer viewIndexer, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            viewIndexer.sendToServer(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public static final GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return Companion.buildAppIndexingRequest(str, accessToken, str2, str3);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: schedule$lambda-0, reason: not valid java name */
    public static final void m5355schedule$lambda0(ViewIndexer viewIndexer, TimerTask timerTask) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            C0173Do.m401try(viewIndexer, "this$0");
            C0173Do.m401try(timerTask, "$indexingTask");
            try {
                Timer timer = viewIndexer.indexingTimer;
                if (timer != null) {
                    timer.cancel();
                }
                viewIndexer.previousDigest = null;
                Timer timer2 = new Timer();
                timer2.scheduleAtFixedRate(timerTask, 0L, 1000L);
                viewIndexer.indexingTimer = timer2;
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    private final void sendToServer(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C3756th.m8304new().execute(new Cabstract(4, str, this));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendToServer$lambda-1, reason: not valid java name */
    public static final void m5356sendToServer$lambda1(String str, ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "$tree");
            C0173Do.m401try(viewIndexer, "this$0");
            String md5hash = Utility.md5hash(str);
            Date date = AccessToken.f9198new;
            AccessToken m5258if = AccessToken.Cif.m5258if();
            if (md5hash == null || !C0173Do.m394do(md5hash, viewIndexer.previousDigest)) {
                viewIndexer.processRequest(Companion.buildAppIndexingRequest(str, m5258if, C3756th.m8303if(), Constants.APP_INDEXING), md5hash);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public static final void sendToServerUnityInstance(String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            Companion.sendToServerUnityInstance(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public final void processRequest(GraphRequest graphRequest, String str) {
        if (CrashShieldHandler.isObjectCrashing(this) || graphRequest == null) {
            return;
        }
        try {
            C0346Ll m5267for = graphRequest.m5267for();
            try {
                JSONObject jSONObject = m5267for.f1997do;
                if (jSONObject == null) {
                    C0173Do.m397goto(m5267for.f1995do, "Error sending UI component tree to Facebook: ");
                    return;
                }
                if (C0173Do.m394do(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, jSONObject.optString(SUCCESS))) {
                    Logger.Companion.log(EnumC0658Zq.APP_EVENTS, TAG, "Successfully send UI component tree to server");
                    this.previousDigest = str;
                }
                if (jSONObject.has(Constants.APP_INDEXING_ENABLED)) {
                    CodelessManager.updateAppIndexing$facebook_core_release(jSONObject.getBoolean(Constants.APP_INDEXING_ENABLED));
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void schedule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            try {
                C3756th.m8304new().execute(new Pz(1, this, new TimerTask() { // from class: com.facebook.appevents.codeless.ViewIndexer$schedule$indexingTask$1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            Activity activity = (Activity) ViewIndexer.access$getActivityReference$p(ViewIndexer.this).get();
                            View rootView = AppEventUtility.getRootView(activity);
                            if (activity != null && rootView != null) {
                                String simpleName = activity.getClass().getSimpleName();
                                if (CodelessManager.getIsAppIndexingEnabled$facebook_core_release()) {
                                    if (InternalSettings.isUnityApp()) {
                                        UnityReflection.captureViewHierarchy();
                                        return;
                                    }
                                    FutureTask futureTask = new FutureTask(new ViewIndexer.ScreenshotTaker(rootView));
                                    ViewIndexer.access$getUiThreadHandler$p(ViewIndexer.this).post(futureTask);
                                    String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                    try {
                                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                                    } catch (Exception unused) {
                                        ViewIndexer.access$getTAG$cp();
                                    }
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put(ViewHierarchyConstants.SCREEN_NAME_KEY, simpleName);
                                        jSONObject.put("screenshot", str);
                                        JSONArray jSONArray = new JSONArray();
                                        jSONArray.put(ViewHierarchy.getDictionaryOfView(rootView));
                                        jSONObject.put(ViewHierarchyConstants.VIEW_KEY, jSONArray);
                                    } catch (JSONException unused2) {
                                        ViewIndexer.access$getTAG$cp();
                                    }
                                    String jSONObject2 = jSONObject.toString();
                                    C0173Do.m399new(jSONObject2, "viewTree.toString()");
                                    ViewIndexer.access$sendToServer(ViewIndexer.this, jSONObject2);
                                }
                            }
                        } catch (Exception unused3) {
                            ViewIndexer.access$getTAG$cp();
                        }
                    }
                }));
            } catch (RejectedExecutionException unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void unschedule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.activityReference.get() == null) {
                return;
            }
            try {
                Timer timer = this.indexingTimer;
                if (timer != null) {
                    timer.cancel();
                }
                this.indexingTimer = null;
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
