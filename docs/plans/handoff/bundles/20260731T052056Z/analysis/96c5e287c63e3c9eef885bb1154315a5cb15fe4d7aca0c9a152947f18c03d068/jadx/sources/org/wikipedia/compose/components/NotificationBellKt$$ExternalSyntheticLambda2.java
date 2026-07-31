package org.wikipedia.compose.components;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationBellKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ NotificationBellKt$$ExternalSyntheticLambda2(int i, Modifier modifier, long j, int i2) {
        this.f$0 = i;
        this.f$1 = modifier;
        this.f$2 = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                TabsBoxKt.m896CircleWithNumberFNF3uiM(this.f$0, (Modifier) obj3, this.f$2, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$0 | 1);
                StreakProgressBarKt.m925BaseWidgetContentIv8Zu3U(this.f$2, (ComposableLambdaImpl) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ NotificationBellKt$$ExternalSyntheticLambda2(long j, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$2 = j;
        this.f$1 = composableLambdaImpl;
        this.f$0 = i;
    }
}
