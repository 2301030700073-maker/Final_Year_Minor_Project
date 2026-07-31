package com.skydoves.landscapist.coil3;

import android.content.Context;
import coil3.request.ImageRequest;
import com.skydoves.landscapist.StableHolder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.ChannelFlowBuilder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1", f = "CoilImage.kt", l = {}, m = "invokeSuspend", v = 2)
/* loaded from: classes.dex */
public final class CoilImageKt$CoilImage$10$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ Context $context;
    final /* synthetic */ StableHolder $imageLoader;
    final /* synthetic */ ImageRequest $request;
    int label;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @DebugMetadata(c = "com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1$1", f = "CoilImage.kt", l = {332, 333}, m = "invokeSuspend", v = 2)
    /* renamed from: com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Context $context;
        final /* synthetic */ StableHolder $imageLoader;
        final /* synthetic */ ImageRequest $request;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ImageRequest imageRequest, Context context, StableHolder stableHolder, Continuation continuation) {
            super(2, continuation);
            this.$request = imageRequest;
            this.$context = context;
            this.$imageLoader = stableHolder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$request, this.$context, this.$imageLoader, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
        
            if (((kotlinx.coroutines.channels.ProducerCoroutine) r0)._channel.send(r7, r6) == r5) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        
            if (r7 == r5) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = r6.L$0
                kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
                int r1 = r6.label
                r2 = 2
                r3 = 1
                r4 = 0
                kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1d
                java.lang.Object r0 = r6.L$2
                com.skydoves.landscapist.ImageLoadState r0 = (com.skydoves.landscapist.ImageLoadState) r0
                java.lang.Object r6 = r6.L$1
                coil3.request.ImageRequest r6 = (coil3.request.ImageRequest) r6
                kotlin.ResultKt.throwOnFailure(r7)
                goto L6f
            L1d:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
                return r4
            L23:
                java.lang.Object r1 = r6.L$1
                coil3.request.ImageRequest r1 = (coil3.request.ImageRequest) r1
                kotlin.ResultKt.throwOnFailure(r7)
                goto L56
            L2b:
                kotlin.ResultKt.throwOnFailure(r7)
                coil3.request.ImageRequest r7 = r6.$request
                android.content.Context r1 = r6.$context
                coil3.request.ImageRequest$Builder r7 = r7.newBuilder(r1)
                com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1 r1 = new com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1
                r1.<init>()
                coil3.request.ImageRequest$Builder r7 = r7.target(r1)
                coil3.request.ImageRequest r7 = r7.build()
                com.skydoves.landscapist.StableHolder r1 = r6.$imageLoader
                java.lang.Object r1 = r1.value
                coil3.ImageLoader r1 = (coil3.ImageLoader) r1
                r6.L$0 = r0
                r6.L$1 = r4
                r6.label = r3
                java.lang.Object r7 = r1.execute(r7, r6)
                if (r7 != r5) goto L56
                goto L6e
            L56:
                coil3.request.ImageResult r7 = (coil3.request.ImageResult) r7
                com.skydoves.landscapist.ImageLoadState r7 = com.skydoves.landscapist.coil3.CoilImageKt.access$toResult(r7)
                r6.L$0 = r4
                r6.L$1 = r4
                r6.L$2 = r4
                r6.label = r2
                kotlinx.coroutines.channels.ProducerCoroutine r0 = (kotlinx.coroutines.channels.ProducerCoroutine) r0
                kotlinx.coroutines.channels.BufferedChannel r0 = r0._channel
                java.lang.Object r6 = r0.send(r7, r6)
                if (r6 != r5) goto L6f
            L6e:
                return r5
            L6f:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoilImageKt$CoilImage$10$1(ImageRequest imageRequest, Context context, StableHolder stableHolder, Continuation continuation) {
        super(1, continuation);
        this.$request = imageRequest;
        this.$context = context;
        this.$imageLoader = stableHolder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CoilImageKt$CoilImage$10$1(this.$request, this.$context, this.$imageLoader, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((CoilImageKt$CoilImage$10$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        return new ChannelFlowBuilder(new AnonymousClass1(this.$request, this.$context, this.$imageLoader, null), EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }
}
