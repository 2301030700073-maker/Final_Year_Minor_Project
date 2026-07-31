package org.jsoup.select;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.ViewKt$allViews$1;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.UStringsKt;
import okhttp3.Request;
import okhttp3.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda13;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.readinglist.ReadingListItemActionsDialog;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.views.SearchActionProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NodeTraversor implements ActionMode.Callback {
    public static boolean failedClearing;
    public static Pair groupAndOutChildren;
    public static long startTouchMillis;
    public static float startTouchX;
    public static float startTouchY;
    public static int touchSlopPx;

    public static final void ContinueReadingModule(Modifier modifier, WikiSite wikiSite, ForYouModule.ContinueReading continueReading, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        continueReading.getClass();
        gapComposer.startRestartGroup(1541177183);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(continueReading) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changedInstance(function23) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function12) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ForYouCard forYouCard = (ForYouCard) CollectionsKt.firstOrNull(continueReading.cards);
            String hideKey = forYouCard != null ? forYouCard.getHideKey() : null;
            ForYouCardKt.ForYouModulePager(modifier, continueReading, function1, Expect_jvmKt.rememberComposableLambda(2122210443, new HomeScreenKt$$ExternalSyntheticLambda2(continueReading, wikiSite, Math.abs(hideKey != null ? hideKey.hashCode() : 0), context, function2, function23, function22, function24, function0, function12, 2), gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 18) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(modifier, wikiSite, continueReading, function2, function22, function23, function24, function0, function1, function12, i, 2);
        }
    }

    public static final void HomeFeedSettingsScreen(Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function0 function05, GapComposer gapComposer, int i) {
        Modifier modifier2;
        gapComposer.startRestartGroup(1854787718);
        int i2 = i | 6 | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changedInstance(function03) ? 2048 : 1024) | (gapComposer.changedInstance(function04) ? 16384 : 8192) | (gapComposer.changedInstance(function05) ? 131072 : 65536);
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1121785674, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 8, b), gapComposer);
            long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(2129209237, new OnThisDayGameKt$$ExternalSyntheticLambda13(function05, function03, function02, function04, 4), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(companion, rememberComposableLambda, null, null, null, 0, j, 0L, null, rememberComposableLambda2, gapComposer, 805306422, 444);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(modifier2, function0, function02, function03, function04, function05, i, 5);
        }
    }

    public static void dispatchTouchEvent(Window window, MotionEvent motionEvent) {
        if (touchSlopPx <= 0) {
            touchSlopPx = ViewConfiguration.get(window.getContext()).getScaledTouchSlop();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            startTouchMillis = System.currentTimeMillis();
            startTouchX = motionEvent.getX();
            startTouchY = motionEvent.getY();
            return;
        }
        if (action == 1 || action == 3) {
            long currentTimeMillis = System.currentTimeMillis() - startTouchMillis;
            float abs = Math.abs(startTouchX - motionEvent.getX());
            float abs2 = Math.abs(startTouchY - motionEvent.getY());
            float f = touchSlopPx;
            if (abs > f || abs2 > f) {
                return;
            }
            Point point = new Point((int) startTouchX, (int) startTouchY);
            View decorView = window.getDecorView();
            decorView.getClass();
            int[] iArr = new int[2];
            SequenceBuilderIterator it = UnsignedKt.iterator(new ViewKt$allViews$1(0, decorView, null));
            Object obj = null;
            while (it.hasNext()) {
                Object next = it.next();
                View view = (View) next;
                view.getLocationOnScreen(iArr);
                int i = iArr[0];
                int i2 = iArr[1];
                if (new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2).contains(point.x, point.y) && view.getVisibility() == 0 && view.isEnabled() && view.isClickable()) {
                    obj = next;
                }
            }
            View view2 = (View) obj;
            if (view2 != null) {
                if ((view2 instanceof TextView) && (((TextView) view2).getMovementMethod() instanceof LinkMovementMethodExt)) {
                    return;
                }
                if (currentTimeMillis <= ViewConfiguration.getLongPressTimeout()) {
                    BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                    Context context = window.getContext();
                    context.getClass();
                    companion.getClass();
                    BreadCrumbLogEvent.Companion.logClick(context, view2);
                    return;
                }
                BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                Context context2 = window.getContext();
                context2.getClass();
                companion2.getClass();
                String readableNameForView = WikiGamesEvent.getReadableNameForView(view2);
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(context2, null), readableNameForView + ".longclick"));
            }
        }
    }

    public static String getChannel(Context context) {
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_app_channel, null);
        if (string == null) {
            string = "";
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("org.wikipedia", 128);
                applicationInfo.getClass();
                Bundle bundle = applicationInfo.metaData;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String string2 = Jsoup.getInstance().getResources().getString(R.string.preference_key_app_channel, Arrays.copyOf(new Object[0], 0));
                string2.getClass();
                String string3 = bundle.getString(string2);
                if (string3 != null) {
                    string = string3;
                }
            } catch (Throwable unused) {
            }
            Prefs prefs2 = Prefs.INSTANCE;
            PrefsIoUtil.setString(R.string.preference_key_app_channel, string);
        }
        return string;
    }

    public static WikipediaColor getColors(GapComposer gapComposer) {
        return (WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor);
    }

    public static boolean isCacheable(Response response, Request request) {
        request.getClass();
        int i = response.code;
        if (i != 200 && i != 410 && i != 414 && i != 501 && i != 203 && i != 204) {
            if (i != 307) {
                if (i != 308 && i != 404 && i != 405) {
                    switch (i) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (response.header("Expires", null) == null && response.cacheControl().maxAgeSeconds == -1 && !response.cacheControl().isPublic && !response.cacheControl().isPrivate) {
                return false;
            }
        }
        return (response.cacheControl().noStore || request.cacheControl().noStore) ? false : true;
    }

    public static ReadingListItemActionsDialog newInstance(long j, List list, boolean z) {
        ReadingListItemActionsDialog readingListItemActionsDialog = new ReadingListItemActionsDialog();
        readingListItemActionsDialog.setArguments(UStringsKt.bundleOf(new Pair("readingListName", ((ReadingList) list.get(0)).getTitle()), new Pair("readingListSize", Integer.valueOf(list.size())), new Pair("readingListPage", Long.valueOf(j)), new Pair("hasActionMode", Boolean.valueOf(z))));
        return readingListItemActionsDialog;
    }

    public static void traverse(NodeVisitor nodeVisitor, Node node) {
        Node nextSibling = node.nextSibling();
        boolean z = false;
        int i = 0;
        while (true) {
            if (z) {
                if (!z || node.childNodeSize() <= 0) {
                    nodeVisitor.tail(i, node);
                    Node nextSibling2 = node.nextSibling();
                    if (i == 0) {
                        if (nextSibling2 == null || nextSibling2 == nextSibling) {
                            return;
                        }
                    } else if (nextSibling2 == null) {
                        node = node.parentNode;
                        i--;
                        z = 2;
                    }
                    node = nextSibling2;
                } else {
                    node = node.childNode(0);
                    i++;
                }
                z = false;
            } else {
                Element element = node.parentNode;
                Node nextSibling3 = node.nextSibling();
                int siblingIndex = element != null ? node.siblingIndex() : 0;
                nodeVisitor.head(i, node);
                if (element != null && node.parentNode != element) {
                    node = siblingIndex < element.childNodes.size() ? element.childNode(siblingIndex) : null;
                    Node node2 = i == 0 ? nextSibling : nextSibling3;
                    if (node == null || node == node2) {
                        if (i == 0) {
                            return;
                        }
                        if (nextSibling3 == null || nextSibling3.parentNode != element) {
                            i--;
                            z = 2;
                            node = element;
                        } else {
                            node = nextSibling3;
                        }
                    }
                }
                z = true;
            }
        }
    }

    public static void uncheckedClearStaticPool(Application application) {
        if (failedClearing) {
            return;
        }
        try {
            Pair pair = groupAndOutChildren;
            if (pair == null) {
                FrameLayout frameLayout = new FrameLayout(application);
                for (int i = 0; i < 32; i++) {
                    frameLayout.addView(new View(application));
                }
                Pair pair2 = new Pair(frameLayout, new ArrayList());
                groupAndOutChildren = pair2;
                pair = pair2;
            }
            ((ViewGroup) pair.first).addChildrenForAccessibility((ArrayList) pair.second);
        } catch (Throwable unused) {
            failedClearing = true;
        }
    }

    public abstract Context getParentContext();

    public abstract String getSearchHintString();

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        menuItem.getClass();
        return false;
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.getClass();
        menu.getClass();
        actionMode.mTag = "searchActionMode";
        ExceptionsKt.setActionProvider(menu.add(getSearchHintString()), new SearchActionProvider(getParentContext(), getSearchHintString(), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, this)));
        return true;
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        menu.getClass();
        return true;
    }

    public abstract void onQueryChange(String str);
}
