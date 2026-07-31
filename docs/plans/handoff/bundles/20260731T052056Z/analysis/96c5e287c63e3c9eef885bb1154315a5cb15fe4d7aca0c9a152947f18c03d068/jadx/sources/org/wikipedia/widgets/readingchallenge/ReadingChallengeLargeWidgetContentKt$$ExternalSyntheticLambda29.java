package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.layout.ColumnScopeImplInstance;
import androidx.glance.layout.HeightModifier;
import androidx.glance.unit.Dimension;
import androidx.room.Room;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ LargeWidgetSize f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ Context f$3;
    public final /* synthetic */ long f$4;
    public final /* synthetic */ long f$5;

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29(int i, LargeWidgetSize largeWidgetSize, int i2, Context context, long j, long j2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = i;
        this.f$1 = largeWidgetSize;
        this.f$2 = i2;
        this.f$3 = context;
        this.f$4 = j;
        this.f$5 = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    RegexKt.Box(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(RandomArticleWidgetAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), null, Expect_jvmKt.rememberComposableLambda(-22001326, new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, 1), gapComposer), gapComposer, 384, 2);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    GlanceModifier fillMaxWidth = DpKt.fillMaxWidth(companion);
                    int i2 = this.f$0;
                    final LargeWidgetSize largeWidgetSize = this.f$1;
                    UuidKt.m859RowlMAjyxE(fillMaxWidth, 2, 0, Expect_jvmKt.rememberComposableLambda(-497294154, new OnThisDayModuleKt$$ExternalSyntheticLambda2(i2, largeWidgetSize, 1), gapComposer2), gapComposer2, 3072, 4);
                    GlanceModifier fillMaxSize = DpKt.fillMaxSize(companion);
                    final int i3 = this.f$2;
                    final Context context = this.f$3;
                    final long j = this.f$4;
                    final long j2 = this.f$5;
                    Room.m758ColumnK4GKKTE(fillMaxSize, 1, 1, Expect_jvmKt.rememberComposableLambda(672896840, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            GapComposer gapComposer3 = (GapComposer) obj4;
                            ((Integer) obj5).getClass();
                            ((ColumnScopeImplInstance) obj3).getClass();
                            Dimension.Expand expand = Dimension.Expand.INSTANCE;
                            Operation$State.Spacer(new HeightModifier(expand), gapComposer3, 0);
                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i3), DpKt.m707size3ABfNKs(largeWidgetSize.m914getExpandedMascotSizeD9Ej5fM()), 0, null, gapComposer3, 48, 24);
                            Operation$State.Spacer(new HeightModifier(expand), gapComposer3, 0);
                            String string = context.getString(R.string.view_random_article_card_title);
                            string.getClass();
                            StreakProgressBarKt.m935WidgetButtonY0xEhic(string, new RunCallbackAction(RandomArticleWidgetAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), j, j2, null, null, gapComposer3, 0, 48);
                            return Unit.INSTANCE;
                        }
                    }, gapComposer2), gapComposer2, 3072, 0);
                    break;
                }
        }
        return unit;
    }
}
