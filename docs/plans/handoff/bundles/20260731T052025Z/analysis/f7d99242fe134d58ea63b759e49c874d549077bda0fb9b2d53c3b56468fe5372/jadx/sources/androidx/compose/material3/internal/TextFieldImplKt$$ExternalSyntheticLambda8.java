package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.work.Operation$State;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$$ExternalSyntheticLambda8 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda8(long j, Function2 function2, int i) {
        this.$r8$classId = 0;
        this.f$0 = j;
        this.f$1 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        long j = this.f$0;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Icons$Filled.m369DecorationIv8Zu3U(j, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Operation$State.m826CircularArrowProgressIndicatorRPmYEkk((FloatProducer) obj3, j, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                ImageVector imageVector = (ImageVector) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 16.0f), new Color(j), gapComposer, 0, 4);
                    break;
                }
            default:
                Avatar avatar = (Avatar) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    NodeUtils.m1078AvatarOadGlvw(avatar, this.f$0, AvatarSize.MEDIUM, null, null, gapComposer2, 384, 56);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda8(FloatProducer floatProducer, long j, int i) {
        this.$r8$classId = 1;
        this.f$1 = floatProducer;
        this.f$0 = j;
    }

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda8(Object obj, long j, int i) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$0 = j;
    }
}
