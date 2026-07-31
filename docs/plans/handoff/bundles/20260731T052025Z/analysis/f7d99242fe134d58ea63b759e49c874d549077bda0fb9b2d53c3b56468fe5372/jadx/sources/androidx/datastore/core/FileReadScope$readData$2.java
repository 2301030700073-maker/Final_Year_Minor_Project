package androidx.datastore.core;

import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.material3.internal.AnchoredDraggableState;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.ResourceItem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileReadScope$readData$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileReadScope$readData$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return new FileReadScope$readData$2((FileReadScope) obj, continuation, 0);
            case 1:
                return new FileReadScope$readData$2((UseCaseCameraRequestControlImpl) obj, continuation, 1);
            case 2:
                return new FileReadScope$readData$2((UseCaseCameraRequestControlImpl) this.L$0, (List) obj, continuation, 2);
            case 3:
                return new FileReadScope$readData$2((AndroidTextContextMenuToolbarProvider) this.L$0, (TextContextMenuDataProvider) obj, continuation, 3);
            case 4:
                return new FileReadScope$readData$2((BasicTextContextMenuProvider) this.L$0, (BasicTextContextMenuProvider.SessionImpl) obj, continuation, 4);
            case 5:
                return new FileReadScope$readData$2((AnchoredDraggableState) this.L$0, (Function3) obj, continuation, 5);
            case 6:
                return new FileReadScope$readData$2((DataStoreImpl) obj, continuation, 6);
            default:
                return new FileReadScope$readData$2((DefaultAndroidResourceReader) this.L$0, (ResourceItem) obj, continuation, 7);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
        }
        return ((FileReadScope$readData$2) create(continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:250:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:260:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x005c A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #16 {all -> 0x0056, blocks: (B:51:0x004c, B:53:0x0054, B:57:0x005c), top: B:50:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v28, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 1346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileReadScope$readData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileReadScope$readData$2(Object obj, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
