package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ ComposableLambdaImpl f$6;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, TextStyle textStyle, long j, long j2, int i) {
        this.f$6 = composableLambdaImpl;
        this.f$0 = function2;
        this.f$4 = function22;
        this.f$5 = textStyle;
        this.f$1 = j;
        this.f$2 = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$5;
        Object obj4 = this.f$4;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1572865);
                AppBarKt.m253BottomAppBar1oL4kX8((Modifier) obj5, this.f$1, this.f$2, (PaddingValues) obj4, (WindowInsets) obj3, this.f$6, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                CardKt.m268OneRowSnackbarkKq0p4A(this.f$6, (Function2) obj5, (Function2) obj4, (TextStyle) obj3, this.f$1, this.f$2, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda2(Modifier modifier, long j, long j2, PaddingValues paddingValues, WindowInsets windowInsets, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = modifier;
        this.f$1 = j;
        this.f$2 = j2;
        this.f$4 = paddingValues;
        this.f$5 = windowInsets;
        this.f$6 = composableLambdaImpl;
    }
}
