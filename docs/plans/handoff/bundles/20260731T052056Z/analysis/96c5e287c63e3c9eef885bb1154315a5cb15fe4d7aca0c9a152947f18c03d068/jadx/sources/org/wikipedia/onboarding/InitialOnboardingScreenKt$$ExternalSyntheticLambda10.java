package org.wikipedia.onboarding;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.feed.onboarding.ExploreFeedUpdatePromptActivityKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InitialOnboardingScreenKt$$ExternalSyntheticLambda10 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ InitialOnboardingScreenKt$$ExternalSyntheticLambda10(Modifier modifier, Function0 function0, Function0 function02, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Function0 function0 = this.f$2;
        Function0 function02 = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                InitialOnboardingScreenKt.InitialOnboardingDataPrivacyContent(modifier, function02, function0, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ExploreFeedUpdatePromptActivityKt.ExploreFeedUpdatePromptScreen(modifier, function02, function0, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
