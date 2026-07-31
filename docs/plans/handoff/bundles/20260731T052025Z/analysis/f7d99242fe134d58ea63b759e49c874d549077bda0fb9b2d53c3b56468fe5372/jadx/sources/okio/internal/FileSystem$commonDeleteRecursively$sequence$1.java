package okio.internal;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: okio.internal.-FileSystem$commonDeleteRecursively$sequence$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class FileSystem$commonDeleteRecursively$sequence$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ Object $fileOrDirectory;
    public final /* synthetic */ int $r8$classId;
    public Object $this_commonDeleteRecursively;
    public Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileSystem$commonDeleteRecursively$sequence$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_commonDeleteRecursively = obj;
        this.$fileOrDirectory = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$fileOrDirectory;
        switch (i) {
            case 0:
                FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$1 = new FileSystem$commonDeleteRecursively$sequence$1((FileSystem) this.$this_commonDeleteRecursively, (Path) obj2, continuation, 0);
                fileSystem$commonDeleteRecursively$sequence$1.L$0 = obj;
                return fileSystem$commonDeleteRecursively$sequence$1;
            case 1:
                FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$12 = new FileSystem$commonDeleteRecursively$sequence$1((CoroutineContext) this.$this_commonDeleteRecursively, (Function2) obj2, continuation, 1);
                fileSystem$commonDeleteRecursively$sequence$12.L$0 = obj;
                return fileSystem$commonDeleteRecursively$sequence$12;
            case 2:
                FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$13 = new FileSystem$commonDeleteRecursively$sequence$1((Function0) obj2, continuation, 2);
                fileSystem$commonDeleteRecursively$sequence$13.$this_commonDeleteRecursively = obj;
                return fileSystem$commonDeleteRecursively$sequence$13;
            case 3:
                FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$14 = new FileSystem$commonDeleteRecursively$sequence$1((PointerEventPass) this.$this_commonDeleteRecursively, (Ref$ObjectRef) obj2, continuation, 3);
                fileSystem$commonDeleteRecursively$sequence$14.L$0 = obj;
                return fileSystem$commonDeleteRecursively$sequence$14;
            default:
                FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$15 = new FileSystem$commonDeleteRecursively$sequence$1((TextDragObserver) obj2, continuation, 4);
                fileSystem$commonDeleteRecursively$sequence$15.L$0 = obj;
                return fileSystem$commonDeleteRecursively$sequence$15;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((FileSystem$commonDeleteRecursively$sequence$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:130|131|112|113|114|115) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e4, code lost:
    
        if (r0 != r8) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01e7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01ee, code lost:
    
        r17.L$0 = r4;
        r17.label = 3;
        r0 = androidx.compose.foundation.gestures.ScrollableKt.awaitAllPointersUp(r4, r1, r17);
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01f6, code lost:
    
        if (r0 == r8) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01fa, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
    
        if (r4 != r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004a, code lost:
    
        if (r1 == r8) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c8, code lost:
    
        if (r4 != r8) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x011e, code lost:
    
        if (r2 == r8) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:?, code lost:
    
        return r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v14, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x01f6 -> B:85:0x01c7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0063 -> B:8:0x0067). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x011e -> B:31:0x0122). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0186 -> B:68:0x0187). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x01e4 -> B:85:0x01c7). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.FileSystem$commonDeleteRecursively$sequence$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileSystem$commonDeleteRecursively$sequence$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$fileOrDirectory = obj;
    }
}
