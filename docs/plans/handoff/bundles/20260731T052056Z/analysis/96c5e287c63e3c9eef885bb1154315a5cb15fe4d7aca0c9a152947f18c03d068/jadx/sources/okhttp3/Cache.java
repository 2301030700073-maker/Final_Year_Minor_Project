package okhttp3;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.util.TypedValue;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.collection.LongSparseArray;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.paging.HintHandler;
import androidx.paging.PagingDataAdapter$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.widget.ViewPager2;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.AndroidSystemCallbacks$ActivityCallbacks;
import coil3.util.AndroidSystemCallbacks$ComponentCallbacks;
import com.caverock.androidsvg.CSSParser;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.tabs.TabLayout;
import j$.util.function.Predicate$CC;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Predicate;
import java.util.logging.Logger;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.TlsVersion;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.Buffer$inputStream$1;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.ForwardingSource;
import okio.JvmSystemFileSystem;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.QueryParser;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.DonorExperienceEvent$DonationRemindersActionData;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.WikiTopAppBarKt$$ExternalSyntheticLambda1;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.donate.CampaignCollection;
import org.wikipedia.edit.EditSectionActivity$$ExternalSyntheticLambda15;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda22;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.talk.UserTalkPopupHelper$$ExternalSyntheticLambda2;
import org.wikipedia.util.FeedbackUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.LanguageScrollView;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Cache implements Closeable, Flushable {
    public final DiskLruCache cache;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        public static boolean PROMPT_LOGIN_TO_SYNC_DIALOG_SHOWING;

        /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x007d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void BaseTheme(org.wikipedia.theme.Theme r16, androidx.compose.runtime.internal.ComposableLambdaImpl r17, androidx.compose.runtime.GapComposer r18, int r19, int r20) {
            /*
                Method dump skipped, instructions count: 213
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cache.Companion.BaseTheme(org.wikipedia.theme.Theme, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
        }

        public static final void DidYouKnowScreen(WikiSite wikiSite, List list, Function0 function0, Function1 function1, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function02, Function3 function3, GapComposer gapComposer, int i) {
            function0.getClass();
            function1.getClass();
            gapComposer.startRestartGroup(1534288253);
            int i2 = 2;
            int i3 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(pageOverflowMenuState) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536) | (gapComposer.changedInstance(function3) ? 1048576 : 524288);
            if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
                CardKt.m270ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(-1573538503, new WikiTopAppBarKt$$ExternalSyntheticLambda1((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), function0, i2), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-617669682, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(list, wikiSite, function1, pageOverflowMenuState, function02, function3, 2), gapComposer), gapComposer, 805306416, 445);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda22(wikiSite, list, function0, function1, pageOverflowMenuState, function02, function3, i);
            }
        }

        public static String appendToAcceptLanguage(String str, String str2, float f) {
            return StringsKt.contains(str, str2, false) ? str : str.length() == 0 ? str2 : String.format(Locale.ROOT, "%s,%s;q=%.1f", Arrays.copyOf(new Object[]{str, str2, Float.valueOf(f)}, 3));
        }

        public static final String formatDuration(long j) {
            String str;
            if (j <= -999500000) {
                str = ((j - 500000000) / 1000000000) + " s ";
            } else if (j <= -999500) {
                str = ((j - 500000) / 1000000) + " ms";
            } else if (j <= 0) {
                str = ((j - 500) / 1000) + " µs";
            } else if (j < 999500) {
                str = ((j + 500) / 1000) + " µs";
            } else if (j < 999500000) {
                str = ((j + 500000) / 1000000) + " ms";
            } else {
                str = ((j + 500000000) / 1000000000) + " s ";
            }
            return String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        }

        public static int getThemedAttributeId(Context context, int i) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue != null) {
                return typedValue.resourceId;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
            return 0;
        }

        public static int getThemedColor(Context context, int i) {
            TypedValue m = ViewSizeResolver$CC.m(context);
            if (!context.getTheme().resolveAttribute(i, m, true)) {
                m = null;
            }
            if (m != null) {
                return m.data;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
            return 0;
        }

        public static ColorStateList getThemedColorStateList(Context context, int i) {
            context.getClass();
            ColorStateList valueOf = ColorStateList.valueOf(getThemedColor(context, i));
            valueOf.getClass();
            return valueOf;
        }

        public static String key(HttpUrl httpUrl) {
            httpUrl.getClass();
            ByteString byteString = ByteString.EMPTY;
            return ByteString.Companion.encodeUtf8(httpUrl.url).digest$okio("MD5").hex();
        }

        public static final void log(Logger logger, Task task, TaskQueue taskQueue, String str) {
            logger.fine(taskQueue.name + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.name);
        }

        public static void logAction(String str, String str2, String str3, String str4) {
            str3.getClass();
            String m = str4 != null ? Animation.CC.m("campaign_id: ", CampaignCollection.getFormattedCampaignId(str4), ", ") : null;
            if (m == null) {
                m = "";
            }
            Prefs prefs = Prefs.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            submit(str, str2, m + "banner_opt_in: " + ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_donation_banner_opt_in), true), str3);
        }

        public static /* synthetic */ void logAction$default(int i, String str, String str2, String str3, String str4) {
            if ((i & 4) != 0) {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                str3 = Jsoup.getInstance().getAppOrSystemLanguageCode();
            }
            if ((i & 8) != 0) {
                str4 = null;
            }
            logAction(str, str2, str3, str4);
        }

        public static void logDonationReminderAction$default(String str, String str2, Boolean bool, String str3, Integer num, Float f, String str4, int i) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
            String str5 = null;
            if ((i & 8) != 0) {
                bool = null;
            }
            if ((i & 16) != 0) {
                str3 = null;
            }
            if ((i & 32) != 0) {
                num = null;
            }
            if ((i & 64) != 0) {
                f = null;
            }
            String str6 = (i & 128) != 0 ? null : str4;
            appOrSystemLanguageCode.getClass();
            DonorExperienceEvent$DonationRemindersActionData donorExperienceEvent$DonationRemindersActionData = new DonorExperienceEvent$DonationRemindersActionData(bool, str3 != null ? CampaignCollection.getFormattedCampaignId(str3) : null, num, f, str6);
            try {
                JsonImpl jsonImpl = JsonUtil.json;
                jsonImpl.getClass();
                str5 = jsonImpl.encodeToString(DonorExperienceEvent$DonationRemindersActionData.Companion.serializer(), donorExperienceEvent$DonationRemindersActionData);
            } catch (Exception e) {
                L.w(e);
            }
            if (str5 == null) {
                str5 = "";
            }
            submit(str, str2, str5, appOrSystemLanguageCode);
        }

        public static Intent newIntent(Context context, Constants.InvokeSource invokeSource) {
            context.getClass();
            invokeSource.getClass();
            Intent putExtra = new Intent(context, (Class<?>) WikipediaLanguagesActivity.class).putExtra("invokeSource", invokeSource);
            putExtra.getClass();
            return putExtra;
        }

        public static void promptEnableSyncDialog(Activity activity) {
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getShowReadingListSyncEnablePrompt() || Prefs.isSuggestedEditsHighestPriorityEnabled()) {
                return;
            }
            WikiGamesEvent.submit$default("impression", "sync_enable_prompt", null, null, null, null, null, null, 508);
            MultipartBody.Builder inflate = MultipartBody.Builder.inflate(activity.getLayoutInflater());
            AppTextView appTextView = (AppTextView) inflate.parts;
            StringUtil stringUtil = StringUtil.INSTANCE;
            appTextView.setText(StringUtil.fromHtml(activity.getString(R.string.reading_list_prompt_turned_sync_on_dialog_text)));
            appTextView.setMovementMethod(new LinkMovementMethodExt(new SearchFragment$$ExternalSyntheticLambda1(3, activity)));
            ((CheckBox) inflate.type).setOnClickListener(new FeedbackUtil$$ExternalSyntheticLambda0(1));
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(activity, 0);
            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
            alertParams.mCancelable = false;
            materialAlertDialogBuilder.setTitle(R.string.reading_list_prompt_turned_sync_on_dialog_title);
            alertParams.mView = (LinearLayout) inflate.boundary;
            materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_prompt_turned_sync_on_dialog_enable_syncing, new TextInputDialog$$ExternalSyntheticLambda2(5));
            materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_prompt_turned_sync_on_dialog_no_thanks, new TextInputDialog$$ExternalSyntheticLambda2(6));
            alertParams.mOnDismissListener = new EditSectionActivity$$ExternalSyntheticLambda15(inflate, 2);
            materialAlertDialogBuilder.show();
        }

        public static void promptLogInToSyncDialog(AppCompatActivity appCompatActivity) {
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getShowReadingListSyncEnablePrompt() || PROMPT_LOGIN_TO_SYNC_DIALOG_SHOWING) {
                return;
            }
            WikiGamesEvent.submit$default("impression", "sync_prompt", null, null, null, null, null, null, 508);
            MultipartBody.Builder inflate = MultipartBody.Builder.inflate(appCompatActivity.getLayoutInflater());
            AppTextView appTextView = (AppTextView) inflate.parts;
            StringUtil stringUtil = StringUtil.INSTANCE;
            appTextView.setText(StringUtil.fromHtml(appCompatActivity.getString(R.string.reading_lists_login_reminder_text_with_link)));
            int i = 4;
            appTextView.setMovementMethod(new LinkMovementMethodExt(new SearchFragment$$ExternalSyntheticLambda1(i, appCompatActivity)));
            ((CheckBox) inflate.type).setOnClickListener(new FeedbackUtil$$ExternalSyntheticLambda0(2));
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
            alertParams.mCancelable = false;
            materialAlertDialogBuilder.setTitle(R.string.reading_list_login_reminder_title);
            alertParams.mView = (LinearLayout) inflate.boundary;
            int i2 = 1;
            materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_preference_login_or_signup_to_enable_sync_dialog_login, new UserTalkPopupHelper$$ExternalSyntheticLambda2(appCompatActivity, i2));
            materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_prompt_turned_sync_on_dialog_no_thanks, new TextInputDialog$$ExternalSyntheticLambda2(i));
            alertParams.mOnDismissListener = new EditSectionActivity$$ExternalSyntheticLambda15(inflate, i2);
            materialAlertDialogBuilder.show();
            PROMPT_LOGIN_TO_SYNC_DIALOG_SHOWING = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x002b, code lost:
        
            if (r6 == 0) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x002e, code lost:
        
            coil3.util.UtilsKt.checkRadix(16);
            r0 = java.lang.Integer.toString(r10, 16);
            r0.getClass();
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0045, code lost:
        
            throw new java.lang.NumberFormatException("Expected a digit or '-' but was 0x".concat(r0));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int readInt$okhttp(okio.RealBufferedSource r12) {
            /*
                java.lang.String r0 = "expected an int but was \""
                okio.Buffer r1 = r12.bufferField     // Catch: java.lang.NumberFormatException -> L80
                r2 = 1
                r12.require(r2)     // Catch: java.lang.NumberFormatException -> L80
                r4 = 0
                r6 = r4
            Lc:
                long r8 = r6 + r2
                boolean r10 = r12.request(r8)     // Catch: java.lang.NumberFormatException -> L80
                if (r10 == 0) goto L46
                byte r10 = r1.getByte(r6)     // Catch: java.lang.NumberFormatException -> L80
                r11 = 48
                if (r10 < r11) goto L20
                r11 = 57
                if (r10 <= r11) goto L29
            L20:
                int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                if (r6 != 0) goto L2b
                r7 = 45
                if (r10 == r7) goto L29
                goto L2b
            L29:
                r6 = r8
                goto Lc
            L2b:
                if (r6 == 0) goto L2e
                goto L46
            L2e:
                java.lang.NumberFormatException r12 = new java.lang.NumberFormatException     // Catch: java.lang.NumberFormatException -> L80
                r0 = 16
                coil3.util.UtilsKt.checkRadix(r0)     // Catch: java.lang.NumberFormatException -> L80
                java.lang.String r0 = java.lang.Integer.toString(r10, r0)     // Catch: java.lang.NumberFormatException -> L80
                r0.getClass()     // Catch: java.lang.NumberFormatException -> L80
                java.lang.String r1 = "Expected a digit or '-' but was 0x"
                java.lang.String r0 = r1.concat(r0)     // Catch: java.lang.NumberFormatException -> L80
                r12.<init>(r0)     // Catch: java.lang.NumberFormatException -> L80
                throw r12     // Catch: java.lang.NumberFormatException -> L80
            L46:
                long r1 = r1.readDecimalLong()     // Catch: java.lang.NumberFormatException -> L80
                r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                java.lang.String r12 = r12.readUtf8LineStrict(r6)     // Catch: java.lang.NumberFormatException -> L80
                int r3 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r3 < 0) goto L66
                r3 = 2147483647(0x7fffffff, double:1.060997895E-314)
                int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r3 > 0) goto L66
                int r3 = r12.length()     // Catch: java.lang.NumberFormatException -> L80
                if (r3 > 0) goto L66
                int r12 = (int) r1     // Catch: java.lang.NumberFormatException -> L80
                return r12
            L66:
                java.io.IOException r3 = new java.io.IOException     // Catch: java.lang.NumberFormatException -> L80
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L80
                r4.<init>(r0)     // Catch: java.lang.NumberFormatException -> L80
                r4.append(r1)     // Catch: java.lang.NumberFormatException -> L80
                r4.append(r12)     // Catch: java.lang.NumberFormatException -> L80
                r12 = 34
                r4.append(r12)     // Catch: java.lang.NumberFormatException -> L80
                java.lang.String r12 = r4.toString()     // Catch: java.lang.NumberFormatException -> L80
                r3.<init>(r12)     // Catch: java.lang.NumberFormatException -> L80
                throw r3     // Catch: java.lang.NumberFormatException -> L80
            L80:
                r12 = move-exception
                java.lang.String r12 = r12.getMessage()
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r12)
                r12 = 0
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cache.Companion.readInt$okhttp(okio.RealBufferedSource):int");
        }

        public static Elements select(String str, final Document document) {
            Stream filter;
            Room.notEmpty(str);
            final Evaluator parse = QueryParser.parse(str);
            if (parse.wantsNodes()) {
                parse.reset();
                final int i = 0;
                filter = NodeUtils.stream(document, Element.class).filter(new Predicate() { // from class: org.jsoup.select.Evaluator$$ExternalSyntheticLambda0
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        int i2 = i;
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        int i2 = i;
                        return Predicate$CC.$default$negate(this);
                    }

                    public /* synthetic */ Predicate or(Predicate predicate) {
                        int i2 = i;
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        int i2 = i;
                        Document document2 = document;
                        Evaluator evaluator = parse;
                        switch (i2) {
                            case 0:
                                return evaluator.matches(document2, (Node) obj);
                            default:
                                return evaluator.matches((Element) document2, (Element) obj);
                        }
                    }
                });
            } else {
                parse.reset();
                final int i2 = 1;
                filter = NodeUtils.stream(document, Element.class).filter(new Predicate() { // from class: org.jsoup.select.Evaluator$$ExternalSyntheticLambda0
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        int i22 = i2;
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        int i22 = i2;
                        return Predicate$CC.$default$negate(this);
                    }

                    public /* synthetic */ Predicate or(Predicate predicate) {
                        int i22 = i2;
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        int i22 = i2;
                        Document document2 = document;
                        Evaluator evaluator = parse;
                        switch (i22) {
                            case 0:
                                return evaluator.matches(document2, (Node) obj);
                            default:
                                return evaluator.matches((Element) document2, (Element) obj);
                        }
                    }
                });
            }
            Elements elements = (Elements) filter.collect(Collectors.toCollection(new Entities$$ExternalSyntheticLambda0(5)));
            parse.reset();
            return elements;
        }

        public static void submit(String str, String str2, String str3, String str4) {
            str4.getClass();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            EventPlatformClient.submit(new AppInteractionEvent(str, str2, str3, ViewSizeResolver$CC.m(), str4, "app_donor_experience"));
        }

        public static Set varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i = 0; i < size; i++) {
                if ("Vary".equalsIgnoreCase(Jsoup.commonName(headers, i))) {
                    String commonValue = Jsoup.commonValue(headers, i);
                    if (treeSet == null) {
                        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                        comparator.getClass();
                        treeSet = new TreeSet(comparator);
                    }
                    Iterator it = StringsKt.split$default(commonValue, new char[]{','}).iterator();
                    while (it.hasNext()) {
                        treeSet.add(StringsKt.trim((String) it.next()).toString());
                    }
                }
            }
            return treeSet == null ? EmptySet.INSTANCE : treeSet;
        }
    }

    public Cache(File file) {
        JvmSystemFileSystem jvmSystemFileSystem = FileSystem.SYSTEM;
        String str = Path.DIRECTORY_SEPARATOR;
        Path path = Path.Companion.get$default(file);
        jvmSystemFileSystem.getClass();
        TaskRunner taskRunner = TaskRunner.INSTANCE;
        taskRunner.getClass();
        this.cache = new DiskLruCache(jvmSystemFileSystem, path, taskRunner);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.cache.close();
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.cache.flush();
    }

    public final void remove$okhttp(Request request) {
        request.getClass();
        DiskLruCache diskLruCache = this.cache;
        String key = Companion.key(request.url);
        synchronized (diskLruCache) {
            key.getClass();
            diskLruCache.initialize();
            diskLruCache.checkNotClosed();
            DiskLruCache.validateKey(key);
            DiskLruCache.Entry entry = (DiskLruCache.Entry) diskLruCache.lruEntries.get(key);
            if (entry == null) {
                return;
            }
            diskLruCache.removeEntry$okhttp(entry);
            if (diskLruCache.size <= diskLruCache.maxSize) {
                diskLruCache.mostRecentTrimFailed = false;
            }
        }
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CacheResponseBody extends ResponseBody {
        public final RealBufferedSource bodySource;
        public final String contentLength;
        public final String contentType;
        public final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = new RealBufferedSource(new AnonymousClass1((Source) snapshot.sources.get(1), this));
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            String str = this.contentLength;
            if (str == null) {
                return -1L;
            }
            byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                Regex regex = MediaType.TYPE_SUBTYPE;
                try {
                    return ReadingListFragment.MultiSelectCallback.get(str);
                } catch (IllegalArgumentException unused) {
                }
            }
            return null;
        }

        @Override // okhttp3.ResponseBody
        public final BufferedSource source() {
            return this.bodySource;
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: okhttp3.Cache$CacheResponseBody$1, reason: invalid class name */
        public final class AnonymousClass1 extends ForwardingSource {
            public final /* synthetic */ int $r8$classId = 1;
            public Object this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(OkHttpCall.ExceptionCatchingResponseBody exceptionCatchingResponseBody, BufferedSource bufferedSource) {
                super(bufferedSource);
                this.this$0 = exceptionCatchingResponseBody;
            }

            @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                switch (this.$r8$classId) {
                    case 0:
                        ((CacheResponseBody) this.this$0).snapshot.close();
                        super.close();
                        break;
                    default:
                        super.close();
                        break;
                }
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer buffer, long j) {
                switch (this.$r8$classId) {
                    case 1:
                        try {
                            return super.read(buffer, j);
                        } catch (Exception e) {
                            this.this$0 = e;
                            throw e;
                        }
                    case 2:
                        try {
                            return super.read(buffer, j);
                        } catch (IOException e2) {
                            ((OkHttpCall.ExceptionCatchingResponseBody) this.this$0).thrownException = e2;
                            throw e2;
                        }
                    default:
                        return super.read(buffer, j);
                }
            }

            public /* synthetic */ AnonymousClass1(Source source) {
                super(source);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Source source, CacheResponseBody cacheResponseBody) {
                super(source);
                this.this$0 = cacheResponseBody;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RealCacheRequest {
        public Object body;
        public Object cacheOut;
        public boolean done;
        public Object editor;
        public Object this$0;

        public RealCacheRequest(TypeBase typeBase, SerializedString serializedString, PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator, JsonSerializer jsonSerializer, boolean z) {
            this.editor = typeBase;
            this.cacheOut = serializedString;
            this.body = propertyBasedObjectIdGenerator;
            this.this$0 = jsonSerializer;
            this.done = z;
        }

        public static RealCacheRequest construct(TypeBase typeBase, PropertyName propertyName, PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator, boolean z) {
            String str = propertyName == null ? null : propertyName._simpleName;
            return new RealCacheRequest(typeBase, str != null ? new SerializedString(str) : null, propertyBasedObjectIdGenerator, null, z);
        }

        public void abort() {
            synchronized (((Cache) this.this$0)) {
                if (this.done) {
                    return;
                }
                this.done = true;
                _UtilCommonKt.closeQuietly((Sink) this.cacheOut);
                try {
                    ((Latch) this.editor).abort();
                } catch (IOException unused) {
                }
            }
        }

        public void attach() {
            final TabLayout tabLayout = (TabLayout) this.editor;
            ViewPager2 viewPager2 = (ViewPager2) this.cacheOut;
            if (this.done) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("TabLayoutMediator is already attached");
                return;
            }
            RecyclerView.Adapter adapter = viewPager2.getAdapter();
            this.this$0 = adapter;
            if (adapter == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("TabLayoutMediator attached before ViewPager2 has an adapter");
                return;
            }
            this.done = true;
            viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback(tabLayout) { // from class: com.google.android.material.tabs.TabLayoutMediator$TabLayoutOnPageChangeCallback
                public final WeakReference tabLayoutRef;
                public int scrollState = 0;
                public int previousScrollState = 0;

                {
                    this.tabLayoutRef = new WeakReference(tabLayout);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void onPageScrollStateChanged(int i) {
                    this.previousScrollState = this.scrollState;
                    this.scrollState = i;
                    TabLayout tabLayout2 = (TabLayout) this.tabLayoutRef.get();
                    if (tabLayout2 != null) {
                        tabLayout2.viewPagerScrollState = this.scrollState;
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void onPageScrolled(int i, float f, int i2) {
                    boolean z;
                    TabLayout tabLayout2 = (TabLayout) this.tabLayoutRef.get();
                    if (tabLayout2 != null) {
                        int i3 = this.scrollState;
                        boolean z2 = true;
                        if (i3 != 2 || this.previousScrollState == 1) {
                            z = true;
                        } else {
                            z = true;
                            z2 = false;
                        }
                        if (i3 == 2 && this.previousScrollState == 0) {
                            z = false;
                        }
                        tabLayout2.setScrollPosition(i, f, z2, z, false);
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void onPageSelected(int i) {
                    TabLayout tabLayout2 = (TabLayout) this.tabLayoutRef.get();
                    if (tabLayout2 == null || tabLayout2.getSelectedTabPosition() == i || i >= tabLayout2.getTabCount()) {
                        return;
                    }
                    int i2 = this.scrollState;
                    tabLayout2.selectTab(tabLayout2.getTabAt(i), i2 == 0 || (i2 == 2 && this.previousScrollState == 0));
                }
            });
            tabLayout.addOnTabSelectedListener(new LanguageScrollView.AnonymousClass1(1, viewPager2));
            ((RecyclerView.Adapter) this.this$0).registerAdapterDataObserver(new PagingDataAdapter$1(4, this));
            populateTabsFromPagerAdapter();
            tabLayout.setScrollPosition(viewPager2.getCurrentItem(), RecyclerView.DECELERATION_RATE, true, true, true);
        }

        public void populateTabsFromPagerAdapter() {
            TabLayout tabLayout = (TabLayout) this.editor;
            tabLayout.removeAllTabs();
            RecyclerView.Adapter adapter = (RecyclerView.Adapter) this.this$0;
            if (adapter != null) {
                int itemCount = adapter.getItemCount();
                for (int i = 0; i < itemCount; i++) {
                    tabLayout.addTab(tabLayout.newTab(), false);
                }
                if (itemCount > 0) {
                    int min = Math.min(((ViewPager2) this.cacheOut).getCurrentItem(), tabLayout.getTabCount() - 1);
                    if (min != tabLayout.getSelectedTabPosition()) {
                        tabLayout.selectTab(tabLayout.getTabAt(min), true);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: process-BIzXfog, reason: not valid java name */
        public int m871processBIzXfog(CardView.AnonymousClass1 anonymousClass1, AndroidComposeView androidComposeView, boolean z) {
            Object[] objArr;
            int i;
            int i2;
            PageViewModel pageViewModel = (PageViewModel) this.cacheOut;
            HitTestResult hitTestResult = (HitTestResult) this.this$0;
            if (this.done) {
                return 0;
            }
            try {
                this.done = true;
                CSSParser produce = ((HintHandler) this.body).produce(anonymousClass1, androidComposeView);
                LongSparseArray longSparseArray = (LongSparseArray) produce.deviceMediaType;
                int size = longSparseArray.size();
                for (int i3 = 0; i3 < size; i3++) {
                    PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.valueAt(i3);
                    if (!pointerInputChange.pressed && !pointerInputChange.previousPressed) {
                    }
                    objArr = false;
                    break;
                }
                objArr = true;
                int size2 = longSparseArray.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.valueAt(i4);
                    if (objArr != false || PointerId.changedToDownIgnoreConsumed(pointerInputChange2)) {
                        ((LayoutNode) this.editor).m549hitTest6fMxITs$ui(pointerInputChange2.position, hitTestResult, pointerInputChange2.type, true);
                        if (!hitTestResult.values.isEmpty()) {
                            pageViewModel.m910addHitPathQJqDSyo(pointerInputChange2.id, hitTestResult, PointerId.changedToDownIgnoreConsumed(pointerInputChange2));
                            hitTestResult.clear();
                        }
                    }
                }
                boolean dispatchChanges = pageViewModel.dispatchChanges(produce, z);
                if (!produce.inMediaRule) {
                    int size3 = longSparseArray.size();
                    for (int i5 = 0; i5 < size3; i5++) {
                        PointerInputChange pointerInputChange3 = (PointerInputChange) longSparseArray.valueAt(i5);
                        if (!Offset.m383equalsimpl0(PointerId.positionChangeInternal(pointerInputChange3, true), 0L) && pointerInputChange3.isConsumed()) {
                            i = 1;
                            break;
                        }
                    }
                }
                i = 0;
                int size4 = longSparseArray.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size4) {
                        i2 = 0;
                        break;
                    }
                    if (((PointerInputChange) longSparseArray.valueAt(i6)).isConsumed()) {
                        i2 = 1;
                        break;
                    }
                    i6++;
                }
                int i7 = (dispatchChanges ? 1 : 0) | (i << 1) | (i2 << 2);
                this.done = false;
                return i7;
            } catch (Throwable th) {
                this.done = false;
                throw th;
            }
        }

        public synchronized void shutdown() {
            try {
                if (this.done) {
                    return;
                }
                this.done = true;
                Context context = (Context) this.this$0;
                if (context != null) {
                    ((AndroidSystemCallbacks$ActivityCallbacks) this.cacheOut).unregister(context);
                    context.unregisterComponentCallbacks((AndroidSystemCallbacks$ComponentCallbacks) this.body);
                }
                ((WeakReference) this.editor).clear();
            } catch (Throwable th) {
                throw th;
            }
        }

        public RealCacheRequest(TabLayout tabLayout, ViewPager2 viewPager2, _UtilJvmKt$$ExternalSyntheticLambda0 _utiljvmkt__externalsyntheticlambda0) {
            this.editor = tabLayout;
            this.cacheOut = viewPager2;
            this.body = _utiljvmkt__externalsyntheticlambda0;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Entry {
        public static final String RECEIVED_MILLIS;
        public static final String SENT_MILLIS;
        public final int code;
        public final Handshake handshake;
        public final String message;
        public final Protocol protocol;
        public final long receivedResponseMillis;
        public final String requestMethod;
        public final Headers responseHeaders;
        public final long sentRequestMillis;
        public final HttpUrl url;
        public final Headers varyHeaders;

        static {
            Platform platform = Platform.platform;
            Platform.platform.getClass();
            SENT_MILLIS = "OkHttp-Sent-Millis";
            Platform.platform.getClass();
            RECEIVED_MILLIS = "OkHttp-Received-Millis";
        }

        public Entry(Source source) {
            HttpUrl httpUrl;
            TlsVersion tlsVersion;
            source.getClass();
            try {
                RealBufferedSource realBufferedSource = new RealBufferedSource(source);
                String readUtf8LineStrict = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
                try {
                    HttpUrl.Builder builder = new HttpUrl.Builder(0);
                    builder.parse$okhttp(null, readUtf8LineStrict);
                    httpUrl = builder.m872build();
                } catch (IllegalArgumentException unused) {
                    httpUrl = null;
                }
                if (httpUrl == null) {
                    IOException iOException = new IOException("Cache corruption for ".concat(readUtf8LineStrict));
                    Platform platform = Platform.platform;
                    Platform.platform.log("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.url = httpUrl;
                this.requestMethod = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
                Headers.Builder builder2 = new Headers.Builder(0, (byte) 0);
                int readInt$okhttp = Companion.readInt$okhttp(realBufferedSource);
                for (int i = 0; i < readInt$okhttp; i++) {
                    builder2.addLenient$okhttp(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
                }
                this.varyHeaders = Jsoup.commonBuild(builder2);
                StatusLine parse = Cookie.Companion.parse(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
                this.protocol = (Protocol) parse.protocol;
                this.code = parse.code;
                this.message = (String) parse.message;
                Headers.Builder builder3 = new Headers.Builder(0, (byte) 0);
                int readInt$okhttp2 = Companion.readInt$okhttp(realBufferedSource);
                for (int i2 = 0; i2 < readInt$okhttp2; i2++) {
                    builder3.addLenient$okhttp(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
                }
                String str = SENT_MILLIS;
                String str2 = builder3.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder3.get(str3);
                builder3.removeAll(str);
                builder3.removeAll(str3);
                this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
                this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
                this.responseHeaders = Jsoup.commonBuild(builder3);
                if (this.url.isHttps()) {
                    String readUtf8LineStrict2 = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
                    if (readUtf8LineStrict2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + readUtf8LineStrict2 + '\"');
                    }
                    CipherSuite forJavaName = CipherSuite.Companion.forJavaName(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
                    List readCertificateList = readCertificateList(realBufferedSource);
                    List readCertificateList2 = readCertificateList(realBufferedSource);
                    if (realBufferedSource.exhausted()) {
                        tlsVersion = TlsVersion.SSL_3_0;
                    } else {
                        TlsVersion.Companion companion = TlsVersion.Companion;
                        String readUtf8LineStrict3 = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
                        companion.getClass();
                        tlsVersion = TlsVersion.Companion.forJavaName(readUtf8LineStrict3);
                    }
                    tlsVersion.getClass();
                    this.handshake = new Handshake(tlsVersion, forJavaName, _UtilJvmKt.toImmutableList(readCertificateList2), new Handshake$Companion$$ExternalSyntheticLambda0(_UtilJvmKt.toImmutableList(readCertificateList), 0));
                } else {
                    this.handshake = null;
                }
                source.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ResultKt.closeFinally(source, th);
                    throw th2;
                }
            }
        }

        public static List readCertificateList(RealBufferedSource realBufferedSource) {
            int readInt$okhttp = Companion.readInt$okhttp(realBufferedSource);
            if (readInt$okhttp == -1) {
                return EmptyList.INSTANCE;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt$okhttp);
                int i = 0;
                for (int i2 = 0; i2 < readInt$okhttp; i2++) {
                    String readUtf8LineStrict = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
                    Buffer buffer = new Buffer();
                    ByteString byteString = ByteString.EMPTY;
                    ByteString decodeBase64 = ByteString.Companion.decodeBase64(readUtf8LineStrict);
                    if (decodeBase64 == null) {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                    buffer.m876write(decodeBase64);
                    arrayList.add(certificateFactory.generateCertificate(new Buffer$inputStream$1(buffer, i)));
                }
                return arrayList;
            } catch (CertificateException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(e.getMessage());
                return null;
            }
        }

        public static void writeCertList(RealBufferedSink realBufferedSink, List list) {
            try {
                realBufferedSink.writeDecimalLong(list.size());
                realBufferedSink.writeByte(10);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    byte[] encoded = ((Certificate) it.next()).getEncoded();
                    ByteString byteString = ByteString.EMPTY;
                    encoded.getClass();
                    realBufferedSink.writeUtf8(ByteString.Companion.of$default(encoded).base64());
                    realBufferedSink.writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(e.getMessage());
            }
        }

        public final void writeTo(Latch latch) {
            HttpUrl httpUrl = this.url;
            Handshake handshake = this.handshake;
            Headers headers = this.responseHeaders;
            Headers headers2 = this.varyHeaders;
            RealBufferedSink realBufferedSink = new RealBufferedSink(latch.newSink(0));
            try {
                realBufferedSink.writeUtf8(httpUrl.url);
                realBufferedSink.writeByte(10);
                realBufferedSink.writeUtf8(this.requestMethod);
                realBufferedSink.writeByte(10);
                realBufferedSink.writeDecimalLong(headers2.size());
                realBufferedSink.writeByte(10);
                int size = headers2.size();
                for (int i = 0; i < size; i++) {
                    realBufferedSink.writeUtf8(Jsoup.commonName(headers2, i));
                    realBufferedSink.writeUtf8(": ");
                    realBufferedSink.writeUtf8(Jsoup.commonValue(headers2, i));
                    realBufferedSink.writeByte(10);
                }
                Protocol protocol = this.protocol;
                int i2 = this.code;
                String str = this.message;
                protocol.getClass();
                str.getClass();
                StringBuilder sb = new StringBuilder();
                if (protocol == Protocol.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(i2);
                sb.append(' ');
                sb.append(str);
                realBufferedSink.writeUtf8(sb.toString());
                realBufferedSink.writeByte(10);
                realBufferedSink.writeDecimalLong(headers.size() + 2);
                realBufferedSink.writeByte(10);
                int size2 = headers.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    realBufferedSink.writeUtf8(Jsoup.commonName(headers, i3));
                    realBufferedSink.writeUtf8(": ");
                    realBufferedSink.writeUtf8(Jsoup.commonValue(headers, i3));
                    realBufferedSink.writeByte(10);
                }
                realBufferedSink.writeUtf8(SENT_MILLIS);
                realBufferedSink.writeUtf8(": ");
                realBufferedSink.writeDecimalLong(this.sentRequestMillis);
                realBufferedSink.writeByte(10);
                realBufferedSink.writeUtf8(RECEIVED_MILLIS);
                realBufferedSink.writeUtf8(": ");
                realBufferedSink.writeDecimalLong(this.receivedResponseMillis);
                realBufferedSink.writeByte(10);
                if (httpUrl.isHttps()) {
                    realBufferedSink.writeByte(10);
                    handshake.getClass();
                    realBufferedSink.writeUtf8(handshake.cipherSuite.javaName);
                    realBufferedSink.writeByte(10);
                    writeCertList(realBufferedSink, handshake.peerCertificates());
                    writeCertList(realBufferedSink, handshake.localCertificates);
                    realBufferedSink.writeUtf8(handshake.tlsVersion.javaName());
                    realBufferedSink.writeByte(10);
                }
                realBufferedSink.close();
            } finally {
            }
        }

        public Entry(Response response) {
            Headers commonBuild;
            Request request = response.request;
            this.url = request.url;
            Response response2 = response.networkResponse;
            response2.getClass();
            Headers headers = response2.request.headers;
            Headers headers2 = response.headers;
            Set varyFields = Companion.varyFields(headers2);
            if (varyFields.isEmpty()) {
                commonBuild = Headers.EMPTY;
            } else {
                Headers.Builder builder = new Headers.Builder(0, (byte) 0);
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String commonName = Jsoup.commonName(headers, i);
                    if (varyFields.contains(commonName)) {
                        builder.add(commonName, Jsoup.commonValue(headers, i));
                    }
                }
                commonBuild = Jsoup.commonBuild(builder);
            }
            this.varyHeaders = commonBuild;
            this.requestMethod = request.method;
            this.protocol = response.protocol;
            this.code = response.code;
            this.message = response.message;
            this.responseHeaders = headers2;
            this.handshake = response.handshake;
            this.sentRequestMillis = response.sentRequestAtMillis;
            this.receivedResponseMillis = response.receivedResponseAtMillis;
        }
    }
}
