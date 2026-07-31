package org.wikipedia.savedpages;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedPageSyncService$doWork$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public List L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SavedPageSyncService$doWork$2(ArrayList arrayList, AppCompatActivity appCompatActivity, Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$2 = arrayList;
        this.L$3 = appCompatActivity;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new SavedPageSyncService$doWork$2((SavedPageSyncService) obj2, continuation);
            case 1:
                return new SavedPageSyncService$doWork$2((ArrayList) this.L$2, (AppCompatActivity) this.L$3, (TextLinkScope$$ExternalSyntheticLambda3) obj2, continuation, 1);
            default:
                return new SavedPageSyncService$doWork$2((ArrayList) this.L$2, (AppCompatActivity) this.L$3, (ReadingListsFragment$$ExternalSyntheticLambda1) obj2, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SavedPageSyncService$doWork$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x0518, code lost:
    
        if (r4.updateStatus(r23) == r6) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0488, code lost:
    
        if (r8.purgeDeletedPages(r23) == r6) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x05c7, code lost:
    
        if (r3.purgeDeletedPages(r23) == r6) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0382, code lost:
    
        if (r9 == r6) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x032e, code lost:
    
        if (r4.isConnected() != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0300, code lost:
    
        if (r0 == r6) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01e0, code lost:
    
        if (r7.markPagesForDeletion(r5, r9, false, r23) != r0) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x059b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00be A[LOOP:0: B:15:0x00b8->B:17:0x00be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x042f A[Catch: all -> 0x0298, Exception -> 0x029e, LOOP:3: B:181:0x0429->B:183:0x042f, LOOP_END, TryCatch #8 {Exception -> 0x029e, all -> 0x0298, blocks: (B:179:0x0293, B:180:0x0410, B:181:0x0429, B:183:0x042f, B:185:0x0442), top: B:178:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03cc A[Catch: all -> 0x03de, Exception -> 0x03e4, LOOP:4: B:199:0x03c6->B:201:0x03cc, LOOP_END, TryCatch #7 {Exception -> 0x03e4, all -> 0x03de, blocks: (B:198:0x03ad, B:199:0x03c6, B:201:0x03cc, B:203:0x03ea), top: B:197:0x03ad }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0562  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0119 -> B:8:0x011b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01e0 -> B:43:0x0148). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 1566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.savedpages.SavedPageSyncService$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavedPageSyncService$doWork$2(SavedPageSyncService savedPageSyncService, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = savedPageSyncService;
    }
}
