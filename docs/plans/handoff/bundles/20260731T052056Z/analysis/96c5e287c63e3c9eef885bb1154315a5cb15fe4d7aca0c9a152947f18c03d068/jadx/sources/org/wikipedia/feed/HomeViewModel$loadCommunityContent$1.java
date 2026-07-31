package org.wikipedia.feed;

import android.content.Context;
import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$loadCommunityContent$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeViewModel$loadCommunityContent$1(ReadingChallengeWidgetReceiver readingChallengeWidgetReceiver, Context context, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.L$0 = readingChallengeWidgetReceiver;
        this.this$0 = context;
        this.label = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new HomeViewModel$loadCommunityContent$1((HomeViewModel) obj2, continuation);
            case 1:
                return new HomeViewModel$loadCommunityContent$1((ReadingChallengeWidgetReceiver) this.L$0, (Context) obj2, this.label, continuation);
            case 2:
                return new HomeViewModel$loadCommunityContent$1(this.label, (Animatable) this.L$0, (ParcelableSnapshotMutableIntState) obj2, continuation, 2);
            default:
                return new HomeViewModel$loadCommunityContent$1(this.label, (CategoryDeveloperPlayGroundViewModel) this.L$0, (Context) obj2, continuation, 3);
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
        return ((HomeViewModel$loadCommunityContent$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ee, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r0, r1, r2, null, r26, 12) == r13) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r0, r1, r2, null, r26, 12) == r13) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b6, code lost:
    
        if (r0.snapTo(r2, r26) == r13) goto L43;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel$loadCommunityContent$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeViewModel$loadCommunityContent$1(HomeViewModel homeViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = homeViewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$loadCommunityContent$1(int i, Object obj, Object obj2, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.label = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }
}
