package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YieldContext extends AbstractCoroutineContextElement {
    public static final Job.Key Key = new Job.Key();
    public boolean dispatcherWasUnconfined;
}
