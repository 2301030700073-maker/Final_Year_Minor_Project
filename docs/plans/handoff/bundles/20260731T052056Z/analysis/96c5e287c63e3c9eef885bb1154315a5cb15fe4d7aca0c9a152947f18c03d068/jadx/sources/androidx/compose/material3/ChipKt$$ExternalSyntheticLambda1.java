package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ChipKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Object f$10;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ boolean f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda1(boolean z, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, boolean z2, Function2 function2, Shape shape, SelectableChipColors selectableChipColors, SelectableChipElevation selectableChipElevation, BorderStroke borderStroke, int i) {
        this.$r8$classId = 0;
        this.f$0 = z;
        this.f$1 = function0;
        this.f$2 = composableLambdaImpl;
        this.f$3 = modifier;
        this.f$4 = z2;
        this.f$5 = function2;
        this.f$7 = shape;
        this.f$8 = selectableChipColors;
        this.f$9 = selectableChipElevation;
        this.f$10 = borderStroke;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$10;
        Object obj4 = this.f$9;
        Object obj5 = this.f$8;
        Object obj6 = this.f$7;
        Object obj7 = this.f$5;
        Object obj8 = this.f$3;
        Object obj9 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(196993);
                ChipKt.FilterChip(this.f$0, this.f$1, (ComposableLambdaImpl) obj9, (Modifier) obj8, this.f$4, (Function2) obj7, (Shape) obj6, (SelectableChipColors) obj5, (SelectableChipElevation) obj4, (BorderStroke) obj3, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                ImpactModuleKt.ReadingHistoryModule((HorizontalAlignElement) obj9, (String) obj8, this.f$0, this.f$4, (UiState) obj7, this.f$1, (Function0) obj6, (Function0) obj5, (Function1) obj4, (WikiErrorClickEvents) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(1);
                ImpactModuleKt.ReadingHistoryModule((HorizontalAlignElement) obj9, (String) obj8, this.f$0, this.f$4, (UiState) obj7, this.f$1, (Function0) obj6, (Function0) obj5, (Function1) obj4, (WikiErrorClickEvents) obj3, (GapComposer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda1(HorizontalAlignElement horizontalAlignElement, String str, boolean z, boolean z2, UiState uiState, Function0 function0, Function0 function02, Function0 function03, Function1 function1, WikiErrorClickEvents wikiErrorClickEvents, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = horizontalAlignElement;
        this.f$3 = str;
        this.f$0 = z;
        this.f$4 = z2;
        this.f$5 = uiState;
        this.f$1 = function0;
        this.f$7 = function02;
        this.f$8 = function03;
        this.f$9 = function1;
        this.f$10 = wikiErrorClickEvents;
    }
}
