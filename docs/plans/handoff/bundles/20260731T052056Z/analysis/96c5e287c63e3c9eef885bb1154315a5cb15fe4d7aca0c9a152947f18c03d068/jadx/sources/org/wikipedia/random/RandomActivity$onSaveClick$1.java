package org.wikipedia.random;

import android.icu.text.ListFormatter;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.R;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomActivity$onSaveClick$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public Object $title;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RandomActivity$onSaveClick$1(PageTitle pageTitle, RandomActivity randomActivity, Continuation continuation) {
        super(2, continuation);
        this.$title = pageTitle;
        this.this$0 = randomActivity;
    }

    public static final void invokeSuspend$lambda$0(RandomActivity randomActivity, PageTitle pageTitle, List list) {
        if (randomActivity.isDestroyed()) {
            return;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        String string = randomActivity.getString(R.string.reading_list_item_deleted_from_list, pageTitle.getDisplayText(), Build.VERSION.SDK_INT >= 26 ? ListFormatter.getInstance().format(arrayList) : CollectionsKt.joinToString$default(arrayList, ", ", null, null, null, 62));
        string.getClass();
        ShareUtil.showMessage(randomActivity, string, 0);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new RandomActivity$onSaveClick$1((PageTitle) this.$title, (RandomActivity) obj2, continuation);
            default:
                return new RandomActivity$onSaveClick$1((OnThisDayGameArchiveCalendarHelper) obj2, continuation);
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
        return ((RandomActivity$onSaveClick$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0191, code lost:
    
        if (r0.compareTo(r7) <= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0193, code lost:
    
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01a8, code lost:
    
        if (r0.compareTo(r7) <= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x027a, code lost:
    
        if (r0 == r7) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0269, code lost:
    
        if (r8 == r7) goto L73;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.random.RandomActivity$onSaveClick$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RandomActivity$onSaveClick$1(OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper, Continuation continuation) {
        super(2, continuation);
        this.this$0 = onThisDayGameArchiveCalendarHelper;
    }
}
