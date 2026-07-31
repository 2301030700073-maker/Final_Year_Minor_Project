package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda8 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ float f$0;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ long f$4;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ ComposableLambdaImpl f$9;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda8(float f, Modifier modifier, long j, long j2, PaddingValues paddingValues, WindowInsets windowInsets, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = f;
        this.f$2 = modifier;
        this.f$3 = j;
        this.f$4 = j2;
        this.f$6 = paddingValues;
        this.f$7 = windowInsets;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                AppBarKt.m255BottomAppBarLayoutt5fmz9U(this.f$0, this.f$2, this.f$3, this.f$4, (PaddingValues) obj4, (WindowInsets) obj3, this.f$9, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                TooltipKt.m310PlainTooltipgv3ox5I((TooltipScopeImpl) obj4, this.f$2, this.f$0, (Shape) obj3, this.f$3, this.f$4, this.f$9, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda8(TooltipScopeImpl tooltipScopeImpl, Modifier modifier, float f, Shape shape, long j, long j2, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$6 = tooltipScopeImpl;
        this.f$2 = modifier;
        this.f$0 = f;
        this.f$7 = shape;
        this.f$3 = j;
        this.f$4 = j2;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
    }
}
