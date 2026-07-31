package com.fsck.k9.ui.messagelist;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$3;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda6(String str, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Modifier modifier = this.f$1;
        String str = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                MessageListLoaderKt.SortTypeDivider(str, modifier, composer, Updater.updateChangedFlags(1), i2);
                break;
            case 1:
                DBUtil.AppTitleTopHeader(str, modifier, composer, Updater.updateChangedFlags(1), i2);
                break;
            case 2:
                WelcomeScreenKt.WelcomeTitleItem(str, modifier, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                WelcomeScreenKt.WelcomeTitle(str, modifier, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                RangesKt.ProfileCard(str, modifier, composer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda6(String str, Modifier modifier, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$3 = i2;
    }
}
