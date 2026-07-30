package org.fdroid.fdroid;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* compiled from: Utils.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.UtilsKt", f = "Utils.kt", l = {EACTags.APPLICATION_EXPIRATION_DATE}, m = "generateQrBitmapKt")
/* loaded from: classes2.dex */
final class UtilsKt$generateQrBitmapKt$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    UtilsKt$generateQrBitmapKt$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UtilsKt.generateQrBitmapKt(null, null, this);
    }
}
