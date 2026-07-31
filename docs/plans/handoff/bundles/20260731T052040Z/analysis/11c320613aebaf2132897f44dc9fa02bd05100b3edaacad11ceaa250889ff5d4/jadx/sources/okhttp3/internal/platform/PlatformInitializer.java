package okhttp3.internal.platform;

import android.content.Context;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlatformInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        context.getClass();
        Platform platform = Platform.platform;
        Object obj = Platform.platform;
        ContextAwarePlatform contextAwarePlatform = obj != null ? (ContextAwarePlatform) obj : null;
        if (contextAwarePlatform != null) {
            contextAwarePlatform.setApplicationContext(context);
        }
        return Platform.platform;
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return EmptyList.INSTANCE;
    }
}
