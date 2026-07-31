package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SafeWindowLayoutComponentProvider {
    public final ConsumerAdapter consumerAdapter;
    public final ClassLoader loader;
    public final ConsumerAdapter safeWindowExtensionsProvider;

    public SafeWindowLayoutComponentProvider(ClassLoader classLoader, ConsumerAdapter consumerAdapter) {
        this.loader = classLoader;
        this.consumerAdapter = consumerAdapter;
        this.safeWindowExtensionsProvider = new ConsumerAdapter(classLoader, 1);
    }

    public static final boolean isMethodWindowLayoutInfoListenerWindowConsumerValid$lambda$3(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) {
        Class<?> loadClass = safeWindowLayoutComponentProvider.loader.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
        loadClass.getClass();
        Method method = loadClass.getMethod("addWindowLayoutInfoListener", Context.class, Consumer.class);
        Method method2 = loadClass.getMethod("removeWindowLayoutInfoListener", Consumer.class);
        method.getClass();
        if (Modifier.isPublic(method.getModifiers())) {
            method2.getClass();
            if (Modifier.isPublic(method2.getModifiers())) {
                return true;
            }
        }
        return false;
    }

    public final WindowLayoutComponent getWindowLayoutComponent() {
        int safeVendorApiLevel;
        ConsumerAdapter consumerAdapter = this.safeWindowExtensionsProvider;
        consumerAdapter.getClass();
        boolean z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        try {
            consumerAdapter.loader.loadClass("androidx.window.extensions.WindowExtensionsProvider").getClass();
            if (SchemaInfoUtilKt.validateReflection$window_release("WindowExtensionsProvider#getWindowExtensions is not valid", new ImageLoader$Builder$$ExternalSyntheticLambda1(22, consumerAdapter)) && SchemaInfoUtilKt.validateReflection$window_release("WindowExtensions#getWindowLayoutComponent is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, z ? 1 : 0)) && SchemaInfoUtilKt.validateReflection$window_release("FoldingFeature class is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 1)) && (safeVendorApiLevel = ExtensionsUtil.getSafeVendorApiLevel()) >= 1) {
                if (safeVendorApiLevel == 1) {
                    z = hasValidVendorApiLevel1$window_release();
                } else if (safeVendorApiLevel < 5) {
                    z = hasValidVendorApiLevel2$window_release();
                } else if (hasValidVendorApiLevel2$window_release() && SchemaInfoUtilKt.validateReflection$window_release("DisplayFoldFeature is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 3)) && SchemaInfoUtilKt.validateReflection$window_release("SupportedWindowFeatures is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 2)) && SchemaInfoUtilKt.validateReflection$window_release("WindowLayoutComponent#getSupportedWindowFeatures is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 4))) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        if (!z) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused2) {
            return null;
        }
    }

    public final boolean hasValidVendorApiLevel1$window_release() {
        return SchemaInfoUtilKt.validateReflection$window_release("WindowLayoutComponent#addWindowLayoutInfoListener(" + Activity.class.getName() + ", java.util.function.Consumer) is not valid", new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 5));
    }

    public final boolean hasValidVendorApiLevel2$window_release() {
        if (!hasValidVendorApiLevel1$window_release()) {
            return false;
        }
        StringBuilder sb = new StringBuilder("WindowLayoutComponent#addWindowLayoutInfoListener(");
        sb.append(Context.class.getName());
        sb.append(", androidx.window.extensions.core.util.function.Consumer) is not valid");
        return SchemaInfoUtilKt.validateReflection$window_release(sb.toString(), new SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0(this, 6));
    }
}
