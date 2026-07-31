package org.wikipedia.readinglist;

import androidx.appcompat.app.AppCompatActivity;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsExportImportHelper$importLists$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AppCompatActivity $activity;
    public final /* synthetic */ String $jsonString;
    public int I$0;
    public List L$1;
    public Iterator L$2;
    public ReadingListsExportImportHelper$ExportableReadingList L$3;
    public Iterator L$6;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListsExportImportHelper$importLists$2(String str, AppCompatActivity appCompatActivity, Continuation continuation) {
        super(2, continuation);
        this.$jsonString = str;
        this.$activity = appCompatActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ReadingListsExportImportHelper$importLists$2(this.$jsonString, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ReadingListsExportImportHelper$importLists$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b0, code lost:
    
        if (r12 == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x014e, code lost:
    
        if (r8 == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x015f, code lost:
    
        if (org.wikipedia.readinglist.ReadingListsReceiveHelper.addTitlesToList(r0, (org.wikipedia.readinglist.database.ReadingList) r8, r16) == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00dc, code lost:
    
        r13 = new java.util.ArrayList();
        r12 = r12.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e9, code lost:
    
        if (r12.hasNext() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00eb, code lost:
    
        r14 = r12.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fc, code lost:
    
        if (((org.wikipedia.readinglist.database.ReadingList) r14).getTitle().equals(r0.name) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fe, code lost:
    
        r13.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0103, code lost:
    
        r12 = r10;
        r10 = r13.iterator();
        r8 = r12;
        r12 = r11;
        r11 = r0;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0161, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x015f -> B:8:0x0162). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x012c -> B:9:0x012e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsExportImportHelper$importLists$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
