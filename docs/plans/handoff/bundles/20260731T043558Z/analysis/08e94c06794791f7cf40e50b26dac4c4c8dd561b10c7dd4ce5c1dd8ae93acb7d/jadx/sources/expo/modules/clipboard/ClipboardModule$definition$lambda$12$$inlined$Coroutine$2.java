package expo.modules.clipboard;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: AsyncFunctionBuilder.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0010\u0010\u0003\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0004H\n¨\u0006\u0005"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "<destruct>", "", "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$3"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.clipboard.ClipboardModule$definition$lambda$12$$inlined$Coroutine$2", f = "ClipboardModule.kt", i = {}, l = {282}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ClipboardModule$definition$lambda$12$$inlined$Coroutine$2 extends SuspendLambda implements Function3<CoroutineScope, Object[], Continuation<? super Object>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ClipboardModule this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipboardModule$definition$lambda$12$$inlined$Coroutine$2(Continuation continuation, ClipboardModule clipboardModule) {
        super(3, continuation);
        this.this$0 = clipboardModule;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Object[] objArr, Continuation<? super Object> continuation) {
        return invoke2(coroutineScope, objArr, (Continuation<Object>) continuation);
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Object[] objArr, Continuation<Object> continuation) {
        ClipboardModule$definition$lambda$12$$inlined$Coroutine$2 clipboardModule$definition$lambda$12$$inlined$Coroutine$2 = new ClipboardModule$definition$lambda$12$$inlined$Coroutine$2(continuation, this.this$0);
        clipboardModule$definition$lambda$12$$inlined$Coroutine$2.L$0 = objArr;
        return clipboardModule$definition$lambda$12$$inlined$Coroutine$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        r1 = r5.this$0.getFirstItem(r1);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> Lf
            goto L5d
        Lf:
            r6 = move-exception
            goto L64
        L11:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L19:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.L$0
            java.lang.Object[] r6 = (java.lang.Object[]) r6
            r1 = 0
            r6 = r6[r1]
            r1 = r5
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            expo.modules.clipboard.GetImageOptions r6 = (expo.modules.clipboard.GetImageOptions) r6
            expo.modules.clipboard.ClipboardModule r1 = r5.this$0
            android.content.ClipboardManager r1 = expo.modules.clipboard.ClipboardModule.access$getClipboardManager(r1)
            expo.modules.clipboard.ClipboardModule r3 = r5.this$0
            java.lang.String r4 = "image/*"
            boolean r3 = expo.modules.clipboard.ClipboardModule.access$clipboardHasItemWithType(r3, r4)
            r4 = 0
            if (r3 == 0) goto L3a
            goto L3b
        L3a:
            r1 = r4
        L3b:
            if (r1 == 0) goto L4a
            expo.modules.clipboard.ClipboardModule r3 = r5.this$0
            android.content.ClipData$Item r1 = expo.modules.clipboard.ClipboardModule.access$getFirstItem(r3, r1)
            if (r1 == 0) goto L4a
            android.net.Uri r1 = r1.getUri()
            goto L4b
        L4a:
            r1 = r4
        L4b:
            if (r1 != 0) goto L4e
            goto L63
        L4e:
            expo.modules.clipboard.ClipboardModule r3 = r5.this$0     // Catch: java.lang.Throwable -> Lf
            android.content.Context r3 = expo.modules.clipboard.ClipboardModule.access$getContext(r3)     // Catch: java.lang.Throwable -> Lf
            r5.label = r2     // Catch: java.lang.Throwable -> Lf
            java.lang.Object r6 = expo.modules.clipboard.ClipboardImageKt.imageFromContentUri(r3, r1, r6, r5)     // Catch: java.lang.Throwable -> Lf
            if (r6 != r0) goto L5d
            return r0
        L5d:
            expo.modules.clipboard.ImageResult r6 = (expo.modules.clipboard.ImageResult) r6     // Catch: java.lang.Throwable -> Lf
            android.os.Bundle r4 = r6.toBundle()     // Catch: java.lang.Throwable -> Lf
        L63:
            return r4
        L64:
            r6.printStackTrace()
            boolean r0 = r6 instanceof expo.modules.kotlin.exception.CodedException
            if (r0 != 0) goto L84
            boolean r0 = r6 instanceof java.lang.SecurityException
            if (r0 == 0) goto L7a
            expo.modules.clipboard.NoPermissionException r0 = new expo.modules.clipboard.NoPermissionException
            java.lang.SecurityException r6 = (java.lang.SecurityException) r6
            r0.<init>(r6)
            r6 = r0
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            goto L84
        L7a:
            expo.modules.clipboard.PasteFailureException r0 = new expo.modules.clipboard.PasteFailureException
            java.lang.String r1 = "image"
            r0.<init>(r6, r1)
            r6 = r0
            java.lang.Throwable r6 = (java.lang.Throwable) r6
        L84:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.clipboard.ClipboardModule$definition$lambda$12$$inlined$Coroutine$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
