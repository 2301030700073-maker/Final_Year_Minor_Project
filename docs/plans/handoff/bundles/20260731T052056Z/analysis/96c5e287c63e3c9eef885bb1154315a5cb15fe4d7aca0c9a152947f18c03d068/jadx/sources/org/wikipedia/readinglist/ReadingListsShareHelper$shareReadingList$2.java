package org.wikipedia.readinglist;

import androidx.appcompat.app.AppCompatActivity;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsShareHelper$shareReadingList$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AppCompatActivity $activity;
    public final /* synthetic */ ReadingList $readingList;
    public int I$0;
    public int I$1;
    public int I$2;
    public Map L$0;
    public Map L$1;
    public Iterator L$3;
    public String L$5;
    public Iterator L$7;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListsShareHelper$shareReadingList$2(ReadingList readingList, AppCompatActivity appCompatActivity, Continuation continuation) {
        super(2, continuation);
        this.$readingList = readingList;
        this.$activity = appCompatActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ReadingListsShareHelper$shareReadingList$2(this.$readingList, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ReadingListsShareHelper$shareReadingList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ed, code lost:
    
        if (r7 == r2) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0222, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
    
        r12 = kotlin.collections.CollectionsKt.windowed(r12, 50, 50).iterator();
        r13 = r10;
        r14 = r11;
        r10 = 0;
        r11 = r9;
        r9 = r8;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0220, code lost:
    
        if (r0 == r2) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f  */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ed -> B:18:0x00f1). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsShareHelper$shareReadingList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
