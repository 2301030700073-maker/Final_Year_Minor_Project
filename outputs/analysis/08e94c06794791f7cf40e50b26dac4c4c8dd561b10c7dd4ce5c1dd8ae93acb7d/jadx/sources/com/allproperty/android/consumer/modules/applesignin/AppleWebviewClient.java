package com.allproperty.android.consumer.modules.applesignin;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.content.ContextCompat;
import com.braze.ui.BrazeWebViewClient;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: AppleWebviewClient.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;", "Landroid/webkit/WebViewClient;", "redirectUri", "", "javascriptToInject", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "shouldInterceptRequest", "Landroid/webkit/WebResourceResponse;", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "request", "Landroid/webkit/WebResourceRequest;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AppleWebviewClient extends WebViewClient {
    private final String javascriptToInject;
    private final String redirectUri;

    public AppleWebviewClient(String redirectUri, String javascriptToInject) {
        Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
        Intrinsics.checkNotNullParameter(javascriptToInject, "javascriptToInject");
        this.redirectUri = redirectUri;
        this.javascriptToInject = javascriptToInject;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(final WebView view, WebResourceRequest request) {
        if (StringsKt.contains$default((CharSequence) String.valueOf(request != null ? request.getUrl() : null), (CharSequence) this.redirectUri, false, 2, (Object) null) && view != null) {
            Executor mainExecutor = ContextCompat.getMainExecutor(view.getContext());
            Intrinsics.checkNotNullExpressionValue(mainExecutor, "getMainExecutor(...)");
            mainExecutor.execute(new Runnable() { // from class: com.allproperty.android.consumer.modules.applesignin.AppleWebviewClient$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppleWebviewClient.shouldInterceptRequest$lambda$1$lambda$0(view, this);
                }
            });
        }
        return super.shouldInterceptRequest(view, request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void shouldInterceptRequest$lambda$1$lambda$0(WebView webView, AppleWebviewClient appleWebviewClient) {
        webView.stopLoading();
        webView.loadUrl(BrazeWebViewClient.JAVASCRIPT_PREFIX + appleWebviewClient.javascriptToInject);
    }
}
