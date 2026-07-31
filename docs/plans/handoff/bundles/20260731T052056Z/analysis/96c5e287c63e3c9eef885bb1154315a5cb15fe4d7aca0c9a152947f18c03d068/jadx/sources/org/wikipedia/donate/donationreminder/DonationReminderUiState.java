package org.wikipedia.donate.donationreminder;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonationReminderUiState {
    public final SelectableOption donationAmount;
    public final Throwable error;
    public final boolean isDonationReminderEnabled;
    public final boolean isLoading;
    public final SelectableOption readFrequency;

    public DonationReminderUiState(boolean z, SelectableOption selectableOption, SelectableOption selectableOption2, boolean z2, Throwable th) {
        selectableOption.getClass();
        selectableOption2.getClass();
        this.isDonationReminderEnabled = z;
        this.readFrequency = selectableOption;
        this.donationAmount = selectableOption2;
        this.isLoading = z2;
        this.error = th;
    }

    public static DonationReminderUiState copy$default(DonationReminderUiState donationReminderUiState, boolean z, SelectableOption selectableOption, SelectableOption selectableOption2, Throwable th, int i) {
        if ((i & 1) != 0) {
            z = donationReminderUiState.isDonationReminderEnabled;
        }
        boolean z2 = z;
        if ((i & 2) != 0) {
            selectableOption = donationReminderUiState.readFrequency;
        }
        SelectableOption selectableOption3 = selectableOption;
        if ((i & 4) != 0) {
            selectableOption2 = donationReminderUiState.donationAmount;
        }
        SelectableOption selectableOption4 = selectableOption2;
        boolean z3 = (i & 8) != 0 ? donationReminderUiState.isLoading : false;
        if ((i & 16) != 0) {
            th = donationReminderUiState.error;
        }
        donationReminderUiState.getClass();
        selectableOption3.getClass();
        selectableOption4.getClass();
        return new DonationReminderUiState(z2, selectableOption3, selectableOption4, z3, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DonationReminderUiState)) {
            return false;
        }
        DonationReminderUiState donationReminderUiState = (DonationReminderUiState) obj;
        return this.isDonationReminderEnabled == donationReminderUiState.isDonationReminderEnabled && Intrinsics.areEqual(this.readFrequency, donationReminderUiState.readFrequency) && Intrinsics.areEqual(this.donationAmount, donationReminderUiState.donationAmount) && this.isLoading == donationReminderUiState.isLoading && Intrinsics.areEqual(this.error, donationReminderUiState.error);
    }

    public final int hashCode() {
        int hashCode = (((this.donationAmount.hashCode() + ((this.readFrequency.hashCode() + ((this.isDonationReminderEnabled ? 1231 : 1237) * 31)) * 31)) * 31) + (this.isLoading ? 1231 : 1237)) * 31;
        Throwable th = this.error;
        return hashCode + (th == null ? 0 : th.hashCode());
    }

    public final String toString() {
        return "DonationReminderUiState(isDonationReminderEnabled=" + this.isDonationReminderEnabled + ", readFrequency=" + this.readFrequency + ", donationAmount=" + this.donationAmount + ", isLoading=" + this.isLoading + ", error=" + this.error + ")";
    }
}
