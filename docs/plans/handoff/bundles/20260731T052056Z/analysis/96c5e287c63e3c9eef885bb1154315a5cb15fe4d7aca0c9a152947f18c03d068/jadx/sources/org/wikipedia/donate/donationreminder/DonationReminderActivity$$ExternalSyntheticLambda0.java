package org.wikipedia.donate.donationreminder;

import android.net.Uri;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonationReminderActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DonationReminderActivity f$0;

    public /* synthetic */ DonationReminderActivity$$ExternalSyntheticLambda0(DonationReminderActivity donationReminderActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = donationReminderActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final DonationReminderActivity donationReminderActivity = this.f$0;
        Object[] objArr = 0;
        final int i2 = 2;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i4 = DonationReminderActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1494031924, new DonationReminderActivity$$ExternalSyntheticLambda0(donationReminderActivity, i3), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i5 = DonationReminderActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    DonationReminderViewModel viewModel = donationReminderActivity.getViewModel();
                    boolean changedInstance = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i8 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i8 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    WikiErrorClickEvents wikiErrorClickEvents = new WikiErrorClickEvents(function0, (Function0) rememberedValue2, null, 12);
                    boolean changedInstance3 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i8 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    boolean changedInstance4 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new MainActivity$$ExternalSyntheticLambda1(6, donationReminderActivity);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function1 = (Function1) rememberedValue4;
                    boolean changedInstance5 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                        final int i6 = 3;
                        rememberedValue5 = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i62) {
                                    case 0:
                                        int i7 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i8 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changedInstance6 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance6 || rememberedValue6 == neverEqualPolicy) {
                        final int i7 = 4;
                        rememberedValue6 = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i7;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i62) {
                                    case 0:
                                        int i72 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i8 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Function0 function04 = (Function0) rememberedValue6;
                    boolean changedInstance7 = gapComposer2.changedInstance(donationReminderActivity);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance7 || rememberedValue7 == neverEqualPolicy) {
                        final int i8 = 5;
                        rememberedValue7 = new Function0() { // from class: org.wikipedia.donate.donationreminder.DonationReminderActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i8;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderActivity donationReminderActivity2 = donationReminderActivity;
                                switch (i62) {
                                    case 0:
                                        int i72 = DonationReminderActivity.$r8$clinit;
                                        DonationReminderViewModel viewModel2 = donationReminderActivity2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new PageActivity$onCreate$1$1$1(7, viewModel2, null), 2);
                                        break;
                                    case 1:
                                        int i82 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.finish();
                                        break;
                                    case 2:
                                        int i9 = DonationReminderActivity.$r8$clinit;
                                        donationReminderActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 3:
                                        int i10 = DonationReminderActivity.$r8$clinit;
                                        if (!donationReminderActivity2.getViewModel().isFromSettings) {
                                            donationReminderActivity2.setResult(100);
                                            donationReminderActivity2.finish();
                                            break;
                                        } else {
                                            String string = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(donationReminderActivity2, parse);
                                            Cache.Companion.logDonationReminderAction$default("reminder_about_click", "global_setting", null, null, null, null, null, 252);
                                            break;
                                        }
                                    case 4:
                                        int i11 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_learn_more_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string2 = donationReminderActivity2.getString(R.string.donation_reminders_experiment_url);
                                        string2.getClass();
                                        Uri parse2 = Uri.parse(string2);
                                        parse2.getClass();
                                        UriUtil.visitInExternalBrowser(donationReminderActivity2, parse2);
                                        break;
                                    default:
                                        int i12 = DonationReminderActivity.$r8$clinit;
                                        Cache.Companion.logDonationReminderAction$default("overflow_problem_click", donationReminderActivity2.getViewModel().isFromSettings ? "global_setting" : "reminder_config", null, null, null, null, null, 252);
                                        String string3 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_subject);
                                        string3.getClass();
                                        String string4 = donationReminderActivity2.getString(R.string.donation_reminders_settings_report_email_body);
                                        string4.getClass();
                                        ShareUtil.composeEmail$default(donationReminderActivity2, null, string3, string4, 2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    }
                    DonationReminderScreenKt.DonationReminderScreen(null, viewModel, wikiErrorClickEvents, function02, function1, function03, function04, (Function0) rememberedValue7, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
