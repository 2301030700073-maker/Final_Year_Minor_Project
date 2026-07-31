package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okio.Options;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class IconKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ IconKt$$ExternalSyntheticLambda1(Modifier modifier, int i, long j, String str, Function0 function0, int i2) {
        this.f$2 = modifier;
        this.f$4 = i;
        this.f$3 = j;
        this.f$1 = str;
        this.f$0 = function0;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$4 | 1);
                IconKt.m286Iconww6aTOc((Painter) obj3, this.f$1, this.f$2, this.f$3, (GapComposer) obj, updateChangedFlags, this.f$5);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$5 | 1);
                Options.Companion.m884OnThisDayGameCardSimpleT042LqI(this.f$2, this.f$4, this.f$3, this.f$1, (Function0) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ IconKt$$ExternalSyntheticLambda1(Painter painter, String str, Modifier modifier, long j, int i, int i2) {
        this.f$0 = painter;
        this.f$1 = str;
        this.f$2 = modifier;
        this.f$3 = j;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
