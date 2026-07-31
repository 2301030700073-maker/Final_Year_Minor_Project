package com.propertyguru.webkit;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.content.FileProvider;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.PermissionAwareActivity;
import com.facebook.react.modules.core.PermissionListener;
import com.facebook.share.internal.ShareConstants;
import com.propertyguru.webkit.IncognitoWebView;
import io.sentry.android.core.SentryLogcatAdapter;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: IncognitoWebViewChromeClient.kt */
@Metadata(d1 = {"\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0010\u0018\u0000 -2\u00020\u0001:\u0002-.B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J,\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00152\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J&\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\r2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0!2\u0006\u0010\"\u001a\u00020#H\u0002J&\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001f0\r2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0!2\u0006\u0010\"\u001a\u00020#H\u0002JB\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001f0\r2\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020*2\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0002J\u0010\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011¨\u0006/"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;", "Landroid/webkit/WebChromeClient;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "anchorLinkHandler", "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;", "filePathCallback", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "tempFilePaths", "", "", "activityEventListener", "com/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1", "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;", "onCreateWindow", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "isDialog", "isUserGesture", "resultMsg", "Landroid/os/Message;", "onShowFileChooser", "webView", "fileChooserParams", "Landroid/webkit/WebChromeClient$FileChooserParams;", "cameraPermissionGranted", "Landroid/content/Intent;", "acceptTypes", "", "manager", "Landroid/content/pm/PackageManager;", "recordAudioPermissionGranted", "startIntent", "", "intents", "filesIntent", "reactContext", "Lcom/facebook/react/bridge/ReactContext;", "getOutputUri", "directory", "Companion", "AnchorLinkHandler", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class IncognitoWebViewChromeClient extends WebChromeClient {
    private static final int CHOOSER_REQUEST_CODE = 1;
    private static final String DEFAULT_MIME_TYPE = "*/*";
    private static final int PERMISSION_REQUEST_CODE = 2;
    private static final String TAG = "ChromeClient";
    private final IncognitoWebViewChromeClient$activityEventListener$1 activityEventListener;
    private final AnchorLinkHandler anchorLinkHandler;
    private final Context context;
    private ValueCallback<Uri[]> filePathCallback;
    private List<String> tempFilePaths;

    public IncognitoWebViewChromeClient(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        Looper mainLooper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(mainLooper, "getMainLooper(...)");
        this.anchorLinkHandler = new AnchorLinkHandler(mainLooper);
        this.tempFilePaths = new ArrayList();
        this.activityEventListener = new IncognitoWebViewChromeClient$activityEventListener$1(this);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(resultMsg, "resultMsg");
        if (isDialog) {
            WebView webView = new WebView(view.getContext());
            Object obj = resultMsg.obj;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport");
            ((WebView.WebViewTransport) obj).setWebView(webView);
            resultMsg.sendToTarget();
            super.onCreateWindow(view, true, isUserGesture, resultMsg);
            return true;
        }
        IncognitoWebView incognitoWebView = view instanceof IncognitoWebView ? (IncognitoWebView) view : null;
        if (incognitoWebView == null) {
            return false;
        }
        int type = incognitoWebView.getHitTestResult().getType();
        if (type == 2 || type == 4 || type == 7 || type == 8) {
            this.anchorLinkHandler.setView(view);
            resultMsg.setTarget(this.anchorLinkHandler);
            incognitoWebView.requestFocusNodeHref(resultMsg);
            return false;
        }
        String extra = incognitoWebView.getHitTestResult().getExtra();
        if (extra != null && incognitoWebView.getShouldDispatchOnLinkPressedEvent()) {
            WritableMap createMap = Arguments.createMap();
            createMap.putString("url", extra);
            Intrinsics.checkNotNull(createMap);
            IncognitoWebView.INSTANCE.dispatchEvent(view, IncognitoWebView.EVENT_ON_LINK_PRESSED, createMap);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, final ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Activity currentActivity;
        String[] strArr;
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(filePathCallback, "filePathCallback");
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        Context context = this.context;
        final ReactContext reactContext = context instanceof ReactContext ? (ReactContext) context : null;
        if (reactContext == null || (currentActivity = reactContext.getCurrentActivity()) == 0) {
            return false;
        }
        final PackageManager packageManager = currentActivity.getPackageManager();
        PermissionAwareActivity permissionAwareActivity = currentActivity instanceof PermissionAwareActivity ? (PermissionAwareActivity) currentActivity : null;
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String[] acceptTypes = fileChooserParams.getAcceptTypes();
        Intrinsics.checkNotNullExpressionValue(acceptTypes, "getAcceptTypes(...)");
        ArrayList arrayList = new ArrayList();
        for (String str : acceptTypes) {
            String str2 = str;
            if (str2 != null && !StringsKt.isBlank(str2)) {
                arrayList.add(str);
            }
        }
        ArrayList<String> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (String str3 : arrayList2) {
            Intrinsics.checkNotNull(str3);
            if (StringsKt.startsWith$default(str3, ".", false, 2, (Object) null)) {
                String trimStart = StringsKt.trimStart(str3, StringsKt.single("."));
                if (singleton.hasExtension(trimStart)) {
                    str3 = singleton.getMimeTypeFromExtension(trimStart);
                }
            }
            arrayList3.add(str3);
        }
        final List<String> distinct = CollectionsKt.distinct(arrayList3);
        boolean z = 1 == fileChooserParams.getMode();
        final Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType(DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.MIME_TYPES", (String[]) distinct.toArray(new String[0]));
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
        intent.addCategory("android.intent.category.OPENABLE");
        final ArrayList arrayList4 = new ArrayList();
        try {
            strArr = packageManager.getPackageInfo(currentActivity.getPackageName(), 4096).requestedPermissions;
            if (strArr == null) {
                strArr = new String[0];
            }
        } catch (PackageManager.NameNotFoundException unused) {
            strArr = new String[0];
        }
        final String[] strArr2 = strArr;
        if (permissionAwareActivity == null) {
            return false;
        }
        ArrayList arrayList5 = new ArrayList();
        if (ArraysKt.contains(strArr2, "android.permission.CAMERA")) {
            arrayList5.add("android.permission.CAMERA");
        }
        if (ArraysKt.contains(strArr2, "android.permission.RECORD_AUDIO")) {
            arrayList5.add("android.permission.RECORD_AUDIO");
        }
        Iterator it = arrayList5.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            if (permissionAwareActivity.checkSelfPermission((String) next) != 0) {
                permissionAwareActivity.requestPermissions((String[]) arrayList5.toArray(new String[0]), 2, new PermissionListener() { // from class: com.propertyguru.webkit.IncognitoWebViewChromeClient$onShowFileChooser$1
                    @Override // com.facebook.react.modules.core.PermissionListener
                    public boolean onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
                        List cameraPermissionGranted;
                        List recordAudioPermissionGranted;
                        List cameraPermissionGranted2;
                        Intrinsics.checkNotNullParameter(permissions, "permissions");
                        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
                        if (requestCode != 2) {
                            filePathCallback.onReceiveValue(null);
                            return true;
                        }
                        int length = permissions.length;
                        for (int i = 0; i < length; i++) {
                            String str4 = permissions[i];
                            if (Intrinsics.areEqual(str4, "android.permission.CAMERA")) {
                                if (grantResults[i] == 0) {
                                    List<Intent> list = arrayList4;
                                    IncognitoWebViewChromeClient incognitoWebViewChromeClient = this;
                                    List<String> list2 = distinct;
                                    PackageManager packageManager2 = packageManager;
                                    Intrinsics.checkNotNull(packageManager2);
                                    cameraPermissionGranted2 = incognitoWebViewChromeClient.cameraPermissionGranted(list2, packageManager2);
                                    list.addAll(cameraPermissionGranted2);
                                }
                            } else if (Intrinsics.areEqual(str4, "android.permission.RECORD_AUDIO") && grantResults[i] == 0) {
                                List<Intent> list3 = arrayList4;
                                IncognitoWebViewChromeClient incognitoWebViewChromeClient2 = this;
                                List<String> list4 = distinct;
                                PackageManager packageManager3 = packageManager;
                                Intrinsics.checkNotNull(packageManager3);
                                recordAudioPermissionGranted = incognitoWebViewChromeClient2.recordAudioPermissionGranted(list4, packageManager3);
                                list3.addAll(recordAudioPermissionGranted);
                            }
                        }
                        if (!ArraysKt.contains(strArr2, "android.permission.CAMERA")) {
                            List<Intent> list5 = arrayList4;
                            IncognitoWebViewChromeClient incognitoWebViewChromeClient3 = this;
                            List<String> list6 = distinct;
                            PackageManager packageManager4 = packageManager;
                            Intrinsics.checkNotNull(packageManager4);
                            cameraPermissionGranted = incognitoWebViewChromeClient3.cameraPermissionGranted(list6, packageManager4);
                            list5.addAll(cameraPermissionGranted);
                        }
                        IncognitoWebViewChromeClient incognitoWebViewChromeClient4 = this;
                        List<Intent> list7 = arrayList4;
                        Intent intent2 = intent;
                        PackageManager packageManager5 = packageManager;
                        Intrinsics.checkNotNull(packageManager5);
                        incognitoWebViewChromeClient4.startIntent(list7, intent2, packageManager5, reactContext, filePathCallback);
                        return true;
                    }
                });
                return true;
            }
        }
        Intrinsics.checkNotNull(packageManager);
        arrayList4.addAll(cameraPermissionGranted(distinct, packageManager));
        if (ArraysKt.contains(strArr2, "android.permission.RECORD_AUDIO")) {
            arrayList4.addAll(recordAudioPermissionGranted(distinct, packageManager));
        }
        startIntent(arrayList4, intent, packageManager, reactContext, filePathCallback);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Intent> cameraPermissionGranted(List<String> acceptTypes, PackageManager manager) {
        ArrayList arrayList = new ArrayList();
        List<String> list = acceptTypes;
        for (String str : list) {
            if (str != null) {
                String obj = StringsKt.trim((CharSequence) str).toString();
                if (!StringsKt.startsWith$default(obj, "image/", false, 2, (Object) null)) {
                    Intrinsics.areEqual(obj, DEFAULT_MIME_TYPE);
                }
            }
        }
        for (String str2 : list) {
            if (str2 != null) {
                String obj2 = StringsKt.trim((CharSequence) str2).toString();
                if (!StringsKt.startsWith$default(obj2, "video/", false, 2, (Object) null)) {
                    Intrinsics.areEqual(obj2, DEFAULT_MIME_TYPE);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Intent> recordAudioPermissionGranted(List<String> acceptTypes, PackageManager manager) {
        ArrayList arrayList = new ArrayList();
        for (String str : acceptTypes) {
            if (str != null) {
                String obj = StringsKt.trim((CharSequence) str).toString();
                if (!StringsKt.startsWith$default(obj, "audio/", false, 2, (Object) null)) {
                    Intrinsics.areEqual(obj, DEFAULT_MIME_TYPE);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startIntent(List<Intent> intents, Intent filesIntent, PackageManager manager, ReactContext reactContext, ValueCallback<Uri[]> filePathCallback) {
        IncognitoFileChooserActivityEventListenerModule incognitoFileChooserActivityEventListenerModule;
        Intent intent = new Intent("android.intent.action.CHOOSER");
        intent.putExtra("android.intent.extra.INTENT", filesIntent);
        List<Intent> list = intents;
        if (!list.isEmpty()) {
            intent.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) list.toArray(new Intent[0]));
        }
        if (intent.resolveActivity(manager) != null) {
            this.filePathCallback = filePathCallback;
            Activity currentActivity = reactContext.getCurrentActivity();
            if (currentActivity == null || (incognitoFileChooserActivityEventListenerModule = (IncognitoFileChooserActivityEventListenerModule) reactContext.getNativeModule(IncognitoFileChooserActivityEventListenerModule.class)) == null) {
                return;
            }
            incognitoFileChooserActivityEventListenerModule.startActivityForResult(currentActivity, intent, 1, this.activityEventListener);
            return;
        }
        Log.d(TAG, "Not supported");
        filePathCallback.onReceiveValue(null);
        this.filePathCallback = null;
    }

    private final Uri getOutputUri(String directory) {
        String str;
        File file;
        boolean areEqual = Intrinsics.areEqual(directory, Environment.DIRECTORY_PICTURES);
        String str2 = ShareConstants.IMAGE_URL;
        if (!areEqual && !Intrinsics.areEqual(directory, Environment.DIRECTORY_MOVIES) && !Intrinsics.areEqual(directory, Environment.DIRECTORY_MUSIC)) {
            str2 = "UNKNOWN";
        }
        if (Intrinsics.areEqual(directory, Environment.DIRECTORY_PICTURES)) {
            str = ".jpg";
        } else if (Intrinsics.areEqual(directory, Environment.DIRECTORY_MOVIES)) {
            str = ".mp4";
        } else {
            str = Intrinsics.areEqual(directory, Environment.DIRECTORY_MUSIC) ? ".mp3" : "";
        }
        try {
            file = File.createTempFile(str2 + "_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()), str, this.context.getExternalFilesDir(directory));
            file.deleteOnExit();
        } catch (IOException e) {
            SentryLogcatAdapter.e(TAG, "Unable to create Image File", e);
            file = null;
        }
        if (file != null) {
            this.tempFilePaths.add("file:" + file.getAbsoluteFile());
            Context context = this.context;
            Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".FileProvider", file);
            if (uriForFile != null) {
                return uriForFile;
            }
        }
        Uri EMPTY = Uri.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        return EMPTY;
    }

    /* compiled from: IncognitoWebViewChromeClient.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "<init>", "(Landroid/os/Looper;)V", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "setView", "", "handleMessage", "msg", "Landroid/os/Message;", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class AnchorLinkHandler extends Handler {
        private WebView view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnchorLinkHandler(Looper looper) {
            super(looper);
            Intrinsics.checkNotNullParameter(looper, "looper");
        }

        public final void setView(WebView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.view = view;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Object obj;
            Intrinsics.checkNotNullParameter(msg, "msg");
            super.handleMessage(msg);
            Bundle data = msg.getData();
            if (data == null || (obj = data.get("url")) == null) {
                return;
            }
            WritableMap createMap = Arguments.createMap();
            createMap.putString("url", obj.toString());
            IncognitoWebView.Companion companion = IncognitoWebView.INSTANCE;
            WebView webView = this.view;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ViewHierarchyConstants.VIEW_KEY);
                webView = null;
            }
            Intrinsics.checkNotNull(createMap);
            companion.dispatchEvent(webView, IncognitoWebView.EVENT_ON_LINK_PRESSED, createMap);
        }
    }
}
