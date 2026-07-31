package org.wikipedia.feed;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.work.OperationKt;
import j$.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedComponentsKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ int f$3;

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda1(LocalDate localDate, boolean z, int i, int i2) {
        this.f$0 = localDate;
        this.f$1 = z;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Object obj3 = this.f$0;
        boolean z = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ForYouCardKt.DayHeader((LocalDate) obj3, z, (GapComposer) obj, Updater.updateChangedFlags(1), i2);
                break;
            default:
                ((Integer) obj2).getClass();
                OperationKt.PredictiveBackHandler(z, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda1(boolean z, Function2 function2, int i) {
        this.f$1 = z;
        this.f$0 = function2;
        this.f$3 = i;
    }
}
