package androidx.compose.ui.layout;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubcomposeLayoutKt$SubcomposeLayout$5 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ Function $measurePolicy;
    public final /* synthetic */ Modifier $modifier;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SubcomposeLayoutKt$SubcomposeLayout$5(Object obj, Modifier modifier, Function function, int i, int i2) {
        super(2);
        this.$r8$classId = i2;
        this.$state = obj;
        this.$modifier = modifier;
        this.$measurePolicy = function;
        this.$$changed = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.$$changed;
        Function function = this.$measurePolicy;
        Modifier modifier = this.$modifier;
        Object obj3 = this.$state;
        GapComposer gapComposer = (GapComposer) obj;
        ((Number) obj2).intValue();
        switch (i) {
            case 0:
                RulerKt.SubcomposeLayout((SubcomposeLayoutState) obj3, modifier, (Function2) function, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                AndroidView_androidKt.AndroidView((Function1) obj3, modifier, (Function1) function, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
