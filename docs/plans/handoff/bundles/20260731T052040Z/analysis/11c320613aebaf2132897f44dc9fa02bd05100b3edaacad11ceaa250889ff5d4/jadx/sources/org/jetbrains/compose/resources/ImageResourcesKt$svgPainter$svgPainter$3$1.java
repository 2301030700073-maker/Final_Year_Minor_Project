package org.jetbrains.compose.resources;

import androidx.compose.ui.unit.Density;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageResourcesKt$svgPainter$svgPainter$3$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Density $density;
    final /* synthetic */ DrawableResource $resource;
    final /* synthetic */ ResourceReader $resourceReader;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageResourcesKt$svgPainter$svgPainter$3$1(DrawableResource drawableResource, ResourceReader resourceReader, Density density, Continuation continuation) {
        super(2, continuation);
        this.$resource = drawableResource;
        this.$resourceReader = resourceReader;
        this.$density = density;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImageResourcesKt$svgPainter$svgPainter$3$1 imageResourcesKt$svgPainter$svgPainter$3$1 = new ImageResourcesKt$svgPainter$svgPainter$3$1(this.$resource, this.$resourceReader, this.$density, continuation);
        imageResourcesKt$svgPainter$svgPainter$3$1.L$0 = obj;
        return imageResourcesKt$svgPainter$svgPainter$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((ImageResourcesKt$svgPainter$svgPainter$3$1) create((ResourceEnvironment) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String str = ResourceEnvironmentKt.getResourceItemByEnvironment(this.$resource, resourceEnvironment).path;
            ResourceReader resourceReader = this.$resourceReader;
            ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(11);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 1;
            AsyncCache asyncCache = ImageResourcesKt.imageCache;
            ImageResourcesKt$loadImage$2 imageResourcesKt$loadImage$2 = new ImageResourcesKt$loadImage$2(zipFilesKt$$ExternalSyntheticLambda3, resourceReader, str, null);
            asyncCache.getClass();
            obj = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(asyncCache, str, imageResourcesKt$loadImage$2, null), this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        obj.getClass();
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        return null;
    }
}
