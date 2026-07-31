package net.thunderbird.feature.changelog.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChangelogScreenKt$$ExternalSyntheticLambda16 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda16(long j, Modifier modifier, int i) {
        this.f$0 = j;
        this.f$1 = modifier;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$2;
        long j = this.f$0;
        Modifier modifier = this.f$1;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Jsoup.m1063ChangeDot3JVO9M(Updater.updateChangedFlags(i2 | 1), j, (Composer) obj, modifier);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                OAuthBearer.m939CircularProgressIndicatoriJQMabo(this.f$1, this.f$0, (Composer) obj, updateChangedFlags, this.f$2);
                break;
            default:
                ((Integer) obj2).getClass();
                UuidKt.m1007ColorChipZij2fk(Updater.updateChangedFlags(i2 | 1), j, (Composer) obj, modifier);
                break;
        }
        return unit;
    }

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda16(Modifier modifier, long j, int i) {
        this.f$1 = modifier;
        this.f$0 = j;
        this.f$2 = i;
    }

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda16(Modifier modifier, long j, int i, int i2) {
        this.f$1 = modifier;
        this.f$0 = j;
        this.f$2 = i2;
    }
}
