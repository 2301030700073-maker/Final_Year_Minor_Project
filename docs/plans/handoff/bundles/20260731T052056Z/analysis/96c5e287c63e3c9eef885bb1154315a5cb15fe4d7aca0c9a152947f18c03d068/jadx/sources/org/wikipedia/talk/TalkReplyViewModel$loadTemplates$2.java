package org.wikipedia.talk;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.suggestededits.SuggestedEditsCardsViewModel;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;
import org.wikipedia.suggestededits.SuggestedEditsImageTagDialog;
import org.wikipedia.talk.template.TalkTemplatesViewModel;
import org.wikipedia.usercontrib.UserInformationDialogViewModel;
import org.wikipedia.views.UserMentionInputView;
import org.wikipedia.watchlist.WatchlistViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkReplyViewModel$loadTemplates$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkReplyViewModel$loadTemplates$2(SuggestedEditsImageRecsFragmentViewModel suggestedEditsImageRecsFragmentViewModel, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.this$0 = suggestedEditsImageRecsFragmentViewModel;
        this.L$0 = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new TalkReplyViewModel$loadTemplates$2(0, (TalkReplyViewModel) this.this$0, continuation);
            case 1:
                return new TalkReplyViewModel$loadTemplates$2((ArrayList) this.L$0, continuation);
            case 2:
                return new TalkReplyViewModel$loadTemplates$2((CategoryDeveloperPlayGroundViewModel) this.L$0, (Context) this.this$0, continuation, 2);
            case 3:
                return new TalkReplyViewModel$loadTemplates$2(3, (SuggestedEditsCardsViewModel) this.this$0, continuation);
            case 4:
                return new TalkReplyViewModel$loadTemplates$2((SuggestedEditsImageRecsFragmentViewModel) this.this$0, (ArrayList) this.L$0, continuation);
            case 5:
                return new TalkReplyViewModel$loadTemplates$2((String) this.L$0, (SuggestedEditsImageTagDialog) this.this$0, continuation, 5);
            case 6:
                return new TalkReplyViewModel$loadTemplates$2((WikiSite) this.L$0, (PageTitle) this.this$0, continuation, 6);
            case 7:
                return new TalkReplyViewModel$loadTemplates$2((TalkTopicHolder) this.L$0, (View) this.this$0, continuation, 7);
            case 8:
                return new TalkReplyViewModel$loadTemplates$2((TalkTemplatesViewModel) this.L$0, (List) this.this$0, continuation, 8);
            case 9:
                return new TalkReplyViewModel$loadTemplates$2(9, (TalkTemplatesViewModel) this.this$0, continuation);
            case 10:
                TalkReplyViewModel$loadTemplates$2 talkReplyViewModel$loadTemplates$2 = new TalkReplyViewModel$loadTemplates$2(10, (UserInformationDialogViewModel) this.this$0, continuation);
                talkReplyViewModel$loadTemplates$2.L$0 = obj;
                return talkReplyViewModel$loadTemplates$2;
            case 11:
                return new TalkReplyViewModel$loadTemplates$2((WikiSite) this.L$0, (MwServiceError.BlockInfo) this.this$0, continuation, 11);
            case 12:
                return new TalkReplyViewModel$loadTemplates$2((UserMentionInputView) this.L$0, (String) this.this$0, continuation, 12);
            case IMAGE_VALUE:
                return new TalkReplyViewModel$loadTemplates$2((String) this.L$0, (WatchlistViewModel) this.this$0, continuation, 13);
            default:
                return new TalkReplyViewModel$loadTemplates$2(14, (MwQueryResponse) this.this$0, continuation);
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
        return ((TalkReplyViewModel$loadTemplates$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x0358, code lost:
    
        if (r1 == r5) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0345, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(200, r21) == r5) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0597, code lost:
    
        if (r1 == r12) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:?, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0562, code lost:
    
        if (r3 == r12) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x070d, code lost:
    
        if (r2 == r0) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x06e6, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(500, r21) == r0) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x08dc, code lost:
    
        if (r3 == r0) goto L370;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 2388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkReplyViewModel$loadTemplates$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkReplyViewModel$loadTemplates$2(ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.L$0 = arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkReplyViewModel$loadTemplates$2(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
