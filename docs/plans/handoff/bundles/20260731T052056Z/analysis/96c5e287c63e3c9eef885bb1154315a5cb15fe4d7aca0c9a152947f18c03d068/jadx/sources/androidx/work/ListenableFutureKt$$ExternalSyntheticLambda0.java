package androidx.work;

import androidx.appcompat.app.AppCompatActivity;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.ResolvableFuture;
import coil3.RealImageLoader$execute$2;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ListenableFutureKt$$ExternalSyntheticLambda0 implements CallbackToFutureAdapter$Resolver, RemoveFromReadingListsDialog$Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ListenableFutureKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                Executor executor = (Executor) obj3;
                String str = (String) obj2;
                Function0 function0 = (Function0) obj;
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                WorkerKt$$ExternalSyntheticLambda1 workerKt$$ExternalSyntheticLambda1 = new WorkerKt$$ExternalSyntheticLambda1(atomicBoolean, 1);
                DirectExecutor directExecutor = DirectExecutor.INSTANCE;
                ResolvableFuture resolvableFuture = callbackToFutureAdapter$Completer.cancellationFuture;
                if (resolvableFuture != null) {
                    resolvableFuture.addListener(workerKt$$ExternalSyntheticLambda1, directExecutor);
                }
                executor.execute(new WorkerKt$$ExternalSyntheticLambda2(atomicBoolean, callbackToFutureAdapter$Completer, function0, 1));
                return str;
            default:
                CoroutineContext coroutineContext = (CoroutineContext) obj3;
                CoroutineStart coroutineStart = (CoroutineStart) obj2;
                Function2 function2 = (Function2) obj;
                Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0 = new Task$$ExternalSyntheticLambda0(19, (Job) coroutineContext.get(Job.Key.$$INSTANCE));
                DirectExecutor directExecutor2 = DirectExecutor.INSTANCE;
                ResolvableFuture resolvableFuture2 = callbackToFutureAdapter$Completer.cancellationFuture;
                if (resolvableFuture2 != null) {
                    resolvableFuture2.addListener(task$$ExternalSyntheticLambda0, directExecutor2);
                }
                return AwaitKt.launch$default(AwaitKt.CoroutineScope(coroutineContext), null, coroutineStart, new RealImageLoader$execute$2(function2, callbackToFutureAdapter$Completer, null, 4), 1);
        }
    }

    @Override // org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback
    public void onDeleted(List list, ReadingListPage readingListPage) {
        AppCompatActivity appCompatActivity = (AppCompatActivity) this.f$0;
        ReadingListBehaviorsUtil.SnackbarCallback snackbarCallback = (ReadingListBehaviorsUtil.SnackbarCallback) this.f$1;
        ReadingListBehaviorsUtil.Callback callback = (ReadingListBehaviorsUtil.Callback) this.f$2;
        List list2 = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.showDeletePageFromListsUndoSnackbar(appCompatActivity, list, readingListPage, snackbarCallback);
        callback.onCompleted();
    }
}
