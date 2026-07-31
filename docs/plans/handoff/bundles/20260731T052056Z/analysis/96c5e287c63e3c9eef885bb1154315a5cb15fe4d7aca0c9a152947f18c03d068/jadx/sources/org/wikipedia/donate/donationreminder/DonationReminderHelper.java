package org.wikipedia.donate.donationreminder;

import androidx.room.Room;
import j$.time.LocalDate;
import j$.time.chrono.ChronoLocalDate;
import java.util.List;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonationReminderHelper {
    public static final List defaultReadFrequencyOptions;
    public static final List enabledCountries;
    public static final boolean isTestGroupUser;
    public static boolean shouldShowSettingSnackbar;
    public static final int validReadCountOnSeconds;

    static {
        validReadCountOnSeconds = (StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || !StringsKt.contains("org.wikipedia", "dev", false)) ? 5 : 1;
        isTestGroupUser = new DonationReminderAbTest().getGroup() == 1;
        enabledCountries = Room.listOf((Object[]) new String[]{"GB", "AU", "CA"});
        defaultReadFrequencyOptions = Room.listOf((Object[]) new Integer[]{5, 10, 15, 25, 50});
    }

    public static String getCampaignId(String str) {
        str.getClass();
        if (!isInEligibleCountry() || LocalDate.now().compareTo((ChronoLocalDate) LocalDate.of(2026, 3, 15)) > 0) {
            return str;
        }
        return str.concat(isTestGroupUser ? "_reminderB" : "_reminderA");
    }

    public static boolean isEnabled() {
        return (!(StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || !StringsKt.contains("org.wikipedia", "dev", false)) || (isInEligibleCountry() && LocalDate.now().compareTo((ChronoLocalDate) LocalDate.of(2026, 3, 15)) <= 0)) && isTestGroupUser;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isInEligibleCountry() {
        /*
            java.lang.String r0 = "org.wikipedia"
            java.lang.String r1 = "beta"
            r2 = 0
            boolean r1 = kotlin.text.StringsKt.contains(r0, r1, r2)
            if (r1 == 0) goto Lc
            goto L1e
        Lc:
            java.lang.String r1 = "alpha"
            boolean r1 = kotlin.text.StringsKt.contains(r0, r1, r2)
            if (r1 == 0) goto L15
            goto L1e
        L15:
            java.lang.String r1 = "dev"
            boolean r0 = kotlin.text.StringsKt.contains(r0, r1, r2)
            if (r0 == 0) goto L1e
            goto L46
        L1e:
            org.wikipedia.settings.Prefs r0 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L39
            java.lang.String r0 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L39
            if (r0 == 0) goto L32
            int r0 = r0.length()     // Catch: java.lang.IllegalArgumentException -> L39
            if (r0 != 0) goto L2d
            goto L32
        L2d:
            java.lang.String r0 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L39
            goto L3a
        L32:
            kotlinx.coroutines.internal.Symbol r0 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L39
            java.lang.String r0 = r0.symbol     // Catch: java.lang.IllegalArgumentException -> L39
            goto L3a
        L39:
            r0 = 0
        L3a:
            if (r0 != 0) goto L3e
            java.lang.String r0 = ""
        L3e:
            java.util.List r1 = org.wikipedia.donate.donationreminder.DonationReminderHelper.enabledCountries
            boolean r0 = r1.contains(r0)
            if (r0 == 0) goto L48
        L46:
            r0 = 1
            return r0
        L48:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderHelper.isInEligibleCountry():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String thankYouMessageForSettings() {
        /*
            org.wikipedia.WikipediaApp r0 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r0 = org.jsoup.Jsoup.getInstance()
            java.util.Locale$Builder r1 = new java.util.Locale$Builder
            r1.<init>()
            java.util.Locale r2 = java.util.Locale.getDefault()
            java.util.Locale$Builder r1 = r1.setLocale(r2)
            org.wikipedia.settings.Prefs r2 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L2e
            java.lang.String r2 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L2e
            if (r2 == 0) goto L27
            int r2 = r2.length()     // Catch: java.lang.IllegalArgumentException -> L2e
            if (r2 != 0) goto L22
            goto L27
        L22:
            java.lang.String r2 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L2e
            goto L2f
        L27:
            kotlinx.coroutines.internal.Symbol r2 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L2e
            java.lang.String r2 = r2.symbol     // Catch: java.lang.IllegalArgumentException -> L2e
            goto L2f
        L2e:
            r2 = 0
        L2f:
            if (r2 != 0) goto L33
            java.lang.String r2 = ""
        L33:
            java.util.Locale$Builder r1 = r1.setRegion(r2)
            java.util.Locale r1 = r1.build()
            java.text.NumberFormat r1 = java.text.NumberFormat.getCurrencyInstance(r1)
            r2 = 0
            r1.setMinimumFractionDigits(r2)
            org.wikipedia.settings.Prefs r3 = org.wikipedia.settings.Prefs.INSTANCE
            org.wikipedia.donate.donationreminder.DonationReminderConfig r3 = org.wikipedia.settings.Prefs.getDonationReminderConfig()
            float r3 = r3.donateAmount
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            java.lang.String r1 = r1.format(r3)
            org.wikipedia.donate.donationreminder.DonationReminderConfig r3 = org.wikipedia.settings.Prefs.getDonationReminderConfig()
            int r3 = r3.articleFrequency
            android.content.res.Resources r4 = r0.getResources()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r3)
            r6 = 1
            java.lang.Object[] r7 = new java.lang.Object[r6]
            r7[r2] = r5
            r5 = 2131755016(0x7f100008, float:1.91409E38)
            java.lang.String r3 = r4.getQuantityString(r5, r3, r7)
            r3.getClass()
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r2] = r1
            r4[r6] = r3
            r1 = 2131886476(0x7f12018c, float:1.9407532E38)
            java.lang.String r0 = r0.getString(r1, r4)
            r0.getClass()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderHelper.thankYouMessageForSettings():java.lang.String");
    }
}
