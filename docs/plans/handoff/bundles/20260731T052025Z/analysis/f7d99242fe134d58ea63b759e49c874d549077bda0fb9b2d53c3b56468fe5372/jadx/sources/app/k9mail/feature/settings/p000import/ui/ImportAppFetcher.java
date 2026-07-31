package app.k9mail.feature.settings.p000import.ui;

import android.content.Context;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImportAppFetcher {
    public static final List SUPPORTED_APPS = IntOffsetKt.listOf((Object[]) new AppVersion[]{new AppVersion("com.fsck.k9", 39005), new AppVersion("net.thunderbird.android", 1), new AppVersion("net.thunderbird.android.beta", 4), new AppVersion("net.thunderbird.android.daily", 1)});
    public final Context context;
    public final Logger logger;
    public final SynchronizedLazyImpl packageManager$delegate = new SynchronizedLazyImpl(new ImageLoader$Builder$$ExternalSyntheticLambda1(27, this));

    public ImportAppFetcher(Context context, Logger logger) {
        this.context = context;
        this.logger = logger;
    }
}
