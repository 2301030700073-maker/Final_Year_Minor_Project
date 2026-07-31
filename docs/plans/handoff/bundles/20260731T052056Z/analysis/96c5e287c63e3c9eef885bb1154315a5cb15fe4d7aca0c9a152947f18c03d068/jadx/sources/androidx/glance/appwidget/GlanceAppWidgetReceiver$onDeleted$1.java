package androidx.glance.appwidget;

import android.content.Context;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidgetReceiver$onDeleted$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Serializable $appWidgetIds;
    public Object $context;
    public final /* synthetic */ int $r8$classId = 1;
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GlanceAppWidgetReceiver$onDeleted$1(ReadingChallengeWidgetReceiver readingChallengeWidgetReceiver, Context context, int[] iArr, Continuation continuation) {
        super(2, continuation);
        this.this$0 = readingChallengeWidgetReceiver;
        this.$context = context;
        this.$appWidgetIds = iArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$appWidgetIds;
        switch (i) {
            case 0:
                GlanceAppWidgetReceiver$onDeleted$1 glanceAppWidgetReceiver$onDeleted$1 = new GlanceAppWidgetReceiver$onDeleted$1((ReadingChallengeWidgetReceiver) this.this$0, (Context) this.$context, (int[]) obj2, continuation);
                glanceAppWidgetReceiver$onDeleted$1.L$0 = obj;
                return glanceAppWidgetReceiver$onDeleted$1;
            default:
                GlanceAppWidgetReceiver$onDeleted$1 glanceAppWidgetReceiver$onDeleted$12 = new GlanceAppWidgetReceiver$onDeleted$1((String) obj2, continuation);
                glanceAppWidgetReceiver$onDeleted$12.L$0 = obj;
                return glanceAppWidgetReceiver$onDeleted$12;
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
        return ((GlanceAppWidgetReceiver$onDeleted$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0164 -> B:35:0x0168). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceAppWidgetReceiver$onDeleted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidgetReceiver$onDeleted$1(String str, Continuation continuation) {
        super(2, continuation);
        this.$appWidgetIds = str;
    }
}
