package androidx.compose.foundation.layout;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FlowLayoutKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Function3 f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ FlowLayoutKt$$ExternalSyntheticLambda3(Modifier modifier, Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, int i, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f$0 = modifier;
        this.f$1 = arrangement$Horizontal;
        this.f$2 = arrangement$Vertical;
        this.f$4 = i;
        this.f$6 = flowRowOverflow;
        this.f$7 = composableLambdaImpl;
        this.f$8 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$6;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$8 | 1);
                OffsetKt.FlowRow(this.f$0, (Arrangement$Horizontal) obj5, (Arrangement$Vertical) obj4, this.f$4, (FlowRowOverflow) obj3, (ComposableLambdaImpl) this.f$7, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$4 | 1);
                TabsBoxKt.m904WikiTopAppBarWHejsw(this.f$0, (String) obj5, (Function0) obj4, (TextStyle) obj3, this.f$7, (GapComposer) obj, updateChangedFlags2, this.f$8);
                break;
        }
        return unit;
    }

    public /* synthetic */ FlowLayoutKt$$ExternalSyntheticLambda3(Modifier modifier, String str, Function0 function0, TextStyle textStyle, Function3 function3, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$2 = function0;
        this.f$6 = textStyle;
        this.f$7 = function3;
        this.f$4 = i;
        this.f$8 = i2;
    }
}
