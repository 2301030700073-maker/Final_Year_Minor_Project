package okhttp3.internal.connection;

import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.platform.Platform;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.util.debounce.DebounceSavable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealConnectionPool {
    public final Object cleanupQueue;
    public final Object cleanupTask;
    public final Serializable connections;
    public final long keepAliveDurationNs;

    public RealConnectionPool(TaskRunner taskRunner) {
        taskRunner.getClass();
        TimeUnit.MINUTES.getClass();
        this.keepAliveDurationNs = 300000000000L;
        this.cleanupQueue = taskRunner.newQueue();
        this.cleanupTask = new TaskQueue$execute$1(this, Modifier.CC.m(new StringBuilder(), _UtilJvmKt.okHttpName, " ConnectionPool connection closer"));
        this.connections = new ConcurrentLinkedQueue();
    }

    public LambdaObserver getDebouncedSaver() {
        ObservableObserveOn observeOn = ((PublishSubject) this.cleanupQueue).debounce(this.keepAliveDurationNs).observeOn(AndroidSchedulers.mainThread());
        final int i = 0;
        final int i2 = 1;
        LambdaObserver lambdaObserver = new LambdaObserver(new Consumer(this) { // from class: org.schabi.newpipe.util.debounce.DebounceSaver$$ExternalSyntheticLambda0
            public final /* synthetic */ RealConnectionPool f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i;
                RealConnectionPool realConnectionPool = this.f$0;
                switch (i3) {
                    case 0:
                        ((DebounceSavable) realConnectionPool.cleanupTask).saveImmediate();
                        break;
                    default:
                        ((BaseStateFragment) ((DebounceSavable) realConnectionPool.cleanupTask)).showError(new ErrorInfo((Throwable) obj, UserAction.SOMETHING_ELSE, "Debounced saver"));
                        break;
                }
            }
        }, new Consumer(this) { // from class: org.schabi.newpipe.util.debounce.DebounceSaver$$ExternalSyntheticLambda0
            public final /* synthetic */ RealConnectionPool f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                RealConnectionPool realConnectionPool = this.f$0;
                switch (i3) {
                    case 0:
                        ((DebounceSavable) realConnectionPool.cleanupTask).saveImmediate();
                        break;
                    default:
                        ((BaseStateFragment) ((DebounceSavable) realConnectionPool.cleanupTask)).showError(new ErrorInfo((Throwable) obj, UserAction.SOMETHING_ELSE, "Debounced saver"));
                        break;
                }
            }
        });
        observeOn.subscribe(lambdaObserver);
        return lambdaObserver;
    }

    public int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        TimeZone timeZone = _UtilJvmKt.UTC;
        ArrayList arrayList = realConnection.calls;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + realConnection.route.address.url + " was leaked. Did you forget to close a response body?";
                Platform platform = Platform.platform;
                Platform.platform.logCloseableLeak(((RealCall.CallReference) reference).callStackTrace, str);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    realConnection.idleAtNs = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }

    public void setHasChangesToSave() {
        PublishSubject publishSubject = (PublishSubject) this.cleanupQueue;
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.connections;
        if (atomicBoolean == null || publishSubject == null) {
            return;
        }
        atomicBoolean.set(true);
        publishSubject.onNext(Long.valueOf(System.currentTimeMillis()));
    }

    public RealConnectionPool(long j, DebounceSavable debounceSavable) {
        this.keepAliveDurationNs = j;
        this.cleanupQueue = new PublishSubject();
        this.cleanupTask = debounceSavable;
        this.connections = new AtomicBoolean();
    }
}
