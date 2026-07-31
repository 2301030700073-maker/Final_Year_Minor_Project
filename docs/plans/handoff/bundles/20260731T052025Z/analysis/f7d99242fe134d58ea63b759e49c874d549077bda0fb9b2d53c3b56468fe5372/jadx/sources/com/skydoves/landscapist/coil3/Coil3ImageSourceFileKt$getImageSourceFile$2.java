package com.skydoves.landscapist.coil3;

import android.content.Context;
import android.net.Uri;
import coil3.ImageLoader;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$getImageSourceFile$2", f = "Coil3ImageSourceFile.kt", l = {74}, m = "invokeSuspend", v = 2)
/* loaded from: classes.dex */
public final class Coil3ImageSourceFileKt$getImageSourceFile$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Context $context;
    final /* synthetic */ ImageLoader $imageLoader;
    final /* synthetic */ Object $imageModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Coil3ImageSourceFileKt$getImageSourceFile$2(Object obj, Context context, ImageLoader imageLoader, Continuation continuation) {
        super(2, continuation);
        this.$imageModel = obj;
        this.$context = context;
        this.$imageLoader = imageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Coil3ImageSourceFileKt$getImageSourceFile$2(this.$imageModel, this.$context, this.$imageLoader, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((Coil3ImageSourceFileKt$getImageSourceFile$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        File resolveUriToFile;
        File resolveUriToFile2;
        int i = this.label;
        Object obj2 = null;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj3 = this.$imageModel;
            if (obj3 instanceof File) {
                File file = (File) obj3;
                if (file.exists() && file.canRead()) {
                    obj2 = obj3;
                }
                return (File) obj2;
            }
            if (obj3 instanceof Uri) {
                resolveUriToFile2 = Coil3ImageSourceFileKt.resolveUriToFile(this.$context, (Uri) obj3);
                return resolveUriToFile2;
            }
            if (obj3 instanceof String) {
                boolean startsWith = StringsKt__StringsJVMKt.startsWith((String) obj3, "file://", false);
                Object obj4 = this.$imageModel;
                if (startsWith) {
                    File file2 = new File(StringsKt.removePrefix((String) obj4, "file://"));
                    if (file2.exists() && file2.canRead()) {
                        return file2;
                    }
                } else {
                    if (StringsKt__StringsJVMKt.startsWith((String) obj4, "content://", false)) {
                        Context context = this.$context;
                        Uri parse = Uri.parse((String) this.$imageModel);
                        parse.getClass();
                        resolveUriToFile = Coil3ImageSourceFileKt.resolveUriToFile(context, parse);
                        return resolveUriToFile;
                    }
                    if (StringsKt__StringsJVMKt.startsWith((String) this.$imageModel, "http://", false) || StringsKt__StringsJVMKt.startsWith((String) this.$imageModel, "https://", false)) {
                        Context context2 = this.$context;
                        ImageLoader imageLoader = this.$imageLoader;
                        String str = (String) this.$imageModel;
                        this.label = 1;
                        obj = Coil3ImageSourceFileKt.getFromDiskCacheOrDownload(context2, imageLoader, str, this);
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        File file3 = new File((String) this.$imageModel);
                        if (file3.exists() && file3.canRead()) {
                            return file3;
                        }
                    }
                }
            }
            return null;
        }
        if (i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        return (File) obj;
    }
}
