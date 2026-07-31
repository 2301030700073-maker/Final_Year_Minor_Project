package org.wikipedia.donate.donationreminder;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Cache;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonationReminderViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final Regex formatRegex;
    public final boolean isFromSettings;
    public final int maxArticleFrequencyLimit;
    public final int maxPresetItemsInDropdown;
    public final int minArticleFrequencyLimit;
    public final int preSelectedArticleFrequency;
    public final ReadonlyStateFlow uiState;

    public DonationReminderViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.preSelectedArticleFrequency = 15;
        this.maxArticleFrequencyLimit = 1000;
        this.minArticleFrequencyLimit = 1;
        this.maxPresetItemsInDropdown = 3;
        this.isFromSettings = Intrinsics.areEqual(savedStateHandle.get("fromSettings"), Boolean.TRUE);
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        Prefs prefs = Prefs.INSTANCE;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new DonationReminderUiState(Prefs.getDonationReminderConfig().userEnabled, new SelectableOption(Integer.valueOf(Prefs.getDonationReminderConfig().articleFrequency), 1000, 1, 0), new SelectableOption(Float.valueOf(Prefs.getDonationReminderConfig().donateAmount), valueOf, valueOf, valueOf), true, null));
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        this.formatRegex = new Regex("\\.00$");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(34:0|1|(2:3|(31:5|6|(1:(1:9)(2:105|106))(2:107|(1:109))|10|11|12|(20:17|18|19|(1:21)|22|(1:101)|26|(1:100)(1:32)|(1:99)(1:38)|39|(3:(1:65)(1:46)|47|(4:(1:64)(1:54)|55|(1:63)(1:61)|62))|66|(1:98)(1:70)|71|(8:74|75|76|(3:81|(2:83|84)(1:86)|85)|87|(0)(0)|85|72)|90|91|(1:93)(1:97)|94|95)|103|18|19|(0)|22|(1:24)|101|26|(1:28)|100|(1:34)|99|39|(0)|66|(1:68)|98|71|(1:72)|90|91|(0)(0)|94|95))|110|6|(0)(0)|10|11|12|(25:14|17|18|19|(0)|22|(0)|101|26|(0)|100|(0)|99|39|(0)|66|(0)|98|71|(1:72)|90|91|(0)(0)|94|95)|103|18|19|(0)|22|(0)|101|26|(0)|100|(0)|99|39|(0)|66|(0)|98|71|(1:72)|90|91|(0)(0)|94|95) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x006a, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createDonationAmountOptions(kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderViewModel.createDonationAmountOptions(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void saveReminder() {
        StateFlowImpl stateFlowImpl = this._uiState;
        DonationReminderUiState donationReminderUiState = (DonationReminderUiState) stateFlowImpl.getValue();
        String str = this.isFromSettings ? "global_setting" : "reminder_config";
        DonationReminderUiState donationReminderUiState2 = (DonationReminderUiState) stateFlowImpl.getValue();
        SelectableOption selectableOption = donationReminderUiState2.donationAmount;
        SelectableOption selectableOption2 = donationReminderUiState2.readFrequency;
        boolean z = selectableOption.selectedValue.floatValue() == donationReminderUiState2.donationAmount.defaultValue.floatValue() && selectableOption2.selectedValue.intValue() == selectableOption2.defaultValue.intValue();
        SelectableOption selectableOption3 = donationReminderUiState.readFrequency;
        SelectableOption selectableOption4 = donationReminderUiState.donationAmount;
        Cache.Companion.logDonationReminderAction$default("reminder_confirm_click", str, Boolean.valueOf(z), null, Integer.valueOf(selectableOption3.selectedValue.intValue()), Float.valueOf(selectableOption4.selectedValue.floatValue()), null, 148);
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), false, 0L, System.currentTimeMillis(), 0, donationReminderUiState.readFrequency.selectedValue.intValue(), selectableOption4.selectedValue.floatValue(), false, 0, 0, 459));
    }

    public final void toggleDonationReminders(boolean z) {
        StateFlowImpl stateFlowImpl;
        Object value;
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), z, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 510));
        if (z) {
            Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 447));
        } else {
            Cache.Companion.logDonationReminderAction$default("reminder_set_off", "global_setting", null, null, null, null, null, 252);
        }
        do {
            stateFlowImpl = this._uiState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, DonationReminderUiState.copy$default((DonationReminderUiState) value, z, null, null, null, 30)));
    }

    public final void updateDonationAmountState(float f) {
        StateFlowImpl stateFlowImpl;
        Object value;
        DonationReminderUiState donationReminderUiState;
        do {
            stateFlowImpl = this._uiState;
            value = stateFlowImpl.getValue();
            donationReminderUiState = (DonationReminderUiState) value;
        } while (!stateFlowImpl.compareAndSet(value, DonationReminderUiState.copy$default(donationReminderUiState, false, null, SelectableOption.copy$default(donationReminderUiState.donationAmount, Float.valueOf(f)), null, 27)));
    }

    public final void updateReadFrequencyState(int i) {
        StateFlowImpl stateFlowImpl;
        Object value;
        DonationReminderUiState donationReminderUiState;
        do {
            stateFlowImpl = this._uiState;
            value = stateFlowImpl.getValue();
            donationReminderUiState = (DonationReminderUiState) value;
        } while (!stateFlowImpl.compareAndSet(value, DonationReminderUiState.copy$default(donationReminderUiState, false, SelectableOption.copy$default(donationReminderUiState.readFrequency, Integer.valueOf(i)), null, null, 29)));
    }
}
