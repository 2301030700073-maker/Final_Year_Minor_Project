package okio.internal;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: okio.internal.-FileSystem$commonListRecursively$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class FileSystem$commonListRecursively$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ Path $dir;
    public final /* synthetic */ boolean $followSymlinks;
    public final /* synthetic */ FileSystem $this_commonListRecursively;
    public /* synthetic */ Object L$0;
    public ArrayDeque L$1;
    public Iterator L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystem$commonListRecursively$1(Path path, FileSystem fileSystem, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$dir = path;
        this.$this_commonListRecursively = fileSystem;
        this.$followSymlinks = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FileSystem$commonListRecursively$1 fileSystem$commonListRecursively$1 = new FileSystem$commonListRecursively$1(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
        fileSystem$commonListRecursively$1.L$0 = obj;
        return fileSystem$commonListRecursively$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FileSystem$commonListRecursively$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0042  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x005b -> B:5:0x005e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.label
            okio.FileSystem r2 = r9.$this_commonListRecursively
            r8 = 1
            if (r0 == 0) goto L20
            if (r0 != r8) goto L19
            java.util.Iterator r0 = r9.L$2
            kotlin.collections.ArrayDeque r1 = r9.L$1
            java.lang.Object r3 = r9.L$0
            kotlin.sequences.SequenceBuilderIterator r3 = (kotlin.sequences.SequenceBuilderIterator) r3
            kotlin.ResultKt.throwOnFailure(r10)
            r7 = r3
            r3 = r1
            r1 = r7
            r7 = r9
            goto L5e
        L19:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            r9 = 0
            return r9
        L20:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlin.sequences.SequenceBuilderIterator r10 = (kotlin.sequences.SequenceBuilderIterator) r10
            kotlin.collections.ArrayDeque r0 = new kotlin.collections.ArrayDeque
            r0.<init>()
            okio.Path r1 = r9.$dir
            r0.addLast(r1)
            java.util.List r1 = r2.list(r1)
            java.util.Iterator r1 = r1.iterator()
            r3 = r0
            r0 = r1
            r1 = r10
        L3c:
            boolean r10 = r0.hasNext()
            if (r10 == 0) goto L60
            java.lang.Object r10 = r0.next()
            r4 = r10
            okio.Path r4 = (okio.Path) r4
            r9.L$0 = r1
            r9.L$1 = r3
            r9.L$2 = r0
            r9.label = r8
            boolean r5 = r9.$followSymlinks
            r6 = 0
            r7 = r9
            java.lang.Object r9 = okio.internal.ZipFilesKt.collectRecursively(r1, r2, r3, r4, r5, r6, r7)
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r10) goto L5e
            return r10
        L5e:
            r9 = r7
            goto L3c
        L60:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.FileSystem$commonListRecursively$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
