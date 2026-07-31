package com.fsck.k9.view;

import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.R;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.mailstore.AttachmentResolver;
import com.fsck.k9.view.MessageWebView;
import java.util.Collections;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9WebViewClient extends WebViewClient {
    public static final WebResourceResponse RESULT_DUMMY_RESPONSE = new WebResourceResponse(null, null, null);
    public final AttachmentResolver attachmentResolver;
    public final ClipboardManager clipboardManager;
    public final MessageWebView.OnPageFinishedListener onPageFinishedListener;

    public K9WebViewClient(ClipboardManager clipboardManager, AttachmentResolver attachmentResolver, MessageWebView.OnPageFinishedListener onPageFinishedListener) {
        this.clipboardManager = clipboardManager;
        this.attachmentResolver = attachmentResolver;
        this.onPageFinishedListener = onPageFinishedListener;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        webView.getClass();
        str.getClass();
        super.onPageFinished(webView, str);
        MessageWebView.OnPageFinishedListener onPageFinishedListener = this.onPageFinishedListener;
        if (onPageFinishedListener != null) {
            onPageFinishedListener.onPageFinished();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        webView.getClass();
        webResourceRequest.getClass();
        webResourceError.getClass();
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceRequest.isForMainFrame()) {
            Log.d("Message WebView load error: %d %s for %s", Integer.valueOf(webResourceError.getErrorCode()), webResourceError.getDescription(), webResourceRequest.getUrl());
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        AttachmentResolver attachmentResolver;
        webView.getClass();
        webResourceRequest.getClass();
        Uri url = webResourceRequest.getUrl();
        if (!Intrinsics.areEqual(url.getScheme(), "cid")) {
            return null;
        }
        String schemeSpecificPart = url.getSchemeSpecificPart();
        Uri uri = (schemeSpecificPart == null || (attachmentResolver = this.attachmentResolver) == null) ? null : (Uri) attachmentResolver.contentIdToAttachmentUriMap.get(schemeSpecificPart);
        WebResourceResponse webResourceResponse = RESULT_DUMMY_RESPONSE;
        if (uri == null) {
            return webResourceResponse;
        }
        ContentResolver contentResolver = webView.getContext().getContentResolver();
        try {
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(contentResolver.getType(uri), null, contentResolver.openInputStream(uri));
            Map<String, String> singletonMap = Collections.singletonMap(UtilsKt.CACHE_CONTROL, "no-store");
            singletonMap.getClass();
            webResourceResponse2.setResponseHeaders(singletonMap);
            return webResourceResponse2;
        } catch (Exception e) {
            Log.e(e, "Error while intercepting URI: %s", url);
            return webResourceResponse;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, Uri uri) {
        String scheme = uri.getScheme();
        if (scheme != null) {
            int hashCode = scheme.hashCode();
            if (hashCode != 98494) {
                if (hashCode == 3143036 && scheme.equals(coil3.util.UtilsKt.SCHEME_FILE)) {
                    Context context = webView.getContext();
                    context.getClass();
                    String string = context.getString(R.string.webview_contextmenu_link_clipboard_label);
                    string.getClass();
                    String uri2 = uri.toString();
                    uri2.getClass();
                    this.clipboardManager.setText(string, uri2);
                    return true;
                }
            } else if (scheme.equals("cid")) {
                return false;
            }
        }
        Context context2 = webView.getContext();
        context2.getClass();
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.putExtra("com.android.browser.application_id", context2.getPackageName());
        intent.putExtra("create_new_tab", true);
        intent.addCategory("android.intent.category.BROWSABLE");
        intent.addFlags(524288);
        try {
            context2.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.d(e, "Couldn't open URL: %s", uri);
            Toast.makeText(context2, R.string.error_activity_not_found, 1).show();
            return true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        webView.getClass();
        webResourceRequest.getClass();
        Uri url = webResourceRequest.getUrl();
        url.getClass();
        return shouldOverrideUrlLoading(webView, url);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.getClass();
        str.getClass();
        Uri parse = Uri.parse(str);
        parse.getClass();
        return shouldOverrideUrlLoading(webView, parse);
    }
}
