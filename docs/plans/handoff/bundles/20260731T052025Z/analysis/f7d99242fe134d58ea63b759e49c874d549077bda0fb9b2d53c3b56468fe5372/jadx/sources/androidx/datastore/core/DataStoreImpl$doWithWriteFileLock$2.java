package androidx.datastore.core;

import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequence;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TooltipStateImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$doWithWriteFileLock$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$doWithWriteFileLock$2(Object obj, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.$block = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.$block;
        switch (i) {
            case 0:
                return new DataStoreImpl$doWithWriteFileLock$2((FileWriteScope$writeData$2) obj, continuation, 0);
            case 1:
                return new DataStoreImpl$doWithWriteFileLock$2((UseCaseCameraRequestControlImpl) obj, continuation, 1);
            case 2:
                return new DataStoreImpl$doWithWriteFileLock$2((Camera2CaptureSequence) obj, continuation, 2);
            case 3:
                return new DataStoreImpl$doWithWriteFileLock$2((TextFieldSelectionManager) obj, continuation, 3);
            default:
                return new DataStoreImpl$doWithWriteFileLock$2((TooltipStateImpl) obj, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
        }
        return ((DataStoreImpl$doWithWriteFileLock$2) create(continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
    
        if (r14 == r4) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0065, code lost:
    
        if (r2.updateClipboardEntry$foundation(r14) == r4) goto L38;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
