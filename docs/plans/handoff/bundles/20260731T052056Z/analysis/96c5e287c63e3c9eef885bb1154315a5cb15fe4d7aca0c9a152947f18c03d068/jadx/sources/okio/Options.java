package okio;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.location.Location;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda5;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TextFieldDefaults$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.LoadedFontFamily;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda3;
import coil3.RealImageLoader$execute$2;
import coil3.compose.AsyncImageKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import com.hcaptcha.sdk.HCaptchaException;
import j$.time.Duration;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.wikipedia.R;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda8;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.extensions.HtmlKt$WhenMappings;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.createaccount.CreateAccountException;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda0;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.search.HybridSearchViewsKt$$ExternalSyntheticLambda3;
import org.wikipedia.settings.homefeed.ForYouModuleType;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.watchlist.WatchlistExpiry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Options extends AbstractList implements RandomAccess {
    public final ByteString[] byteStrings;
    public final int[] trie;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        public static final void ForYouModulesScreen(ModulesViewModel modulesViewModel, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
            ModulesViewModel modulesViewModel2;
            int i2;
            ModulesViewModel modulesViewModel3;
            Context context;
            ModulesViewModel modulesViewModel4;
            Context context2;
            Object obj;
            MutableState mutableState;
            GapComposer gapComposer2;
            GapComposer gapComposer3 = gapComposer;
            function0.getClass();
            function02.getClass();
            gapComposer3.startRestartGroup(1599079538);
            int i3 = i | 2 | (gapComposer3.changedInstance(function0) ? 32 : 16) | (gapComposer3.changedInstance(function02) ? 256 : 128);
            int i4 = 0;
            if (gapComposer3.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                gapComposer3.startDefaults();
                if ((i & 1) == 0 || gapComposer3.getDefaultsInvalid()) {
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer3);
                    if (current == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return;
                    } else {
                        i2 = i3 & (-15);
                        modulesViewModel3 = (ModulesViewModel) UnsignedKt.viewModel(Reflection.factory.getOrCreateKotlinClass(ModulesViewModel.class), current, null, ViewModelKt.getViewModelCreationExtras(current), gapComposer3);
                    }
                } else {
                    gapComposer3.skipToGroupEnd();
                    i2 = i3 & (-15);
                    modulesViewModel3 = modulesViewModel;
                }
                gapComposer3.endDefaults();
                Context context3 = (Context) gapComposer3.consume(AndroidCompositionLocals_androidKt.LocalContext);
                MutableState collectAsState = Updater.collectAsState(modulesViewModel3.hiddenModules, gapComposer3);
                Object rememberedValue = gapComposer3.rememberedValue();
                Object obj2 = Composer$Companion.Empty;
                if (rememberedValue == obj2) {
                    rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                    gapComposer3.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState2 = (MutableState) rememberedValue;
                Object rememberedValue2 = gapComposer3.rememberedValue();
                if (rememberedValue2 == obj2) {
                    rememberedValue2 = Updater.mutableStateOf$default("");
                    gapComposer3.updateRememberedValue(rememberedValue2);
                }
                MutableState mutableState3 = (MutableState) rememberedValue2;
                Set set = (Set) collectAsState.getValue();
                if (set == null) {
                    gapComposer3.startReplaceGroup(-1598298130);
                    gapComposer3.end(false);
                    obj = obj2;
                    gapComposer2 = gapComposer3;
                    context2 = context3;
                    mutableState = mutableState2;
                    modulesViewModel4 = modulesViewModel3;
                } else {
                    gapComposer3.startReplaceGroup(-1598298129);
                    String stringResource = UtilsKt.stringResource(R.string.explore_feed_for_you_tab_label, gapComposer3);
                    String stringResource2 = UtilsKt.stringResource(R.string.home_feed_settings_for_you_modules_description, gapComposer3);
                    ForYouModuleType.Companion.getClass();
                    boolean z = true;
                    ArrayList entries = ForYouModuleType.Companion.entries();
                    boolean changedInstance = gapComposer3.changedInstance(context3) | gapComposer3.changedInstance(modulesViewModel3);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue3 == obj2) {
                        ModulesViewModel modulesViewModel5 = modulesViewModel3;
                        rememberedValue3 = new ForYouModulesScreenKt$$ExternalSyntheticLambda0(context3, modulesViewModel5, mutableState3, mutableState2, 0);
                        context = context3;
                        modulesViewModel4 = modulesViewModel5;
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    } else {
                        modulesViewModel4 = modulesViewModel3;
                        context = context3;
                    }
                    Function2 function2 = (Function2) rememberedValue3;
                    if ((i2 & 112) != 32) {
                        z = false;
                    }
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (z || rememberedValue4 == obj2) {
                        rememberedValue4 = new RoomDatabase$$ExternalSyntheticLambda3(5, function0);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    int i5 = 3670016 & (i2 << 12);
                    context2 = context;
                    obj = obj2;
                    mutableState = mutableState2;
                    TabsBoxKt.ToggleListScreen(stringResource, stringResource2, entries, set, function2, (Function1) rememberedValue4, function02, gapComposer3, i5, 0);
                    gapComposer2 = gapComposer3;
                    gapComposer2.end(false);
                }
                if (((Boolean) mutableState.getValue()).booleanValue()) {
                    gapComposer2.startReplaceGroup(-1597132095);
                    String stringResource3 = UtilsKt.stringResource(R.string.home_feed_settings_for_you_empty_dialog_title, gapComposer2);
                    String stringResource4 = UtilsKt.stringResource(R.string.home_feed_settings_empty_dialog_text, gapComposer2);
                    String stringResource5 = UtilsKt.stringResource(R.string.home_feed_settings_empty_dialog_positive, gapComposer2);
                    String stringResource6 = UtilsKt.stringResource(android.R.string.cancel, gapComposer2);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (rememberedValue5 == obj) {
                        rememberedValue5 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 10);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changedInstance2 = gapComposer2.changedInstance(context2);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue6 == obj) {
                        rememberedValue6 = new ForYouModulesScreenKt$$ExternalSyntheticLambda3(context2, mutableState, i4);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Function0 function04 = (Function0) rememberedValue6;
                    boolean changedInstance3 = gapComposer2.changedInstance(context2) | gapComposer2.changedInstance(modulesViewModel4);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue7 == obj) {
                        ModulesViewModel modulesViewModel6 = modulesViewModel4;
                        ForYouModulesScreenKt$$ExternalSyntheticLambda4 forYouModulesScreenKt$$ExternalSyntheticLambda4 = new ForYouModulesScreenKt$$ExternalSyntheticLambda4(context2, modulesViewModel6, mutableState, mutableState3, 0);
                        modulesViewModel2 = modulesViewModel6;
                        gapComposer2.updateRememberedValue(forYouModulesScreenKt$$ExternalSyntheticLambda4);
                        rememberedValue7 = forYouModulesScreenKt$$ExternalSyntheticLambda4;
                    } else {
                        modulesViewModel2 = modulesViewModel4;
                    }
                    TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource3, null, 0, stringResource4, null, 0, null, stringResource5, 0L, stringResource6, 0L, function03, function04, (Function0) rememberedValue7, gapComposer, 0, 384, 2797);
                    gapComposer3 = gapComposer;
                    gapComposer3.end(false);
                } else {
                    gapComposer3 = gapComposer2;
                    modulesViewModel2 = modulesViewModel4;
                    gapComposer3.startReplaceGroup(-1596195120);
                    gapComposer3.end(false);
                }
            } else {
                gapComposer3.skipToGroupEnd();
                modulesViewModel2 = modulesViewModel;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modulesViewModel2, function0, function02, i, 23);
            }
        }

        public static final void OnThisDayGameCardCompleted(Modifier modifier, boolean z, OnThisDayCardGameState.Completed completed, String str, Function0 function0, Function0 function02, Function0 function03, Function0 function04, GapComposer gapComposer, int i) {
            Modifier modifier2;
            int i2;
            Function0 function05;
            completed.getClass();
            function0.getClass();
            function02.getClass();
            function03.getClass();
            function04.getClass();
            gapComposer.startRestartGroup(1046104696);
            if ((i & 6) == 0) {
                modifier2 = modifier;
                i2 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
            } else {
                modifier2 = modifier;
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changed(z) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(completed) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer.changed(str) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                i2 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
            }
            if ((196608 & i) == 0) {
                i2 |= gapComposer.changedInstance(function02) ? 131072 : 65536;
            }
            if ((1572864 & i) == 0) {
                function05 = function03;
                i2 |= gapComposer.changedInstance(function05) ? 1048576 : 524288;
            } else {
                function05 = function03;
            }
            if ((12582912 & i) == 0) {
                i2 |= gapComposer.changedInstance(function04) ? 8388608 : 4194304;
            }
            if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
                TabsBoxKt.m902WikiCardjfnsLPA(modifier2, 2.0f, null, ImageKt.m45BorderStrokecXLIe8U(0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-277494171, new ChipKt$$ExternalSyntheticLambda5(z, function0, str, completed, function04, function02, function05, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)), gapComposer), gapComposer, (i2 & 14) | 1572912, 52);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(modifier, z, completed, str, function0, function02, function03, function04, i);
            }
        }

        public static final void OnThisDayGameCardPreview(Modifier modifier, OnThisDayCardGameState.Preview preview, String str, Function0 function0, GapComposer gapComposer, int i) {
            Modifier modifier2;
            int i2;
            preview.getClass();
            function0.getClass();
            gapComposer.startRestartGroup(54064080);
            if ((i & 6) == 0) {
                modifier2 = modifier;
                i2 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
            } else {
                modifier2 = modifier;
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changedInstance(preview) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changed(str) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
            }
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                TabsBoxKt.m902WikiCardjfnsLPA(modifier2, 2.0f, null, ImageKt.m45BorderStrokecXLIe8U(0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-99026947, new RandomScreenKt$$ExternalSyntheticLambda1((Object) preview, (Object) str, function0, gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), 8), gapComposer), gapComposer, (i2 & 14) | 1572912, 52);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, preview, str, function0, i);
            }
        }

        public static final void OnThisDayGameCardProgress(Modifier modifier, boolean z, OnThisDayCardGameState.InProgress inProgress, String str, Function0 function0, GapComposer gapComposer, int i) {
            Modifier modifier2;
            int i2;
            inProgress.getClass();
            function0.getClass();
            gapComposer.startRestartGroup(900249523);
            if ((i & 6) == 0) {
                modifier2 = modifier;
                i2 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
            } else {
                modifier2 = modifier;
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changed(z) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(inProgress) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer.changed(str) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                i2 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
            }
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
                TabsBoxKt.m902WikiCardjfnsLPA(modifier2, 2.0f, null, ImageKt.m45BorderStrokecXLIe8U(0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-710221728, new TextFieldDefaults$$ExternalSyntheticLambda1(z, function0, str, inProgress, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)), gapComposer), gapComposer, (i2 & 14) | 1572912, 52);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new TooltipKt$$ExternalSyntheticLambda1(modifier, z, inProgress, str, function0, i);
            }
        }

        /* renamed from: OnThisDayGameCardSimple-T042LqI, reason: not valid java name */
        public static final void m884OnThisDayGameCardSimpleT042LqI(Modifier modifier, int i, long j, String str, Function0 function0, GapComposer gapComposer, int i2) {
            Modifier modifier2;
            int i3;
            str.getClass();
            function0.getClass();
            gapComposer.startRestartGroup(-1415318782);
            if ((i2 & 6) == 0) {
                modifier2 = modifier;
                i3 = (gapComposer.changed(modifier2) ? 4 : 2) | i2;
            } else {
                modifier2 = modifier;
                i3 = i2;
            }
            if ((i2 & 48) == 0) {
                i3 |= gapComposer.changed(i) ? 32 : 16;
            }
            if ((i2 & 384) == 0) {
                i3 |= gapComposer.changed(j) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                i3 |= gapComposer.changed(str) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                i3 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
            }
            if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
                TabsBoxKt.m902WikiCardjfnsLPA(modifier2, 2.0f, null, ImageKt.m45BorderStrokecXLIe8U(0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-1866173323, new OnThisDayGameKt$$ExternalSyntheticLambda0(function0, i, j, str), gapComposer), gapComposer, (i3 & 14) | 1572912, 52);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new IconKt$$ExternalSyntheticLambda1(modifier, i, j, str, function0, i2);
            }
        }

        public static final void OnThisDayGameCountdown(OnThisDayCardGameState.Completed completed, boolean z, Function0 function0, GapComposer gapComposer, int i) {
            String stringResource;
            completed.getClass();
            int i2 = completed.totalQuestions;
            int i3 = completed.score;
            function0.getClass();
            gapComposer.startRestartGroup(726569766);
            int i4 = i | (gapComposer.changedInstance(completed) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
            if (gapComposer.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer$Companion.Empty) {
                    LocalDateTime now = LocalDateTime.now();
                    Duration between = Duration.between(now, LocalDateTime.of(now.toLocalDate().plusDays(1L), LocalTime.MIDNIGHT));
                    between.getClass();
                    rememberedValue = Updater.mutableStateOf$default(between);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, new RealImageLoader$execute$2(ref$BooleanRef, function0, mutableState, null, 14));
                if (z) {
                    gapComposer.startReplaceGroup(-1394566566);
                    stringResource = UtilsKt.stringResource(R.string.on_this_day_game_explore_feed_card_score_short_message, new Object[]{Integer.valueOf(i3), Integer.valueOf(i2)}, gapComposer);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1394425175);
                    stringResource = UtilsKt.stringResource(R.string.on_this_day_game_explore_feed_card_score_message, new Object[]{Integer.valueOf(i3), Integer.valueOf(i2), String.format(((Locale) gapComposer.consume(CompositionLocalsKt.LocalLocale)).platformLocale, "%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(((Duration) mutableState.getValue()).toHoursPart()), Integer.valueOf(((Duration) mutableState.getValue()).toMinutesPart()), Integer.valueOf(((Duration) mutableState.getValue()).toSecondsPart())}, 3))}, gapComposer);
                    gapComposer.end(false);
                }
                TextKt.m308TextNvy7gAk(stringResource, Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(0), ContextsKt.getSp(24), null, 16646015), gapComposer, 48, 0, 131064);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new SettingsKt$$ExternalSyntheticLambda8(completed, z, function0, i);
            }
        }

        public static final void OnThisDayGameFirstEventView(Modifier modifier, OnThisDay.Event event, GapComposer gapComposer, int i) {
            Object obj;
            GapComposer gapComposer2 = gapComposer;
            event.getClass();
            gapComposer2.startRestartGroup(-1859467128);
            int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changedInstance(event) ? 32 : 16);
            if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
                Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(modifier, 16.0f);
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                long j = gapComposer2.compositeKeyHashCode;
                int i3 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                TextKt.m308TextNvy7gAk(event.text, ViewSizeResolver$CC.m(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 3, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(0), ContextsKt.getSp(24), null, 16646015), gapComposer, 0, 24960, 110584);
                gapComposer2 = gapComposer;
                Iterator it = event.pages.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    String thumbnailUrl = ((PageSummary) obj).getThumbnailUrl();
                    if (thumbnailUrl != null && thumbnailUrl.length() != 0) {
                        break;
                    }
                }
                PageSummary pageSummary = (PageSummary) obj;
                String thumbnailUrl2 = pageSummary != null ? pageSummary.getThumbnailUrl() : null;
                if (thumbnailUrl2 == null) {
                    gapComposer2.startReplaceGroup(1133194744);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1133194745);
                    Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                    Boolean bool = Boolean.FALSE;
                    context.getClass();
                    AsyncImageKt.m774AsyncImagex1rPTaM(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, thumbnailUrl2, bool, bool, null, null).build() : null, null, ClipKt.clip(SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 72.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), null, new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer2, 32816, 6, 31720);
                    gapComposer2.end(false);
                }
                gapComposer2.end(true);
            } else {
                gapComposer2.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(modifier, event, i, 3);
            }
        }

        public static final void WatchlistExpiryDialogView(Modifier modifier, List list, WatchlistExpiry watchlistExpiry, Function1 function1, GapComposer gapComposer, int i) {
            GapComposer gapComposer2 = gapComposer;
            list.getClass();
            watchlistExpiry.getClass();
            function1.getClass();
            gapComposer2.startRestartGroup(1931479759);
            int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changedInstance(list) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 2048 : 1024);
            if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = Updater.mutableStateOf$default(watchlistExpiry);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                long j = gapComposer2.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i3);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(ImageKt.m46backgroundbw27NRU(fillMaxWidth, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, ColorKt.RectangleShape), 48.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j2 = gapComposer2.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                int i5 = 1;
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.watchlist_expiry_dialog_title, gapComposer2), BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.CenterStart), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer, 0, 0, 131064);
                gapComposer2 = gapComposer;
                gapComposer2.end(true);
                boolean changedInstance = gapComposer2.changedInstance(list) | ((i2 & 7168) == 2048);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new HybridSearchViewsKt$$ExternalSyntheticLambda3(list, function1, mutableState, i5);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                ExceptionsKt.LazyColumn(null, null, null, null, null, null, false, null, (Function1) rememberedValue2, gapComposer2, 0, 511);
                gapComposer2.end(true);
            } else {
                gapComposer2.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1((Object) modifier, (Object) list, (Object) watchlistExpiry, function1, i, 17);
            }
        }

        public static void buildTrieRecursive(long j, Buffer buffer, int i, ArrayList arrayList, int i2, int i3, ArrayList arrayList2) {
            int i4;
            int i5;
            ArrayList arrayList3;
            long j2;
            int i6;
            int i7 = i;
            ArrayList arrayList4 = arrayList;
            ArrayList arrayList5 = arrayList2;
            if (i2 >= i3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return;
            }
            for (int i8 = i2; i8 < i3; i8++) {
                if (((ByteString) arrayList4.get(i8)).getSize$okio() < i7) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                    return;
                }
            }
            ByteString byteString = (ByteString) arrayList.get(i2);
            ByteString byteString2 = (ByteString) arrayList4.get(i3 - 1);
            if (i7 == byteString.getSize$okio()) {
                int intValue = ((Number) arrayList5.get(i2)).intValue();
                int i9 = i2 + 1;
                ByteString byteString3 = (ByteString) arrayList4.get(i9);
                i4 = i9;
                i5 = intValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.internalGet$okio(i7) == byteString2.internalGet$okio(i7)) {
                int min = Math.min(byteString.getSize$okio(), byteString2.getSize$okio());
                int i10 = 0;
                for (int i11 = i7; i11 < min && byteString.internalGet$okio(i11) == byteString2.internalGet$okio(i11); i11++) {
                    i10++;
                }
                long j3 = (buffer.size / 4) + j + 2 + i10 + 1;
                buffer.writeInt(-i10);
                buffer.writeInt(i5);
                int i12 = i7 + i10;
                while (i7 < i12) {
                    buffer.writeInt(byteString.internalGet$okio(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i12 == ((ByteString) arrayList4.get(i4)).getSize$okio()) {
                        buffer.writeInt(((Number) arrayList5.get(i4)).intValue());
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
                        return;
                    }
                }
                Buffer buffer2 = new Buffer();
                buffer.writeInt(((int) ((buffer2.size / 4) + j3)) * (-1));
                buildTrieRecursive(j3, buffer2, i12, arrayList4, i4, i3, arrayList5);
                buffer.writeAll(buffer2);
                return;
            }
            int i13 = 1;
            for (int i14 = i4 + 1; i14 < i3; i14++) {
                if (((ByteString) arrayList4.get(i14 - 1)).internalGet$okio(i7) != ((ByteString) arrayList4.get(i14)).internalGet$okio(i7)) {
                    i13++;
                }
            }
            long j4 = (buffer.size / 4) + j + 2 + (i13 * 2);
            buffer.writeInt(i13);
            buffer.writeInt(i5);
            for (int i15 = i4; i15 < i3; i15++) {
                int internalGet$okio = ((ByteString) arrayList4.get(i15)).internalGet$okio(i7);
                if (i15 == i4 || internalGet$okio != ((ByteString) arrayList4.get(i15 - 1)).internalGet$okio(i7)) {
                    buffer.writeInt(internalGet$okio & 255);
                }
            }
            Buffer buffer3 = new Buffer();
            int i16 = i4;
            while (i16 < i3) {
                byte internalGet$okio2 = ((ByteString) arrayList4.get(i16)).internalGet$okio(i7);
                int i17 = i16 + 1;
                int i18 = i17;
                while (true) {
                    if (i18 >= i3) {
                        i18 = i3;
                        break;
                    } else if (internalGet$okio2 != ((ByteString) arrayList4.get(i18)).internalGet$okio(i7)) {
                        break;
                    } else {
                        i18++;
                    }
                }
                if (i17 == i18 && i7 + 1 == ((ByteString) arrayList4.get(i16)).getSize$okio()) {
                    buffer.writeInt(((Number) arrayList5.get(i16)).intValue());
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                } else {
                    buffer.writeInt(((int) ((buffer3.size / 4) + j4)) * (-1));
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                    buildTrieRecursive(j2, buffer3, i7 + 1, arrayList, i16, i6, arrayList3);
                    arrayList4 = arrayList;
                }
                j4 = j2;
                i16 = i6;
                arrayList5 = arrayList3;
            }
            buffer.writeAll(buffer3);
        }

        public static Location calculateCentroid(List list) {
            if (list.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot calculate centroid of empty list");
                return null;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (true) {
                double d = 0.0d;
                if (!it.hasNext()) {
                    break;
                }
                Double d2 = ((HistoryEntryWithImage) it.next()).geoLat;
                if (d2 != null) {
                    d = d2.doubleValue();
                }
                arrayList.add(Double.valueOf(d));
            }
            double averageOfDouble = CollectionsKt.averageOfDouble(arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Double d3 = ((HistoryEntryWithImage) it2.next()).geoLon;
                arrayList2.add(Double.valueOf(d3 != null ? d3.doubleValue() : 0.0d));
            }
            double averageOfDouble2 = CollectionsKt.averageOfDouble(arrayList2);
            Location location = new Location("centroid");
            location.setLatitude(averageOfDouble);
            location.setLongitude(averageOfDouble2);
            return location;
        }

        public static ArrayList clusterLocations(List list) {
            ArrayList arrayList = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                HistoryEntryWithImage historyEntryWithImage = (HistoryEntryWithImage) it.next();
                if (!linkedHashSet.contains(historyEntryWithImage)) {
                    linkedHashSet.add(historyEntryWithImage);
                    ArrayList neighbors = getNeighbors(historyEntryWithImage, list);
                    if (neighbors.size() < 3) {
                        linkedHashSet2.add(historyEntryWithImage);
                    } else {
                        int i2 = i + 1;
                        ArrayList arrayList2 = new ArrayList();
                        GeoUtil.Cluster cluster = new GeoUtil.Cluster(i, arrayList2, null);
                        arrayList2.add(historyEntryWithImage);
                        for (int i3 = 0; i3 < neighbors.size(); i3++) {
                            HistoryEntryWithImage historyEntryWithImage2 = (HistoryEntryWithImage) neighbors.get(i3);
                            if (!linkedHashSet.contains(historyEntryWithImage2)) {
                                linkedHashSet.add(historyEntryWithImage2);
                                ArrayList neighbors2 = getNeighbors(historyEntryWithImage2, list);
                                if (neighbors2.size() >= 3) {
                                    ArrayList arrayList3 = new ArrayList();
                                    Iterator it2 = neighbors2.iterator();
                                    while (it2.hasNext()) {
                                        Object next = it2.next();
                                        if (!neighbors.contains((HistoryEntryWithImage) next)) {
                                            arrayList3.add(next);
                                        }
                                    }
                                    neighbors.addAll(arrayList3);
                                }
                            }
                            if (!arrayList2.isEmpty()) {
                                Iterator it3 = arrayList2.iterator();
                                while (it3.hasNext()) {
                                    if (Intrinsics.areEqual((HistoryEntryWithImage) it3.next(), historyEntryWithImage2)) {
                                        break;
                                    }
                                }
                            }
                            arrayList2.add(historyEntryWithImage2);
                        }
                        if (!arrayList2.isEmpty()) {
                            calculateCentroid(arrayList2);
                            arrayList.add(cluster);
                        }
                        i = i2;
                    }
                }
            }
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                GeoUtil.Cluster cluster2 = (GeoUtil.Cluster) it4.next();
                arrayList4.add(new GeoUtil.Cluster(cluster2.id, cluster2.locations, calculateCentroid(cluster2.locations)));
            }
            return arrayList4;
        }

        public static String generateSessionId() {
            Random random = new Random();
            return Animation.CC.m(String.format("%08x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt())}, 1)), String.format("%08x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt())}, 1)), String.format("%04x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt() & 65535)}, 1)));
        }

        public static final LinkedHashMap getInstrumentActionContext(Throwable th) {
            String message;
            th.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String simpleName = Reflection.factory.getOrCreateKotlinClass(th.getClass()).getSimpleName();
            if (simpleName != null) {
                linkedHashMap.put("class", simpleName);
            }
            if (th instanceof HttpStatusException) {
                linkedHashMap.put("code", String.valueOf(((HttpStatusException) th).code));
            } else if (th instanceof SocketTimeoutException) {
                linkedHashMap.put("code", "timeout");
            } else if ((th instanceof UnknownHostException) || (th instanceof SocketException)) {
                linkedHashMap.put("code", "network_unavailable");
            } else if (th instanceof CreateAccountException) {
                linkedHashMap.put("code", ((CreateAccountException) th).messageCode);
            } else if (th instanceof HCaptchaException) {
                linkedHashMap.put("code", String.valueOf(((HCaptchaException) th).hCaptchaError.getErrorId()));
            } else if (th instanceof MwException) {
                String str = ((MwException) th).error.code;
                if (str == null) {
                    str = "";
                }
                linkedHashMap.put("code", str);
            }
            if (!linkedHashMap.containsKey("code") && (message = th.getMessage()) != null && message.length() != 0) {
                String message2 = th.getMessage();
                linkedHashMap.put("message", StringsKt.take(64, message2 != null ? message2 : ""));
            }
            return linkedHashMap;
        }

        public static ArrayList getNeighbors(HistoryEntryWithImage historyEntryWithImage, List list) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                HistoryEntryWithImage historyEntryWithImage2 = (HistoryEntryWithImage) obj;
                if (!Intrinsics.areEqual(historyEntryWithImage2, historyEntryWithImage)) {
                    Double d = historyEntryWithImage.geoLat;
                    double doubleValue = d != null ? d.doubleValue() : 0.0d;
                    Double d2 = historyEntryWithImage.geoLon;
                    double doubleValue2 = d2 != null ? d2.doubleValue() : 0.0d;
                    Double d3 = historyEntryWithImage2.geoLat;
                    double doubleValue3 = d3 != null ? d3.doubleValue() : 0.0d;
                    Double d4 = historyEntryWithImage2.geoLon;
                    double doubleValue4 = d4 != null ? d4.doubleValue() : 0.0d;
                    double radians = Math.toRadians(doubleValue3 - doubleValue);
                    double pow = (Math.pow(Math.sin(Math.toRadians(doubleValue4 - doubleValue2) / 2.0d), 2.0d) * Math.cos(Math.toRadians(doubleValue3)) * Math.cos(Math.toRadians(doubleValue))) + Math.pow(Math.sin(radians / 2.0d), 2.0d);
                    if (Math.atan2(Math.sqrt(pow), Math.sqrt(1.0d - pow)) * 2.0d * 6371.0d <= 500.0d) {
                        arrayList.add(obj);
                    }
                }
            }
            return new ArrayList(arrayList);
        }

        public static Intent newIntent(Context context, PageTitle pageTitle) {
            pageTitle.getClass();
            Intent putExtra = new Intent(context, (Class<?>) EditHistoryListActivity.class).putExtra("title", pageTitle);
            putExtra.getClass();
            return putExtra;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x00bb, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static okio.Options of(okio.ByteString... r11) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.of(okio.ByteString[]):okio.Options");
        }

        public static final Response stripBody(Response response) {
            response.getClass();
            Response.Builder newBuilder = response.newBuilder();
            ResponseBody responseBody = response.body;
            newBuilder.body = new UnreadableResponseBody(responseBody.contentType(), responseBody.contentLength());
            return newBuilder.build();
        }

        public static final AnnotatedString toAnnotatedString(Spanned spanned, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
            String url;
            FontFamily fontFamily;
            FontFamily fontFamily2;
            AnnotatedString.Builder builder = new AnnotatedString.Builder(spanned.length());
            builder.append((CharSequence) spanned);
            Object[] spans = spanned.getSpans(0, builder.text.length(), Object.class);
            spans.getClass();
            for (Object obj : spans) {
                long TextRange = ParagraphKt.TextRange(spanned.getSpanStart(obj), spanned.getSpanEnd(obj));
                obj.getClass();
                int i = TextRange.$r8$clinit;
                int i2 = (int) (TextRange >> 32);
                int i3 = (int) (TextRange & 4294967295L);
                if (!(obj instanceof AbsoluteSizeSpan)) {
                    boolean z = obj instanceof AlignmentSpan;
                    int i4 = 8;
                    FontFamily fontFamily3 = null;
                    SpanStyle spanStyle = null;
                    fontFamily3 = null;
                    fontFamily3 = null;
                    ArrayList arrayList = builder.annotations;
                    int i5 = 3;
                    if (z) {
                        Layout.Alignment alignment = ((AlignmentSpan) obj).getAlignment();
                        int i6 = alignment == null ? -1 : HtmlKt$WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
                        if (i6 == 1) {
                            i5 = 5;
                        } else if (i6 != 2) {
                            i5 = i6 != 3 ? 0 : 6;
                        }
                        arrayList.add(new AnnotatedString.Builder.MutableRange(new ParagraphStyle(i5, null, 510), i2, i3, i4));
                    } else if (obj instanceof BackgroundColorSpan) {
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, ColorKt.Color(((BackgroundColorSpan) obj).getBackgroundColor()), (TextDecoration) null, (Shadow) null, 63487), i2, i3);
                    } else if (obj instanceof ForegroundColorSpan) {
                        builder.addStyle(new SpanStyle(ColorKt.Color(((ForegroundColorSpan) obj).getForegroundColor()), 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534), i2, i3);
                    } else if (obj instanceof RelativeSizeSpan) {
                        builder.addStyle(new SpanStyle(0L, ContextsKt.pack(((RelativeSizeSpan) obj).getSizeChange(), 8589934592L), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65533), i2, i3);
                    } else if (obj instanceof StrikethroughSpan) {
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.LineThrough, (Shadow) null, 61439), i2, i3);
                    } else if (obj instanceof StyleSpan) {
                        int style = ((StyleSpan) obj).getStyle();
                        if (style == 1) {
                            spanStyle = new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531);
                        } else if (style == 2) {
                            spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, new FontStyle(1), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65527);
                        } else if (style == 3) {
                            spanStyle = new SpanStyle(0L, 0L, FontWeight.Bold, new FontStyle(1), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65523);
                        }
                        if (spanStyle != null) {
                            builder.addStyle(spanStyle, i2, i3);
                        }
                    } else if (obj instanceof SubscriptSpan) {
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(-0.5f), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65279), i2, i3);
                    } else if (obj instanceof SuperscriptSpan) {
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(0.5f), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65279), i2, i3);
                    } else if (obj instanceof TypefaceSpan) {
                        TypefaceSpan typefaceSpan = (TypefaceSpan) obj;
                        String family = typefaceSpan.getFamily();
                        if (Intrinsics.areEqual(family, "cursive")) {
                            fontFamily2 = FontFamily.Cursive;
                        } else if (Intrinsics.areEqual(family, "monospace")) {
                            fontFamily2 = FontFamily.Monospace;
                        } else if (Intrinsics.areEqual(family, "sans-serif")) {
                            fontFamily2 = FontFamily.SansSerif;
                        } else if (Intrinsics.areEqual(family, "serif")) {
                            fontFamily2 = FontFamily.Serif;
                        } else {
                            String family2 = typefaceSpan.getFamily();
                            if (family2 != null && family2.length() != 0) {
                                Typeface create = Typeface.create(family2, 0);
                                Typeface typeface = Typeface.DEFAULT;
                                if (Intrinsics.areEqual(create, typeface) || Intrinsics.areEqual(create, Typeface.create(typeface, 0))) {
                                    create = null;
                                }
                                if (create != null) {
                                    fontFamily3 = new LoadedFontFamily(new HintHandler(10, create));
                                }
                            }
                            fontFamily = fontFamily3;
                            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65503), i2, i3);
                        }
                        fontFamily = fontFamily2;
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65503), i2, i3);
                    } else if (obj instanceof UnderlineSpan) {
                        builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Underline, (Shadow) null, 61439), i2, i3);
                    } else if ((obj instanceof URLSpan) && (url = ((URLSpan) obj).getURL()) != null) {
                        arrayList.add(new AnnotatedString.Builder.MutableRange(new LinkAnnotation.Url(url, textLinkStyles, linkInteractionListener), i2, i3, i4));
                    }
                }
            }
            return builder.toAnnotatedString();
        }
    }

    public Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return super.contains((ByteString) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.byteStrings[i];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.byteStrings.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.lastIndexOf((ByteString) obj);
        }
        return -1;
    }
}
