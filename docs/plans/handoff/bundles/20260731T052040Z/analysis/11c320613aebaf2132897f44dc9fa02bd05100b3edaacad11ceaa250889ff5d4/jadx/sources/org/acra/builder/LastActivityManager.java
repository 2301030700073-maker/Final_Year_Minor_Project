package org.acra.builder;

import com.livefront.bridge.BridgeDelegate;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.acra.collections.WeakStack;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LastActivityManager {
    public final WeakStack activityStack = new WeakStack();
    public final Condition destroyedCondition;
    public final ReentrantLock lock;

    public LastActivityManager(App app) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.destroyedCondition = reentrantLock.newCondition();
        app.registerActivityLifecycleCallbacks(new BridgeDelegate.AnonymousClass4(this, 1));
    }
}
