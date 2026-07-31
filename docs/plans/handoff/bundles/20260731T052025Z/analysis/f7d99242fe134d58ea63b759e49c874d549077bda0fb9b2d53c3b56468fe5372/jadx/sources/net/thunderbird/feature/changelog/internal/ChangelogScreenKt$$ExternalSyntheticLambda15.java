package net.thunderbird.feature.changelog.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.room.util.SchemaInfoUtilKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChangelogScreenKt$$ExternalSyntheticLambda15 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ float f$2;

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda15(long j, Modifier modifier, float f, int i) {
        this.f$0 = j;
        this.f$1 = modifier;
        this.f$2 = f;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                Jsoup.m1065TimelineDotDxzAY5Q(this.f$2, updateChangedFlags, this.f$0, (Composer) obj, this.f$1);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                SchemaInfoUtilKt.m811DividerVertical9IZ8Weo(this.f$2, updateChangedFlags2, this.f$0, (Composer) obj, this.f$1);
                break;
        }
        return unit;
    }

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda15(Modifier modifier, float f, long j, int i) {
        this.f$1 = modifier;
        this.f$2 = f;
        this.f$0 = j;
    }
}
