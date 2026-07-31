package org.wikipedia.feed.onthisday;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.layout.RowScopeImplInstance;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;
import org.wikipedia.widgets.readingchallenge.SmallWidgetSize;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayModuleKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ OnThisDayModuleKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = 0;
        this.f$0 = composableLambdaImpl;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        float f;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Integer num = (Integer) obj;
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer.changed(intValue) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke(Integer.valueOf(i2), num, gapComposer, Integer.valueOf((intValue2 << 3) & 112));
                    break;
                }
            case 1:
                ((Integer) obj3).getClass();
                ((RowScopeImplInstance) obj).getClass();
                ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i2), DpKt.m707size3ABfNKs(((LargeWidgetSize) obj4).m920getTitleBarIconSizeD9Ej5fM()), 0, null, (GapComposer) obj2, 48, 24);
                break;
            default:
                SmallWidgetSize smallWidgetSize = (SmallWidgetSize) obj4;
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((RowScopeImplInstance) obj).getClass();
                AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(i2);
                smallWidgetSize.getClass();
                int i3 = SmallWidgetSize.WhenMappings.$EnumSwitchMapping$0[smallWidgetSize.ordinal()];
                if (i3 == 1) {
                    f = 22.0f;
                } else if (i3 == 2) {
                    f = 28.0f;
                } else if (i3 == 3) {
                    f = 32.0f;
                } else if (i3 != 4) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    f = 36.0f;
                }
                ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.m707size3ABfNKs(f), 0, null, gapComposer2, 48, 24);
                break;
        }
        return unit;
    }

    public /* synthetic */ OnThisDayModuleKt$$ExternalSyntheticLambda2(int i, Enum r2, int i2) {
        this.$r8$classId = i2;
        this.f$1 = i;
        this.f$0 = r2;
    }
}
