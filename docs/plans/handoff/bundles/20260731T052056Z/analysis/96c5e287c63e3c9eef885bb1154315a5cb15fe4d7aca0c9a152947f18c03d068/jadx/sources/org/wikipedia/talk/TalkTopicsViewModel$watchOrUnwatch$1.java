package org.wikipedia.talk;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.page.PageTitle;
import org.wikipedia.watchlist.WatchlistExpiry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsViewModel$watchOrUnwatch$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $expiry;
    public final /* synthetic */ int $r8$classId;
    public boolean $unwatch;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$watchOrUnwatch$1(Animatable animatable, boolean z, SpringSpec springSpec, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.L$0 = animatable;
        this.$unwatch = z;
        this.this$0 = springSpec;
        this.$expiry = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$expiry;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                TalkTopicsViewModel$watchOrUnwatch$1 talkTopicsViewModel$watchOrUnwatch$1 = new TalkTopicsViewModel$watchOrUnwatch$1((TalkTopicsViewModel) obj3, this.$unwatch, (WatchlistExpiry) obj2, continuation, 0);
                talkTopicsViewModel$watchOrUnwatch$1.L$0 = obj;
                return talkTopicsViewModel$watchOrUnwatch$1;
            case 1:
                return new TalkTopicsViewModel$watchOrUnwatch$1(this.$unwatch, (LazyLayoutItemAnimation) this.L$0, (FiniteAnimationSpec) obj3, (GraphicsLayer) obj2, continuation, 1);
            case 2:
                return new TalkTopicsViewModel$watchOrUnwatch$1((MutableState) obj3, this.$unwatch, (MutableInteractionSourceImpl) obj2, continuation, 2);
            case 3:
                return new TalkTopicsViewModel$watchOrUnwatch$1((Animatable) this.L$0, this.$unwatch, (SpringSpec) obj3, (Function0) obj2, continuation);
            case 4:
                return new TalkTopicsViewModel$watchOrUnwatch$1((PersonalizationViewModel) this.L$0, (PageTitle) obj3, (String) obj2, continuation);
            default:
                return new TalkTopicsViewModel$watchOrUnwatch$1(this.$unwatch, (SnackbarHostState) this.L$0, (String) obj3, (String) obj2, continuation, 5);
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
        return ((TalkTopicsViewModel$watchOrUnwatch$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0205, code lost:
    
        if (r0 == r14) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r0 == r1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        if (r0 == r1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e7, code lost:
    
        if (r3 == r2) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ea, code lost:
    
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f7, code lost:
    
        if (r11.saveArticle(r0, (java.lang.String) r7, r26) == r2) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$watchOrUnwatch$1(Object obj, boolean z, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$unwatch = z;
        this.$expiry = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$watchOrUnwatch$1(PersonalizationViewModel personalizationViewModel, PageTitle pageTitle, String str, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.L$0 = personalizationViewModel;
        this.this$0 = pageTitle;
        this.$expiry = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$watchOrUnwatch$1(boolean z, Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$unwatch = z;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.$expiry = obj3;
    }
}
