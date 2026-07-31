package org.wikipedia.activitytab;

import android.net.Uri;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabOnboardingActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabOnboardingActivity f$0;

    public /* synthetic */ ActivityTabOnboardingActivity$$ExternalSyntheticLambda0(ActivityTabOnboardingActivity activityTabOnboardingActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = activityTabOnboardingActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final ActivityTabOnboardingActivity activityTabOnboardingActivity = this.f$0;
        Object[] objArr = 0;
        final int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = ActivityTabOnboardingActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-540867771, new ActivityTabOnboardingActivity$$ExternalSyntheticLambda0(activityTabOnboardingActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = ActivityTabOnboardingActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    List list = ActivityTabOnboardingActivityKt.onboardingItems;
                    boolean changedInstance = gapComposer2.changedInstance(activityTabOnboardingActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.activitytab.ActivityTabOnboardingActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                ActivityTabOnboardingActivity activityTabOnboardingActivity2 = activityTabOnboardingActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = ActivityTabOnboardingActivity.$r8$clinit;
                                        String string = activityTabOnboardingActivity2.getString(R.string.activity_tab_url);
                                        string.getClass();
                                        Uri parse = Uri.parse(string);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(activityTabOnboardingActivity2, parse);
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_activity_tab_onboarding_shown, true);
                                        WikiGamesEvent.submit$default("activity_tab_start", "learn_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                        break;
                                    default:
                                        int i7 = ActivityTabOnboardingActivity.$r8$clinit;
                                        WikiGamesEvent.submit$default("activity_tab_start", "continue_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_activity_tab_onboarding_shown, true);
                                        activityTabOnboardingActivity2.setResult(-1);
                                        activityTabOnboardingActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(activityTabOnboardingActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.activitytab.ActivityTabOnboardingActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                ActivityTabOnboardingActivity activityTabOnboardingActivity2 = activityTabOnboardingActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = ActivityTabOnboardingActivity.$r8$clinit;
                                        String string = activityTabOnboardingActivity2.getString(R.string.activity_tab_url);
                                        string.getClass();
                                        Uri parse = Uri.parse(string);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(activityTabOnboardingActivity2, parse);
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_activity_tab_onboarding_shown, true);
                                        WikiGamesEvent.submit$default("activity_tab_start", "learn_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                        break;
                                    default:
                                        int i7 = ActivityTabOnboardingActivity.$r8$clinit;
                                        WikiGamesEvent.submit$default("activity_tab_start", "continue_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_activity_tab_onboarding_shown, true);
                                        activityTabOnboardingActivity2.setResult(-1);
                                        activityTabOnboardingActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    ActivityTabOnboardingActivityKt.OnboardingScreen(null, list, function0, (Function0) rememberedValue2, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
