package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TabRowKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ ComposableLambdaImpl f$4;
    public final /* synthetic */ Function2 f$5;
    public final /* synthetic */ ComposableLambdaImpl f$6;

    public /* synthetic */ TabRowKt$$ExternalSyntheticLambda0(int i, Modifier modifier, long j, long j2, ComposableLambdaImpl composableLambdaImpl, Function2 function2, ComposableLambdaImpl composableLambdaImpl2, int i2) {
        this.f$0 = i;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$3 = j2;
        this.f$4 = composableLambdaImpl;
        this.f$5 = function2;
        this.f$6 = composableLambdaImpl2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1597489);
                BadgeKt.m136SecondaryTabRowpAZo6Ak(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$0 | 1);
                BadgeKt.m137TabRowImplDTcfvLk(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ TabRowKt$$ExternalSyntheticLambda0(Modifier modifier, long j, long j2, ComposableLambdaImpl composableLambdaImpl, Function2 function2, ComposableLambdaImpl composableLambdaImpl2, int i) {
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$3 = j2;
        this.f$4 = composableLambdaImpl;
        this.f$5 = function2;
        this.f$6 = composableLambdaImpl2;
        this.f$0 = i;
    }
}
