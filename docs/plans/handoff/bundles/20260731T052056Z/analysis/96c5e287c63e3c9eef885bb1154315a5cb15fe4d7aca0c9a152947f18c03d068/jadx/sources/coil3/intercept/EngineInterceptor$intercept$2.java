package coil3.intercept;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import androidx.compose.animation.core.MutatePriority;
import androidx.compose.animation.core.MutatorMutex;
import androidx.cursoradapter.widget.CursorAdapter;
import coil3.EventListener$Companion$NONE$1;
import coil3.memory.MemoryCache$Key;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $cacheKey;
    public final /* synthetic */ Object $chain;
    public final /* synthetic */ Object $eventListener;
    public Object $mappedData;
    public /* synthetic */ Object $options;
    public final /* synthetic */ int $r8$classId;
    public Object $request;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1, MemoryCache$Key memoryCache$Key, RealInterceptorChain realInterceptorChain, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = engineInterceptor;
        this.$request = imageRequest;
        this.$mappedData = obj;
        this.$options = options;
        this.$eventListener = eventListener$Companion$NONE$1;
        this.$cacheKey = memoryCache$Key;
        this.$chain = realInterceptorChain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$chain;
        Object obj3 = this.$cacheKey;
        Object obj4 = this.$eventListener;
        switch (i) {
            case 0:
                return new EngineInterceptor$intercept$2((EngineInterceptor) this.this$0, (ImageRequest) this.$request, this.$mappedData, (Options) this.$options, (EventListener$Companion$NONE$1) obj4, (MemoryCache$Key) obj3, (RealInterceptorChain) obj2, continuation);
            case 1:
                EngineInterceptor$intercept$2 engineInterceptor$intercept$2 = new EngineInterceptor$intercept$2((MutatePriority) obj4, (MutatorMutex) obj3, (Function1) obj2, continuation, 1);
                engineInterceptor$intercept$2.$options = obj;
                return engineInterceptor$intercept$2;
            case 2:
                EngineInterceptor$intercept$2 engineInterceptor$intercept$22 = new EngineInterceptor$intercept$2((androidx.compose.foundation.MutatePriority) obj4, (androidx.compose.foundation.MutatorMutex) obj3, (Function1) obj2, continuation, 2);
                engineInterceptor$intercept$22.$options = obj;
                return engineInterceptor$intercept$22;
            case 3:
                EngineInterceptor$intercept$2 engineInterceptor$intercept$23 = new EngineInterceptor$intercept$2((ContentResolver) this.$request, (Uri) this.$options, (CursorAdapter.ChangeObserver) obj4, (BufferedChannel) obj3, (Context) obj2, continuation);
                engineInterceptor$intercept$23.$mappedData = obj;
                return engineInterceptor$intercept$23;
            case 4:
                return new EngineInterceptor$intercept$2((EngineInterceptor) this.this$0, (Ref$ObjectRef) this.$options, (Ref$ObjectRef) obj3, (ImageRequest) this.$request, this.$mappedData, (Ref$ObjectRef) obj2, (EventListener$Companion$NONE$1) obj4, continuation);
            default:
                return new EngineInterceptor$intercept$2((DescriptionEditActivity.Action) this.$request, (String) this.$mappedData, (String) this.$options, (Ref$ObjectRef) obj4, (Ref$ObjectRef) obj3, (SuggestedEditsCardsItemViewModel) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((EngineInterceptor$intercept$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:263:0x05f5, code lost:
    
        if (r0 == r9) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01de, code lost:
    
        if (r0 == r10) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0088, code lost:
    
        if (r0 == r10) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d1, code lost:
    
        if (r0 == r10) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01ca, code lost:
    
        if (r0 == r10) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x028a, code lost:
    
        if (r0 == r10) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03ce A[Catch: all -> 0x0384, TRY_LEAVE, TryCatch #4 {all -> 0x0384, blocks: (B:85:0x037e, B:87:0x03b4, B:93:0x03c6, B:95:0x03ce, B:104:0x0396, B:107:0x03ab), top: B:80:0x0370 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03fc  */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.Object, kotlin.coroutines.intrinsics.CoroutineSingletons, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Object, kotlin.coroutines.intrinsics.CoroutineSingletons, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x03f6 -> B:82:0x03b4). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instructions count: 1674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor$intercept$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(ContentResolver contentResolver, Uri uri, CursorAdapter.ChangeObserver changeObserver, BufferedChannel bufferedChannel, Context context, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.$request = contentResolver;
        this.$options = uri;
        this.$eventListener = changeObserver;
        this.$cacheKey = bufferedChannel;
        this.$chain = context;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, ImageRequest imageRequest, Object obj, Ref$ObjectRef ref$ObjectRef3, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.this$0 = engineInterceptor;
        this.$options = ref$ObjectRef;
        this.$cacheKey = ref$ObjectRef2;
        this.$request = imageRequest;
        this.$mappedData = obj;
        this.$chain = ref$ObjectRef3;
        this.$eventListener = eventListener$Companion$NONE$1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EngineInterceptor$intercept$2(Enum r1, Object obj, Function1 function1, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$eventListener = r1;
        this.$cacheKey = obj;
        this.$chain = function1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(DescriptionEditActivity.Action action, String str, String str2, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, SuggestedEditsCardsItemViewModel suggestedEditsCardsItemViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 5;
        this.$request = action;
        this.$mappedData = str;
        this.$options = str2;
        this.$eventListener = ref$ObjectRef;
        this.$cacheKey = ref$ObjectRef2;
        this.$chain = suggestedEditsCardsItemViewModel;
    }
}
