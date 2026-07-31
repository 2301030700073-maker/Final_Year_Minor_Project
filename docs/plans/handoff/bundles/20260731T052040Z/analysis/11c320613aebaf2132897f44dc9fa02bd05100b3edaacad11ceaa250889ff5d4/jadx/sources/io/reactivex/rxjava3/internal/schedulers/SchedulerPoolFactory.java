package io.reactivex.rxjava3.internal.schedulers;

import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SchedulerPoolFactory {
    public static final boolean PURGE_ENABLED;

    static {
        boolean z = true;
        try {
            String property = System.getProperty("rx3.purge-enabled");
            if (property != null) {
                z = "true".equals(property);
            }
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
        }
        PURGE_ENABLED = z;
    }
}
