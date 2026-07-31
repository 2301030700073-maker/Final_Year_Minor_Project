package org.wikipedia.yearinreview;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.Api26Bitmap;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ GraphicsLayer $graphicsLayer;
    public final /* synthetic */ Function1 $onBitmapReady;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1(GraphicsLayer graphicsLayer, Function1 function1, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$graphicsLayer = graphicsLayer;
        this.$onBitmapReady = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1(this.$graphicsLayer, this.$onBitmapReady, continuation, 0);
            default:
                return new YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1(this.$graphicsLayer, this.$onBitmapReady, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.$onBitmapReady;
        GraphicsLayer graphicsLayer = this.$graphicsLayer;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = graphicsLayer.toImageBitmap(this);
                    if (obj == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                function1.invoke(Api26Bitmap.asAndroidBitmap((AndroidImageBitmap) obj));
                break;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = graphicsLayer.toImageBitmap(this);
                    if (obj == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                function1.invoke(Api26Bitmap.asAndroidBitmap((AndroidImageBitmap) obj));
                break;
        }
        return unit;
    }
}
