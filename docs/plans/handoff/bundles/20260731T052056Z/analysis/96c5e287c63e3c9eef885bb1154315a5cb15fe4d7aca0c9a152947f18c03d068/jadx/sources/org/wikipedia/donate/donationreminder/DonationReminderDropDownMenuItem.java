package org.wikipedia.donate.donationreminder;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonationReminderDropDownMenuItem {
    public final int icon;
    public final Function0 onClick;
    public final String text;

    public DonationReminderDropDownMenuItem(int i, String str, Function0 function0) {
        str.getClass();
        function0.getClass();
        this.text = str;
        this.icon = i;
        this.onClick = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DonationReminderDropDownMenuItem)) {
            return false;
        }
        DonationReminderDropDownMenuItem donationReminderDropDownMenuItem = (DonationReminderDropDownMenuItem) obj;
        return Intrinsics.areEqual(this.text, donationReminderDropDownMenuItem.text) && this.icon == donationReminderDropDownMenuItem.icon && Intrinsics.areEqual(this.onClick, donationReminderDropDownMenuItem.onClick);
    }

    public final int hashCode() {
        return this.onClick.hashCode() + (((this.text.hashCode() * 31) + this.icon) * 31);
    }

    public final String toString() {
        return "DonationReminderDropDownMenuItem(text=" + this.text + ", icon=" + this.icon + ", onClick=" + this.onClick + ")";
    }
}
