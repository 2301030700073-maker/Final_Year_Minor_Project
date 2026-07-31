package androidx.webkit;

import android.content.pm.PackageInfo;
import android.net.Uri;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WebViewCompat {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Uri.parse("*");
        Uri.parse("");
        new WeakHashMap();
    }

    public static PackageInfo getLoadedWebViewPackageInfo() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
    }
}
