package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.Configuration;
import androidx.work.impl.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WrkMgrInitializer");

    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        Logger$LogcatLogger.get().debug(TAG, "Initializing WorkManager with default configuration.");
        Configuration configuration = new Configuration(new Configuration.Builder(0));
        context.getClass();
        WorkManagerImpl.initialize(context, configuration);
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
        instance$1.getClass();
        return instance$1;
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.EMPTY_LIST;
    }
}
