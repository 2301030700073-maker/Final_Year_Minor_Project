package org.wikipedia.feed;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells$Adaptive;
import androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.BasicTooltipKt$$ExternalSyntheticLambda7;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.ReusableGapRememberObserverHolder;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.Operation$State;
import coil3.ImageLoader$Builder;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.util.UtilsKt;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.categories.db.Category;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda17 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda17(PaddingValues paddingValues, StaggeredGridCells$Adaptive staggeredGridCells$Adaptive, Arrangement$Horizontal arrangement$Horizontal) {
        this.$r8$classId = 7;
        this.f$0 = paddingValues;
        this.f$1 = arrangement$Horizontal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r43v1, types: [java.lang.Throwable] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        TextRange textRange;
        char c;
        String appLanguageLocalizedName;
        int i = this.$r8$classId;
        int i2 = 15;
        int i3 = 10;
        String str = null;
        Modifier modifier = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        int i4 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                TabsState tabsState = (TabsState) obj4;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(modifier, 21.0f), 20.0f);
                    if (tabsState.pulse) {
                        gapComposer.startReplaceGroup(259279833);
                        boolean changed = gapComposer.changed(function0);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new Handshake$$ExternalSyntheticLambda0(15, function0);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        CubicBezierEasing cubicBezierEasing = EasingKt.FastOutSlowInEasing;
                        cubicBezierEasing.getClass();
                        modifier = modifier.then(new ComposedModifier(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(8, cubicBezierEasing, (Function0) rememberedValue)));
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(259646470);
                        gapComposer.end(false);
                    }
                    TabsBoxKt.m900TabsBoxX34t5lA(m140height3ABfNKs.then(modifier), tabsState.count, Color.Transparent, 0L, null, 0L, gapComposer, 384);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                ((ContextMenuScope) obj4).Content$foundation((ContextMenuColors) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 2:
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                return ((MeasurePolicy) obj4).mo15measure3p2s80s(subcomposeMeasureScope, subcomposeMeasureScope.subcompose(unit, new ComposableLambdaImpl(new HomeScreenKt$$ExternalSyntheticLambda17(3, (ComposableLambdaImpl) obj3, new BoxWithConstraintsScopeImpl(subcomposeMeasureScope, constraints.value)), true, -431986394)), constraints.value);
            case 3:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    composableLambdaImpl.invoke((Object) boxWithConstraintsScopeImpl, (Object) gapComposer2, (Object) 0);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 4:
                LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) obj4;
                LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.itemProvider.invoke();
                    int i5 = cachedItemContent.index;
                    Object obj5 = cachedItemContent.key;
                    if ((i5 >= lazyLayoutItemProvider.getItemCount() || !lazyLayoutItemProvider.getKey(i5).equals(obj5)) && (i5 = lazyLayoutItemProvider.getIndex(obj5)) != -1) {
                        cachedItemContent.index = i5;
                    }
                    int i6 = i5;
                    if (i6 != -1) {
                        gapComposer3.startReplaceGroup(-1664741271);
                        LazyLayoutKt.m165SkippableItemJVlU9Rs(lazyLayoutItemProvider, lazyLayoutItemContentFactory.saveableStateHolder, i6, cachedItemContent.key, gapComposer3, 0);
                        gapComposer3.end(false);
                    } else {
                        gapComposer3.startReplaceGroup(-1664505826);
                        gapComposer3.end(false);
                    }
                    boolean changedInstance = gapComposer3.changedInstance(cachedItemContent);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new AppBarKt$$ExternalSyntheticLambda11(13, cachedItemContent);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    Updater.DisposableEffect(obj5, (Function1) rememberedValue2, gapComposer3);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 5:
                return ((LazyLayoutMeasurePolicy) obj3).mo152measure0kLqBqw(new LazyLayoutMeasureScopeImpl((LazyLayoutItemContentFactory) obj4, (SubcomposeMeasureScope) obj), ((Constraints) obj2).value);
            case 6:
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    composableLambdaImpl2.invoke((Object) lazySaveableStateHolder, (Object) gapComposer4, (Object) 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 7:
                PaddingValues paddingValues = (PaddingValues) obj4;
                Arrangement$Horizontal arrangement$Horizontal = (Arrangement$Horizontal) obj3;
                Density density = (Density) obj;
                Constraints constraints2 = (Constraints) obj2;
                if (Constraints.m681getMaxWidthimpl(constraints2.value) == Integer.MAX_VALUE) {
                    InlineClassHelperKt.throwIllegalArgumentException("LazyVerticalStaggeredGrid's width should be bound by parent.");
                }
                LayoutDirection layoutDirection = LayoutDirection.Ltr;
                int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(constraints2.value) - density.mo81roundToPx0680j_4(OffsetKt.calculateEndPadding(paddingValues, layoutDirection) + OffsetKt.calculateStartPadding(paddingValues, layoutDirection));
                int mo81roundToPx0680j_4 = density.mo81roundToPx0680j_4(arrangement$Horizontal.mo110getSpacingD9Ej5fM());
                int max = Math.max((m681getMaxWidthimpl + mo81roundToPx0680j_4) / (density.mo81roundToPx0680j_4(140.0f) + mo81roundToPx0680j_4), 1);
                int i7 = m681getMaxWidthimpl - ((max - 1) * mo81roundToPx0680j_4);
                int i8 = i7 / max;
                int i9 = i7 % max;
                int[] iArr = new int[max];
                int i10 = 0;
                while (i10 < max) {
                    iArr[i10] = i8 < 0 ? 0 : (i10 < i9 ? 1 : 0) + i8;
                    i10++;
                }
                int[] iArr2 = new int[max];
                arrangement$Horizontal.arrange(density, m681getMaxWidthimpl, iArr, LayoutDirection.Ltr, iArr2);
                return new LazyGridSlots(iArr2, iArr);
            case 8:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                ref$FloatRef.element += ((PagerScrollScopeKt$LazyLayoutScrollScope$1) obj3).$$delegate_0.scrollBy(floatValue - ref$FloatRef.element);
                return unit;
            case 9:
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj4;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj3;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    boolean changed2 = gapComposer5.changed(textContextMenuDataProvider);
                    Object rememberedValue3 = gapComposer5.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = SnapshotStateKt__DerivedStateKt.derivedStateOf(new RoomDatabase$closeBarrier$1(0, textContextMenuDataProvider, TextContextMenuDataProvider.class, "data", "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", 0, 2));
                        gapComposer5.updateRememberedValue(rememberedValue3);
                    }
                    DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown(textContextMenuSession, (TextContextMenuData) ((State) rememberedValue3).getValue(), gapComposer5, 0);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 10:
                ((Integer) obj2).getClass();
                DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown((TextContextMenuSession) obj4, (TextContextMenuData) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 11:
                ((Integer) obj2).getClass();
                ((TextContextMenuHelperApi28) obj4).IconBox((Drawable) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                return unit;
            case 12:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj3;
                TextContextMenuBuilderScope textContextMenuBuilderScope = (TextContextMenuBuilderScope) obj;
                Context context = (Context) obj2;
                boolean editable = textFieldSelectionManager.getEditable();
                AnnotatedString transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation();
                String str2 = transformedText$foundation != null ? transformedText$foundation.text : null;
                TextRange textRange2 = textFieldSelectionManager.latestSelection;
                if (textRange2 != null) {
                    long j = textRange2.packedValue;
                    OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
                    textRange = new TextRange(ParagraphKt.TextRange(offsetMapping.originalToTransformed((int) (j >> 32)), offsetMapping.originalToTransformed((int) (j & 4294967295L))));
                } else {
                    textRange = null;
                }
                PlatformSelectionBehaviors_androidKt.m229addPlatformTextContextMenuItems71BSaZU(textContextMenuBuilderScope, context, editable, str2, textRange, textFieldSelectionManager.platformSelectionBehaviors, new UtilsKt$$ExternalSyntheticLambda1(textFieldSelectionManager, coroutineScope, context, 10));
                return unit;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                ((DefaultBasicAlertDialogOverride) obj4).BasicAlertDialog((ImageLoader$Builder) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj2).getClass();
                ((DefaultSingleRowTopAppBarOverride) obj4).SingleRowTopAppBar((SingleRowTopAppBarOverrideScope) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 15:
                ((Integer) obj2).getClass();
                TextKt.ProvideTextStyle((TextStyle) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                ActivityLoginBinding activityLoginBinding = (ActivityLoginBinding) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                int intValue6 = ((Integer) obj).intValue();
                if (obj2 instanceof ComposeNodeLifecycleCallback) {
                    ((MutableVector) activityLoginBinding.loginButton).add((ComposeNodeLifecycleCallback) obj2);
                } else if (!(obj2 instanceof ReusableGapRememberObserverHolder)) {
                    if (obj2 instanceof GapRememberObserverHolder) {
                        Updater.removeData(slotWriter, intValue6, obj2);
                        activityLoginBinding.forgetting((GapRememberObserverHolder) obj2);
                    } else if (obj2 instanceof RecomposeScopeImpl) {
                        Updater.removeData(slotWriter, intValue6, obj2);
                        ((RecomposeScopeImpl) obj2).release();
                    }
                }
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                ((Integer) obj2).getClass();
                DpKt.PopulateVisibleList((List) obj4, (Collection) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_GROUP_VALUE:
                ((Integer) obj2).getClass();
                Operation$State.SaveableStateProvider((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_BUTTON_VALUE:
                List list = (List) obj4;
                Function1 function1 = (Function1) obj3;
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    return unit;
                }
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer6, 0);
                Unit unit2 = unit;
                long j2 = gapComposer6.compositeKeyHashCode;
                int i11 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer6, modifier);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer6, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer6, materializeModifier, ComposeUiNode.Companion.SetModifier);
                ImpactModuleKt.CommonCardHeader(OffsetKt.m135paddingqDBjuR0(modifier, 16.0f, 16.0f, 16.0f, 8.0f), UnsignedKt.painterResource(R.drawable.ic_category_black_24dp, 0, gapComposer6), UtilsKt.stringResource(R.string.activity_tab_monthly_top_categories, gapComposer6), null, false, false, gapComposer6, 64, 56);
                gapComposer6.startReplaceGroup(714972690);
                int i12 = 0;
                for (Object obj6 : list) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        ?? r43 = str;
                        Room.throwIndexOverflow();
                        throw r43;
                    }
                    Category category = (Category) obj6;
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
                    boolean changed3 = gapComposer6.changed(function1) | gapComposer6.changed(category);
                    Object rememberedValue4 = gapComposer6.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new Regex$$ExternalSyntheticLambda0(i3, function1, category);
                        gapComposer6.updateRememberedValue(rememberedValue4);
                    }
                    Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(i2, fillMaxWidth, str, (Function0) rememberedValue4, false);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    String str3 = str;
                    Unit unit3 = unit2;
                    long j3 = gapComposer6.compositeKeyHashCode;
                    int i14 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer6, m51clickableoSLSa3U$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer6, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer6, Integer.valueOf(i14), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer6, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(modifier, 32.0f, 16.0f);
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    String removeNamespace = StringUtil.removeNamespace(category.title);
                    TextStyle textStyle = ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).bodyLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(removeNamespace, m133paddingVpY3zN4, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer6, 48, 0, 131064);
                    gapComposer6.end(true);
                    if (i12 < list.size() - 1) {
                        gapComposer6.startReplaceGroup(-1604811429);
                        c = 0;
                        CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m134paddingVpY3zN4$default(modifier, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal)).borderColor, gapComposer6, 6, 2);
                        gapComposer6.end(false);
                    } else {
                        c = 0;
                        gapComposer6.startReplaceGroup(-1604600970);
                        gapComposer6.end(false);
                    }
                    i12 = i13;
                    str = str3;
                    unit2 = unit3;
                    i2 = 15;
                    i3 = 10;
                }
                Unit unit4 = unit2;
                gapComposer6.end(false);
                gapComposer6.end(true);
                return unit4;
            case RADIO_ROW_VALUE:
                ((Integer) obj2).getClass();
                TimelineModuleKt.TimelineContent((TimelineItem) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                return unit;
            case RADIO_COLUMN_VALUE:
                ((Integer) obj2).getClass();
                TabsBoxKt.SettingsSection((String) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                return unit;
            case SIZE_BOX_VALUE:
                String str4 = (String) obj4;
                TextStyle textStyle2 = (TextStyle) obj3;
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk(str4, null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer7, 0, 0, 131066);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 23:
                CoroutineScope coroutineScope2 = (CoroutineScope) obj4;
                TooltipStateImpl tooltipStateImpl = (TooltipStateImpl) obj3;
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    boolean changedInstance2 = gapComposer8.changedInstance(coroutineScope2) | gapComposer8.changedInstance(tooltipStateImpl);
                    Object rememberedValue5 = gapComposer8.rememberedValue();
                    if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new BasicTooltipKt$$ExternalSyntheticLambda7(coroutineScope2, tooltipStateImpl, i4);
                        gapComposer8.updateRememberedValue(rememberedValue5);
                    }
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_info_outline_black_24dp, 0, gapComposer8), null, Jsoup.noRippleClickable$default(modifier, (Function0) rememberedValue5), ((WikipediaColor) gapComposer8.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer8, 56, 0);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 24:
                TopReadCard topReadCard = (TopReadCard) obj3;
                PageSummary pageSummary = (PageSummary) obj;
                int intValue10 = ((Integer) obj2).intValue();
                pageSummary.getClass();
                ((Function1) obj4).invoke(new HomeAction.PageOverflowClick(topReadCard, pageSummary, 14, Modifier.CC.m(topReadCard.age, intValue10, "top-read-", "-")));
                return unit;
            case 25:
                DidYouKnowCard didYouKnowCard = (DidYouKnowCard) obj3;
                PageSummary pageSummary2 = (PageSummary) obj;
                int intValue11 = ((Integer) obj2).intValue();
                pageSummary2.getClass();
                ((Function1) obj4).invoke(new HomeAction.PageOverflowClick(didYouKnowCard, pageSummary2, 49, "dyk-" + didYouKnowCard.date + "-" + intValue11));
                return unit;
            case 26:
                ((Integer) obj2).getClass();
                ForYouCardKt.CommunityDisclaimer((Modifier) obj4, (WikiSite) obj3, (GapComposer) obj, Updater.updateChangedFlags(7));
                return unit;
            case 27:
                ((Integer) obj2).getClass();
                ForYouCardKt.ErrorState((Throwable) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 28:
                AppLanguageState appLanguageState = (AppLanguageState) obj4;
                String str5 = (String) obj3;
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (gapComposer9.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk((appLanguageState == null || (appLanguageLocalizedName = appLanguageState.getAppLanguageLocalizedName(str5)) == null) ? str5 : appLanguageLocalizedName, null, ((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer9.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer9, 0, 0, 131066);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            default:
                String str6 = (String) obj4;
                String str7 = (String) obj3;
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                } else if (Intrinsics.areEqual(str6, str7)) {
                    gapComposer10.startReplaceGroup(187768246);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_check_black_24dp, 0, gapComposer10), null, null, ((WikipediaColor) gapComposer10.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer10, 56, 4);
                    gapComposer10.end(false);
                } else {
                    gapComposer10.startReplaceGroup(188072883);
                    gapComposer10.end(false);
                }
                return unit;
        }
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda17(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda17(Object obj, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
