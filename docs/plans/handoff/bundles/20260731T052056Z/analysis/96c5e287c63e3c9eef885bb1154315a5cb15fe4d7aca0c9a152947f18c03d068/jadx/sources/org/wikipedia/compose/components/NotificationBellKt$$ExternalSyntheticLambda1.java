package org.wikipedia.compose.components;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationBellKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Function f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ NotificationBellKt$$ExternalSyntheticLambda1(int i, Function0 function0, Modifier modifier, int i2, int i3) {
        this.f$0 = i;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$3 = i2;
        this.f$4 = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$4 | 1);
                TabsBoxKt.NotificationBell(this.f$0, (Function0) function, this.f$2, this.f$3, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                RecommendedReadingListSourceScreenKt.ArticlesNumberView(this.f$0, (Function1) function, this.f$2, this.f$3, this.f$4, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ NotificationBellKt$$ExternalSyntheticLambda1(int i, Function1 function1, Modifier modifier, int i2, int i3, int i4) {
        this.f$0 = i;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$3 = i2;
        this.f$4 = i3;
    }
}
