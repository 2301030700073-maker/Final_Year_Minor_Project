package net.thunderbird.feature.account.avatar.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.feature.account.avatar.Avatar;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AvatarKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Avatar f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ AvatarKt$$ExternalSyntheticLambda0(String str, long j, Avatar avatar) {
        this.f$2 = str;
        this.f$1 = j;
        this.f$0 = avatar;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$2;
        switch (i) {
            case 0:
                AvatarSize avatarSize = (AvatarSize) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    Avatar avatar = this.f$0;
                    if (avatar instanceof Avatar.Monogram) {
                        gapComposer.startReplaceGroup(395114847);
                        AtomicFU.m1008AvatarMonogramsW7UJKQ(((Avatar.Monogram) avatar).value, this.f$1, avatarSize, null, gapComposer, 0);
                        gapComposer.end(false);
                    } else if (avatar instanceof Avatar.Icon) {
                        gapComposer.startReplaceGroup(395349579);
                        StringsKt__IndentKt.AvatarIcon(((Avatar.Icon) avatar).name, avatarSize, null, null, gapComposer, 0);
                        gapComposer.end(false);
                    } else {
                        if (!(avatar instanceof Avatar.Image)) {
                            throw ViewSizeResolver.CC.m(gapComposer, -1234181620, false);
                        }
                        gapComposer.startReplaceGroup(395543019);
                        Jsoup.AvatarImage(((Avatar.Image) avatar).uri, avatarSize, null, gapComposer, 0);
                        gapComposer.end(false);
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            default:
                String str = (String) obj4;
                Modifier modifier = (Modifier) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                modifier.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(modifier) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    RangesKt.m988GeneralSettingsProfileViewT042LqI(str, this.f$1, this.f$0, modifier, gapComposer2, ((intValue2 << 12) & 57344) | 48);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ AvatarKt$$ExternalSyntheticLambda0(Avatar avatar, long j, AvatarSize avatarSize) {
        this.f$0 = avatar;
        this.f$1 = j;
        this.f$2 = avatarSize;
    }
}
