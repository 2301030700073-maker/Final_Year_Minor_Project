package androidx.compose.material3;

import android.os.Bundle;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.material3.MotionScheme;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.PaletteTokens;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.ReusableGapRememberObserverHolder;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateEncoder;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import net.newpipe.app.composable.TopAppBarKt;
import net.newpipe.app.composable.TopAppBarKt$$ExternalSyntheticLambda0;
import net.newpipe.app.model.Library;
import net.newpipe.app.model.License;
import net.newpipe.app.navigation.Navigator;
import net.newpipe.app.platform.ShareHandler;
import net.newpipe.app.screen.about.AboutPageKt;
import net.newpipe.app.screen.about.navigation.Page;
import net.newpipe.app.screen.settings.SettingsHomeScreenKt;
import net.newpipe.app.viewmodel.about.AboutViewModel;
import net.newpipe.app.viewmodel.settings.SettingsViewModel;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.acra.util.ProcessFinisher;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;
import org.schabi.newpipe.databinding.ActivityErrorBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ TextKt$$ExternalSyntheticLambda2(int i, Object obj, Object obj2, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TextKt.ProvideTextStyle((TextStyle) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ImageKt.Canvas((Modifier) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) obj4;
                LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.itemProvider.invoke();
                    int i2 = cachedItemContent.index;
                    Object obj5 = cachedItemContent.key;
                    if ((i2 >= lazyLayoutItemProvider.getItemCount() || !lazyLayoutItemProvider.getKey(i2).equals(obj5)) && (i2 = lazyLayoutItemProvider.getIndex(obj5)) != -1) {
                        cachedItemContent.index = i2;
                    }
                    int i3 = i2;
                    if (i3 != -1) {
                        gapComposer.startReplaceGroup(-1664741271);
                        LazyLayoutKt.m109SkippableItemJVlU9Rs(lazyLayoutItemProvider, lazyLayoutItemContentFactory.saveableStateHolder, i3, cachedItemContent.key, gapComposer, 0);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1664505826);
                        gapComposer.end(false);
                    }
                    boolean changedInstance = gapComposer.changedInstance(cachedItemContent);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new DiskLruCache$$ExternalSyntheticLambda0(cachedItemContent, 5);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Updater.DisposableEffect(obj5, (Function1) rememberedValue, gapComposer);
                    break;
                }
            case 3:
                break;
            case 4:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Object obj6 = (LazySaveableStateHolder) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke(obj6, (Object) gapComposer2, (Object) 0);
                    break;
                }
            case 5:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                ref$FloatRef.element += ((ScrollScope) ((DefaultScrollableState$scrollScope$1) obj3).this$0).scrollBy(floatValue - ref$FloatRef.element);
                break;
            case 6:
                PaddingValues paddingValues = (PaddingValues) obj4;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Modifier padding = SpacerKt.padding(SizeKt.m87defaultMinSizeVpY3zN4(companion, ButtonDefaults.MinWidth, ButtonDefaults.MinHeight), paddingValues);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(SpacerKt.Center, gapComposer3);
                    long j = gapComposer3.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m170setimpl(gapComposer3, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m170setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m170setimpl(gapComposer3, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl2.invoke(RowScopeInstance.INSTANCE, (Object) gapComposer3, (Object) 6);
                    gapComposer3.end(true);
                    break;
                }
            case 7:
                ((Integer) obj2).getClass();
                ((DefaultBasicAlertDialogOverride) obj4).BasicAlertDialog((ProcessFinisher) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                ((DefaultSingleRowTopAppBarOverride) obj4).SingleRowTopAppBar((SingleRowTopAppBarOverrideScope) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 9:
                ListItemColors listItemColors = (ListItemColors) obj4;
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    ListItemKt.m152ProvideTextStyleFromToken3JVO9M(listItemColors.contentColor, ListTokens.ItemLabelTextFont, composableLambdaImpl3, gapComposer4, 48);
                    break;
                }
            case 10:
                ColorScheme colorScheme = (ColorScheme) obj4;
                ComposableLambdaImpl composableLambdaImpl4 = (ComposableLambdaImpl) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    if (colorScheme == null) {
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ColorSchemeKt.LocalTonalElevationEnabled;
                        colorScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0L, 0L, 0L, PaletteTokens.Primary30, 0L, 0L, 0L, 0L, PaletteTokens.Secondary30, 0L, 0L, 0L, PaletteTokens.Tertiary30, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, PaletteTokens.Error30, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -33558793, 65535);
                    }
                    MaterialThemeKt.MaterialTheme(colorScheme, MotionScheme.ExpressiveMotionSchemeImpl.INSTANCE, new Shapes(), new Typography(), composableLambdaImpl4, gapComposer5, 0);
                    break;
                }
            case 11:
                ComposableLambdaImpl composableLambdaImpl5 = (ComposableLambdaImpl) obj4;
                Object obj7 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj3;
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer6.compositeKeyHashCode;
                    int i5 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier2 = RangesKt.materializeModifier(gapComposer6, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m170setimpl(gapComposer6, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m170setimpl(gapComposer6, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m170setimpl(gapComposer6, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m169reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m170setimpl(gapComposer6, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl5.invoke(obj7, (Object) gapComposer6, (Object) 6);
                    gapComposer6.end(true);
                    break;
                }
            case 12:
                ComposableLambdaImpl composableLambdaImpl6 = (ComposableLambdaImpl) obj4;
                Object obj8 = (TabRowKt$TabRowImpl$1$scope$1$1) obj3;
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl6.invoke(obj8, (Object) gapComposer7, (Object) 6);
                    break;
                }
            case 13:
                ActivityErrorBinding activityErrorBinding = (ActivityErrorBinding) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                int intValue8 = ((Integer) obj).intValue();
                if (!(obj2 instanceof ComposeNodeLifecycleCallback)) {
                    if (!(obj2 instanceof ReusableGapRememberObserverHolder)) {
                        if (!(obj2 instanceof GapRememberObserverHolder)) {
                            if (obj2 instanceof RecomposeScopeImpl) {
                                Updater.removeData(slotWriter, intValue8, obj2);
                                ((RecomposeScopeImpl) obj2).release();
                                break;
                            }
                        } else {
                            Updater.removeData(slotWriter, intValue8, obj2);
                            activityErrorBinding.forgetting((GapRememberObserverHolder) obj2);
                            break;
                        }
                    }
                } else {
                    ((MutableVector) activityErrorBinding.errorSorryView).add((ComposeNodeLifecycleCallback) obj2);
                    break;
                }
                break;
            case 14:
                SavedStateConfiguration savedStateConfiguration = (SavedStateConfiguration) obj3;
                KSerializer kSerializer = (KSerializer) obj4;
                kSerializer.getClass();
                obj2.getClass();
                savedStateConfiguration.getClass();
                Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                new SavedStateEncoder(bundleOf, savedStateConfiguration).encodeSerializableValue(kSerializer, obj2);
                break;
            case 15:
                Function0 function0 = (Function0) obj4;
                Painter painter = (Painter) obj3;
                Composer composer8 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else if (function0 == null) {
                    gapComposer8.startReplaceGroup(139750683);
                    gapComposer8.end(false);
                    break;
                } else {
                    gapComposer8.startReplaceGroup(139491213);
                    BadgeKt.IconButton(1572864, null, gapComposer8, Expect_jvmKt.rememberComposableLambda(-605956690, new TopAppBarKt$$ExternalSyntheticLambda0(painter, false ? 1 : 0), gapComposer8), null, null, function0, false);
                    gapComposer8.end(false);
                    break;
                }
            case 16:
                Library library = (Library) obj4;
                String str = (String) obj3;
                Composer composer9 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (!gapComposer9.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Top, Alignment.Companion.Start, gapComposer9, 0);
                    long j3 = gapComposer9.compositeKeyHashCode;
                    int i6 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer9.currentCompositionLocalScope();
                    Modifier materializeModifier3 = RangesKt.materializeModifier(gapComposer9, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer9.startReusableNode();
                    if (gapComposer9.inserting) {
                        gapComposer9.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer9.useNode();
                    }
                    Updater.m170setimpl(gapComposer9, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m170setimpl(gapComposer9, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m170setimpl(gapComposer9, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m169reconcileimpl(gapComposer9, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m170setimpl(gapComposer9, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    String str2 = library.name;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = MaterialThemeKt._localMaterialTheme;
                    TextKt.m164TextNvy7gAk(str2, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer9.consume(staticProvidableCompositionLocal2)).typography.titleMedium, gapComposer9, 0, 131070);
                    TextKt.m164TextNvy7gAk(str, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer9.consume(staticProvidableCompositionLocal2)).typography.bodyMedium, gapComposer9, 0, 131070);
                    gapComposer9.end(true);
                    break;
                }
            case 17:
                Page page = (Page) obj4;
                ColorScheme colorScheme2 = (ColorScheme) obj3;
                Composer composer10 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (!gapComposer10.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m164TextNvy7gAk(StringResourcesKt.stringResource(page.getLocalizedTitle(), gapComposer10), null, colorScheme2.onPrimaryContainer, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer10, 0, 262138);
                    break;
                }
            case 18:
                Function1 function1 = (Function1) obj4;
                License license = (License) obj3;
                Composer composer11 = (Composer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (!gapComposer11.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer11.changed(function1) | gapComposer11.changedInstance(license);
                    Object rememberedValue2 = gapComposer11.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(function1, license, 19);
                        gapComposer11.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function02 = (Function0) rememberedValue2;
                    String str3 = license.website;
                    BadgeKt.TextButton(function02, null, !(str3 == null || StringsKt.isBlank(str3)), null, null, null, AboutPageKt.lambda$1832483989, gapComposer11, C.ENCODING_PCM_32BIT, 506);
                    break;
                }
                break;
            case 19:
                ((Integer) obj2).getClass();
                AboutPageKt.LicensePage((AboutViewModel) obj4, (ShareHandler) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                SettingsHomeScreenKt.SettingsHomeScreen((Navigator) obj4, (SettingsViewModel) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                Function0 function03 = (Function0) obj4;
                Function0 function04 = (Function0) obj3;
                Composer composer12 = (Composer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (!gapComposer12.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.TopAppBar(null, StringResourcesKt.stringResource((StringResource) String0_commonMainKt.settings$delegate.getValue(), gapComposer12), null, function03, null, Expect_jvmKt.rememberComposableLambda(-149444271, new TabKt$$ExternalSyntheticLambda1(function04, 12), gapComposer12), gapComposer12, 196608, 21);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda2(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
