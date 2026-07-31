package com.skydoves.landscapist.coil3;

import android.content.Context;
import androidx.compose.runtime.ProduceStateScope;
import androidx.compose.runtime.ProduceStateScopeImpl;
import coil3.ImageLoader;
import com.skydoves.landscapist.DataSource;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$rememberImageSourceFile$1$1", f = "Coil3ImageSourceFile.kt", l = {181}, m = "invokeSuspend", v = 2)
/* loaded from: classes.dex */
public final class Coil3ImageSourceFileKt$rememberImageSourceFile$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Context $context;
    final /* synthetic */ DataSource $dataSource;
    final /* synthetic */ ImageLoader $imageLoader;
    final /* synthetic */ Object $imageModel;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Coil3ImageSourceFileKt$rememberImageSourceFile$1$1(Context context, ImageLoader imageLoader, Object obj, DataSource dataSource, Continuation continuation) {
        super(2, continuation);
        this.$context = context;
        this.$imageLoader = imageLoader;
        this.$imageModel = obj;
        this.$dataSource = dataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Coil3ImageSourceFileKt$rememberImageSourceFile$1$1 coil3ImageSourceFileKt$rememberImageSourceFile$1$1 = new Coil3ImageSourceFileKt$rememberImageSourceFile$1$1(this.$context, this.$imageLoader, this.$imageModel, this.$dataSource, continuation);
        coil3ImageSourceFileKt$rememberImageSourceFile$1$1.L$0 = obj;
        return coil3ImageSourceFileKt$rememberImageSourceFile$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProduceStateScope produceStateScope, Continuation continuation) {
        return ((Coil3ImageSourceFileKt$rememberImageSourceFile$1$1) create(produceStateScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ProduceStateScope produceStateScope = (ProduceStateScope) this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Context context = this.$context;
            ImageLoader imageLoader = this.$imageLoader;
            Object obj2 = this.$imageModel;
            DataSource dataSource = this.$dataSource;
            this.L$0 = null;
            this.L$1 = produceStateScope;
            this.label = 1;
            obj = Coil3ImageSourceFileKt.getImageSourceFile(context, imageLoader, obj2, dataSource, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            produceStateScope = (ProduceStateScope) this.L$1;
            ResultKt.throwOnFailure(obj);
        }
        ((ProduceStateScopeImpl) produceStateScope).setValue(obj);
        return Unit.INSTANCE;
    }
}
