package androidx.glance.appwidget;

import android.content.Context;
import android.os.Bundle;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;
import org.wikipedia.talk.template.TalkTemplatesViewModel;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidgetReceiver$onReceive$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $actionKey;
    public Object $context;
    public int $id;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidgetReceiver$onReceive$1$1(int i, String str, String str2, CategoryDeveloperPlayGroundViewModel categoryDeveloperPlayGroundViewModel, Context context, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$id = i;
        this.$actionKey = str;
        this.L$0 = str2;
        this.this$0 = categoryDeveloperPlayGroundViewModel;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$actionKey;
        switch (i) {
            case 0:
                GlanceAppWidgetReceiver$onReceive$1$1 glanceAppWidgetReceiver$onReceive$1$1 = new GlanceAppWidgetReceiver$onReceive$1$1((ReadingChallengeWidgetReceiver) this.this$0, (Context) this.$context, this.$id, (String) obj2, continuation, 0);
                glanceAppWidgetReceiver$onReceive$1$1.L$0 = obj;
                return glanceAppWidgetReceiver$onReceive$1$1;
            case 1:
                GlanceAppWidgetReceiver$onReceive$1$1 glanceAppWidgetReceiver$onReceive$1$12 = new GlanceAppWidgetReceiver$onReceive$1$1((ReadingChallengeWidgetReceiver) this.this$0, (Context) this.$context, this.$id, (Bundle) obj2, continuation, 1);
                glanceAppWidgetReceiver$onReceive$1$12.L$0 = obj;
                return glanceAppWidgetReceiver$onReceive$1$12;
            case 2:
                return new GlanceAppWidgetReceiver$onReceive$1$1(this.$id, (String) obj2, (String) this.L$0, (CategoryDeveloperPlayGroundViewModel) this.this$0, (Context) this.$context, continuation);
            case 3:
                return new GlanceAppWidgetReceiver$onReceive$1$1((SuggestedEditsImageRecsFragmentViewModel) obj2, continuation);
            default:
                return new GlanceAppWidgetReceiver$onReceive$1$1((List) this.$context, (TalkTemplatesViewModel) obj2, continuation);
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
        return ((GlanceAppWidgetReceiver$onReceive$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0220, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r7, r0, r6) == r12) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00da, code lost:
    
        if (r2 != r12) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0231  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00da -> B:45:0x00de). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r29) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidgetReceiver$onReceive$1$1(List list, TalkTemplatesViewModel talkTemplatesViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.$context = list;
        this.$actionKey = talkTemplatesViewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidgetReceiver$onReceive$1$1(SuggestedEditsImageRecsFragmentViewModel suggestedEditsImageRecsFragmentViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.$actionKey = suggestedEditsImageRecsFragmentViewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GlanceAppWidgetReceiver$onReceive$1$1(ReadingChallengeWidgetReceiver readingChallengeWidgetReceiver, Context context, int i, Object obj, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.this$0 = readingChallengeWidgetReceiver;
        this.$context = context;
        this.$id = i;
        this.$actionKey = obj;
    }
}
