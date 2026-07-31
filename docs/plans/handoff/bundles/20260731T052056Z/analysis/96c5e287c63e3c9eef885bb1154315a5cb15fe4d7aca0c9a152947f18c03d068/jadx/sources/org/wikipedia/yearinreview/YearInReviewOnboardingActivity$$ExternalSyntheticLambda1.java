package org.wikipedia.yearinreview;

import android.content.Intent;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.util.UiState;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewOnboardingActivity$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ YearInReviewOnboardingActivity f$0;

    public /* synthetic */ YearInReviewOnboardingActivity$$ExternalSyntheticLambda1(YearInReviewOnboardingActivity yearInReviewOnboardingActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = yearInReviewOnboardingActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        MutableState mutableState;
        NeverEqualPolicy neverEqualPolicy;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final YearInReviewOnboardingActivity yearInReviewOnboardingActivity = this.f$0;
        Object[] objArr = 0;
        final int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = YearInReviewOnboardingActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-892817709, new YearInReviewOnboardingActivity$$ExternalSyntheticLambda1(yearInReviewOnboardingActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = YearInReviewOnboardingActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    UiState uiState = (UiState) Updater.collectAsState(((YearInReviewOnboardingViewModel) yearInReviewOnboardingActivity.viewModel$delegate.getValue()).uiState, gapComposer2).getValue();
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    if (rememberedValue == neverEqualPolicy2) {
                        rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    MutableState mutableState2 = (MutableState) rememberedValue;
                    int i5 = 12;
                    if (((Boolean) mutableState2.getValue()).booleanValue()) {
                        gapComposer2.startReplaceGroup(800313582);
                        String stringResource = UtilsKt.stringResource(R.string.year_in_review_login_dialog_title, gapComposer2);
                        String stringResource2 = UtilsKt.stringResource(R.string.year_in_review_login_dialog_body, gapComposer2);
                        String stringResource3 = UtilsKt.stringResource(R.string.year_in_review_login_dialog_positive, gapComposer2);
                        String stringResource4 = UtilsKt.stringResource(R.string.year_in_review_login_dialog_negative, gapComposer2);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (rememberedValue2 == neverEqualPolicy2) {
                            rememberedValue2 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState2, i5);
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        Function0 function0 = (Function0) rememberedValue2;
                        boolean changedInstance = gapComposer2.changedInstance(yearInReviewOnboardingActivity);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (changedInstance || rememberedValue3 == neverEqualPolicy2) {
                            final Object[] objArr2 = objArr == true ? 1 : 0;
                            rememberedValue3 = new Function0() { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i6 = objArr2;
                                    Unit unit2 = Unit.INSTANCE;
                                    YearInReviewOnboardingActivity yearInReviewOnboardingActivity2 = yearInReviewOnboardingActivity;
                                    switch (i6) {
                                        case 0:
                                            int i7 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "login_click", null, "explore_prompt", null);
                                            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = yearInReviewOnboardingActivity2.loginLauncher;
                                            Intent putExtra = new Intent(yearInReviewOnboardingActivity2, (Class<?>) LoginActivity.class).putExtra("login_request_source", "yir").putExtra("create_account_first", true);
                                            putExtra.getClass();
                                            activityResultRegistry$register$2.launch(putExtra, null);
                                            break;
                                        case 1:
                                            int i8 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "continue_click", null, "explore_prompt", null);
                                            yearInReviewOnboardingActivity2.proceed();
                                            break;
                                        default:
                                            int i9 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "close_click", null, "explore_prompt", null);
                                            yearInReviewOnboardingActivity2.setResult(0);
                                            yearInReviewOnboardingActivity2.finish();
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        Function0 function02 = (Function0) rememberedValue3;
                        boolean changedInstance2 = gapComposer2.changedInstance(yearInReviewOnboardingActivity);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changedInstance2 || rememberedValue4 == neverEqualPolicy2) {
                            rememberedValue4 = new Function0() { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i6 = i2;
                                    Unit unit2 = Unit.INSTANCE;
                                    YearInReviewOnboardingActivity yearInReviewOnboardingActivity2 = yearInReviewOnboardingActivity;
                                    switch (i6) {
                                        case 0:
                                            int i7 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "login_click", null, "explore_prompt", null);
                                            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = yearInReviewOnboardingActivity2.loginLauncher;
                                            Intent putExtra = new Intent(yearInReviewOnboardingActivity2, (Class<?>) LoginActivity.class).putExtra("login_request_source", "yir").putExtra("create_account_first", true);
                                            putExtra.getClass();
                                            activityResultRegistry$register$2.launch(putExtra, null);
                                            break;
                                        case 1:
                                            int i8 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "continue_click", null, "explore_prompt", null);
                                            yearInReviewOnboardingActivity2.proceed();
                                            break;
                                        default:
                                            int i9 = YearInReviewOnboardingActivity.$r8$clinit;
                                            UriUtil.submit$default(238, null, "close_click", null, "explore_prompt", null);
                                            yearInReviewOnboardingActivity2.setResult(0);
                                            yearInReviewOnboardingActivity2.finish();
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        mutableState = mutableState2;
                        neverEqualPolicy = neverEqualPolicy2;
                        TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource, null, 0, stringResource2, null, 0, null, stringResource3, 0L, stringResource4, 0L, function0, function02, (Function0) rememberedValue4, gapComposer2, 0, 384, 2797);
                        gapComposer2 = gapComposer2;
                        gapComposer2.end(false);
                    } else {
                        mutableState = mutableState2;
                        neverEqualPolicy = neverEqualPolicy2;
                        gapComposer2.startReplaceGroup(801390863);
                        gapComposer2.end(false);
                    }
                    boolean changedInstance3 = gapComposer2.changedInstance(yearInReviewOnboardingActivity);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue5 == neverEqualPolicy) {
                        final int i6 = 2;
                        rememberedValue5 = new Function0() { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                YearInReviewOnboardingActivity yearInReviewOnboardingActivity2 = yearInReviewOnboardingActivity;
                                switch (i62) {
                                    case 0:
                                        int i7 = YearInReviewOnboardingActivity.$r8$clinit;
                                        UriUtil.submit$default(238, null, "login_click", null, "explore_prompt", null);
                                        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = yearInReviewOnboardingActivity2.loginLauncher;
                                        Intent putExtra = new Intent(yearInReviewOnboardingActivity2, (Class<?>) LoginActivity.class).putExtra("login_request_source", "yir").putExtra("create_account_first", true);
                                        putExtra.getClass();
                                        activityResultRegistry$register$2.launch(putExtra, null);
                                        break;
                                    case 1:
                                        int i8 = YearInReviewOnboardingActivity.$r8$clinit;
                                        UriUtil.submit$default(238, null, "continue_click", null, "explore_prompt", null);
                                        yearInReviewOnboardingActivity2.proceed();
                                        break;
                                    default:
                                        int i9 = YearInReviewOnboardingActivity.$r8$clinit;
                                        UriUtil.submit$default(238, null, "close_click", null, "explore_prompt", null);
                                        yearInReviewOnboardingActivity2.setResult(0);
                                        yearInReviewOnboardingActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changedInstance4 = gapComposer2.changedInstance(yearInReviewOnboardingActivity);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new AboutActivityKt$$ExternalSyntheticLambda11(12, yearInReviewOnboardingActivity, mutableState);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    YearInReviewDialog.YearInReviewOnboardingScreen(null, uiState, function03, (Function0) rememberedValue6, gapComposer2, 0, 1);
                    break;
                }
        }
        return unit;
    }
}
