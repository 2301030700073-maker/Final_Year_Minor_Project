package org.wikipedia.language;

import android.app.Activity;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.res.Configuration;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.os.UserManager;
import android.text.Html;
import android.text.Spanned;
import android.text.format.DateUtils;
import android.view.PointerIcon;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import com.google.android.material.datepicker.UtcDates;
import j$.util.stream.IntStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LanguageUtil {
    public static IntStream chars(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.chars());
        return convert;
    }

    public static IntStream codePoints(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.codePoints());
        return convert;
    }

    public static LocaleList createLocaleList(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static Spanned fromHtml(String str, int i, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        return Html.fromHtml(str, i, imageGetter, tagHandler);
    }

    public static String getDateString(long j) {
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendarOf = UtcDates.getUtcCalendarOf(null);
        utcCalendarOf.setTimeInMillis(j);
        if (todayCalendar.get(1) != utcCalendarOf.get(1)) {
            return getYearMonthDay(j);
        }
        Locale locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.getAndroidFormat("MMMd", locale).format(new Date(j));
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) UtcDates.getFormat(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int findCharactersInDateFormatPattern = UtcDates.findCharactersInDateFormatPattern(1, 0, pattern, "yY");
        if (findCharactersInDateFormatPattern < pattern.length()) {
            int findCharactersInDateFormatPattern2 = UtcDates.findCharactersInDateFormatPattern(1, findCharactersInDateFormatPattern, pattern, "EMd");
            pattern = pattern.replace(pattern.substring(UtcDates.findCharactersInDateFormatPattern(-1, findCharactersInDateFormatPattern, pattern, findCharactersInDateFormatPattern2 < pattern.length() ? "EMd," : "EMd") + 1, findCharactersInDateFormatPattern2), " ").trim();
        }
        simpleDateFormat.applyPattern(pattern);
        return simpleDateFormat.format(new Date(j));
    }

    public static String getDayContentDescription(Context context, long j, boolean z, boolean z2, boolean z3) {
        String format;
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendarOf = UtcDates.getUtcCalendarOf(null);
        utcCalendarOf.setTimeInMillis(j);
        if (todayCalendar.get(1) == utcCalendarOf.get(1)) {
            Locale locale = Locale.getDefault();
            format = Build.VERSION.SDK_INT >= 24 ? UtcDates.getAndroidFormat("MMMMEEEEd", locale).format(new Date(j)) : UtcDates.getFormat(0, locale).format(new Date(j));
        } else {
            Locale locale2 = Locale.getDefault();
            format = Build.VERSION.SDK_INT >= 24 ? UtcDates.getAndroidFormat("yMMMMEEEEd", locale2).format(new Date(j)) : UtcDates.getFormat(0, locale2).format(new Date(j));
        }
        if (z) {
            format = String.format(context.getString(R.string.mtrl_picker_today_description), format);
        }
        return z2 ? String.format(context.getString(R.string.mtrl_picker_start_date_description), format) : z3 ? String.format(context.getString(R.string.mtrl_picker_end_date_description), format) : format;
    }

    public static LocaleList getDefault() {
        return LocaleList.getDefault();
    }

    public static String getDefaultLocale() {
        LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
        if (adjustedDefault.size() > 0) {
            return adjustedDefault.get(0).toLanguageTag();
        }
        return null;
    }

    public static DecimalFormatSymbols getInstance(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    public static LocaleList getLocales(Configuration configuration) {
        return configuration.getLocales();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0096 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List getSuggestedLanguagesFromSystem() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.language.LanguageUtil.getSuggestedLanguagesFromSystem():java.util.List");
    }

    public static PointerIcon getSystemIcon(Context context) {
        return PointerIcon.getSystemIcon(context, 1002);
    }

    public static String[] getTriggeredContentAuthorities(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    public static Uri[] getTriggeredContentUris(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }

    public static String getYearMonth(long j) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAndroidFormat("yMMMM", Locale.getDefault()).format(new Date(j)) : DateUtils.formatDateTime(null, j, 8228);
    }

    public static String getYearMonthDay(long j) {
        Locale locale = Locale.getDefault();
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAndroidFormat("yMMMd", locale).format(new Date(j)) : UtcDates.getFormat(2, locale).format(new Date(j));
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        return context.isDeviceProtectedStorage();
    }

    public static boolean isInMultiWindowMode(Activity activity) {
        return activity.isInMultiWindowMode();
    }

    public static boolean isUserUnlocked(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    public static String localeToWikiLanguageCode(Locale locale) {
        String language = locale.getLanguage();
        if (language != null) {
            int hashCode = language.hashCode();
            if (hashCode != 3365) {
                if (hashCode != 3374) {
                    if (hashCode != 3391) {
                        if (hashCode != 3886) {
                            if (hashCode == 120009 && language.equals("yue")) {
                                return "zh-yue";
                            }
                        } else if (language.equals("zh")) {
                            if (!Intrinsics.areEqual(locale.getScript(), "Hans") && !Intrinsics.areEqual(locale.getScript(), "Hant")) {
                                String languageTag = locale.toLanguageTag();
                                languageTag.getClass();
                                if (!StringsKt__StringsJVMKt.startsWith(languageTag, "zh-", false)) {
                                    return "zh-hant";
                                }
                            }
                            String country = locale.getCountry();
                            if (country != null) {
                                int hashCode2 = country.hashCode();
                                if (hashCode2 != 2155) {
                                    if (hashCode2 != 2307) {
                                        if (hashCode2 != 2466) {
                                            if (hashCode2 != 2476) {
                                                if (hashCode2 != 2644) {
                                                    if (hashCode2 == 2691 && country.equals("TW")) {
                                                        return "zh-tw";
                                                    }
                                                } else if (country.equals("SG")) {
                                                    return "zh-sg";
                                                }
                                            } else if (country.equals("MY")) {
                                                return "zh-my";
                                            }
                                        } else if (country.equals("MO")) {
                                            return "zh-mo";
                                        }
                                    } else if (country.equals("HK")) {
                                        return "zh-hk";
                                    }
                                } else if (country.equals("CN")) {
                                    return "zh-cn";
                                }
                            }
                            return Intrinsics.areEqual(locale.getScript(), "Hans") ? "zh-hans" : "zh-hant";
                        }
                    } else if (language.equals("ji")) {
                        return "yi";
                    }
                } else if (language.equals("iw")) {
                    return "he";
                }
            } else if (language.equals("in")) {
                return "id";
            }
        }
        String language2 = locale.getLanguage();
        language2.getClass();
        return language2;
    }

    public static void setTextLocales(AndroidTextPaint androidTextPaint, androidx.compose.ui.text.intl.LocaleList localeList) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
        Iterator it = localeList.localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        androidTextPaint.setTextLocales(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }
}
