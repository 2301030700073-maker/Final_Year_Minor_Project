package org.wikipedia.talk;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.MutableState;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.diff.ArticleEditDetailsViewModel;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewViewModel;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsViewModel$subscribeTopic$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $commentName;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean $subscribed;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$subscribeTopic$1(TalkTopicsViewModel talkTopicsViewModel, String str, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = talkTopicsViewModel;
        this.$commentName = str;
        this.$subscribed = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        boolean z = this.$subscribed;
        Object obj2 = this.$commentName;
        switch (i) {
            case 0:
                return new TalkTopicsViewModel$subscribeTopic$1((TalkTopicsViewModel) this.this$0, (String) obj2, z, continuation);
            case 1:
                return new TalkTopicsViewModel$subscribeTopic$1((Animatable) this.this$0, this.$subscribed, (SpringSpec) obj2, continuation, 1);
            case 2:
                return new TalkTopicsViewModel$subscribeTopic$1(z, (Function0) this.this$0, (MutableState) obj2, continuation);
            case 3:
                TalkTopicsViewModel$subscribeTopic$1 talkTopicsViewModel$subscribeTopic$1 = new TalkTopicsViewModel$subscribeTopic$1((ArticleEditDetailsViewModel) obj2, z, continuation, 3);
                talkTopicsViewModel$subscribeTopic$1.this$0 = obj;
                return talkTopicsViewModel$subscribeTopic$1;
            case 4:
                return new TalkTopicsViewModel$subscribeTopic$1((LinkedHashMap) obj2, z, continuation, 4);
            case 5:
                TalkTopicsViewModel$subscribeTopic$1 talkTopicsViewModel$subscribeTopic$12 = new TalkTopicsViewModel$subscribeTopic$1((LinkPreviewViewModel) obj2, z, continuation, 5);
                talkTopicsViewModel$subscribeTopic$12.this$0 = obj;
                return talkTopicsViewModel$subscribeTopic$12;
            case 6:
                return new TalkTopicsViewModel$subscribeTopic$1((List) this.this$0, this.$subscribed, (AppCompatActivity) obj2, continuation, 6);
            case 7:
                return new TalkTopicsViewModel$subscribeTopic$1((ReadingListPage) this.this$0, this.$subscribed, (AppCompatActivity) obj2, continuation, 7);
            case 8:
                return new TalkTopicsViewModel$subscribeTopic$1(z, (RecommendedReadingListSettingsViewModel) obj2, continuation);
            case 9:
                return new TalkTopicsViewModel$subscribeTopic$1((PageTitle) this.this$0, this.$subscribed, (WatchlistExpiry) obj2, continuation, 9);
            default:
                TalkTopicsViewModel$subscribeTopic$1 talkTopicsViewModel$subscribeTopic$13 = new TalkTopicsViewModel$subscribeTopic$1((WatchlistViewModel) obj2, z, continuation, 10);
                talkTopicsViewModel$subscribeTopic$13.this$0 = obj;
                return talkTopicsViewModel$subscribeTopic$13;
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
        return ((TalkTopicsViewModel$subscribeTopic$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:212:0x03d6, code lost:
    
        if (r1 == r11) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b4, code lost:
    
        if (r1 == r8) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0146  */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r2v4, types: [org.wikipedia.dataclient.Service] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Boolean] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1050
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$subscribeTopic$1(Object obj, boolean z, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$commentName = obj;
        this.$subscribed = z;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$subscribeTopic$1(Object obj, boolean z, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$subscribed = z;
        this.$commentName = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$subscribeTopic$1(boolean z, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$subscribed = z;
        this.this$0 = function0;
        this.$commentName = mutableState;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$subscribeTopic$1(boolean z, RecommendedReadingListSettingsViewModel recommendedReadingListSettingsViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 8;
        this.$subscribed = z;
        this.$commentName = recommendedReadingListSettingsViewModel;
    }
}
