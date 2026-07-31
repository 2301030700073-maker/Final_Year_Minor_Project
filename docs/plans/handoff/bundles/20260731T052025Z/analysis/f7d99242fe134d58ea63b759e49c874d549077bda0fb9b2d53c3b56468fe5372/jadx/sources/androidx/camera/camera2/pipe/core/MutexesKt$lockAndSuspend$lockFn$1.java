package androidx.camera.camera2.pipe.core;

import androidx.room.util.DBUtil;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.sync.Mutex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MutexesKt$lockAndSuspend$lockFn$1 extends FunctionReferenceImpl implements Function2 {
    public static final MutexesKt$lockAndSuspend$lockFn$1 INSTANCE = new MutexesKt$lockAndSuspend$lockFn$1(2, DBUtil.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object lock = ((Mutex) obj).lock((Continuation) obj2);
        return lock == CoroutineSingletons.COROUTINE_SUSPENDED ? lock : Unit.INSTANCE;
    }
}
