package okhttp3;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.net.ConnectivityManager;
import android.os.Build;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.graphics.ColorUtils;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import androidx.room.Room;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkMeteredControllerPre28;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingControllerPre28;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import coil3.network.HttpException;
import coil3.network.NetworkHeaders;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PathKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.caverock.androidsvg.CSSParser;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.util.DateRetargetClass;
import j$.util.DesugarCollections;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UIntArray;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.DateFormattingKt;
import org.jsoup.Jsoup;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.language.LanguageUtil;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;
import org.xml.sax.Attributes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Headers implements Iterable, KMappedMarker {
    public static final Headers EMPTY = new Headers(new String[0]);
    public final String[] namesAndValues;

    public Headers(String[] strArr) {
        strArr.getClass();
        this.namesAndValues = strArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
        }
        return false;
    }

    public final String get(String str) {
        str.getClass();
        String[] strArr = this.namesAndValues;
        strArr.getClass();
        int length = strArr.length - 2;
        int progressionLastElement = ContextsKt.getProgressionLastElement(length, 0, -2);
        if (progressionLastElement > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == progressionLastElement) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final Instant getInstant() {
        String str = get("date");
        Date httpDateOrNull = str != null ? DateFormattingKt.toHttpDateOrNull(str) : null;
        if (httpDateOrNull != null) {
            return DateRetargetClass.toInstant(httpDateOrNull);
        }
        return null;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = new Pair(Jsoup.commonName(this, i), Jsoup.commonValue(this, i));
        }
        return new UIntArray.Iterator(pairArr);
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String commonName = Jsoup.commonName(this, i);
            String commonValue = Jsoup.commonValue(this, i);
            sb.append(commonName);
            sb.append(": ");
            if (_UtilCommonKt.isSensitiveHeader(commonName)) {
                commonValue = "██";
            }
            sb.append(commonValue);
            sb.append("\n");
        }
        return sb.toString();
    }

    public final List values(String str) {
        str.getClass();
        int size = size();
        List list = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(Jsoup.commonName(this, i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(Jsoup.commonValue(this, i));
            }
        }
        if (arrayList != null) {
            list = DesugarCollections.unmodifiableList(arrayList);
            list.getClass();
        }
        return list == null ? EmptyList.INSTANCE : list;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements AnimatableValue {
        public final /* synthetic */ int $r8$classId;
        public ArrayList namesAndValues;

        public Builder(Trackers trackers) {
            this.$r8$classId = 1;
            trackers.getClass();
            String str = WorkConstraintsTrackerKt.TAG;
            ConstraintTracker constraintTracker = trackers.batteryChargingTracker;
            ConstraintTracker constraintTracker2 = trackers.networkStateTracker;
            int i = 3;
            int i2 = 2;
            ArrayList mutableListOf = Room.mutableListOf(new BatteryNotLowController(constraintTracker, 1), new BatteryNotLowController(trackers.batteryNotLowTracker, 0), new BatteryNotLowController(trackers.storageNotLowTracker, 4));
            if (Build.VERSION.SDK_INT >= 28) {
                Object systemService = trackers.context.getSystemService("connectivity");
                systemService.getClass();
                mutableListOf.add(new NetworkRequestConstraintController((ConnectivityManager) systemService));
            } else {
                constraintTracker2.getClass();
                mutableListOf.addAll(Room.listOf((Object[]) new BaseConstraintController[]{new BatteryNotLowController(constraintTracker2, i2), new BatteryNotLowController(constraintTracker2, i), new NetworkNotRoamingControllerPre28(constraintTracker2), new NetworkMeteredControllerPre28(constraintTracker2)}));
            }
            this.namesAndValues = mutableListOf;
        }

        public void add(CSSParser.Rule rule) {
            if (this.namesAndValues == null) {
                this.namesAndValues = new ArrayList();
            }
            int i = 0;
            while (true) {
                int size = this.namesAndValues.size();
                ArrayList arrayList = this.namesAndValues;
                if (i >= size) {
                    arrayList.add(rule);
                    return;
                } else {
                    if (((CSSParser.Rule) arrayList.get(i)).selector.specificity > rule.selector.specificity) {
                        this.namesAndValues.add(i, rule);
                        return;
                    }
                    i++;
                }
            }
        }

        public void addAll(Builder builder) {
            if (builder.namesAndValues == null) {
                return;
            }
            if (this.namesAndValues == null) {
                this.namesAndValues = new ArrayList(builder.namesAndValues.size());
            }
            Iterator it = builder.namesAndValues.iterator();
            while (it.hasNext()) {
                add((CSSParser.Rule) it.next());
            }
        }

        public void addLenient$okhttp(String str) {
            int indexOf$default = StringsKt.indexOf$default(str, ':', 1, 4);
            if (indexOf$default != -1) {
                Jsoup.commonAddLenient(this, str.substring(0, indexOf$default), str.substring(indexOf$default + 1));
            } else if (str.charAt(0) == ':') {
                Jsoup.commonAddLenient(this, "", str.substring(1));
            } else {
                Jsoup.commonAddLenient(this, "", str);
            }
        }

        public void addSpread(Object obj) {
            ArrayList arrayList = this.namesAndValues;
            if (obj == null) {
                return;
            }
            if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                if (objArr.length > 0) {
                    arrayList.ensureCapacity(arrayList.size() + objArr.length);
                    Collections.addAll(arrayList, objArr);
                    return;
                }
                return;
            }
            if (obj instanceof Collection) {
                arrayList.addAll((Collection) obj);
                return;
            }
            if (obj instanceof Iterable) {
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            } else if (obj instanceof Iterator) {
                Iterator it2 = (Iterator) obj;
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            } else {
                throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
            }
        }

        public void apply(Path path) {
            ArrayList arrayList = this.namesAndValues;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                TrimPathContent trimPathContent = (TrimPathContent) arrayList.get(size);
                Matrix matrix = Utils.IDENTITY_MATRIX;
                if (trimPathContent != null && !trimPathContent.hidden) {
                    Utils.applyTrimPathIfNeeded(path, trimPathContent.startAnimation.getFloatValue() / 100.0f, trimPathContent.endAnimation.getFloatValue() / 100.0f, trimPathContent.offsetAnimation.getFloatValue() / 360.0f);
                }
            }
        }

        public LatLngBounds build() {
            ArrayList arrayList = this.namesAndValues;
            if (arrayList.size() < 2) {
                throw new HttpException(Animation.CC.m(arrayList.size(), "Cannot create a LatLngBounds from ", " items"));
            }
            LatLngBounds.INSTANCE.getClass();
            Iterator it = arrayList.iterator();
            double d = Double.MAX_VALUE;
            double d2 = 90.0d;
            double d3 = -90.0d;
            double d4 = -1.7976931348623157E308d;
            while (it.hasNext()) {
                LatLng latLng = (LatLng) it.next();
                double latitude = latLng.getLatitude();
                double longitude = latLng.getLongitude();
                d2 = Math.min(d2, latitude);
                d = Math.min(d, longitude);
                d3 = Math.max(d3, latitude);
                d4 = Math.max(d4, longitude);
            }
            return new LatLngBounds(d3, d4, d2, d);
        }

        @Override // com.airbnb.lottie.model.animatable.AnimatableValue
        public BaseKeyframeAnimation createAnimation() {
            ArrayList arrayList = this.namesAndValues;
            return ((Keyframe) arrayList.get(0)).isStatic() ? new PointKeyframeAnimation(arrayList, 0) : new PathKeyframeAnimation(arrayList);
        }

        public String get(String str) {
            str.getClass();
            ArrayList arrayList = this.namesAndValues;
            int size = arrayList.size() - 2;
            int progressionLastElement = ContextsKt.getProgressionLastElement(size, 0, -2);
            if (progressionLastElement > size) {
                return null;
            }
            while (!str.equalsIgnoreCase((String) arrayList.get(size))) {
                if (size == progressionLastElement) {
                    return null;
                }
                size -= 2;
            }
            return (String) arrayList.get(size + 1);
        }

        @Override // com.airbnb.lottie.model.animatable.AnimatableValue
        public List getKeyframes() {
            return this.namesAndValues;
        }

        public void include(LatLng latLng) {
            latLng.getClass();
            this.namesAndValues.add(latLng);
        }

        @Override // com.airbnb.lottie.model.animatable.AnimatableValue
        public boolean isStatic() {
            ArrayList arrayList = this.namesAndValues;
            return arrayList.size() == 1 && ((Keyframe) arrayList.get(0)).isStatic();
        }

        public void removeAll(String str) {
            str.getClass();
            ArrayList arrayList = this.namesAndValues;
            int i = 0;
            while (i < arrayList.size()) {
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 4:
                    if (this.namesAndValues == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    Iterator it = this.namesAndValues.iterator();
                    while (it.hasNext()) {
                        sb.append(((CSSParser.Rule) it.next()).toString());
                        sb.append('\n');
                    }
                    return sb.toString();
                default:
                    return super.toString();
            }
        }

        public Flow track(WorkSpec workSpec) {
            workSpec.getClass();
            ArrayList arrayList = this.namesAndValues;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((ConstraintController) next).hasConstraint(workSpec)) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((ConstraintController) it2.next()).track(workSpec.constraints));
            }
            return StateFlowKt.distinctUntilChanged(new SafeFlow(2, (Flow[]) CollectionsKt.toList(arrayList3).toArray(new Flow[0])));
        }

        public void add(String str, String str2) {
            str.getClass();
            str2.getClass();
            Jsoup.headersCheckName(str);
            Jsoup.headersCheckValue(str2, str);
            Jsoup.commonAddLenient(this, str, str2);
        }

        public void add(Object obj) {
            this.namesAndValues.add(obj);
        }

        public Builder(ArrayList arrayList) {
            this.$r8$classId = 3;
            this.namesAndValues = arrayList;
        }

        public Builder(int i) {
            this.$r8$classId = 5;
            this.namesAndValues = new ArrayList(i);
        }

        public Builder(int i, byte b) {
            this.$r8$classId = i;
            switch (i) {
                case 2:
                    this.namesAndValues = new ArrayList();
                    break;
                case 3:
                case 5:
                default:
                    this.namesAndValues = new ArrayList(20);
                    break;
                case 4:
                    this.namesAndValues = null;
                    break;
                case 6:
                    this.namesAndValues = new ArrayList();
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        public static final void BasedOnInterestModule(Modifier modifier, WikiSite wikiSite, ForYouModule.BasedOnInterest basedOnInterest, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
            wikiSite.getClass();
            basedOnInterest.getClass();
            gapComposer.startRestartGroup(-1381367782);
            int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(basedOnInterest) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changedInstance(function23) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function12) ? 536870912 : 268435456);
            if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
                Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                ForYouCard forYouCard = (ForYouCard) CollectionsKt.firstOrNull(basedOnInterest.cards);
                String hideKey = forYouCard != null ? forYouCard.getHideKey() : null;
                ForYouCardKt.ForYouModulePager(modifier, basedOnInterest, function1, Expect_jvmKt.rememberComposableLambda(1905536582, new HomeScreenKt$$ExternalSyntheticLambda2(basedOnInterest, context, wikiSite, Math.abs(hideKey != null ? hideKey.hashCode() : 0), function2, function23, function22, function24, function0, function12), gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 18) & 896));
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(modifier, wikiSite, basedOnInterest, function2, function22, function23, function24, function0, function1, function12, i, 3);
            }
        }

        public static Account account() {
            try {
                AccountManager accountManager = accountManager();
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String string = Jsoup.getInstance().getString(R.string.account_type);
                string.getClass();
                Account[] accountsByType = accountManager.getAccountsByType(string);
                accountsByType.getClass();
                return (Account) ArraysKt___ArraysKt.firstOrNull(accountsByType);
            } catch (SecurityException e) {
                L.logRemoteErrorIfProd(e);
                return null;
            }
        }

        public static AccountManager accountManager() {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            AccountManager accountManager = AccountManager.get(Jsoup.getInstance());
            accountManager.getClass();
            return accountManager;
        }

        public static Spanned fromHtml(TextView textView, String str) {
            CustomHtmlParser.CustomImageGetter customImageGetter;
            if (str == null) {
                str = "";
            }
            if (!StringsKt.contains(str, "<", false) && !StringsKt.contains(str, "&", false)) {
                SpannedString valueOf = SpannedString.valueOf(str);
                valueOf.getClass();
                return valueOf;
            }
            String replace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "&#8206;", "\u200e"), "&#8207;", "\u200f"), "&amp;", "&"), "<sub>", "<sub><small><small><small>"), "</sub>", "</small></small></small></sub>"), "<sup>", "<sup><small><small><small>"), "</sup>", "</small></small></small></sup>");
            if (textView == null) {
                customImageGetter = null;
            } else {
                Context context = textView.getContext();
                context.getClass();
                customImageGetter = new CustomHtmlParser.CustomImageGetter(context);
            }
            CustomHtmlParser customHtmlParser = new CustomHtmlParser(new CustomHtmlParser.CustomTagHandler(textView));
            Spanned fromHtml = Build.VERSION.SDK_INT >= 24 ? LanguageUtil.fromHtml(replace$default, 0, customImageGetter, customHtmlParser) : Html.fromHtml(replace$default, customImageGetter, customHtmlParser);
            fromHtml.getClass();
            return fromHtml;
        }

        public static String getAssertUser() {
            if (!isLoggedIn() || isTemporaryAccount()) {
                return null;
            }
            return "user";
        }

        public static Set getGroups() {
            Account account = account();
            EmptySet emptySet = EmptySet.INSTANCE;
            if (account == null) {
                return emptySet;
            }
            AccountManager accountManager = accountManager();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String userData = accountManager.getUserData(account, Jsoup.getInstance().getString(R.string.preference_key_login_groups));
            if (userData == null || userData.length() == 0) {
                return emptySet;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            if (userData.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(userData, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            Set set = (Set) obj;
            return set == null ? emptySet : set;
        }

        public static PageTitle getNonTalkPageTitle(PageTitle pageTitle) {
            pageTitle.getClass();
            PageTitle copy$default = PageTitle.copy$default(pageTitle);
            if (pageTitle.namespace() == Namespace.USER_TALK) {
                copy$default.setNamespace(UserAliasData.valueFor(pageTitle.wikiSite.languageCode));
                return copy$default;
            }
            if (pageTitle.namespace() == Namespace.TALK) {
                copy$default.setNamespace("");
            }
            return copy$default;
        }

        public static String getUserName() {
            String str;
            Account account = account();
            return (account == null || (str = account.name) == null) ? getUserNameFromCookie() : str;
        }

        public static String getUserNameFromCookie() {
            if (NetworkHeaders.Builder.INSTANCE == null) {
                try {
                    Prefs prefs = Prefs.INSTANCE;
                    NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
                } catch (Exception e) {
                    L.logRemoteErrorIfProd(e);
                }
            }
            NetworkHeaders.Builder builder = NetworkHeaders.Builder.INSTANCE;
            if (builder == null) {
                builder = new NetworkHeaders.Builder(new LinkedHashMap());
                NetworkHeaders.Builder.INSTANCE = builder;
            }
            String cookieValueByName = builder.getCookieValueByName("centralauth_User");
            if (cookieValueByName == null) {
                cookieValueByName = "";
            }
            String obj = StringsKt.trim(cookieValueByName).toString();
            obj.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(obj, "+", "%2B"), "UTF-8");
                decode.getClass();
                return decode;
            } catch (UnsupportedEncodingException e2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                return null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(obj));
                return obj;
            }
        }

        public static String getValue(Attributes attributes, String str) {
            if (attributes == null) {
                return null;
            }
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                if (str.equals(attributes.getLocalName(i))) {
                    return attributes.getValue(i);
                }
            }
            return null;
        }

        public static boolean isBetterLocation(Location location, Location location2) {
            if (location2 == null) {
                return true;
            }
            long time = location.getTime() - location2.getTime();
            boolean z = time > 120000;
            boolean z2 = time < -120000;
            boolean z3 = time > 0;
            if (z) {
                return true;
            }
            if (z2) {
                return false;
            }
            int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
            boolean z4 = accuracy > 0;
            boolean z5 = accuracy < 0;
            boolean z6 = accuracy > 200;
            String provider = location.getProvider();
            String provider2 = location2.getProvider();
            boolean equals = provider == null ? provider2 == null : provider.equals(provider2);
            if (z5) {
                return true;
            }
            if (!z3 || z4) {
                return z3 && !z6 && equals;
            }
            return true;
        }

        public static boolean isLoggedIn() {
            return account() != null || isTemporaryAccount();
        }

        public static boolean isTemporaryAccount() {
            if (account() == null) {
                String userNameFromCookie = getUserNameFromCookie();
                if (userNameFromCookie.length() > 6 && userNameFromCookie.charAt(0) == '~' && userNameFromCookie.charAt(5) == '-' && TextUtils.isDigitsOnly(userNameFromCookie.substring(1, 5))) {
                    return true;
                }
            }
            return false;
        }

        public static void maybeShowTempAccountWelcome(Activity activity) {
            Prefs prefs = Prefs.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_temp_account_welcome_shown), false) || !isTemporaryAccount()) {
                return;
            }
            PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_welcome_shown, true);
            PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, false);
            int max = (int) Math.max(90 - (LocalDate.now().toEpochDay() - PrefsIoUtil.getLong(0L, R.string.preference_key_temp_account_create_day)), 0L);
            String quantityString = activity.getResources().getQuantityString(R.plurals.temp_account_created, max, getUserName(), Integer.valueOf(max));
            quantityString.getClass();
            ShareUtil.showMessage(activity, quantityString, 0);
        }

        public static Intent newIntent(Context context, PageTitle pageTitle, Constants.InvokeSource invokeSource) {
            context.getClass();
            pageTitle.getClass();
            invokeSource.getClass();
            Intent putExtra = new Intent(context, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle);
            String str = pageTitle.fragment;
            Intent putExtra2 = putExtra.putExtra("goToTopic", !(str == null || str.length() == 0)).putExtra("invokeSource", invokeSource);
            putExtra2.getClass();
            return putExtra2;
        }

        public static Headers of(String... strArr) {
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
            if (strArr2.length % 2 != 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Expected alternating header names and values");
                return null;
            }
            String[] strArr3 = (String[]) Arrays.copyOf(strArr2, strArr2.length);
            int length = strArr3.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArr3[i2] == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Headers cannot be null");
                    return null;
                }
                strArr3[i2] = StringsKt.trim(strArr2[i2]).toString();
            }
            int progressionLastElement = ContextsKt.getProgressionLastElement(0, strArr3.length - 1, 2);
            if (progressionLastElement >= 0) {
                while (true) {
                    String str = strArr3[i];
                    String str2 = strArr3[i + 1];
                    Jsoup.headersCheckName(str);
                    Jsoup.headersCheckValue(str2, str);
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 2;
                }
            }
            return new Headers(strArr3);
        }

        public static void setTextWithDrawables(AppCompatTextView appCompatTextView, CharSequence charSequence, int... iArr) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            ArrayList arrayList = new ArrayList(copyOf.length);
            for (int i : copyOf) {
                Context context = appCompatTextView.getContext();
                context.getClass();
                final float lineSpacingMultiplier = appCompatTextView.getLineSpacingMultiplier();
                float textSize = appCompatTextView.getTextSize();
                int currentTextColor = appCompatTextView.getCurrentTextColor();
                SpannableString valueOf = SpannableString.valueOf(" ");
                valueOf.getClass();
                final Drawable drawable = TuplesKt.getDrawable(context, i);
                drawable.getClass();
                drawable.setTint(currentTextColor);
                drawable.setBounds(drawable.getBounds().left, drawable.getBounds().top, UnsignedKt.roundToInt(textSize), UnsignedKt.roundToInt(textSize * (drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight())));
                valueOf.setSpan(new ImageSpan(drawable, lineSpacingMultiplier) { // from class: org.wikipedia.views.AppTextViewWithImages$BaselineAlignedYTranslationImageSpan
                    public final float lineSpacingMultiplier;

                    {
                        this.lineSpacingMultiplier = lineSpacingMultiplier;
                    }

                    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
                    public final void draw(Canvas canvas, CharSequence charSequence2, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
                        canvas.getClass();
                        charSequence2.getClass();
                        paint.getClass();
                        Drawable drawable2 = getDrawable();
                        float f2 = (i6 - drawable2.getBounds().bottom) - ((paint.getFontMetricsInt().descent * ((int) this.lineSpacingMultiplier)) / 2);
                        int save = canvas.save();
                        canvas.translate(f, f2);
                        try {
                            drawable2.draw(canvas);
                        } finally {
                            canvas.restoreToCount(save);
                        }
                    }
                }, 0, 1, 17);
                arrayList.add(valueOf);
            }
            if (arrayList.isEmpty()) {
                appCompatTextView.setText(charSequence);
            } else {
                CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
                appCompatTextView.setText(TextUtils.expandTemplate(charSequence, (CharSequence[]) Arrays.copyOf(charSequenceArr, charSequenceArr.length)), TextView.BufferType.SPANNABLE);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0058  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void updateAccount(android.accounts.AccountAuthenticatorResponse r8, org.wikipedia.login.LoginResult r9) {
            /*
                r9.getClass()
                java.lang.String r0 = r9.userName
                r0.getClass()
                java.lang.String r1 = r9.password
                r1.getClass()
                android.accounts.Account r2 = account()
                r3 = 2131886128(0x7f120030, float:1.9406826E38)
                r4 = 0
                r5 = 1
                if (r2 == 0) goto L2f
                java.lang.String r6 = r2.name
                r6.getClass()
                int r6 = r6.length()
                if (r6 != 0) goto L24
                goto L2f
            L24:
                java.lang.String r2 = r2.name
                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
                if (r2 != 0) goto L2d
                goto L2f
            L2d:
                r2 = r5
                goto L56
            L2f:
                android.accounts.Account r2 = account()
                if (r2 == 0) goto L3c
                android.accounts.AccountManager r6 = accountManager()
                r6.removeAccountExplicitly(r2)
            L3c:
                android.accounts.Account r2 = new android.accounts.Account
                org.wikipedia.WikipediaApp r6 = org.wikipedia.WikipediaApp.instance
                org.wikipedia.WikipediaApp r6 = org.jsoup.Jsoup.getInstance()
                java.lang.String r6 = r6.getString(r3)
                r6.getClass()
                r2.<init>(r0, r6)
                android.accounts.AccountManager r6 = accountManager()
                boolean r2 = r6.addAccountExplicitly(r2, r1, r4)
            L56:
                if (r2 == 0) goto Lc7
                r2 = 2
                if (r8 == 0) goto L84
                kotlin.Pair r6 = new kotlin.Pair
                java.lang.String r7 = "authAccount"
                r6.<init>(r7, r0)
                org.wikipedia.WikipediaApp r0 = org.wikipedia.WikipediaApp.instance
                org.wikipedia.WikipediaApp r0 = org.jsoup.Jsoup.getInstance()
                java.lang.String r0 = r0.getString(r3)
                r0.getClass()
                kotlin.Pair r3 = new kotlin.Pair
                java.lang.String r7 = "accountType"
                r3.<init>(r7, r0)
                kotlin.Pair[] r0 = new kotlin.Pair[r2]
                r7 = 0
                r0[r7] = r6
                r0[r5] = r3
                android.os.Bundle r0 = kotlin.text.UStringsKt.bundleOf(r0)
                r8.onResult(r0)
            L84:
                android.accounts.Account r8 = account()
                if (r8 == 0) goto L91
                android.accounts.AccountManager r0 = accountManager()
                r0.setPassword(r8, r1)
            L91:
                java.util.Set r8 = r9.groups
                r8.getClass()
                android.accounts.Account r9 = account()
                if (r9 != 0) goto L9d
                return
            L9d:
                android.accounts.AccountManager r0 = accountManager()
                org.wikipedia.WikipediaApp r1 = org.wikipedia.WikipediaApp.instance
                org.wikipedia.WikipediaApp r1 = org.jsoup.Jsoup.getInstance()
                r3 = 2131887654(0x7f120626, float:1.9409921E38)
                java.lang.String r1 = r1.getString(r3)
                kotlinx.serialization.json.JsonImpl r3 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Exception -> Lbf
                r3.getClass()     // Catch: java.lang.Exception -> Lbf
                kotlinx.serialization.internal.HashSetSerializer r5 = new kotlinx.serialization.internal.HashSetSerializer     // Catch: java.lang.Exception -> Lbf
                kotlinx.serialization.internal.StringSerializer r6 = kotlinx.serialization.internal.StringSerializer.INSTANCE     // Catch: java.lang.Exception -> Lbf
                r5.<init>(r6, r2)     // Catch: java.lang.Exception -> Lbf
                java.lang.String r4 = r3.encodeToString(r5, r8)     // Catch: java.lang.Exception -> Lbf
                goto Lc3
            Lbf:
                r8 = move-exception
                org.wikipedia.util.log.L.w(r8)
            Lc3:
                r0.setUserData(r9, r1, r4)
                return
            Lc7:
                if (r8 == 0) goto Lce
                java.lang.String r9 = ""
                r8.onError(r5, r9)
            Lce:
                java.lang.String r8 = "account creation failure"
                org.wikipedia.util.log.L.d(r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Headers.Companion.updateAccount(android.accounts.AccountAuthenticatorResponse, org.wikipedia.login.LoginResult):void");
        }

        public static void updateDiffTextDecor(SpannableStringBuilder spannableStringBuilder, Context context, boolean z, int i, int i2) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            spannableStringBuilder.setSpan(new BackgroundColorSpan(ColorUtils.setAlphaComponent(Cache.Companion.getThemedColor(context, z ? R.attr.success_color : R.attr.destructive_color), Jsoup.getInstance().currentTheme.isDark() ? 96 : 48)), i, i2, 17);
            spannableStringBuilder.setSpan(new StyleSpan(1), i, i2, 17);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Cache.Companion.getThemedColor(context, R.attr.primary_color)), i, i2, 17);
            if (z) {
                return;
            }
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 17);
        }

        public abstract List clean(String str, List list);

        public static Intent newIntent(Context context) {
            context.getClass();
            return new Intent(context, (Class<?>) NotificationActivity.class);
        }
    }
}
