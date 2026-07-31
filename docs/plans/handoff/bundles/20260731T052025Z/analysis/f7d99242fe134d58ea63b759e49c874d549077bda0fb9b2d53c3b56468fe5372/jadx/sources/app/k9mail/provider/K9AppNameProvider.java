package app.k9mail.provider;

import android.content.Context;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda0;
import com.fsck.k9.preferences.FilePrefixProvider;
import kotlin.SynchronizedLazyImpl;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.common.provider.BrandNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9AppNameProvider implements AppNameProvider, BrandNameProvider, FilePrefixProvider {
    public final SynchronizedLazyImpl appName$delegate;
    public final SynchronizedLazyImpl brandName$delegate;
    public final String filePrefix = "k9";

    public K9AppNameProvider(Context context) {
        this.appName$delegate = new SynchronizedLazyImpl(new CameraX$$ExternalSyntheticLambda0(context, 2));
        this.brandName$delegate = new SynchronizedLazyImpl(new CameraX$$ExternalSyntheticLambda0(context, 3));
    }

    public final String getAppName() {
        Object value = this.appName$delegate.getValue();
        value.getClass();
        return (String) value;
    }

    public final String getBrandName() {
        Object value = this.brandName$delegate.getValue();
        value.getClass();
        return (String) value;
    }
}
