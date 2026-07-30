package defpackage;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class YL {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f4729do = 0;

    /* renamed from: YL$do, reason: invalid class name */
    public interface Cdo {
        void onPostMessage(WebView webView, TL tl, Uri uri, boolean z, AbstractC0480Ro abstractC0480Ro);
    }

    static {
        Uri.parse("*");
        Uri.parse(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: do, reason: not valid java name */
    public static PackageInfo m2913do() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }
}
