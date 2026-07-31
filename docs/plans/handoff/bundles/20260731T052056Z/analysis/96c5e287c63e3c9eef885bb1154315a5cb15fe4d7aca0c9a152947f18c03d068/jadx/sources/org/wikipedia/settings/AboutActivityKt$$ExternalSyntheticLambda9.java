package org.wikipedia.settings;

import android.content.Context;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.TextStyle;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Function;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.restbase.RbDefinition$Definition;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.feed.discover.DiscoverModuleKt;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.wikigames.GamesModuleKt;
import org.wikipedia.settings.homefeed.FeedConfigurationState;
import org.wikipedia.util.Resource;
import org.wikipedia.util.StringUtil;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.wiktionary.WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda9 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(int i, int i2, Modifier modifier, Function0 function0, WikiSite wikiSite) {
        this.$r8$classId = 16;
        this.f$0 = modifier;
        this.f$3 = i;
        this.f$1 = wikiSite;
        this.f$2 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                PrefsIoUtil.AboutWikipediaHeader((Modifier) obj5, (String) obj4, (SnackbarHostState) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.ContextMenuColumnBuilder((Modifier) obj5, (ContextMenuColors) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1), this.f$3);
                break;
            case 2:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.ContextMenuColumn((ContextMenuColors) obj4, (Modifier) obj5, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                LazyLayoutKt.m165SkippableItemJVlU9Rs((LazyLayoutItemProvider) obj5, this.f$1, this.f$3, this.f$2, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ((LazySaveableStateHolder) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                ((TextLinkScope) obj5).StyleAnnotation((Object[]) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).intValue();
                DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu((TextContextMenuSession) obj5, (TextContextMenuDataProvider) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                ResultKt.ProvideBasicTextContextMenu((Modifier) obj5, (ProvidableCompositionLocal) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.HandlePopup((OffsetProvider) obj5, (Alignment) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                CardKt.FadeInFadeOutWithScale((SnackbarHostState.SnackbarDataImpl) obj4, (Modifier) obj5, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                LayoutUtilKt.WrappedAnchor((TooltipStateImpl) obj5, (MutableState) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj5).invoke(obj4, obj3, (GapComposer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 12:
                ((Integer) obj2).getClass();
                ((SaveableStateHolderImpl) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case IMAGE_VALUE:
                ((Integer) obj2).intValue();
                TuplesKt.LifecycleStartEffectImpl((LifecycleOwner) obj5, (LifecycleStartStopEffectScope) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj2).getClass();
                ImpactModuleKt.TopCategoriesCard((Modifier) obj5, (List) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 15:
                ((Integer) obj2).getClass();
                DonationReminderScreenKt.DonationReminderAppBar((Modifier) obj5, (Function0) obj4, (List) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                ((Integer) obj2).getClass();
                DiscoverModuleKt.SeeAllRecommendationsSlide((Modifier) obj5, this.f$3, (WikiSite) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ((Integer) obj2).getClass();
                GamesModuleKt.GameEventCard((Modifier) obj5, (OnThisDay.Event) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case RADIO_GROUP_VALUE:
                ((Integer) obj2).getClass();
                PrefsIoUtil.LicenseTextWithHeader((Modifier) obj5, (String) obj4, (List) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case RADIO_BUTTON_VALUE:
                ((Integer) obj2).intValue();
                Okio__OkioKt.FeedConfigurationContent((FeedConfigurationState) obj5, (Function0) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case RADIO_ROW_VALUE:
                ((Integer) obj2).getClass();
                StreakProgressBarKt.WidgetIconButton((String) obj4, (RunCallbackAction) obj5, this.f$3, (GlanceModifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case RADIO_COLUMN_VALUE:
                ((Integer) obj2).getClass();
                Jsoup.WiktionaryDialogContent((String) obj4, (Resource) obj5, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case SIZE_BOX_VALUE:
                RbDefinition$Definition rbDefinition$Definition = (RbDefinition$Definition) obj5;
                Context context = (Context) obj4;
                Function1 function1 = (Function1) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    String str = i2 + ". " + StringUtil.removeStyleTags(rbDefinition$Definition.definition);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 4.0f, 1);
                    TextStyle textStyle = new TextStyle(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, ContextsKt.getSp(14), null, null, 0L, 0, 0L, 16777212);
                    boolean changedInstance = gapComposer.changedInstance(context) | gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WiktionaryDialogScreenKt$$ExternalSyntheticLambda6(context, function1, 1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    TabsBoxKt.m897HtmlTextKiACRJU(str, m134paddingVpY3zN4$default, null, textStyle, 0L, 0, 0, 0L, (LinkInteractionListener) rememberedValue, null, 0, gapComposer, 48, 3828);
                    break;
                }
            case 23:
                ((Integer) obj2).getClass();
                ((YearInReviewScreenData.CustomIconScreen) obj5).BottomButton((Context) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                YearInReviewDialog.CreateScreenShotBitmap((YearInReviewScreenData) obj5, (Function2) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(int i, RbDefinition$Definition rbDefinition$Definition, Context context, Function1 function1) {
        this.$r8$classId = 22;
        this.f$3 = i;
        this.f$0 = rbDefinition$Definition;
        this.f$1 = context;
        this.f$2 = function1;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, int i2) {
        this.$r8$classId = 3;
        this.f$0 = lazyLayoutItemProvider;
        this.f$1 = obj;
        this.f$3 = i;
        this.f$2 = obj2;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, int i, int i2) {
        this.$r8$classId = 1;
        this.f$0 = modifier;
        this.f$1 = contextMenuColors;
        this.f$2 = function1;
        this.f$3 = i2;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = i;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(Object obj, Object obj2, Function function, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$0 = obj2;
        this.f$2 = function;
        this.f$3 = i;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda9(String str, RunCallbackAction runCallbackAction, int i, GlanceModifier glanceModifier, int i2) {
        this.$r8$classId = 20;
        this.f$1 = str;
        this.f$0 = runCallbackAction;
        this.f$3 = i;
        this.f$2 = glanceModifier;
    }
}
