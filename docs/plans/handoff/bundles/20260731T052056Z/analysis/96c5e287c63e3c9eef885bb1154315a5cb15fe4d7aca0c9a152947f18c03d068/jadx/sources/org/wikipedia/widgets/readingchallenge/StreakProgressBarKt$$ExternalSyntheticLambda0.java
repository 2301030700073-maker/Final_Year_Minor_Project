package org.wikipedia.widgets.readingchallenge;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.ColorFilter;
import androidx.glance.CompositionLocalsKt;
import androidx.glance.GlanceModifier;
import androidx.glance.TintColorFilterParams;
import androidx.glance.color.DayNightColorProvider;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StreakProgressBarKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ GlanceModifier f$1;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ long f$5;
    public final /* synthetic */ long f$6;

    public /* synthetic */ StreakProgressBarKt$$ExternalSyntheticLambda0(long j, GlanceModifier glanceModifier, int i, long j2, long j3) {
        this.f$0 = j;
        this.f$1 = glanceModifier;
        this.f$3 = i;
        this.f$5 = j2;
        this.f$6 = j3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(R.drawable.widget_shape_inner);
                    GlanceModifier m703height3ABfNKs = DpKt.m703height3ABfNKs(new WidthModifier(Dimension.Fill.INSTANCE), 48.0f);
                    long j = this.f$0;
                    ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, m703height3ABfNKs, 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j, j))), gapComposer, 32816, 8);
                    final int i2 = this.f$3;
                    final long j2 = this.f$5;
                    final long j3 = this.f$6;
                    UuidKt.m859RowlMAjyxE(this.f$1, 0, 1, Expect_jvmKt.rememberComposableLambda(771646173, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            GapComposer gapComposer2 = (GapComposer) obj4;
                            ((Integer) obj5).getClass();
                            ((RowScopeImplInstance) obj3).getClass();
                            AndroidResourceImageProvider androidResourceImageProvider2 = new AndroidResourceImageProvider(R.drawable.ic_calendar_day_1);
                            GlanceModifier m707size3ABfNKs = DpKt.m707size3ABfNKs(24.0f);
                            long j4 = Color.White;
                            ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider2, m707size3ABfNKs, 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j4, j4))), gapComposer2, 32816, 8);
                            Operation$State.Spacer(new WidthModifier(new Dimension.Dp(12.0f)), gapComposer2, 0);
                            float m712getWidthD9Ej5fM = DpSize.m712getWidthD9Ej5fM(((DpSize) gapComposer2.consume(CompositionLocalsKt.LocalSize)).packedValue) - 176.0f;
                            float f = RecyclerView.DECELERATION_RATE;
                            if (m712getWidthD9Ej5fM >= RecyclerView.DECELERATION_RATE) {
                                f = m712getWidthD9Ej5fM;
                            }
                            StreakProgressBarKt.m933StreakProgressBarivI9Q(i2, f, null, j2, j3, gapComposer2, 0);
                            Operation$State.Spacer(new WidthModifier(new Dimension.Dp(12.0f)), gapComposer2, 0);
                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.ic_calendar_day_25), DpKt.m707size3ABfNKs(24.0f), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j4, j4))), gapComposer2, 32816, 8);
                            return Unit.INSTANCE;
                        }
                    }, gapComposer), gapComposer, 3072, 2);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                StreakProgressBarKt.m926BoxedStreakProgressBarnhtM5HE(this.f$1, this.f$3, this.f$0, this.f$5, this.f$6, (GapComposer) obj, Updater.updateChangedFlags(12583297));
                break;
        }
        return unit;
    }

    public /* synthetic */ StreakProgressBarKt$$ExternalSyntheticLambda0(GlanceModifier glanceModifier, int i, long j, long j2, long j3, int i2) {
        this.f$1 = glanceModifier;
        this.f$3 = i;
        this.f$0 = j;
        this.f$5 = j2;
        this.f$6 = j3;
    }
}
