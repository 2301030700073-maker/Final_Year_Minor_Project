package okio.internal;

import java.util.Iterator;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.sequences.SequenceBuilderIterator;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: okio.internal.-FileSystem$collectRecursively$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class FileSystem$collectRecursively$1 extends ContinuationImpl {
    public SequenceBuilderIterator L$0;
    public FileSystem L$1;
    public ArrayDeque L$2;
    public Path L$3;
    public Iterator L$4;
    public boolean Z$0;
    public boolean Z$1;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ZipFilesKt.collectRecursively(null, null, null, null, false, false, this);
    }
}
