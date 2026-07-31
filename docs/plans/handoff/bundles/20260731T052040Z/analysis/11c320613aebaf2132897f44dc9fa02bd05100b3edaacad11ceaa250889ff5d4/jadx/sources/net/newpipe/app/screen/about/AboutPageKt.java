package net.newpipe.app.screen.about;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.GestureNodeKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.InsetsPaddingValues;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.sqlite.SQLite;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import net.newpipe.app.AppKt;
import net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda2;
import net.newpipe.app.composable.PreferenceRowKt$$ExternalSyntheticLambda2;
import net.newpipe.app.model.License;
import net.newpipe.app.model.Link;
import net.newpipe.app.navigation.NavDisplayKt$$ExternalSyntheticLambda1;
import net.newpipe.app.navigation.Navigator;
import net.newpipe.app.platform.ShareHandler;
import net.newpipe.app.screen.about.navigation.Page;
import net.newpipe.app.theme.ServiceThemeKt;
import net.newpipe.app.viewmodel.about.AboutViewModel;
import newpipe.shared.generated.resources.String0_commonMainKt;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.scope.Scope;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AboutPageKt {
    public static final ComposableLambdaImpl lambda$776903718 = new ComposableLambdaImpl(776903718, false, new BadgeKt$$ExternalSyntheticLambda0(3));

    /* renamed from: lambda$-609738436, reason: not valid java name */
    public static final ComposableLambdaImpl f14lambda$609738436 = new ComposableLambdaImpl(-609738436, false, new BadgeKt$$ExternalSyntheticLambda0(4));
    public static final ComposableLambdaImpl lambda$1469017491 = new ComposableLambdaImpl(1469017491, false, new BadgeKt$$ExternalSyntheticLambda0(5));
    public static final ComposableLambdaImpl lambda$1832483989 = new ComposableLambdaImpl(1832483989, false, new BadgeKt$$ExternalSyntheticLambda0(6));

    /* renamed from: lambda$-329735335, reason: not valid java name */
    public static final ComposableLambdaImpl f13lambda$329735335 = new ComposableLambdaImpl(-329735335, false, new BadgeKt$$ExternalSyntheticLambda0(7));

    public static final void AboutPage(ShareHandler shareHandler, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(681108718);
        int i2 = i | 2;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    rememberedValue = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(ShareHandler.class), null);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                shareHandler = (ShareHandler) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            boolean changedInstance = gapComposer.changedInstance(shareHandler);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new AboutPageKt$$ExternalSyntheticLambda0(shareHandler, 0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            AboutPageContent(null, (Function1) rememberedValue2, gapComposer, 0, 1);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Updater$$ExternalSyntheticLambda0(shareHandler, i, 18);
        }
    }

    public static final void AboutPageContent(List list, Function1 function1, Composer composer, int i, int i2) {
        Function1 function12;
        int i3;
        List list2;
        Function1 function13;
        boolean z;
        int i4;
        Function1 function14;
        List list3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(698396177);
        int i5 = i | 2;
        int i6 = i2 & 2;
        if (i6 != 0) {
            i3 = i | 50;
            function12 = function1;
        } else {
            function12 = function1;
            i3 = i5 | (gapComposer.changedInstance(function12) ? 32 : 16);
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            gapComposer.startDefaults();
            int i7 = i & 1;
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (i7 == 0 || gapComposer.getDefaultsInvalid()) {
                z = false;
                List listOf = Jsoup.listOf((Object[]) new Link[]{new Link(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.faq_title$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.faq_description$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.faq$delegate.getValue(), gapComposer), "https://newpipe.net/FAQ/"), new Link(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.contribution_title$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.contribution_encouragement$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.view_on_github$delegate.getValue(), gapComposer), "https://github.com/TeamNewPipe/NewPipe"), new Link(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.donation_title$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.donation_encouragement$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.give_back$delegate.getValue(), gapComposer), "https://newpipe.net/donate/"), new Link(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.website_title$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.website_encouragement$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.open_in_browser$delegate.getValue(), gapComposer), "https://newpipe.net/"), new Link(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.privacy_policy_title$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.privacy_policy_encouragement$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.read_privacy_policy$delegate.getValue(), gapComposer), "https://newpipe.net/legal/privacy/")});
                i4 = i3 & (-15);
                if (i6 != 0) {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ZipFilesKt$$ExternalSyntheticLambda3(3);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    function14 = (Function1) rememberedValue;
                } else {
                    function14 = function12;
                }
                list3 = listOf;
            } else {
                gapComposer.skipToGroupEnd();
                i4 = i3 & (-15);
                list3 = list;
                function14 = function12;
                z = false;
            }
            gapComposer.endDefaults();
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(FlowRowOverflow.current(gapComposer).navigationBars, (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity));
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(2.0f, true, new Arrangement$$ExternalSyntheticLambda0());
            boolean changedInstance = gapComposer.changedInstance(list3) | ((i4 & Token.ASSIGN_MOD) == 32 ? true : z);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new AboutPageKt$$ExternalSyntheticLambda3(list3, function14);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            SQLite.LazyColumn(6, 490, null, null, arrangement$SpacedAligned, insetsPaddingValues, null, gapComposer, null, fillElement, (Function1) rememberedValue2, false);
            list2 = list3;
            function13 = function14;
        } else {
            gapComposer.skipToGroupEnd();
            list2 = list;
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutPageKt$$ExternalSyntheticLambda4(list2, function13, i, i2, 0);
        }
    }

    public static final void AboutScreen(Navigator navigator, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(70003654);
        int i2 = i | 2;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    rememberedValue = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(Navigator.class), null);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                navigator = (Navigator) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            boolean changedInstance = gapComposer.changedInstance(navigator);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new NavDisplayKt$$ExternalSyntheticLambda1(navigator, 2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            AboutScreenContent(null, (Function0) rememberedValue2, null, null, gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Updater$$ExternalSyntheticLambda0(navigator, i, 19);
        }
    }

    public static final void AboutScreenContent(List list, Function0 function0, ColorScheme colorScheme, Function3 function3, Composer composer, int i) {
        List list2;
        ColorScheme colorScheme2;
        Function3 function32;
        final List listOf;
        final ColorScheme currentServiceScheme;
        final Function3 function33;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-180471988);
        int i2 = i | 6 | (gapComposer.changedInstance(function0) ? 32 : 16) | 3200;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                listOf = Jsoup.listOf((Object[]) new Page[]{Page.ABOUT, Page.LICENSE});
                currentServiceScheme = ServiceThemeKt.currentServiceScheme(gapComposer);
                function33 = f14lambda$609738436;
            } else {
                gapComposer.skipToGroupEnd();
                listOf = list;
                currentServiceScheme = colorScheme;
                function33 = function3;
            }
            gapComposer.endDefaults();
            Function3 function34 = function33;
            BadgeKt.m134ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(297725200, new AboutScreenKt$$ExternalSyntheticLambda4(0, function0), gapComposer), null, null, null, 0, 0L, 0L, null, Expect_jvmKt.rememberComposableLambda(-596049253, new Function3() { // from class: net.newpipe.app.screen.about.AboutScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= ((GapComposer) composer2).changed(paddingValues) ? 4 : 2;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        FillElement fillElement = SizeKt.FillWholeMaxSize;
                        Modifier m100paddingqDBjuR0$default = SpacerKt.m100paddingqDBjuR0$default(fillElement, 0.0f, paddingValues.mo86calculateTopPaddingD9Ej5fM(), 0.0f, 13);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i3 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer2, m100paddingqDBjuR0$default);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m170setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m170setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m170setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m169reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m170setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        final List list3 = listOf;
                        boolean changedInstance = gapComposer2.changedInstance(list3);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        if (changedInstance || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new Handshake$Companion$$ExternalSyntheticLambda0(2, list3);
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Function0 function02 = (Function0) rememberedValue;
                        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.UnitDensity;
                        Object[] objArr = new Object[0];
                        CardView.AnonymousClass1 anonymousClass1 = DefaultPagerState.Saver;
                        boolean changed = gapComposer2.changed(0.0f) | gapComposer2.changed(0) | gapComposer2.changed(function02);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (changed || rememberedValue2 == neverEqualPolicy) {
                            rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(1, function02);
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        DefaultPagerState defaultPagerState = (DefaultPagerState) SaverKt.rememberSaveable$1(objArr, anonymousClass1, (Function0) rememberedValue2, gapComposer2, 0);
                        defaultPagerState.pageCountState.setValue(function02);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (rememberedValue3 == neverEqualPolicy) {
                            rememberedValue3 = Updater.createCompositionCoroutineScope(gapComposer2);
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
                        ColorScheme colorScheme3 = currentServiceScheme;
                        BadgeKt.m136SecondaryTabRowpAZo6Ak(defaultPagerState.getCurrentPage(), fillElement2, colorScheme3.primaryContainer, 0L, Expect_jvmKt.rememberComposableLambda(-2110347097, new IndicationKt$$ExternalSyntheticLambda0(defaultPagerState, colorScheme3, 5), gapComposer2), null, Expect_jvmKt.rememberComposableLambda(-1419833667, new PreferenceRowKt$$ExternalSyntheticLambda2(list3, defaultPagerState, (CoroutineScope) rememberedValue3, colorScheme3), gapComposer2), gapComposer2, 1597488);
                        final Function3 function35 = function33;
                        AppKt.m698HorizontalPager8jOkeI(defaultPagerState, fillElement, null, null, null, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(-1830892412, new Function4() { // from class: net.newpipe.app.screen.about.AboutScreenKt$$ExternalSyntheticLambda10
                            @Override // kotlin.jvm.functions.Function4
                            public final Object invoke(Object obj4, Object obj5, Object obj6, Object obj7) {
                                int intValue2 = ((Integer) obj5).intValue();
                                Composer composer3 = (Composer) obj6;
                                int intValue3 = ((Integer) obj7).intValue();
                                ((PagerScopeImpl) obj4).getClass();
                                if ((intValue3 & 48) == 0) {
                                    intValue3 |= ((GapComposer) composer3).changed(intValue2) ? 32 : 16;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & Token.TARGET) != 144)) {
                                    Function3.this.invoke(list3.get(intValue2), gapComposer3, 0);
                                } else {
                                    gapComposer3.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 48);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 805306416);
            colorScheme2 = currentServiceScheme;
            function32 = function34;
            list2 = listOf;
        } else {
            gapComposer.skipToGroupEnd();
            list2 = list;
            colorScheme2 = colorScheme;
            function32 = function3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PreferenceRowKt$$ExternalSyntheticLambda2(list2, function0, colorScheme2, function32, i);
        }
    }

    public static final void LicenseDialog(Modifier modifier, License license, Function1 function1, Function0 function0, Composer composer, int i) {
        GapComposer gapComposer;
        Modifier modifier2;
        license.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1019438670);
        int i2 = i | 6 | (gapComposer2.changed(license) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(EmptyList.INSTANCE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean z = (i2 & Token.ASSIGN_MOD) == 32;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new LicenseDialogKt$LicenseDialog$3$1(license, mutableState, null);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer2, Unit.INSTANCE, (Function2) rememberedValue2);
            gapComposer = gapComposer2;
            BadgeKt.m132AlertDialogOix01E0(function0, Expect_jvmKt.rememberComposableLambda(2073276566, new AboutScreenKt$$ExternalSyntheticLambda4(1, function0), gapComposer2), Expect_jvmKt.rememberComposableLambda(-1858224232, new TextKt$$ExternalSyntheticLambda2(function1, license, 18), gapComposer2), Expect_jvmKt.rememberComposableLambda(-1494757734, new Updater$$ExternalSyntheticLambda0(license, 20), gapComposer2), Expect_jvmKt.rememberComposableLambda(-1313024485, new Updater$$ExternalSyntheticLambda0(mutableState, 21), gapComposer2), null, 0L, 0L, 0L, 0L, null, gapComposer, ((i2 >> 9) & 14) | 1772976);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PreferenceRowKt$$ExternalSyntheticLambda2(modifier2, license, function1, function0, i);
        }
    }

    public static final void LicensePage(AboutViewModel aboutViewModel, ShareHandler shareHandler, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(786262639);
        int i2 = i | 18;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.consume(LocalViewModelStoreOwner.LocalViewModelStoreOwner);
                if (viewModelStoreOwner == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                aboutViewModel = (AboutViewModel) UStringsKt.resolveViewModel(Reflection.getOrCreateKotlinClass(AboutViewModel.class), viewModelStoreOwner.getViewModelStore(), viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE, KoinApplicationKt.currentKoinScope(gapComposer));
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    rememberedValue = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(ShareHandler.class), null);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                shareHandler = (ShareHandler) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            List list = (List) CloseableKt.collectAsStateWithLifecycle(aboutViewModel.libraries, gapComposer).getValue();
            boolean changedInstance = gapComposer.changedInstance(shareHandler);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new AboutPageKt$$ExternalSyntheticLambda0(shareHandler, 1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            LicensePageContent(list, (Function1) rememberedValue2, gapComposer, 0, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, aboutViewModel, shareHandler, 19);
        }
    }

    public static final void LicensePageContent(List list, Function1 function1, Composer composer, int i, int i2) {
        List list2;
        int i3;
        Function1 function12;
        int i4;
        List list3;
        Function1 function13;
        Function1 function14;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-938883183);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            list2 = list;
        } else {
            list2 = list;
            i3 = i | (gapComposer.changed(list2) ? 4 : 2);
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            i4 = i3 | 48;
            function12 = function1;
        } else {
            function12 = function1;
            i4 = i3 | (gapComposer.changedInstance(function12) ? 32 : 16);
        }
        int i7 = i4;
        if (gapComposer.shouldExecute(i7 & 1, (i7 & 19) != 18)) {
            List list4 = i5 != 0 ? EmptyList.INSTANCE : list2;
            Object obj = Composer.Companion.Empty;
            if (i6 != 0) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == obj) {
                    rememberedValue = new ZipFilesKt$$ExternalSyntheticLambda3(5);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                function14 = (Function1) rememberedValue;
            } else {
                function14 = function12;
            }
            Object[] objArr = new Object[0];
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new LicensePageKt$$ExternalSyntheticLambda1(0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) SaverKt.rememberSaveable(Arrays.copyOf(objArr, 0), SaverKt.AutoSaver, (Function0) rememberedValue2, gapComposer, 3456);
            Object[] objArr2 = new Object[0];
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = new LicensePageKt$$ExternalSyntheticLambda1(3);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            SavedStateConfiguration savedStateConfiguration = SavedStateConfiguration.DEFAULT;
            Object[] copyOf = Arrays.copyOf(objArr2, 0);
            savedStateConfiguration.getClass();
            KSerializer serializer = License.Companion.serializer();
            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(13, new TextKt$$ExternalSyntheticLambda2(serializer, savedStateConfiguration, 14), new Recomposer$$ExternalSyntheticLambda4(serializer, savedStateConfiguration, 26), false);
            MutableState mutableState2 = (MutableState) SaverKt.rememberSaveable(Arrays.copyOf(copyOf, copyOf.length), new CardView.AnonymousClass1(13, new Updater$$ExternalSyntheticLambda0(anonymousClass1, 11), new DiskLruCache$$ExternalSyntheticLambda0(anonymousClass1, 16), false), (Function0) rememberedValue3, gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
            if (!((Boolean) mutableState.getValue()).booleanValue() || StringsKt.isBlank(((License) mutableState2.getValue()).spdxID)) {
                gapComposer.startReplaceGroup(-1441338511);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1441530711);
                License license = (License) mutableState2.getValue();
                boolean z = (i7 & Token.ASSIGN_MOD) == 32;
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (z || rememberedValue4 == obj) {
                    rememberedValue4 = new GestureNodeKt$$ExternalSyntheticLambda0(function14, 3);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Function1 function15 = (Function1) rememberedValue4;
                boolean changed = gapComposer.changed(mutableState);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed || rememberedValue5 == obj) {
                    rememberedValue5 = new LicensePageKt$$ExternalSyntheticLambda4(mutableState, 0);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                LicenseDialog(null, license, function15, (Function0) rememberedValue5, gapComposer, 0);
                gapComposer.end(false);
            }
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(FlowRowOverflow.current(gapComposer).navigationBars, (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity));
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(2.0f, true, new Arrangement$$ExternalSyntheticLambda0());
            boolean changed2 = gapComposer.changed(mutableState2) | gapComposer.changed(mutableState) | ((i7 & 14) == 4);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue6 == obj) {
                rememberedValue6 = new ComposeActivity$$ExternalSyntheticLambda2(6, list4, mutableState2, mutableState);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            SQLite.LazyColumn(6, 490, null, null, arrangement$SpacedAligned, insetsPaddingValues, null, gapComposer, null, fillElement, (Function1) rememberedValue6, false);
            gapComposer = gapComposer;
            list3 = list4;
            function13 = function14;
        } else {
            gapComposer.skipToGroupEnd();
            list3 = list2;
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutPageKt$$ExternalSyntheticLambda4(list3, function13, i, i2, 1);
        }
    }
}
