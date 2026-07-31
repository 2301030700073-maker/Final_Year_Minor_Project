package net.newpipe.app.platform;

import android.content.Context;
import kotlin.SynchronizedLazyImpl;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidBuildInfo implements BuildInfo {
    public final Context context;
    public final boolean isDebug;
    public final SynchronizedLazyImpl isReleaseApk$delegate;

    public AndroidBuildInfo(Context context) {
        this.context = context;
        this.isDebug = (context.getApplicationInfo().flags & 2) != 0;
        this.isReleaseApk$delegate = new SynchronizedLazyImpl(new Scope$$ExternalSyntheticLambda0(this, 2));
    }
}
