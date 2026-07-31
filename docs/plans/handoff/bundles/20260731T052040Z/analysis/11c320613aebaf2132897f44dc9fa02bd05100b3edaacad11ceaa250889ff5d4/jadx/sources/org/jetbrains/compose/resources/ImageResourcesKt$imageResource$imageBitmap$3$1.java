package org.jetbrains.compose.resources;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageResourcesKt$imageResource$imageBitmap$3$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ DrawableResource $resource;
    final /* synthetic */ ResourceEnvironment $resourceEnvironment;
    final /* synthetic */ ResourceReader $resourceReader;
    int I$0;
    int I$1;
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageResourcesKt$imageResource$imageBitmap$3$1(DrawableResource drawableResource, ResourceEnvironment resourceEnvironment, ResourceReader resourceReader, Continuation continuation) {
        super(2, continuation);
        this.$resource = drawableResource;
        this.$resourceEnvironment = resourceEnvironment;
        this.$resourceReader = resourceReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImageResourcesKt$imageResource$imageBitmap$3$1 imageResourcesKt$imageResource$imageBitmap$3$1 = new ImageResourcesKt$imageResource$imageBitmap$3$1(this.$resource, this.$resourceEnvironment, this.$resourceReader, continuation);
        imageResourcesKt$imageResource$imageBitmap$3$1.L$0 = obj;
        return imageResourcesKt$imageResource$imageBitmap$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageResourcesKt$imageResource$imageBitmap$3$1) create((ResourceEnvironment) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ResourceItem resourceItemByEnvironment = ResourceEnvironmentKt.getResourceItemByEnvironment(this.$resource, resourceEnvironment);
            Iterator it = resourceItemByEnvironment.qualifiers.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (((Qualifier) obj2) instanceof DensityQualifier) {
                    break;
                }
            }
            DensityQualifier densityQualifier = obj2 instanceof DensityQualifier ? (DensityQualifier) obj2 : null;
            final int dpi = densityQualifier != null ? densityQualifier.getDpi() : DensityQualifier.MDPI.getDpi();
            final int dpi2 = this.$resourceEnvironment.density.getDpi();
            String str = resourceItemByEnvironment.path;
            String str2 = str + "-" + dpi2 + "dpi";
            ResourceReader resourceReader = this.$resourceReader;
            Function1 function1 = new Function1() { // from class: org.jetbrains.compose.resources.ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    byte[] bArr = (byte[]) obj3;
                    bArr.getClass();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    int i2 = dpi;
                    int i3 = dpi2;
                    if (i2 > i3) {
                        options.inDensity = i2;
                        options.inTargetDensity = i3;
                    }
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    decodeByteArray.getClass();
                    return new ImageCache$Bitmap(new AndroidImageBitmap(decodeByteArray));
                }
            };
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.L$3 = null;
            this.I$0 = dpi;
            this.I$1 = dpi2;
            this.label = 1;
            AsyncCache asyncCache = ImageResourcesKt.imageCache;
            ImageResourcesKt$loadImage$2 imageResourcesKt$loadImage$2 = new ImageResourcesKt$loadImage$2(function1, resourceReader, str, null);
            asyncCache.getClass();
            obj = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(asyncCache, str2, imageResourcesKt$loadImage$2, null), this);
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
        return ((ImageCache$Bitmap) obj).bitmap;
    }
}
