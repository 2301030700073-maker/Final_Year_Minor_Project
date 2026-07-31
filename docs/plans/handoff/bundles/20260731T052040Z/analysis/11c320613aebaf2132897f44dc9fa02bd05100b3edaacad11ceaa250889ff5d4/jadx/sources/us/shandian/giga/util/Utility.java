package us.shandian.giga.util;

import android.app.Activity;
import android.app.job.JobParameters;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.os.UserManager;
import android.provider.Settings;
import android.text.Html;
import android.text.Spanned;
import android.text.SpannedString;
import android.view.PointerIcon;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.core.app.ActivityCompat;
import androidx.core.os.LocaleListCompat;
import coil3.decode.StaticImageDecoderKt;
import com.google.common.collect.Sets$2$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.Objects;
import j$.util.stream.Collectors;
import j$.util.stream.IntStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Supplier;
import kotlin.collections.CollectionsKt__IterablesKt;
import okio.Options;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda3;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import us.shandian.giga.get.DownloadMission;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class Utility {
    public static DownloaderImpl downloader;
    public static ContentCountry preferredContentCountry;
    public static Localization preferredLocalization;

    public static void addItem(ArrayList arrayList, PlaylistLocalItem playlistLocalItem, ArrayList arrayList2) {
        if (!arrayList2.isEmpty() && ((PlaylistLocalItem) arrayList2.get(0)).getDisplayIndex() != playlistLocalItem.getDisplayIndex()) {
            addItemsWithSameIndex(arrayList, arrayList2);
            arrayList2.clear();
        }
        arrayList2.add(playlistLocalItem);
    }

    public static void addItemsWithSameIndex(ArrayList arrayList, ArrayList arrayList2) {
        Collections.sort(arrayList2, Comparator.CC.comparing(new Player$$ExternalSyntheticLambda28(1), Comparator.CC.nullsLast(String.CASE_INSENSITIVE_ORDER)));
        arrayList.addAll(arrayList2);
    }

    public static IntStream chars(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.chars());
        return convert;
    }

    public static boolean checkStoragePermissions(Activity activity, int i) {
        if (Options.Companion.useStorageAccessFramework(activity)) {
            return true;
        }
        if (StaticImageDecoderKt.checkSelfPermission(activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, i);
            return false;
        }
        if (StaticImageDecoderKt.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(activity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, i);
        return false;
    }

    public static boolean checkSystemAlertWindowPermission(Context context) {
        if (Settings.canDrawOverlays(context)) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 30) {
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
            intent.addFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
            }
            return false;
        }
        String charSequence = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
        String string = context.getString(R.string.permission_display_over_apps);
        String string2 = context.getString(R.string.permission_display_over_apps_message, Modifier.CC.m("<i>", charSequence, "</i>"), Modifier.CC.m("<i>", context.getString(R.string.permission_display_over_apps_permission_name), "</i>"));
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(string);
        Spanned fromHtml = Html.fromHtml(string2, 63);
        AlertController.AlertParams alertParams = title.P;
        alertParams.mMessage = fromHtml;
        ErrorActivity$$ExternalSyntheticLambda3 errorActivity$$ExternalSyntheticLambda3 = new ErrorActivity$$ExternalSyntheticLambda3(context, 2);
        alertParams.mPositiveButtonText = "OK";
        alertParams.mPositiveButtonListener = errorActivity$$ExternalSyntheticLambda3;
        alertParams.mCancelable = true;
        title.show();
        return false;
    }

    public static IntStream codePoints(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.codePoints());
        return convert;
    }

    public static LocaleList createLocaleList(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static String formatBytes(long j) {
        Locale locale = Locale.getDefault();
        return j < 1024 ? String.format(locale, "%d B", Long.valueOf(j)) : j < 1048576 ? String.format(locale, "%.2f kB", Double.valueOf(j / 1024.0d)) : j < 1073741824 ? String.format(locale, "%.2f MB", Double.valueOf((j / 1024.0d) / 1024.0d)) : String.format(locale, "%.2f GB", Double.valueOf(((j / 1024.0d) / 1024.0d) / 1024.0d));
    }

    public static Spanned fromHtml(String str) {
        return Html.fromHtml(str, 0, null, null);
    }

    public static long getContentLength(HttpURLConnection httpURLConnection) {
        if (Build.VERSION.SDK_INT >= 24) {
            return httpURLConnection.getContentLengthLong();
        }
        try {
            return Long.parseLong(httpURLConnection.getHeaderField("Content-Length"));
        } catch (Exception unused) {
            return -1L;
        }
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

    public static ArrayList getMetaInfo(JsonArray jsonArray) {
        ArrayList arrayList;
        String str;
        String urlFromNavigationEndpoint;
        boolean z;
        ArrayList arrayList2 = new ArrayList();
        Iterator<E> it = jsonArray.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.containsKey("itemSectionRenderer")) {
                Iterator<E> it2 = jsonObject.getObject("itemSectionRenderer").getArray("contents").iterator();
                while (it2.hasNext()) {
                    JsonObject jsonObject2 = (JsonObject) it2.next();
                    ArrayList arrayList3 = null;
                    if (jsonObject2.containsKey("infoPanelContentRenderer")) {
                        JsonObject object = jsonObject2.getObject("infoPanelContentRenderer");
                        MetaInfo metaInfo = new MetaInfo();
                        StringBuilder sb = new StringBuilder();
                        Iterator<E> it3 = object.getArray("paragraphs").iterator();
                        while (it3.hasNext()) {
                            Object next = it3.next();
                            if (sb.length() != 0) {
                                sb.append("<br>");
                            }
                            sb.append(YoutubeParsingHelper.getTextFromObject((JsonObject) next, false));
                        }
                        metaInfo.setContent(new Description(sb.toString(), 1));
                        if (object.containsKey("sourceEndpoint")) {
                            try {
                                String extractCachedUrlIfNeeded = YoutubeParsingHelper.extractCachedUrlIfNeeded(YoutubeParsingHelper.getUrlFromNavigationEndpoint(object.getObject("sourceEndpoint")));
                                Objects.requireNonNull(extractCachedUrlIfNeeded);
                                metaInfo.addUrl(new URL(extractCachedUrlIfNeeded));
                                String textFromObject = object.containsKey("inlineSource") ? YoutubeParsingHelper.getTextFromObject(object.getObject("inlineSource"), false) : YoutubeParsingHelper.getTextFromObject(object.getObject("disclaimer"), false);
                                if (Utils.isNullOrEmpty(textFromObject)) {
                                    Utils$$ExternalSyntheticBUOutline0.m("Could not get metadata info link text.");
                                    return null;
                                }
                                metaInfo.addUrlText(textFromObject);
                            } catch (NullPointerException | MalformedURLException e) {
                                Utils$$ExternalSyntheticBUOutline0.m("Could not get metadata info URL", e);
                                return null;
                            }
                        }
                        arrayList2.add(metaInfo);
                    }
                    if (jsonObject2.containsKey("clarificationRenderer")) {
                        JsonObject object2 = jsonObject2.getObject("clarificationRenderer");
                        MetaInfo metaInfo2 = new MetaInfo();
                        String textFromObject2 = YoutubeParsingHelper.getTextFromObject(object2.getObject("contentTitle"), false);
                        String textFromObject3 = YoutubeParsingHelper.getTextFromObject(object2.getObject("text"), false);
                        if (textFromObject2 == null || textFromObject3 == null) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not extract clarification renderer content");
                            return null;
                        }
                        metaInfo2.setTitle(textFromObject2);
                        metaInfo2.setContent(new Description(textFromObject3, 3));
                        if (object2.containsKey("actionButton")) {
                            JsonObject object3 = object2.getObject("actionButton").getObject("buttonRenderer");
                            try {
                                String extractCachedUrlIfNeeded2 = YoutubeParsingHelper.extractCachedUrlIfNeeded(YoutubeParsingHelper.getUrlFromNavigationEndpoint(object3.getObject("command")));
                                Objects.requireNonNull(extractCachedUrlIfNeeded2);
                                metaInfo2.addUrl(new URL(extractCachedUrlIfNeeded2));
                                String textFromObject4 = YoutubeParsingHelper.getTextFromObject(object3.getObject("text"), false);
                                if (Utils.isNullOrEmpty(textFromObject4)) {
                                    Utils$$ExternalSyntheticBUOutline0.m("Could not get metadata info link text.");
                                    return null;
                                }
                                metaInfo2.addUrlText(textFromObject4);
                            } catch (NullPointerException | MalformedURLException e2) {
                                Utils$$ExternalSyntheticBUOutline0.m("Could not get metadata info URL", e2);
                                return null;
                            }
                        }
                        if (object2.containsKey("secondaryEndpoint") && object2.containsKey("secondarySource") && (urlFromNavigationEndpoint = YoutubeParsingHelper.getUrlFromNavigationEndpoint(object2.getObject("secondaryEndpoint"))) != null) {
                            try {
                                z = Collection.EL.stream(YoutubeParsingHelper.GOOGLE_URLS).anyMatch(new Sets$2$$ExternalSyntheticLambda0(new URL(YoutubeParsingHelper.extractCachedUrlIfNeeded(urlFromNavigationEndpoint)), 2));
                            } catch (MalformedURLException unused) {
                                z = false;
                            }
                            if (!z) {
                                try {
                                    metaInfo2.addUrl(new URL(urlFromNavigationEndpoint));
                                    String textFromObject5 = YoutubeParsingHelper.getTextFromObject(object2.getObject("secondarySource"), false);
                                    if (textFromObject5 != null) {
                                        urlFromNavigationEndpoint = textFromObject5;
                                    }
                                    metaInfo2.addUrlText(urlFromNavigationEndpoint);
                                } catch (MalformedURLException e3) {
                                    Utils$$ExternalSyntheticBUOutline0.m("Could not get metadata info secondary URL", e3);
                                    return null;
                                }
                            }
                        }
                        arrayList2.add(metaInfo2);
                    }
                    if (jsonObject2.containsKey("emergencyOneboxRenderer")) {
                        List<JsonObject> list = (List) Collection.EL.stream(jsonObject2.getObject("emergencyOneboxRenderer").values()).filter(new JsonArray$$ExternalSyntheticLambda0(14)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(25)).collect(Collectors.toList());
                        if (list.isEmpty()) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not extract any meta info from emergency renderer");
                            return null;
                        }
                        for (JsonObject jsonObject3 : list) {
                            MetaInfo metaInfo3 = new MetaInfo();
                            String textFromObjectOrThrow = YoutubeParsingHelper.getTextFromObjectOrThrow(jsonObject3.getObject("title"), "title");
                            if (jsonObject3.containsKey("actionText")) {
                                str = "\n".concat(YoutubeParsingHelper.getTextFromObjectOrThrow(jsonObject3.getObject("actionText"), "action"));
                                arrayList = arrayList3;
                            } else if (jsonObject3.containsKey("contacts")) {
                                JsonArray array = jsonObject3.getArray("contacts");
                                StringBuilder sb2 = new StringBuilder();
                                int i = 0;
                                while (i < array.size()) {
                                    sb2.append("\n");
                                    sb2.append(YoutubeParsingHelper.getTextFromObjectOrThrow(array.getObject(i).getObject("actionText"), "contacts.actionText"));
                                    i++;
                                    arrayList3 = arrayList3;
                                }
                                arrayList = arrayList3;
                                str = sb2.toString();
                            } else {
                                arrayList = arrayList3;
                                str = "";
                            }
                            String textFromObjectOrThrow2 = YoutubeParsingHelper.getTextFromObjectOrThrow(jsonObject3.getObject("detailsText"), "details");
                            String textFromObjectOrThrow3 = YoutubeParsingHelper.getTextFromObjectOrThrow(jsonObject3.getObject("navigationText"), "urlText");
                            metaInfo3.setTitle(textFromObjectOrThrow);
                            metaInfo3.setContent(new Description(textFromObjectOrThrow2.concat(str), 3));
                            metaInfo3.addUrlText(textFromObjectOrThrow3);
                            String urlFromNavigationEndpoint2 = YoutubeParsingHelper.getUrlFromNavigationEndpoint(jsonObject3.getObject("navigationEndpoint"));
                            if (urlFromNavigationEndpoint2 == null) {
                                Utils$$ExternalSyntheticBUOutline0.m("Could not extract emergency renderer url");
                                return arrayList;
                            }
                            try {
                                metaInfo3.addUrl(new URL(Utils.replaceHttpWithHttps(urlFromNavigationEndpoint2)));
                                arrayList2.add(metaInfo3);
                                arrayList3 = arrayList;
                            } catch (MalformedURLException e4) {
                                Utils$$ExternalSyntheticBUOutline0.m("Could not parse emergency renderer url", e4);
                                return arrayList;
                            }
                        }
                    }
                }
            }
        }
        return arrayList2;
    }

    public static Localization getPreferredLocalization() {
        Localization localization = preferredLocalization;
        return localization == null ? Localization.DEFAULT : localization;
    }

    public static StreamingService getService(String str) {
        return (StreamingService) Collection.EL.stream(ServiceList.SERVICES).filter(new NewPipe$$ExternalSyntheticLambda2(str, 0)).findFirst().orElseThrow(new StringUtil$$ExternalSyntheticLambda1(str, 1));
    }

    public static StreamingService getServiceByUrl(String str) {
        for (StreamingService streamingService : ServiceList.SERVICES) {
            if (streamingService.getLinkTypeByUrl(str) != StreamingService.LinkType.NONE) {
                return streamingService;
            }
        }
        throw new ExtractionException(Modifier.CC.m("No service can handle the url = \"", str, "\""));
    }

    public static PointerIcon getSystemIcon(Context context) {
        return PointerIcon.getSystemIcon(context, 1002);
    }

    public static long getTotalContentLength(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() == 206 ? Long.parseLong(httpURLConnection.getHeaderField("Content-Range").split("/", 2)[1]) : getContentLength(httpURLConnection);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static String[] getTriggeredContentAuthorities(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    public static Uri[] getTriggeredContentUris(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        return context.isDeviceProtectedStorage();
    }

    public static boolean isInMultiWindowMode(Activity activity) {
        activity.getClass();
        return activity.isInMultiWindowMode();
    }

    public static boolean isPopupEnabledElseAsk(Context context) {
        if (checkSystemAlertWindowPermission(context)) {
            return true;
        }
        Toast.makeText(context, R.string.msg_popup_permission, 1).show();
        return false;
    }

    public static boolean isUserUnlocked(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    public static String pad(int i) {
        return i < 10 ? Modifier.CC.m(i, "0") : String.valueOf(i);
    }

    public static void setLocales(Configuration configuration, LocaleListCompat localeListCompat) {
        configuration.setLocales((LocaleList) localeListCompat.mImpl.getLocaleList());
    }

    public static void setTextLocales(AndroidTextPaint androidTextPaint, androidx.compose.ui.text.intl.LocaleList localeList) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(localeList, 10));
        Iterator it = localeList.localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        androidTextPaint.setTextLocales(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }

    public static String toHtml(SpannedString spannedString) {
        return Html.toHtml(spannedString, 0);
    }

    public static void writeToFile(File file, DownloadMission downloadMission) {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
            try {
                objectOutputStream.writeObject(downloadMission);
                objectOutputStream.close();
            } finally {
            }
        } catch (Exception unused) {
        }
    }

    public static Spanned fromHtml(int i, String str) {
        return Html.fromHtml(str, i);
    }

    public static StreamingService getService(final int i) {
        return (StreamingService) Collection.EL.stream(ServiceList.SERVICES).filter(new NewPipe$$ExternalSyntheticLambda0(i, 0)).findFirst().orElseThrow(new Supplier() { // from class: org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ExtractionException(Modifier.CC.m("There's no service with the id = \"", i, "\""));
            }
        });
    }
}
