package org.jetbrains.compose.resources;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.Density;
import androidx.datastore.core.FileWriteScope$writeData$2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageResourcesKt$svgPainter$svgPainter$3$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Density $density;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DrawableResource $resource;
    public final /* synthetic */ DefaultAndroidResourceReader $resourceReader;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImageResourcesKt$svgPainter$svgPainter$3$1(DrawableResource drawableResource, DefaultAndroidResourceReader defaultAndroidResourceReader, Density density, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$resource = drawableResource;
        this.$resourceReader = defaultAndroidResourceReader;
        this.$density = density;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                ImageResourcesKt$svgPainter$svgPainter$3$1 imageResourcesKt$svgPainter$svgPainter$3$1 = new ImageResourcesKt$svgPainter$svgPainter$3$1(this.$resource, this.$resourceReader, this.$density, continuation, 0);
                imageResourcesKt$svgPainter$svgPainter$3$1.L$0 = obj;
                return imageResourcesKt$svgPainter$svgPainter$3$1;
            default:
                ImageResourcesKt$svgPainter$svgPainter$3$1 imageResourcesKt$svgPainter$svgPainter$3$12 = new ImageResourcesKt$svgPainter$svgPainter$3$1(this.$resource, this.$resourceReader, this.$density, continuation, 1);
                imageResourcesKt$svgPainter$svgPainter$3$12.L$0 = obj;
                return imageResourcesKt$svgPainter$svgPainter$3$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((ImageResourcesKt$svgPainter$svgPainter$3$1) create(resourceEnvironment, continuation)).invokeSuspend(unit);
                return CoroutineSingletons.COROUTINE_SUSPENDED;
            default:
                return ((ImageResourcesKt$svgPainter$svgPainter$3$1) create(resourceEnvironment, continuation)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        DrawableResource drawableResource = this.$resource;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                ResourceEnvironment resourceEnvironment = (ResourceEnvironment) this.L$0;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str = ResourceEnvironmentKt.getResourceItemByEnvironment(drawableResource, resourceEnvironment).path;
                    ZipFilesKt$$ExternalSyntheticLambda0 zipFilesKt$$ExternalSyntheticLambda0 = new ZipFilesKt$$ExternalSyntheticLambda0(8);
                    this.L$0 = null;
                    this.label = 1;
                    SoftPool softPool = ImageResourcesKt.imageCache;
                    FileWriteScope$writeData$2 fileWriteScope$writeData$2 = new FileWriteScope$writeData$2(zipFilesKt$$ExternalSyntheticLambda0, this.$resourceReader, str, null, 3);
                    softPool.getClass();
                    obj = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(softPool, str, fileWriteScope$writeData$2, (Continuation) null), this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                throw Config.CC.m(obj);
            default:
                ResourceEnvironment resourceEnvironment2 = (ResourceEnvironment) this.L$0;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str2 = ResourceEnvironmentKt.getResourceItemByEnvironment(drawableResource, resourceEnvironment2).path;
                    ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0 = new ForwardingFileSystem$$ExternalSyntheticLambda0(17, this.$density);
                    this.L$0 = null;
                    this.label = 1;
                    SoftPool softPool2 = ImageResourcesKt.imageCache;
                    FileWriteScope$writeData$2 fileWriteScope$writeData$22 = new FileWriteScope$writeData$2(forwardingFileSystem$$ExternalSyntheticLambda0, this.$resourceReader, str2, null, 3);
                    softPool2.getClass();
                    obj = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(softPool2, str2, fileWriteScope$writeData$22, (Continuation) null), this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                obj.getClass();
                return ((ImageCache$Vector) obj).vector;
        }
    }
}
