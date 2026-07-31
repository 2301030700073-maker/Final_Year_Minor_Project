package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class YieldContext extends AbstractCoroutineContextElement {
    public static final Job.Key Key = new Job.Key();
    public boolean dispatcherWasUnconfined;
}
