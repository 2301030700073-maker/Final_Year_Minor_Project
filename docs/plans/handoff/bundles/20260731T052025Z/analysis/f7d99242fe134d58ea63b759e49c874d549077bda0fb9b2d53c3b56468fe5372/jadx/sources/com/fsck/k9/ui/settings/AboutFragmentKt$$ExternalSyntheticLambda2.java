package com.fsck.k9.ui.settings;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.core.util.DebugUtils;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragmentKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Modifier f$1;

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda2(String str, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier modifier = this.f$1;
        String str = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                DebugUtils.SectionTitle(str, modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 1:
                Util.AccountTopAppBar(str, modifier, composer, Updater.updateChangedFlags(1));
                break;
            default:
                WelcomeScreenKt.WelcomeHeaderSection(str, modifier, composer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
