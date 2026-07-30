package org.fdroid.fdroid;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.DisplayCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.encode.QRCodeEncoder;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$2", f = "Utils.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class UtilsKt$generateQrBitmapKt$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ String $qrData;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UtilsKt$generateQrBitmapKt$2(AppCompatActivity appCompatActivity, String str, Continuation continuation) {
        super(2, continuation);
        this.$activity = appCompatActivity;
        this.$qrData = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UtilsKt$generateQrBitmapKt$2(this.$activity, this.$qrData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((UtilsKt$generateQrBitmapKt$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        AppCompatActivity appCompatActivity = this.$activity;
        DisplayCompat.ModeCompat mode = DisplayCompat.getMode(appCompatActivity, appCompatActivity.getWindowManager().getDefaultDisplay());
        Intrinsics.checkNotNullExpressionValue(mode, "getMode(...)");
        int min = Math.min(mode.getPhysicalWidth(), mode.getPhysicalHeight());
        Utils.debugLog("Utils", "generating QRCode Bitmap of " + min + "x" + min);
        try {
            return new QRCodeEncoder(this.$qrData, null, "TEXT_TYPE", BarcodeFormat.QR_CODE.toString(), min).encodeAsBitmap();
        } catch (WriterException e) {
            Log.e("Utils", "Could not encode QR as bitmap", e);
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
    }
}
