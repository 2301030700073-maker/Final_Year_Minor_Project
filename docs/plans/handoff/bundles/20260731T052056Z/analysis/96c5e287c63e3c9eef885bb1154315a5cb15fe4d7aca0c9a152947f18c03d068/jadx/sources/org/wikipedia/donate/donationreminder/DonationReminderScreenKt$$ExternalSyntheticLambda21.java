package org.wikipedia.donate.donationreminder;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonationReminderScreenKt$$ExternalSyntheticLambda21 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DonationReminderViewModel f$0;

    public /* synthetic */ DonationReminderScreenKt$$ExternalSyntheticLambda21(DonationReminderViewModel donationReminderViewModel, int i) {
        this.$r8$classId = i;
        this.f$0 = donationReminderViewModel;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r4) {
        /*
            r3 = this;
            int r0 = r3.$r8$classId
            org.wikipedia.donate.donationreminder.DonationReminderViewModel r3 = r3.f$0
            switch(r0) {
                case 0: goto L58;
                default: goto L7;
            }
        L7:
            java.lang.Float r4 = (java.lang.Float) r4
            r4.getClass()
            java.util.Locale$Builder r0 = new java.util.Locale$Builder
            r0.<init>()
            java.util.Locale r1 = java.util.Locale.getDefault()
            java.util.Locale$Builder r0 = r0.setLocale(r1)
            org.wikipedia.settings.Prefs r1 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L34
            java.lang.String r1 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L34
            if (r1 == 0) goto L2d
            int r1 = r1.length()     // Catch: java.lang.IllegalArgumentException -> L34
            if (r1 != 0) goto L28
            goto L2d
        L28:
            java.lang.String r1 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L34
            goto L35
        L2d:
            kotlinx.coroutines.internal.Symbol r1 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L34
            java.lang.String r1 = r1.symbol     // Catch: java.lang.IllegalArgumentException -> L34
            goto L35
        L34:
            r1 = 0
        L35:
            java.lang.String r2 = ""
            if (r1 != 0) goto L3a
            r1 = r2
        L3a:
            java.util.Locale$Builder r0 = r0.setRegion(r1)
            java.util.Locale r0 = r0.build()
            java.text.NumberFormat r0 = java.text.NumberFormat.getCurrencyInstance(r0)
            r1 = 0
            r0.setMinimumFractionDigits(r1)
            java.lang.String r4 = r0.format(r4)
            r4.getClass()
            kotlin.text.Regex r3 = r3.formatRegex
            java.lang.String r3 = r3.replace(r4, r2)
            return r3
        L58:
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            r3.toggleDonationReminders(r4)
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderScreenKt$$ExternalSyntheticLambda21.invoke(java.lang.Object):java.lang.Object");
    }
}
