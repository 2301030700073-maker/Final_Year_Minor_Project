package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.Color;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipKt$leadingContent$1 implements Function2 {
    public final /* synthetic */ Function2 $leadingIcon;
    public final /* synthetic */ long $leadingIconColor;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ChipKt$leadingContent$1(long j, Function2 function2, int i) {
        this.$r8$classId = i;
        this.$leadingIconColor = j;
        this.$leadingIcon = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.$leadingIcon;
        long j = this.$leadingIconColor;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), function2, gapComposer, 8);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    LayoutUtilKt.m316DecorationIv8Zu3U(j, function2, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
