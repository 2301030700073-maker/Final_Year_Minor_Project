package defpackage;

import android.os.Looper;
import android.webkit.TracingConfig;
import android.webkit.TracingController;
import android.webkit.WebView;
import java.io.OutputStream;
import java.util.concurrent.Executor;

/* renamed from: q1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3542q1 {
    /* renamed from: case, reason: not valid java name */
    public static void m7843case(TracingController tracingController, C2802gI c2802gI) {
        new TracingConfig.Builder();
        throw null;
    }

    /* renamed from: do, reason: not valid java name */
    public static TracingController m7844do() {
        TracingController tracingController;
        tracingController = TracingController.getInstance();
        return tracingController;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m7845else(TracingController tracingController, OutputStream outputStream, Executor executor) {
        boolean stop;
        stop = tracingController.stop(outputStream, executor);
        return stop;
    }

    /* renamed from: for, reason: not valid java name */
    public static Looper m7846for(WebView webView) {
        Looper webViewLooper;
        webViewLooper = webView.getWebViewLooper();
        return webViewLooper;
    }

    /* renamed from: if, reason: not valid java name */
    public static ClassLoader m7847if() {
        ClassLoader webViewClassLoader;
        webViewClassLoader = WebView.getWebViewClassLoader();
        return webViewClassLoader;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m7848new(TracingController tracingController) {
        boolean isTracing;
        isTracing = tracingController.isTracing();
        return isTracing;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7849try(String str) {
        WebView.setDataDirectorySuffix(str);
    }
}
