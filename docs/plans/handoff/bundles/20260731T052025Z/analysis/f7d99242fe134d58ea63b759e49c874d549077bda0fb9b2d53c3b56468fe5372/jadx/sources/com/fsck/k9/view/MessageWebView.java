package com.fsck.k9.view;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mailstore.AttachmentResolver;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageWebView extends WebView implements KoinComponent {
    public final Lazy webViewClientFactory$delegate;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnPageFinishedListener {
        void onPageFinished();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageWebView(Context context) {
        super(context);
        context.getClass();
        final int i = 0;
        this.webViewClientFactory$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0(this) { // from class: com.fsck.k9.view.MessageWebView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageWebView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageWebView messageWebView = this.$this_inject;
                switch (i2) {
                }
                return ViewSizeResolver.CC.m(WebViewClientFactory.class, messageWebView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            }
        });
    }

    private final WebViewClientFactory getWebViewClientFactory() {
        return (WebViewClientFactory) this.webViewClientFactory$delegate.getValue();
    }

    private final void setHtmlContent(String str) {
        loadDataWithBaseURL("about:blank", str, "text/html", "utf-8", null);
        resumeTimers();
    }

    public final void configure(WebViewConfig webViewConfig) {
        setVerticalScrollBarEnabled(true);
        setScrollBarStyle(0);
        setLongClickable(true);
        setLayerType(0, null);
        if (webViewConfig.useDarkMode) {
            CloseableKt.setupThemeMode(this, true);
        } else {
            CloseableKt.setupThemeMode(this, false);
        }
        WebSettings settings = getSettings();
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        if (webViewConfig.autoFitWidth) {
            settings.setLoadWithOverviewMode(true);
        }
        PackageManager packageManager = getContext().getPackageManager();
        getSettings().setDisplayZoomControls(!(packageManager.hasSystemFeature("android.hardware.touchscreen.multitouch") || packageManager.hasSystemFeature("android.hardware.faketouch.multitouch.distinct")));
        settings.setJavaScriptEnabled(false);
        settings.setLoadsImagesAutomatically(true);
        setOverScrollMode(2);
        settings.setTextZoom(webViewConfig.textZoom);
        getSettings().setTextZoom(MathKt.roundToInt(getSettings().getTextZoom() * Resources.getSystem().getConfiguration().fontScale));
        try {
            getSettings().setBlockNetworkLoads(true);
        } catch (SecurityException e) {
            Log.e(e, "Failed to unblock network loads. Missing INTERNET permission?", new Object[0]);
        }
        WebView.setWebContentsDebuggingEnabled(false);
    }

    public final void displayHtmlContentWithInlineAttachments$1(String str, AttachmentResolver attachmentResolver, OnPageFinishedListener onPageFinishedListener) {
        str.getClass();
        getWebViewClientFactory().getClass();
        Koin koin = GlobalContext._koin;
        if (koin == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
            return;
        }
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(K9WebViewClient.class);
        Scope scope = koin.scopeRegistry.rootScope;
        scope.getClass();
        setWebViewClient((WebViewClient) scope.resolve(orCreateKotlinClass, Options.Companion.parametersOf(attachmentResolver, onPageFinishedListener), null));
        setHtmlContent(str);
    }

    @Override // org.koin.core.component.KoinComponent
    public /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        final int i = 1;
        this.webViewClientFactory$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0(this) { // from class: com.fsck.k9.view.MessageWebView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageWebView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageWebView messageWebView = this.$this_inject;
                switch (i2) {
                }
                return ViewSizeResolver.CC.m(WebViewClientFactory.class, messageWebView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        final int i2 = 2;
        this.webViewClientFactory$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0(this) { // from class: com.fsck.k9.view.MessageWebView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageWebView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MessageWebView messageWebView = this.$this_inject;
                switch (i22) {
                }
                return ViewSizeResolver.CC.m(WebViewClientFactory.class, messageWebView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            }
        });
    }
}
