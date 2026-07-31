package androidx.compose.foundation.layout;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BoxKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ BoxKt$$ExternalSyntheticLambda0(Modifier modifier, int i, int i2) {
        this.$r8$classId = 1;
        this.f$0 = modifier;
        this.f$1 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.intValue();
                BoxKt.Box(modifier, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                num.getClass();
                AndroidCursorHandle_androidKt.DefaultCursorHandle(modifier, gapComposer, Updater.updateChangedFlags(1), i2);
                break;
            default:
                num.getClass();
                TimelineModuleKt.TimelineModuleEmptyView(modifier, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ BoxKt$$ExternalSyntheticLambda0(Modifier modifier, int i, int i2, byte b) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = i;
    }
}
