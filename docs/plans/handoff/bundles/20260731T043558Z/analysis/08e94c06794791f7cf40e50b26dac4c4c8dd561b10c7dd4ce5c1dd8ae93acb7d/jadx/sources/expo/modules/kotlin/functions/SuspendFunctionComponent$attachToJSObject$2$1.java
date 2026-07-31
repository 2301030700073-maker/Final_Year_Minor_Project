package expo.modules.kotlin.functions;

import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.jni.PromiseImpl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: SuspendFunctionComponent.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.kotlin.functions.SuspendFunctionComponent$attachToJSObject$2$1", f = "SuspendFunctionComponent.kt", i = {0}, l = {47}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes5.dex */
final class SuspendFunctionComponent$attachToJSObject$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppContext $appContext;
    final /* synthetic */ Object[] $args;
    final /* synthetic */ String $moduleName;
    final /* synthetic */ PromiseImpl $promiseImpl;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ SuspendFunctionComponent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuspendFunctionComponent$attachToJSObject$2$1(PromiseImpl promiseImpl, SuspendFunctionComponent suspendFunctionComponent, String str, Object[] objArr, AppContext appContext, Continuation<? super SuspendFunctionComponent$attachToJSObject$2$1> continuation) {
        super(2, continuation);
        this.$promiseImpl = promiseImpl;
        this.this$0 = suspendFunctionComponent;
        this.$moduleName = str;
        this.$args = objArr;
        this.$appContext = appContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SuspendFunctionComponent$attachToJSObject$2$1 suspendFunctionComponent$attachToJSObject$2$1 = new SuspendFunctionComponent$attachToJSObject$2$1(this.$promiseImpl, this.this$0, this.$moduleName, this.$args, this.$appContext, continuation);
        suspendFunctionComponent$attachToJSObject$2$1.L$0 = obj;
        return suspendFunctionComponent$attachToJSObject$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuspendFunctionComponent$attachToJSObject$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006f A[Catch: all -> 0x00a7, TryCatch #2 {all -> 0x00a7, blocks: (B:16:0x006a, B:18:0x006f, B:20:0x0073, B:21:0x009b, B:22:0x00a6, B:36:0x0090, B:37:0x0098, B:42:0x0033), top: B:41:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0098 A[Catch: all -> 0x00a7, TryCatch #2 {all -> 0x00a7, blocks: (B:16:0x006a, B:18:0x006f, B:20:0x0073, B:21:0x009b, B:22:0x00a6, B:36:0x0090, B:37:0x0098, B:42:0x0033), top: B:41:0x0033 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.kotlin.functions.SuspendFunctionComponent$attachToJSObject$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
