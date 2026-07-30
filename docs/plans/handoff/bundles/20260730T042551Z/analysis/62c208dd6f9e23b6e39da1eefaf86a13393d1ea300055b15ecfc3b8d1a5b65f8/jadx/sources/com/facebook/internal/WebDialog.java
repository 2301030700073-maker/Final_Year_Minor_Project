package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.WebDialog;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.joeykrim.rootcheck.R;
import defpackage.AsyncTaskC0302Jl;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C2819gd;
import defpackage.C3167jh;
import defpackage.C3344mh;
import defpackage.C3403nh;
import defpackage.C3462oh;
import defpackage.C3756th;
import defpackage.EnumC2892hr;
import defpackage.J2;
import defpackage.O4;
import defpackage.SL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WebDialog extends Dialog {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int BACKGROUND_GRAY = -872415232;
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_THEME = R.style.com_facebook_activity_theme;
    public static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5d;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    private static final String PLATFORM_DIALOG_PATH_REGEX = "^/(v\\d+\\.\\d+/)??dialog/.*";
    private static InitCallback initCallback;
    private static volatile int webDialogTheme;
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private String expectedRedirectUrl;
    private boolean isDetached;
    private boolean isListenerCalled;
    private boolean isPageFinished;
    private OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private UploadStagingResourcesTask uploadTask;
    private String url;
    private WebView webView;
    private WindowManager.LayoutParams windowParams;

    public final class DialogWebViewClient extends WebViewClient {
        final /* synthetic */ WebDialog this$0;

        public DialogWebViewClient(WebDialog webDialog) {
            C0173Do.m401try(webDialog, "this$0");
            this.this$0 = webDialog;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            ProgressDialog progressDialog;
            C0173Do.m401try(webView, ViewHierarchyConstants.VIEW_KEY);
            C0173Do.m401try(str, "url");
            super.onPageFinished(webView, str);
            if (!this.this$0.isDetached && (progressDialog = this.this$0.spinner) != null) {
                progressDialog.dismiss();
            }
            FrameLayout frameLayout = this.this$0.contentFrameLayout;
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(0);
            }
            WebView webView2 = this.this$0.getWebView();
            if (webView2 != null) {
                webView2.setVisibility(0);
            }
            ImageView imageView = this.this$0.crossImageView;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.this$0.isPageFinished = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            ProgressDialog progressDialog;
            C0173Do.m401try(webView, ViewHierarchyConstants.VIEW_KEY);
            C0173Do.m401try(str, "url");
            Utility utility = Utility.INSTANCE;
            Utility.logd(WebDialog.LOG_TAG, C0173Do.m397goto(str, "Webview loading URL: "));
            super.onPageStarted(webView, str, bitmap);
            if (this.this$0.isDetached || (progressDialog = this.this$0.spinner) == null) {
                return;
            }
            progressDialog.show();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            C0173Do.m401try(webView, ViewHierarchyConstants.VIEW_KEY);
            C0173Do.m401try(str, ViewHierarchyConstants.DESC_KEY);
            C0173Do.m401try(str2, "failingUrl");
            super.onReceivedError(webView, i, str, str2);
            this.this$0.sendErrorToListener(new C3167jh(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            C0173Do.m401try(webView, ViewHierarchyConstants.VIEW_KEY);
            C0173Do.m401try(sslErrorHandler, "handler");
            C0173Do.m401try(sslError, "error");
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            this.this$0.sendErrorToListener(new C3167jh(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00b4  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.DialogWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    public interface InitCallback {
        void onInit(WebView webView);
    }

    public interface OnCompleteListener {
        void onComplete(Bundle bundle, C3344mh c3344mh);
    }

    public final class UploadStagingResourcesTask extends AsyncTask<Void, Void, String[]> {
        private final String action;
        private Exception[] exceptions;
        private final Bundle parameters;
        final /* synthetic */ WebDialog this$0;

        public UploadStagingResourcesTask(WebDialog webDialog, String str, Bundle bundle) {
            C0173Do.m401try(webDialog, "this$0");
            C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
            C0173Do.m401try(bundle, "parameters");
            this.this$0 = webDialog;
            this.action = str;
            this.parameters = bundle;
            this.exceptions = new Exception[0];
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: doInBackground$lambda-0, reason: not valid java name */
        public static final void m5446doInBackground$lambda0(String[] strArr, int i, UploadStagingResourcesTask uploadStagingResourcesTask, CountDownLatch countDownLatch, C0346Ll c0346Ll) {
            FacebookRequestError facebookRequestError;
            String str;
            C0173Do.m401try(strArr, "$results");
            C0173Do.m401try(uploadStagingResourcesTask, "this$0");
            C0173Do.m401try(countDownLatch, "$latch");
            C0173Do.m401try(c0346Ll, "response");
            try {
                facebookRequestError = c0346Ll.f1995do;
                str = "Error staging photo.";
            } catch (Exception e) {
                uploadStagingResourcesTask.exceptions[i] = e;
            }
            if (facebookRequestError != null) {
                String m5261do = facebookRequestError.m5261do();
                if (m5261do != null) {
                    str = m5261do;
                }
                throw new C3403nh(c0346Ll, str);
            }
            JSONObject jSONObject = c0346Ll.f1997do;
            if (jSONObject == null) {
                throw new C3344mh("Error staging photo.");
            }
            String optString = jSONObject.optString("uri");
            if (optString == null) {
                throw new C3344mh("Error staging photo.");
            }
            strArr[i] = optString;
            countDownLatch.countDown();
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    return doInBackground2(voidArr);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    onPostExecute2(strArr);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        /* JADX WARN: Type inference failed for: r10v1, types: [com.facebook.internal.for] */
        /* renamed from: doInBackground, reason: avoid collision after fix types in other method */
        public String[] doInBackground2(Void... voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    C0173Do.m401try(voidArr, "p0");
                    String[] stringArray = this.parameters.getStringArray("media");
                    if (stringArray == null) {
                        return null;
                    }
                    final String[] strArr = new String[stringArray.length];
                    this.exceptions = new Exception[stringArray.length];
                    final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                    ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                    Date date = AccessToken.f9198new;
                    AccessToken m5258if = AccessToken.Cif.m5258if();
                    try {
                        int length = stringArray.length - 1;
                        if (length >= 0) {
                            final int i = 0;
                            while (true) {
                                int i2 = i + 1;
                                if (isCancelled()) {
                                    Iterator it = concurrentLinkedQueue.iterator();
                                    while (it.hasNext()) {
                                        ((AsyncTaskC0302Jl) it.next()).cancel(true);
                                    }
                                    return null;
                                }
                                Uri parse = Uri.parse(stringArray[i]);
                                if (Utility.isWebUri(parse)) {
                                    strArr[i] = parse.toString();
                                    countDownLatch.countDown();
                                } else {
                                    ?? r10 = new GraphRequest.Cif() { // from class: com.facebook.internal.for
                                        @Override // com.facebook.GraphRequest.Cif
                                        /* renamed from: if */
                                        public final void mo78if(C0346Ll c0346Ll) {
                                            WebDialog.UploadStagingResourcesTask.m5446doInBackground$lambda0(strArr, i, this, countDownLatch, c0346Ll);
                                        }
                                    };
                                    C0173Do.m399new(parse, "uri");
                                    concurrentLinkedQueue.add(O4.m1623strictfp(m5258if, parse, r10).m5270new());
                                }
                                if (i2 > length) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        countDownLatch.await();
                        return strArr;
                    } catch (Exception unused) {
                        Iterator it2 = concurrentLinkedQueue.iterator();
                        while (it2.hasNext()) {
                            ((AsyncTaskC0302Jl) it2.next()).cancel(true);
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        /* renamed from: onPostExecute, reason: avoid collision after fix types in other method */
        public void onPostExecute2(String[] strArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    ProgressDialog progressDialog = this.this$0.spinner;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    Exception[] excArr = this.exceptions;
                    int length = excArr.length;
                    int i = 0;
                    while (i < length) {
                        Exception exc = excArr[i];
                        i++;
                        if (exc != null) {
                            this.this$0.sendErrorToListener(exc);
                            return;
                        }
                    }
                    if (strArr == null) {
                        this.this$0.sendErrorToListener(new C3344mh("Failed to stage photos for web dialog"));
                        return;
                    }
                    List d = J2.d(strArr);
                    if (d.contains(null)) {
                        this.this$0.sendErrorToListener(new C3344mh("Failed to stage photos for web dialog"));
                        return;
                    }
                    Utility utility = Utility.INSTANCE;
                    Utility.putJSONValueInBundle(this.parameters, "media", new JSONArray((Collection) d));
                    this.this$0.url = Utility.buildUri(ServerProtocol.getDialogAuthority(), C3756th.m8306try() + "/dialog/" + this.action, this.parameters).toString();
                    ImageView imageView = this.this$0.crossImageView;
                    if (imageView == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    this.this$0.setUpWebView((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnumC2892hr.valuesCustom().length];
            iArr[1] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WebDialog(Context context, String str) {
        this(context, str, Companion.getWebDialogTheme());
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "url");
    }

    public /* synthetic */ WebDialog(Context context, String str, Bundle bundle, int i, EnumC2892hr enumC2892hr, OnCompleteListener onCompleteListener, C2819gd c2819gd) {
        this(context, str, bundle, i, enumC2892hr, onCompleteListener);
    }

    private final void createCrossImage() {
        ImageView imageView = new ImageView(getContext());
        this.crossImageView = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: RL
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebDialog.m5439createCrossImage$lambda5(WebDialog.this, view);
            }
        });
        Drawable drawable = getContext().getResources().getDrawable(R.drawable.com_facebook_close);
        ImageView imageView2 = this.crossImageView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.crossImageView;
        if (imageView3 == null) {
            return;
        }
        imageView3.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createCrossImage$lambda-5, reason: not valid java name */
    public static final void m5439createCrossImage$lambda5(WebDialog webDialog, View view) {
        C0173Do.m401try(webDialog, "this$0");
        webDialog.cancel();
    }

    private final int getScaledSize(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        return (int) (i * (i4 <= i2 ? 1.0d : i4 >= i3 ? 0.5d : (((i3 - i4) / (i3 - i2)) * MIN_SCALE_FACTOR) + MIN_SCALE_FACTOR));
    }

    public static final int getWebDialogTheme() {
        return Companion.getWebDialogTheme();
    }

    public static final void initDefaultTheme(Context context) {
        Companion.initDefaultTheme(context);
    }

    public static final WebDialog newInstance(Context context, String str, Bundle bundle, int i, OnCompleteListener onCompleteListener) {
        return Companion.newInstance(context, str, bundle, i, onCompleteListener);
    }

    public static final WebDialog newInstance(Context context, String str, Bundle bundle, int i, EnumC2892hr enumC2892hr, OnCompleteListener onCompleteListener) {
        return Companion.newInstance(context, str, bundle, i, enumC2892hr, onCompleteListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-4, reason: not valid java name */
    public static final void m5443onCreate$lambda4(WebDialog webDialog, DialogInterface dialogInterface) {
        C0173Do.m401try(webDialog, "this$0");
        webDialog.cancel();
    }

    public static final void setInitCallback(InitCallback initCallback2) {
        Companion.setInitCallback(initCallback2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public final void setUpWebView(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        final Context context = getContext();
        this.webView = new WebView(context) { // from class: com.facebook.internal.WebDialog$setUpWebView$1
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException unused) {
                }
            }
        };
        InitCallback initCallback2 = initCallback;
        if (initCallback2 != null) {
            initCallback2.onInit(getWebView());
        }
        WebView webView = this.webView;
        int i2 = 0;
        if (webView != null) {
            webView.setVerticalScrollBarEnabled(false);
        }
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.setHorizontalScrollBarEnabled(false);
        }
        WebView webView3 = this.webView;
        if (webView3 != null) {
            webView3.setWebViewClient(new DialogWebViewClient(this));
        }
        WebView webView4 = this.webView;
        WebSettings settings = webView4 == null ? null : webView4.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        WebView webView5 = this.webView;
        if (webView5 != null) {
            String str = this.url;
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            webView5.loadUrl(str);
        }
        WebView webView6 = this.webView;
        if (webView6 != null) {
            webView6.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        WebView webView7 = this.webView;
        if (webView7 != null) {
            webView7.setVisibility(4);
        }
        WebView webView8 = this.webView;
        WebSettings settings2 = webView8 == null ? null : webView8.getSettings();
        if (settings2 != null) {
            settings2.setSavePassword(false);
        }
        WebView webView9 = this.webView;
        WebSettings settings3 = webView9 != null ? webView9.getSettings() : null;
        if (settings3 != null) {
            settings3.setSaveFormData(false);
        }
        WebView webView10 = this.webView;
        if (webView10 != null) {
            webView10.setFocusable(true);
        }
        WebView webView11 = this.webView;
        if (webView11 != null) {
            webView11.setFocusableInTouchMode(true);
        }
        WebView webView12 = this.webView;
        if (webView12 != null) {
            webView12.setOnTouchListener(new SL(i2));
        }
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.webView);
        linearLayout.setBackgroundColor(BACKGROUND_GRAY);
        FrameLayout frameLayout = this.contentFrameLayout;
        if (frameLayout == null) {
            return;
        }
        frameLayout.addView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setUpWebView$lambda-7, reason: not valid java name */
    public static final boolean m5444setUpWebView$lambda7(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    public static final void setWebDialogTheme(int i) {
        Companion.setWebDialogTheme(i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        sendErrorToListener(new C3462oh());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.webView;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.isDetached && (progressDialog = this.spinner) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    public final OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }

    public final WebView getWebView() {
        return this.webView;
    }

    public final boolean isListenerCalled() {
        return this.isListenerCalled;
    }

    public final boolean isPageFinished() {
        return this.isPageFinished;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        WindowManager.LayoutParams attributes;
        this.isDetached = false;
        Utility utility = Utility.INSTANCE;
        Context context = getContext();
        C0173Do.m399new(context, "context");
        if (Utility.mustFixWindowParamsForAutofill(context) && (layoutParams = this.windowParams) != null) {
            if ((layoutParams == null ? null : layoutParams.token) == null) {
                if (layoutParams != null) {
                    Activity ownerActivity = getOwnerActivity();
                    Window window = ownerActivity == null ? null : ownerActivity.getWindow();
                    layoutParams.token = (window == null || (attributes = window.getAttributes()) == null) ? null : attributes.token;
                }
                WindowManager.LayoutParams layoutParams2 = this.windowParams;
                Utility.logd(LOG_TAG, C0173Do.m397goto(layoutParams2 != null ? layoutParams2.token : null, "Set token on onAttachedToWindow(): "));
            }
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.spinner = progressDialog;
        progressDialog.requestWindowFeature(1);
        ProgressDialog progressDialog2 = this.spinner;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(R.string.com_facebook_loading));
        }
        ProgressDialog progressDialog3 = this.spinner;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.spinner;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: QL
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    WebDialog.m5443onCreate$lambda4(WebDialog.this, dialogInterface);
                }
            });
        }
        requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(getContext());
        resize();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        createCrossImage();
        if (this.url != null) {
            ImageView imageView = this.crossImageView;
            if (imageView == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            setUpWebView((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        FrameLayout frameLayout = this.contentFrameLayout;
        if (frameLayout != null) {
            frameLayout.addView(this.crossImageView, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.contentFrameLayout;
        if (frameLayout2 == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        setContentView(frameLayout2);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C0173Do.m401try(keyEvent, "event");
        if (i == 4) {
            WebView webView = this.webView;
            if (webView != null) {
                if (C0173Do.m394do(webView == null ? null : Boolean.valueOf(webView.canGoBack()), Boolean.TRUE)) {
                    WebView webView2 = this.webView;
                    if (webView2 == null) {
                        return true;
                    }
                    webView2.goBack();
                    return true;
                }
            }
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask != null) {
            if ((uploadStagingResourcesTask == null ? null : uploadStagingResourcesTask.getStatus()) == AsyncTask.Status.PENDING) {
                UploadStagingResourcesTask uploadStagingResourcesTask2 = this.uploadTask;
                if (uploadStagingResourcesTask2 != null) {
                    uploadStagingResourcesTask2.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.spinner;
                if (progressDialog == null) {
                    return;
                }
                progressDialog.show();
                return;
            }
        }
        resize();
    }

    @Override // android.app.Dialog
    public void onStop() {
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask != null) {
            uploadStagingResourcesTask.cancel(true);
            ProgressDialog progressDialog = this.spinner;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        C0173Do.m401try(layoutParams, NativeProtocol.WEB_DIALOG_PARAMS);
        if (layoutParams.token == null) {
            this.windowParams = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    public Bundle parseResponseUri(String str) {
        Uri parse = Uri.parse(str);
        Utility utility = Utility.INSTANCE;
        Bundle parseUrlQueryString = Utility.parseUrlQueryString(parse.getQuery());
        parseUrlQueryString.putAll(Utility.parseUrlQueryString(parse.getFragment()));
        return parseUrlQueryString;
    }

    public final void resize() {
        Object systemService = getContext().getSystemService("window");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
        }
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int i3 = i < i2 ? i : i2;
        if (i < i2) {
            i = i2;
        }
        int min = Math.min(getScaledSize(i3, displayMetrics.density, NO_PADDING_SCREEN_WIDTH, 800), displayMetrics.widthPixels);
        int min2 = Math.min(getScaledSize(i, displayMetrics.density, 800, MAX_PADDING_SCREEN_HEIGHT), displayMetrics.heightPixels);
        Window window = getWindow();
        if (window == null) {
            return;
        }
        window.setLayout(min, min2);
    }

    public final void sendErrorToListener(Throwable th) {
        if (this.onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        this.isListenerCalled = true;
        C3344mh c3344mh = th instanceof C3344mh ? (C3344mh) th : new C3344mh(th);
        OnCompleteListener onCompleteListener = this.onCompleteListener;
        if (onCompleteListener != null) {
            onCompleteListener.onComplete(null, c3344mh);
        }
        dismiss();
    }

    public final void sendSuccessToListener(Bundle bundle) {
        OnCompleteListener onCompleteListener = this.onCompleteListener;
        if (onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        this.isListenerCalled = true;
        if (onCompleteListener != null) {
            onCompleteListener.onComplete(bundle, null);
        }
        dismiss();
    }

    public final void setExpectedRedirectUrl(String str) {
        C0173Do.m401try(str, "expectedRedirectUrl");
        this.expectedRedirectUrl = str;
    }

    public final void setOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final int getWebDialogTheme() {
            Validate.sdkInitialized();
            return WebDialog.webDialogTheme;
        }

        public final void initDefaultTheme(Context context) {
            if (context == null) {
                return;
            }
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if ((applicationInfo == null ? null : applicationInfo.metaData) != null && WebDialog.webDialogTheme == 0) {
                    setWebDialogTheme(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }

        public final WebDialog newInstance(Context context, String str, Bundle bundle, int i, OnCompleteListener onCompleteListener) {
            C0173Do.m401try(context, "context");
            WebDialog.initDefaultTheme(context);
            return new WebDialog(context, str, bundle, i, EnumC2892hr.FACEBOOK, onCompleteListener, null);
        }

        public final void setInitCallback(InitCallback initCallback) {
            WebDialog.initCallback = initCallback;
        }

        public final void setWebDialogTheme(int i) {
            if (i == 0) {
                i = WebDialog.DEFAULT_THEME;
            }
            WebDialog.webDialogTheme = i;
        }

        public final WebDialog newInstance(Context context, String str, Bundle bundle, int i, EnumC2892hr enumC2892hr, OnCompleteListener onCompleteListener) {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(enumC2892hr, "targetApp");
            WebDialog.initDefaultTheme(context);
            return new WebDialog(context, str, bundle, i, enumC2892hr, onCompleteListener, null);
        }
    }

    private WebDialog(Context context, String str, int i) {
        super(context, i == 0 ? Companion.getWebDialogTheme() : i);
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        this.url = str;
    }

    private WebDialog(Context context, String str, Bundle bundle, int i, EnumC2892hr enumC2892hr, OnCompleteListener onCompleteListener) {
        super(context, i == 0 ? Companion.getWebDialogTheme() : i);
        Uri buildUri;
        String str2 = ServerProtocol.DIALOG_REDIRECT_URI;
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        bundle = bundle == null ? new Bundle() : bundle;
        str2 = Utility.isChromeOS(context) ? ServerProtocol.DIALOG_REDIRECT_CHROME_OS_URI : str2;
        this.expectedRedirectUrl = str2;
        bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str2);
        bundle.putString(ServerProtocol.DIALOG_PARAM_DISPLAY, "touch");
        bundle.putString("client_id", C3756th.m8303if());
        String format = String.format(Locale.ROOT, "android-%s", Arrays.copyOf(new Object[]{"16.0.0"}, 1));
        C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
        bundle.putString(ServerProtocol.DIALOG_PARAM_SDK_VERSION, format);
        this.onCompleteListener = onCompleteListener;
        if (C0173Do.m394do(str, "share") && bundle.containsKey("media")) {
            this.uploadTask = new UploadStagingResourcesTask(this, str, bundle);
            return;
        }
        if (WhenMappings.$EnumSwitchMapping$0[enumC2892hr.ordinal()] == 1) {
            buildUri = Utility.buildUri(ServerProtocol.getInstagramDialogAuthority(), ServerProtocol.INSTAGRAM_OAUTH_PATH, bundle);
        } else {
            buildUri = Utility.buildUri(ServerProtocol.getDialogAuthority(), C3756th.m8306try() + "/dialog/" + ((Object) str), bundle);
        }
        this.url = buildUri.toString();
    }

    public static class Builder {
        private AccessToken accessToken;
        private String action;
        private String applicationId;
        private Context context;
        private OnCompleteListener listener;
        private Bundle parameters;
        private int theme;

        public Builder(Context context, String str, Bundle bundle) {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
            Date date = AccessToken.f9198new;
            this.accessToken = AccessToken.Cif.m5258if();
            if (!AccessToken.Cif.m5257for()) {
                String metadataApplicationId = Utility.getMetadataApplicationId(context);
                if (metadataApplicationId == null) {
                    throw new C3344mh("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
                this.applicationId = metadataApplicationId;
            }
            finishInit(context, str, bundle);
        }

        private final void finishInit(Context context, String str, Bundle bundle) {
            this.context = context;
            this.action = str;
            if (bundle != null) {
                this.parameters = bundle;
            } else {
                this.parameters = new Bundle();
            }
        }

        public WebDialog build() {
            AccessToken accessToken = this.accessToken;
            if (accessToken != null) {
                Bundle bundle = this.parameters;
                if (bundle != null) {
                    bundle.putString("app_id", accessToken == null ? null : accessToken.f9201catch);
                }
                Bundle bundle2 = this.parameters;
                if (bundle2 != null) {
                    AccessToken accessToken2 = this.accessToken;
                    bundle2.putString("access_token", accessToken2 != null ? accessToken2.f9200break : null);
                }
            } else {
                Bundle bundle3 = this.parameters;
                if (bundle3 != null) {
                    bundle3.putString("app_id", this.applicationId);
                }
            }
            Companion companion = WebDialog.Companion;
            Context context = this.context;
            if (context != null) {
                return companion.newInstance(context, this.action, this.parameters, this.theme, this.listener);
            }
            throw new IllegalStateException("Required value was null.".toString());
        }

        public final String getApplicationId() {
            return this.applicationId;
        }

        public final Context getContext() {
            return this.context;
        }

        public final OnCompleteListener getListener() {
            return this.listener;
        }

        public final Bundle getParameters() {
            return this.parameters;
        }

        public final int getTheme() {
            return this.theme;
        }

        public final Builder setOnCompleteListener(OnCompleteListener onCompleteListener) {
            this.listener = onCompleteListener;
            return this;
        }

        public final Builder setTheme(int i) {
            this.theme = i;
            return this;
        }

        public Builder(Context context, String str, String str2, Bundle bundle) {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(str2, NativeProtocol.WEB_DIALOG_ACTION);
            this.applicationId = Validate.notNullOrEmpty(str == null ? Utility.getMetadataApplicationId(context) : str, "applicationId");
            finishInit(context, str2, bundle);
        }
    }
}
