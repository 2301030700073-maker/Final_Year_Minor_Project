package androidx.webkit.internal;

import androidx.appcompat.app.ActionBar;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.Configuration;
import java.lang.reflect.InvocationTargetException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WebViewGlueCommunicator$LAZY_FACTORY_HOLDER {
    public static final WebViewProviderFactory INSTANCE;

    static {
        WebViewProviderFactory incompatibleApkWebViewProviderFactory;
        try {
            incompatibleApkWebViewProviderFactory = new Configuration.Builder(1, (WebViewProviderFactoryBoundaryInterface) IntOffsetKt.castToSuppLibClass(WebViewProviderFactoryBoundaryInterface.class, ActionBar.fetchGlueProviderFactoryImpl()));
        } catch (ClassNotFoundException unused) {
            incompatibleApkWebViewProviderFactory = new IncompatibleApkWebViewProviderFactory();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(e);
            return;
        }
        INSTANCE = incompatibleApkWebViewProviderFactory;
    }
}
