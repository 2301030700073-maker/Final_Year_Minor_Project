package org.wikipedia.util;

import android.content.Context;
import android.content.Intent;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.room.Room;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda26;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda0;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.page.PageBackStackItem;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.ReadingListTitleDialog$Callback;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsImageTagEditActivity;
import org.wikipedia.util.log.L;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.TextInputDialog;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TabUtil {
    public static String PAGEVIEW_ID;
    public static String SESSION_ID;

    public static final void ComposeLangLinksScreen(Modifier modifier, UiState uiState, Function1 function1, WikiErrorClickEvents wikiErrorClickEvents, Function0 function0, Function1 function12, GapComposer gapComposer, int i) {
        uiState.getClass();
        function1.getClass();
        function0.getClass();
        function12.getClass();
        gapComposer.startRestartGroup(-226213310);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(uiState) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function12) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default("");
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CardKt.m270ScaffoldTvnljyQ(modifier, Expect_jvmKt.rememberComposableLambda(-784773122, new FeedComponentsKt$$ExternalSyntheticLambda5(UtilsKt.stringResource(R.string.langlinks_activity_title, gapComposer), UtilsKt.stringResource(R.string.langlinks_filter_hint, gapComposer), function12, function0, (MutableState) rememberedValue), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-1966068205, new HomeScreenKt$$ExternalSyntheticLambda26(uiState, modifier, function1, wikiErrorClickEvents, UtilsKt.stringResource(R.string.langlinks_no_match, gapComposer), 3), gapComposer), gapComposer, (i2 & 14) | 805306416, 444);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(modifier, uiState, function1, wikiErrorClickEvents, function0, function12, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x029a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void DidYouKnowListItem(org.wikipedia.dataclient.WikiSite r47, java.lang.String r48, kotlin.jvm.functions.Function1 r49, androidx.compose.runtime.internal.ComposableLambdaImpl r50, kotlin.jvm.functions.Function1 r51, androidx.compose.runtime.GapComposer r52, int r53) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.TabUtil.DidYouKnowListItem(org.wikipedia.dataclient.WikiSite, java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int):void");
    }

    public static final void DidYouKnowModule(WikiSite wikiSite, List list, Function0 function0, Function0 function02, Function1 function1, Function0 function03, Function0 function04, ComposableLambdaImpl composableLambdaImpl, Function2 function2, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        list.getClass();
        function02.getClass();
        function1.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(830074338);
        int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function02) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192) | (gapComposer.changedInstance(function03) ? 131072 : 65536) | (gapComposer.changedInstance(function04) ? 1048576 : 524288) | (gapComposer.changedInstance(function2) ? 67108864 : 33554432);
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            int i3 = i2 << 12;
            ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.home_feed_did_you_know_title, R.string.home_feed_did_you_know_subtitle, null, 0L, function0, function02, function04, Expect_jvmKt.rememberComposableLambda(2089671408, new TopReadModuleKt$$ExternalSyntheticLambda0(function03, list, wikiSite, function1, function2, composableLambdaImpl, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)), gapComposer), gapComposer, ((i2 << 6) & 234881024) | ((i2 << 3) & 112) | 805306368 | (3670016 & i3) | (i3 & 29360128), 49);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda3(wikiSite, list, function0, function02, function1, function03, function04, composableLambdaImpl, function2, i);
        }
    }

    public static final void LangLinksItemView(Modifier modifier, String str, String str2, String str3, GapComposer gapComposer, int i) {
        TextStyle textStyle;
        Modifier.Companion companion;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(332621713);
        int i2 = i | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(str2) ? 256 : 128) | (gapComposer2.changed(str3) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle textStyle2 = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).bodyMedium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(textStyle2, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).secondaryColor, 0L, null, null, 0L, ContextsKt.getSp(24), null, 16646142);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.Start, gapComposer2, 6);
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
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            TextKt.m308TextNvy7gAk(str, SizeKt.fillMaxWidth(companion2, 1.0f), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleMedium, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, 0L, FontWeight.Bold, null, 0L, 0L, null, 16777210), gapComposer2, ((i2 >> 3) & 14) | 48, 0, 131068);
            GapComposer gapComposer3 = gapComposer2;
            if (str2 == null || str2.length() == 0) {
                textStyle = m647copyp1EtxEg$default;
                companion = companion2;
                gapComposer3.startReplaceGroup(-132142693);
                gapComposer3.end(false);
            } else {
                gapComposer3.startReplaceGroup(-132317905);
                textStyle = m647copyp1EtxEg$default;
                companion = companion2;
                TextKt.m308TextNvy7gAk(str2, SizeKt.fillMaxWidth(companion2, 1.0f), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, ((i2 >> 6) & 14) | 48, 0, 131068);
                gapComposer3 = gapComposer;
                gapComposer3.end(false);
            }
            GapComposer gapComposer4 = gapComposer3;
            TextKt.m308TextNvy7gAk(str3, SizeKt.fillMaxWidth(companion, 1.0f), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer4, ((i2 >> 9) & 14) | 48, 0, 131068);
            gapComposer2 = gapComposer4;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(i, 9, modifier, str, str2, str3, false);
        }
    }

    public static final void ListHeader(String str, Modifier modifier, TextStyle textStyle, GapComposer gapComposer, int i) {
        TextStyle textStyle2;
        int i2;
        TextStyle m647copyp1EtxEg$default;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(936178169);
        int i3 = i | (gapComposer2.changed(str) ? 4 : 2) | 128;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                i2 = i3 & (-897);
                m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleSmall, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 0L, FontWeight.Bold, null, 0L, ContextsKt.getSp(24), null, 16646138);
            } else {
                gapComposer2.skipToGroupEnd();
                i2 = i3 & (-897);
                m647copyp1EtxEg$default = textStyle;
            }
            gapComposer2.endDefaults();
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.m308TextNvy7gAk(str, BoxScopeInstance.INSTANCE.align(Modifier.Companion.$$INSTANCE, Alignment.Companion.CenterStart), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer2, i2 & 14, 0, 131068);
            gapComposer2 = gapComposer2;
            gapComposer2.end(true);
            textStyle2 = m647copyp1EtxEg$default;
        } else {
            gapComposer2.skipToGroupEnd();
            textStyle2 = textStyle;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LangLinksScreenKt$$ExternalSyntheticLambda6(str, modifier, textStyle2, i, 0);
        }
    }

    public static String generateRandomId() {
        Random random = new Random();
        return Animation.CC.m(String.format("%08x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt())}, 1)), String.format("%08x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt())}, 1)), String.format("%04x", Arrays.copyOf(new Object[]{Integer.valueOf(random.nextInt() & 65535)}, 1)));
    }

    public static String getSessionId() {
        if (SESSION_ID == null) {
            Prefs prefs = Prefs.INSTANCE;
            String string = PrefsIoUtil.getString(R.string.preference_key_event_platform_session_id, null);
            SESSION_ID = string;
            if (string == null) {
                String generateRandomId = generateRandomId();
                SESSION_ID = generateRandomId;
                PrefsIoUtil.setString(R.string.preference_key_event_platform_session_id, generateRandomId);
            }
        }
        String str = SESSION_ID;
        str.getClass();
        return str;
    }

    public static final boolean invalidatesCache(String str) {
        str.getClass();
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    public static final CameraUpdateFactory$CameraPositionUpdate newCameraPosition(CameraPosition cameraPosition) {
        cameraPosition.getClass();
        return new CameraUpdateFactory$CameraPositionUpdate(cameraPosition.target, cameraPosition.bearing, cameraPosition.centerAltitude, cameraPosition.tilt, cameraPosition.roll, cameraPosition.fov, cameraPosition.zoom, cameraPosition.padding);
    }

    public static Intent newIntent(Context context, MwQueryPage mwQueryPage, Constants.InvokeSource invokeSource) {
        String str;
        context.getClass();
        mwQueryPage.getClass();
        invokeSource.getClass();
        Intent intent = new Intent(context, (Class<?>) SuggestedEditsImageTagEditActivity.class);
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(MwQueryPage.Companion.serializer(), mwQueryPage);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        Intent putExtra = intent.putExtra("imageTagPage", str).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        return putExtra;
    }

    public static void openInNewBackgroundTab(HistoryEntry historyEntry) {
        historyEntry.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        ArrayList arrayList = jsoup.tabList;
        Tab tab = jsoup.getTabCount() == 0 ? (Tab) arrayList.get(0) : new Tab();
        if (jsoup.getTabCount() > 0) {
            arrayList.add(0, tab);
            while (arrayList.size() > 100) {
                arrayList.remove(0);
            }
        }
        tab.backStack.add(new PageBackStackItem(historyEntry.getTitle(), historyEntry));
        jsoup.commitTabState();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okhttp3.CacheControl parse(okhttp3.Headers r26) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.TabUtil.parse(okhttp3.Headers):okhttp3.CacheControl");
    }

    public static final boolean permitsRequestBody(String str) {
        str.getClass();
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public static TextInputDialog readingListTitleDialog(AppCompatActivity appCompatActivity, String str, String str2, ArrayList arrayList, ReadingListTitleDialog$Callback readingListTitleDialog$Callback) {
        int i = 0;
        TextInputDialog textInputDialog = new TextInputDialog(appCompatActivity, i, i);
        View inflate = LayoutInflater.from(appCompatActivity).inflate(R.layout.dialog_text_input, (ViewGroup) null, false);
        int i2 = R.id.secondary_text_input;
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.secondary_text_input);
        if (plainPasteEditText != null) {
            i2 = R.id.secondary_text_input_container;
            TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.secondary_text_input_container);
            if (textInputLayout != null) {
                i2 = R.id.text_input;
                PlainPasteEditText plainPasteEditText2 = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.text_input);
                if (plainPasteEditText2 != null) {
                    i2 = R.id.text_input_container;
                    TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.text_input_container);
                    if (textInputLayout2 != null) {
                        LinearLayout linearLayout = (LinearLayout) inflate;
                        textInputDialog.binding = new DefaultSocket(linearLayout, plainPasteEditText, textInputLayout, plainPasteEditText2, textInputLayout2, 14);
                        ((AlertController.AlertParams) textInputDialog.array).mView = linearLayout;
                        textInputLayout2.setErrorEnabled(true);
                        textInputDialog.setPositiveButton(R.string.text_input_dialog_ok_button_text, new PageFragment$$ExternalSyntheticLambda28(18, textInputDialog));
                        textInputDialog.setNegativeButton(R.string.text_input_dialog_cancel_button_text, new TextInputDialog$$ExternalSyntheticLambda2(textInputDialog));
                        plainPasteEditText2.addTextChangedListener(new SearchView.AnonymousClass10(13, textInputDialog));
                        textInputDialog.callback = new DefaultSocket(str, str2, arrayList, readingListTitleDialog$Callback, 27);
                        textInputLayout.setVisibility(0);
                        return textInputDialog;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    public static CreateAccountActivity.ValidateResult validateInput(CharSequence charSequence, String str, String str2, String str3) {
        charSequence.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        return !CreateAccountActivity.USERNAME_PATTERN.matcher(charSequence).matches() ? CreateAccountActivity.ValidateResult.INVALID_USERNAME : str.length() < 8 ? CreateAccountActivity.ValidateResult.PASSWORD_TOO_SHORT : StringsKt__StringsJVMKt.equals(str.toString(), charSequence.toString(), true) ? CreateAccountActivity.ValidateResult.PASSWORD_IS_USERNAME : !Intrinsics.areEqual(str2.toString(), str.toString()) ? CreateAccountActivity.ValidateResult.PASSWORD_MISMATCH : (str3.length() <= 0 || Patterns.EMAIL_ADDRESS.matcher(str3).matches()) ? str3.length() == 0 ? CreateAccountActivity.ValidateResult.NO_EMAIL : CreateAccountActivity.ValidateResult.SUCCESS : CreateAccountActivity.ValidateResult.INVALID_EMAIL;
    }
}
