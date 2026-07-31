package org.wikipedia.readinglist;

import android.content.SharedPreferences;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.lazy.LazyListState;
import com.google.gson.GsonBuilder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerCoroutine;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditViewModel;
import org.wikipedia.diff.ArticleEditDetailsViewModel;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel;
import org.wikipedia.talk.TalkReplyViewModel;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LongPressMenu$show$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $it;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public Object L$1;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressMenu$show$1$1(HistoryEntry historyEntry, PageTitle pageTitle, PageSummary pageSummary, GsonBuilder gsonBuilder, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.$it = historyEntry;
        this.L$0 = pageTitle;
        this.this$0 = pageSummary;
        this.L$1 = gsonBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$it;
        switch (i) {
            case 0:
                return new LongPressMenu$show$1$1((LongPressMenu) this.this$0, (HistoryEntry) obj2, continuation);
            case 1:
                LongPressMenu$show$1$1 longPressMenu$show$1$1 = new LongPressMenu$show$1$1(1, (DescriptionEditViewModel) obj2, continuation);
                longPressMenu$show$1$1.L$1 = obj;
                return longPressMenu$show$1$1;
            case 2:
                return new LongPressMenu$show$1$1((PageTitle) this.this$0, (String) this.L$1, (ArticleEditDetailsViewModel) obj2, continuation, 2);
            case 3:
                return new LongPressMenu$show$1$1((HistoryEntry) obj2, (PageTitle) this.L$0, (PageSummary) this.this$0, (GsonBuilder) this.L$1, continuation);
            case 4:
                return new LongPressMenu$show$1$1((AddToReadingListDialog) this.this$0, (String) this.L$1, (String) obj2, continuation, 4);
            case 5:
                return new LongPressMenu$show$1$1((MoveToReadingListDialog) this.L$0, (ReadingList) this.this$0, (ReadingList) this.L$1, (List) obj2, continuation, 5);
            case 6:
                return new LongPressMenu$show$1$1((List) this.L$0, (ReadingListPage) this.this$0, (AppCompatActivity) this.L$1, (ReadingListBehaviorsUtil.SnackbarCallback) obj2, continuation, 6);
            case 7:
                return new LongPressMenu$show$1$1((LazyListState) this.L$0, (ArrayList) this.this$0, (Set) this.L$1, (Function1) obj2, continuation, 7);
            case 8:
                return new LongPressMenu$show$1$1((MwQueryPage) this.this$0, (String) this.L$1, (SuggestedEditsImageTagsViewModel) obj2, continuation, 8);
            case 9:
                LongPressMenu$show$1$1 longPressMenu$show$1$12 = new LongPressMenu$show$1$1(9, (String) obj2, continuation);
                longPressMenu$show$1$12.L$1 = obj;
                return longPressMenu$show$1$12;
            case 10:
                return new LongPressMenu$show$1$1((TalkReplyViewModel) this.this$0, (String) this.L$1, (String) obj2, continuation, 10);
            case 11:
                return new LongPressMenu$show$1$1((WikiSite) this.L$0, (Long) this.this$0, (AppCompatActivity) this.L$1, (PageTitle) obj2, continuation, 11);
            default:
                LongPressMenu$show$1$1 longPressMenu$show$1$13 = new LongPressMenu$show$1$1((SharedPreferences) this.this$0, (Set) this.L$1, (ReadingChallengeWidgetRepository) obj2, continuation, 12);
                longPressMenu$show$1$13.L$0 = obj;
                return longPressMenu$show$1$13;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 7:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 8:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((LongPressMenu$show$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((LongPressMenu$show$1$1) create((ProducerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:181:0x02d0, code lost:
    
        if (r1 == r0) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04b2, code lost:
    
        if (r2 == r1) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x05d0, code lost:
    
        if (r0 == r12) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:?, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0597, code lost:
    
        if (r3 != r12) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0554, code lost:
    
        if (r2 == r12) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ad, code lost:
    
        if (r1.postThanksToRevision(r11, r10, r20) == r2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x064a, code lost:
    
        if (r1 == r11) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0639, code lost:
    
        if (r2 == r11) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        if (r4 == r2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f9, code lost:
    
        if (r4 == r2) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0263 A[Catch: ListEmptyException -> 0x01de, all -> 0x0296, TryCatch #1 {all -> 0x0296, blocks: (B:138:0x015b, B:129:0x01ff, B:80:0x0201, B:81:0x0217, B:83:0x021d, B:86:0x022a, B:88:0x0236, B:93:0x023f, B:94:0x0243, B:96:0x0249, B:99:0x0257, B:104:0x025d, B:106:0x0263, B:107:0x0265, B:109:0x026d, B:131:0x028d, B:113:0x0279, B:114:0x027e, B:119:0x0285, B:70:0x01b4, B:74:0x01be, B:76:0x01c4, B:79:0x01db, B:125:0x01e2, B:143:0x0176, B:62:0x0181, B:64:0x018e, B:65:0x0195, B:67:0x019f, B:69:0x01a8), top: B:59:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x026d A[Catch: ListEmptyException -> 0x01de, all -> 0x0296, TRY_LEAVE, TryCatch #1 {all -> 0x0296, blocks: (B:138:0x015b, B:129:0x01ff, B:80:0x0201, B:81:0x0217, B:83:0x021d, B:86:0x022a, B:88:0x0236, B:93:0x023f, B:94:0x0243, B:96:0x0249, B:99:0x0257, B:104:0x025d, B:106:0x0263, B:107:0x0265, B:109:0x026d, B:131:0x028d, B:113:0x0279, B:114:0x027e, B:119:0x0285, B:70:0x01b4, B:74:0x01be, B:76:0x01c4, B:79:0x01db, B:125:0x01e2, B:143:0x0176, B:62:0x0181, B:64:0x018e, B:65:0x0195, B:67:0x019f, B:69:0x01a8), top: B:59:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0279 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0769  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x07b4  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0812  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021d A[Catch: ListEmptyException -> 0x01de, all -> 0x0296, TryCatch #1 {all -> 0x0296, blocks: (B:138:0x015b, B:129:0x01ff, B:80:0x0201, B:81:0x0217, B:83:0x021d, B:86:0x022a, B:88:0x0236, B:93:0x023f, B:94:0x0243, B:96:0x0249, B:99:0x0257, B:104:0x025d, B:106:0x0263, B:107:0x0265, B:109:0x026d, B:131:0x028d, B:113:0x0279, B:114:0x027e, B:119:0x0285, B:70:0x01b4, B:74:0x01be, B:76:0x01c4, B:79:0x01db, B:125:0x01e2, B:143:0x0176, B:62:0x0181, B:64:0x018e, B:65:0x0195, B:67:0x019f, B:69:0x01a8), top: B:59:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0249 A[Catch: ListEmptyException -> 0x01de, all -> 0x0296, TryCatch #1 {all -> 0x0296, blocks: (B:138:0x015b, B:129:0x01ff, B:80:0x0201, B:81:0x0217, B:83:0x021d, B:86:0x022a, B:88:0x0236, B:93:0x023f, B:94:0x0243, B:96:0x0249, B:99:0x0257, B:104:0x025d, B:106:0x0263, B:107:0x0265, B:109:0x026d, B:131:0x028d, B:113:0x0279, B:114:0x027e, B:119:0x0285, B:70:0x01b4, B:74:0x01be, B:76:0x01c4, B:79:0x01db, B:125:0x01e2, B:143:0x0176, B:62:0x0181, B:64:0x018e, B:65:0x0195, B:67:0x019f, B:69:0x01a8), top: B:59:0x014d }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Double] */
    /* JADX WARN: Type inference failed for: r1v83, types: [int] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v21, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.util.ArrayList] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x0285 -> B:62:0x01b4). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 2116
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.LongPressMenu$show$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LongPressMenu$show$1$1(Object obj, Serializable serializable, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = serializable;
        this.L$1 = obj2;
        this.$it = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LongPressMenu$show$1$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.L$1 = obj2;
        this.$it = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LongPressMenu$show$1$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$it = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressMenu$show$1$1(LongPressMenu longPressMenu, HistoryEntry historyEntry, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = longPressMenu;
        this.$it = historyEntry;
    }
}
