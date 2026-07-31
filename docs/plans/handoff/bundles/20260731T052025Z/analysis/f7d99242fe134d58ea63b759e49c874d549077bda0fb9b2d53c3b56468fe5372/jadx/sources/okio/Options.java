package okio;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Data;
import app.k9mail.feature.launcher.ui.FeatureLauncherAppKt$$ExternalSyntheticLambda3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.RandomAccess;
import kotlin.Unit;
import kotlin.collections.AbstractList;
import kotlin.collections.ArrayAsCollection;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.TuplesKt;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.designsystem.organism.ModalBottomSheetKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ColorRoles;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.internal.ui.component.MessageItemSwipeBackgroundKt$WhenMappings;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.api.SearchCondition;
import net.thunderbird.feature.search.legacy.api.SearchFieldType;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.NodeUtils;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Options extends AbstractList implements RandomAccess {
    public final ByteString[] byteStrings;
    public final int[] trie;

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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static final void FetchingMailSettingsScreen(AccountId accountId, Function0 function0, FetchingMailSettingsViewModel fetchingMailSettingsViewModel, DialogSettingViewProvider dialogSettingViewProvider, FetchingMailSettingsBuilder fetchingMailSettingsBuilder, AppNameProvider appNameProvider, Composer composer, int i) {
            FetchingMailSettingsViewModel fetchingMailSettingsViewModel2;
            DialogSettingViewProvider dialogSettingViewProvider2;
            FetchingMailSettingsBuilder fetchingMailSettingsBuilder2;
            AppNameProvider appNameProvider2;
            FetchingMailSettingsViewModel fetchingMailSettingsViewModel3;
            int i2;
            AppNameProvider appNameProvider3;
            FetchingMailSettingsBuilder fetchingMailSettingsBuilder3;
            DialogSettingViewProvider dialogSettingViewProvider3;
            accountId.getClass();
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(487742950);
            int i3 = i | (gapComposer.changedInstance(accountId) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 74880;
            int i4 = 1;
            int i5 = 0;
            if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
                gapComposer.startDefaults();
                int i6 = i & 1;
                Object obj = Composer.Companion.Empty;
                if (i6 == 0 || gapComposer.getDefaultsInvalid()) {
                    boolean changedInstance = gapComposer.changedInstance(accountId);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == obj) {
                        rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 5);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function02 = (Function0) rememberedValue;
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                    if (current == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return;
                    }
                    fetchingMailSettingsViewModel3 = (FetchingMailSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(FetchingMailSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed || rememberedValue2 == obj) {
                        rememberedValue2 = ViewSizeResolver.CC.m(DialogSettingViewProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    DialogSettingViewProvider dialogSettingViewProvider4 = (DialogSettingViewProvider) rememberedValue2;
                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope2);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue3 == obj) {
                        rememberedValue3 = ViewSizeResolver.CC.m(FetchingMailSettingsBuilder.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    FetchingMailSettingsBuilder fetchingMailSettingsBuilder4 = (FetchingMailSettingsBuilder) rememberedValue3;
                    Scope currentKoinScope3 = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed3 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope3);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue4 == obj) {
                        rememberedValue4 = ViewSizeResolver.CC.m(AppNameProvider.class, currentKoinScope3, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    i2 = i3 & (-524161);
                    appNameProvider3 = (AppNameProvider) rememberedValue4;
                    fetchingMailSettingsBuilder3 = fetchingMailSettingsBuilder4;
                    dialogSettingViewProvider3 = dialogSettingViewProvider4;
                } else {
                    gapComposer.skipToGroupEnd();
                    i2 = i3 & (-524161);
                    fetchingMailSettingsViewModel3 = fetchingMailSettingsViewModel;
                    dialogSettingViewProvider3 = dialogSettingViewProvider;
                    fetchingMailSettingsBuilder3 = fetchingMailSettingsBuilder;
                    appNameProvider3 = appNameProvider;
                }
                int i7 = i2;
                gapComposer.endDefaults();
                Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(fetchingMailSettingsViewModel3.state, gapComposer);
                boolean changedInstance2 = gapComposer.changedInstance(fetchingMailSettingsViewModel3);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue5 == obj) {
                    rememberedValue5 = new FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1(fetchingMailSettingsViewModel3, i5);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                Function1 function1 = (Function1) rememberedValue5;
                FetchingMailSettingsViewModel fetchingMailSettingsViewModel4 = fetchingMailSettingsViewModel3;
                Updater.LaunchedEffect(gapComposer, fetchingMailSettingsViewModel3.effect, new NavHostKt$NavHost$29$1(fetchingMailSettingsViewModel4, (Continuation) null, function0, context, accountId, 24));
                collectAsStateWithLifecycle.getClass();
                function1.getClass();
                Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
                consume.getClass();
                ComponentActivity componentActivity = (ComponentActivity) consume;
                DebugUtils.BackHandler(false, function0, gapComposer, i7 & 112, 1);
                FetchingMailSettingsContract$State fetchingMailSettingsContract$State = (FetchingMailSettingsContract$State) collectAsStateWithLifecycle.getValue();
                boolean changed4 = gapComposer.changed(function1);
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (changed4 || rememberedValue6 == obj) {
                    rememberedValue6 = new ChangelogScreenKt$$ExternalSyntheticLambda7(2, function1);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function1 function12 = (Function1) rememberedValue6;
                boolean changedInstance3 = gapComposer.changedInstance(componentActivity);
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (changedInstance3 || rememberedValue7 == obj) {
                    rememberedValue7 = new FeatureLauncherAppKt$$ExternalSyntheticLambda3(componentActivity, i4);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                Function0 function03 = (Function0) rememberedValue7;
                DialogSettingViewProvider dialogSettingViewProvider5 = dialogSettingViewProvider3;
                FetchingMailSettingsBuilder fetchingMailSettingsBuilder5 = fetchingMailSettingsBuilder3;
                AppNameProvider appNameProvider4 = appNameProvider3;
                Okio.FetchingMailSettingsContent(fetchingMailSettingsContract$State, function12, function03, dialogSettingViewProvider5, fetchingMailSettingsBuilder5, appNameProvider4, null, gapComposer, 0);
                appNameProvider2 = appNameProvider4;
                fetchingMailSettingsBuilder2 = fetchingMailSettingsBuilder5;
                dialogSettingViewProvider2 = dialogSettingViewProvider5;
                fetchingMailSettingsViewModel2 = fetchingMailSettingsViewModel4;
            } else {
                gapComposer.skipToGroupEnd();
                fetchingMailSettingsViewModel2 = fetchingMailSettingsViewModel;
                dialogSettingViewProvider2 = dialogSettingViewProvider;
                fetchingMailSettingsBuilder2 = fetchingMailSettingsBuilder;
                appNameProvider2 = appNameProvider;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda14(accountId, function0, fetchingMailSettingsViewModel2, dialogSettingViewProvider2, fetchingMailSettingsBuilder2, appNameProvider2, i, 3);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:149:0x03a0  */
        /* JADX WARN: Removed duplicated region for block: B:150:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0390  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:176:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x013d  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0149  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void FolderListItem(final net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder r29, final kotlin.jvm.functions.Function1 r30, final boolean r31, final app.k9mail.legacy.ui.folder.FolderNameFormatter r32, final java.lang.String r33, androidx.compose.ui.Modifier r34, boolean r35, final net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder r36, java.lang.String r37, int r38, androidx.compose.runtime.Composer r39, final int r40, final int r41) {
            /*
                Method dump skipped, instructions count: 955
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.FolderListItem(net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder, kotlin.jvm.functions.Function1, boolean, app.k9mail.legacy.ui.folder.FolderNameFormatter, java.lang.String, androidx.compose.ui.Modifier, boolean, net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder, java.lang.String, int, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final void MessageItemSwipeBackground(final SwipeAction swipeAction, final Arrangement$Horizontal arrangement$Horizontal, Modifier modifier, Composer composer, final int i) {
            Modifier modifier2;
            Integer valueOf;
            ImageVector imageVector;
            swipeAction.getClass();
            arrangement$Horizontal.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1517486059);
            int i2 = (gapComposer.changed(swipeAction.ordinal()) ? 4 : 2) | i | (gapComposer.changed(arrangement$Horizontal) ? 256 : 128) | 3072;
            final int i3 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                int i4 = i2 & 14;
                Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
                long j = ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary;
                long j2 = ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surfaceContainerLowest;
                boolean changed = (((i4 ^ 6) > 4 && gapComposer.changed(swipeAction.ordinal())) || (i2 & 6) == 4) | gapComposer.changed(j) | gapComposer.changed(j2);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Integer num = null;
                if (changed || rememberedValue == neverEqualPolicy) {
                    switch (swipeAction.ordinal()) {
                        case 0:
                            rememberedValue = null;
                            gapComposer.updateRememberedValue(rememberedValue);
                            break;
                        case 1:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeSelectColor);
                            break;
                        case 2:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeToggleReadColor);
                            break;
                        case 3:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeToggleStarColor);
                            break;
                        case 4:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeArchiveColor);
                            break;
                        case 5:
                        case 6:
                            valueOf = null;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeDeleteColor);
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeSpamColor);
                            break;
                        case 9:
                            valueOf = Integer.valueOf(R.attr.messageListSwipeMoveColor);
                            break;
                        default:
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return;
                    }
                    if (valueOf != null) {
                        TypedValue typedValue = new TypedValue();
                        if (!context.getTheme().resolveAttribute(valueOf.intValue(), typedValue, true)) {
                            DBUtil$$ExternalSyntheticBUOutline0.m((Object) resources.getResourceName(valueOf.intValue()), "Couldn't resolve attribute (");
                            return;
                        }
                        j2 = ColorKt.Color(typedValue.data);
                    }
                    rememberedValue = IntOffsetKt.m761toColorRolesDxMtmZc(ColorKt.Color(Data.Companion.harmonize(ColorKt.m500toArgb8_81llA(j), ColorKt.m500toArgb8_81llA(j2))), context);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                ColorRoles colorRoles = (ColorRoles) rememberedValue;
                if (colorRoles == null) {
                    RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
                    if (endRestartGroup != null) {
                        final int i5 = 0;
                        endRestartGroup.block = new Function2(swipeAction, arrangement$Horizontal, i, i5) { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0
                            public final /* synthetic */ int $r8$classId;
                            public final /* synthetic */ SwipeAction f$0;
                            public final /* synthetic */ Arrangement$Horizontal f$2;

                            {
                                this.$r8$classId = i5;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                int i6 = this.$r8$classId;
                                Unit unit = Unit.INSTANCE;
                                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                Arrangement$Horizontal arrangement$Horizontal2 = this.f$2;
                                SwipeAction swipeAction2 = this.f$0;
                                Composer composer2 = (Composer) obj;
                                ((Integer) obj2).getClass();
                                switch (i6) {
                                    case 0:
                                        Options.Companion.MessageItemSwipeBackground(swipeAction2, arrangement$Horizontal2, companion, composer2, Updater.updateChangedFlags(49));
                                        break;
                                    default:
                                        Options.Companion.MessageItemSwipeBackground(swipeAction2, arrangement$Horizontal2, companion, composer2, Updater.updateChangedFlags(49));
                                        break;
                                }
                                return unit;
                            }
                        };
                        return;
                    }
                    return;
                }
                boolean z = i4 == 4;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z || rememberedValue2 == neverEqualPolicy) {
                    int i6 = MessageItemSwipeBackgroundKt$WhenMappings.$EnumSwitchMapping$0[swipeAction.ordinal()];
                    if (i6 != 1) {
                        if (i6 == 2) {
                            imageVector = Icons$Outlined.CheckCircle;
                        } else if (i6 == 3) {
                            imageVector = Icons$Outlined.MarkEmailRead;
                        } else if (i6 == 4) {
                            imageVector = Icons$Filled.Star;
                        } else if (i6 != 6) {
                            if (i6 == 5 || i6 == 7) {
                                imageVector = Icons$Outlined.Archive;
                            } else if (i6 == 8) {
                                imageVector = Icons$Outlined.Delete;
                            } else if (i6 == 9) {
                                imageVector = Icons$Outlined.Report;
                            } else {
                                if (i6 != 10) {
                                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                                    return;
                                }
                                imageVector = Icons$Outlined.DriveFileMove;
                            }
                        }
                        rememberedValue2 = imageVector;
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    rememberedValue2 = null;
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                ImageVector imageVector2 = (ImageVector) rememberedValue2;
                boolean z2 = i4 == 4;
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z2 || rememberedValue3 == neverEqualPolicy) {
                    int i7 = MessageItemSwipeBackgroundKt$WhenMappings.$EnumSwitchMapping$0[swipeAction.ordinal()];
                    if (i7 != 1) {
                        if (i7 == 2) {
                            num = Integer.valueOf(R.string.swipe_action_select);
                        } else if (i7 == 3) {
                            num = Integer.valueOf(R.string.swipe_action_mark_as_read);
                        } else if (i7 == 4) {
                            num = Integer.valueOf(R.string.swipe_action_add_star);
                        } else if (i7 == 5) {
                            num = Integer.valueOf(R.string.swipe_action_archive);
                        } else if (i7 == 7) {
                            num = Integer.valueOf(R.string.swipe_action_archive_folder_not_set);
                        } else if (i7 == 6) {
                            num = Integer.valueOf(R.string.swipe_action_change_swipe_gestures);
                        } else if (i7 == 8) {
                            num = Integer.valueOf(R.string.swipe_action_delete);
                        } else if (i7 == 9) {
                            num = Integer.valueOf(R.string.swipe_action_spam);
                        } else {
                            if (i7 != 10) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return;
                            }
                            num = Integer.valueOf(R.string.swipe_action_move);
                        }
                    }
                    rememberedValue3 = num;
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Integer num2 = (Integer) rememberedValue3;
                if (num2 == null) {
                    RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
                    if (endRestartGroup2 != null) {
                        endRestartGroup2.block = new Function2(swipeAction, arrangement$Horizontal, i, i3) { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0
                            public final /* synthetic */ int $r8$classId;
                            public final /* synthetic */ SwipeAction f$0;
                            public final /* synthetic */ Arrangement$Horizontal f$2;

                            {
                                this.$r8$classId = i3;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                int i62 = this.$r8$classId;
                                Unit unit = Unit.INSTANCE;
                                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                Arrangement$Horizontal arrangement$Horizontal2 = this.f$2;
                                SwipeAction swipeAction2 = this.f$0;
                                Composer composer2 = (Composer) obj;
                                ((Integer) obj2).getClass();
                                switch (i62) {
                                    case 0:
                                        Options.Companion.MessageItemSwipeBackground(swipeAction2, arrangement$Horizontal2, companion, composer2, Updater.updateChangedFlags(49));
                                        break;
                                    default:
                                        Options.Companion.MessageItemSwipeBackground(swipeAction2, arrangement$Horizontal2, companion, composer2, Updater.updateChangedFlags(49));
                                        break;
                                }
                                return unit;
                            }
                        };
                        return;
                    }
                    return;
                }
                long j3 = colorRoles.accent;
                long j4 = colorRoles.onAccent;
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(2026611544, new SegmentedButtonKt$$ExternalSyntheticLambda4(arrangement$Horizontal, imageVector2, num2, 23), gapComposer);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                MathKt.m983Surface_UMDTes(companion, null, j3, j4, 0.0f, rememberComposableLambda, gapComposer, 196614, 18);
                modifier2 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup3 = gapComposer.endRestartGroup();
            if (endRestartGroup3 != null) {
                endRestartGroup3.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(swipeAction, arrangement$Horizontal, modifier2, i, 24);
            }
        }

        public static final void ModalBottomSheet(Function0 function0, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
            Function0 function02;
            int i2;
            ComposableLambdaImpl composableLambdaImpl2;
            GapComposer gapComposer;
            Modifier modifier2;
            function0.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(1678170565);
            if ((i & 6) == 0) {
                function02 = function0;
                i2 = (gapComposer2.changedInstance(function02) ? 4 : 2) | i;
            } else {
                function02 = function0;
                i2 = i;
            }
            int i3 = i2 | 48;
            if ((i & 384) == 0) {
                composableLambdaImpl2 = composableLambdaImpl;
                i3 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 256 : 128;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
            }
            if (gapComposer2.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                gapComposer = gapComposer2;
                ModalBottomSheetKt.m347ModalBottomSheetYbuCTN8(function02, ModalBottomSheetKt.rememberModalBottomSheetState(gapComposer2), 0.0f, false, null, 0L, 0L, 0L, null, null, null, composableLambdaImpl2, gapComposer, i3 & 126, (i3 << 3) & 7168);
                modifier2 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ModalBottomSheetKt$$ExternalSyntheticLambda0(function0, modifier2, composableLambdaImpl, i, 0);
            }
        }

        public static final void NavigationDrawerLabel(String str, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, MutableState mutableState, Composer composer, int i) {
            ComposableLambdaImpl composableLambdaImpl2;
            Modifier modifier2;
            boolean z;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(2046669184);
            int i2 = i | (gapComposer.changed(str) ? 4 : 2) | 384 | (gapComposer.changed(mutableState) ? 2048 : 1024);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                FillElement fillElement = SizeKt.FillWholeMaxWidth;
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i3);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                Validate.m1066TextLabelLargeXl4FiYE(str, new LayoutWeightElement(1.0f, true), 0L, 2, 2, gapComposer, 221184 | (i2 & 14), 12);
                Boolean bool = mutableState != null ? (Boolean) mutableState.getValue() : null;
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                if (bool != null) {
                    gapComposer.startReplaceGroup(-1306857160);
                    ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, 48.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier clip = ClipKt.clip(OffsetKt.m222paddingqDBjuR0$default(m234size3ABfNKs, 2.0f, 0.0f, 2.0f, 0.0f, 10), RoundedCornerShapeKt.CircleShape);
                    boolean z2 = (i2 & 7168) == 2048;
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (z2 || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 24);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(clip, false, null, (Function0) rememberedValue, 15);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m136clickableoSLSa3U$default);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    NodeUtils.m1077AnimatedExpandIconxqIIw2o(((Boolean) mutableState.getValue()).booleanValue(), null, false, null, gapComposer, 0, 14);
                    gapComposer = gapComposer;
                    z = true;
                    gapComposer.end(true);
                    gapComposer.end(false);
                } else {
                    z = true;
                    gapComposer.startReplaceGroup(-1306267106);
                    gapComposer.end(false);
                }
                composableLambdaImpl2 = composableLambdaImpl;
                Config.CC.m(6, composableLambdaImpl2, gapComposer, z);
                modifier2 = companion;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(str, composableLambdaImpl2, modifier2, mutableState, i);
            }
        }

        public static final void SettingList(ImmutableList immutableList, Function2 function2, Function1 function1, Modifier modifier, Composer composer, int i) {
            immutableList.getClass();
            function2.getClass();
            function1.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1837456847);
            int i2 = i | (gapComposer.changed(immutableList) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024);
            int i3 = 0;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                boolean z = ((i2 & 14) == 4) | ((i2 & 112) == 32) | ((i2 & 896) == 256);
                Object rememberedValue = gapComposer.rememberedValue();
                if (z || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new SettingListKt$$ExternalSyntheticLambda0(immutableList, function2, function1, i3);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                ActionBar.LazyColumn((i2 >> 9) & 14, 510, null, null, null, null, null, gapComposer, null, modifier, (Function1) rememberedValue, false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(immutableList, function2, function1, modifier, i, 15);
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
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return;
            }
            for (int i8 = i2; i8 < i3; i8++) {
                if (((ByteString) arrayList4.get(i8)).getSize$okio() < i7) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
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
                buffer.m1055writeInt(-i10);
                buffer.m1055writeInt(i5);
                int i12 = i7 + i10;
                while (i7 < i12) {
                    buffer.m1055writeInt(byteString.internalGet$okio(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i12 == ((ByteString) arrayList4.get(i4)).getSize$okio()) {
                        buffer.m1055writeInt(((Number) arrayList5.get(i4)).intValue());
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                        return;
                    }
                }
                Buffer buffer2 = new Buffer();
                buffer.m1055writeInt(((int) ((buffer2.size / 4) + j3)) * (-1));
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
            buffer.m1055writeInt(i13);
            buffer.m1055writeInt(i5);
            for (int i15 = i4; i15 < i3; i15++) {
                int internalGet$okio = ((ByteString) arrayList4.get(i15)).internalGet$okio(i7);
                if (i15 == i4 || internalGet$okio != ((ByteString) arrayList4.get(i15 - 1)).internalGet$okio(i7)) {
                    buffer.m1055writeInt(internalGet$okio & 255);
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
                    buffer.m1055writeInt(((Number) arrayList5.get(i16)).intValue());
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                } else {
                    buffer.m1055writeInt(((int) ((buffer3.size / 4) + j4)) * (-1));
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

        public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CharsKt__CharKt charsKt__CharKt, Object obj) {
            abstractPolymorphicSerializer.getClass();
            obj.getClass();
            KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(charsKt__CharKt, obj);
            if (findPolymorphicSerializerOrNull != null) {
                return findPolymorphicSerializerOrNull;
            }
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
            KClass baseClass = abstractPolymorphicSerializer.getBaseClass();
            baseClass.getClass();
            String simpleName = orCreateKotlinClass.getSimpleName();
            if (simpleName == null) {
                simpleName = String.valueOf(orCreateKotlinClass);
            }
            TuplesKt.throwSubtypeNotRegistered(simpleName, baseClass);
            throw null;
        }

        public static final int getProgressionLastElement(int i, int i2, int i3) {
            if (i3 > 0) {
                if (i < i2) {
                    int i4 = i2 % i3;
                    if (i4 < 0) {
                        i4 += i3;
                    }
                    int i5 = i % i3;
                    if (i5 < 0) {
                        i5 += i3;
                    }
                    int i6 = (i4 - i5) % i3;
                    if (i6 < 0) {
                        i6 += i3;
                    }
                    return i2 - i6;
                }
            } else {
                if (i3 >= 0) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Step is zero.");
                    return 0;
                }
                if (i > i2) {
                    int i7 = -i3;
                    int i8 = i % i7;
                    if (i8 < 0) {
                        i8 += i7;
                    }
                    int i9 = i2 % i7;
                    if (i9 < 0) {
                        i9 += i7;
                    }
                    int i10 = (i8 - i9) % i7;
                    if (i10 < 0) {
                        i10 += i7;
                    }
                    return i10 + i2;
                }
            }
            return i2;
        }

        public static final int indexSegment(int i, int i2) {
            return (i >> i2) & 31;
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

        public static final ParametersHolder parametersOf(Object... objArr) {
            return new ParametersHolder(2, new ArrayList(new ArrayAsCollection(objArr, false)));
        }

        public static String readInputStream(InputStream inputStream) {
            if (inputStream == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Input stream must not be null");
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            char[] cArr = new char[1024];
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read == -1) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
            }
        }

        public static PaddingValuesImpl toContentPadding$api(UiDensity uiDensity, Composer composer) {
            uiDensity.getClass();
            int ordinal = uiDensity.ordinal();
            if (ordinal == 0) {
                GapComposer gapComposer = (GapComposer) composer;
                gapComposer.startReplaceGroup(1693183618);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                PaddingValuesImpl m215PaddingValuesa9UjIt4$default = OffsetKt.m215PaddingValuesa9UjIt4$default(4.0f, 8.0f, 8.0f, 4);
                gapComposer.end(false);
                return m215PaddingValuesa9UjIt4$default;
            }
            if (ordinal == 1) {
                GapComposer gapComposer2 = (GapComposer) composer;
                gapComposer2.startReplaceGroup(1693185250);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal2)).getClass();
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal2)).getClass();
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal2)).getClass();
                PaddingValuesImpl m215PaddingValuesa9UjIt4$default2 = OffsetKt.m215PaddingValuesa9UjIt4$default(8.0f, 12.0f, 12.0f, 4);
                gapComposer2.end(false);
                return m215PaddingValuesa9UjIt4$default2;
            }
            if (ordinal != 2) {
                throw ViewSizeResolver.CC.m((GapComposer) composer, 1693182393, false);
            }
            GapComposer gapComposer3 = (GapComposer) composer;
            gapComposer3.startReplaceGroup(1693186882);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal3)).getClass();
            ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal3)).getClass();
            ((ThemeSpacings) gapComposer3.consume(staticProvidableCompositionLocal3)).getClass();
            PaddingValuesImpl m215PaddingValuesa9UjIt4$default3 = OffsetKt.m215PaddingValuesa9UjIt4$default(16.0f, 16.0f, 16.0f, 4);
            gapComposer3.end(false);
            return m215PaddingValuesa9UjIt4$default3;
        }

        public static void validateTree(SearchConditionTreeNode searchConditionTreeNode) {
            if (searchConditionTreeNode == null) {
                return;
            }
            if (searchConditionTreeNode.operator != SearchConditionTreeNode.Operator.CONDITION) {
                validateTree(searchConditionTreeNode.left);
                validateTree(searchConditionTreeNode.right);
                return;
            }
            SearchCondition searchCondition = searchConditionTreeNode.condition;
            if (searchCondition == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("CONDITION nodes must have a condition");
            } else {
                if (((MessageSearchField) searchCondition.field).fieldType != SearchFieldType.CUSTOM || searchCondition.attribute == SearchAttribute.CONTAINS) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Custom fields can only be used with the CONTAINS attribute");
            }
        }

        public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
            abstractPolymorphicSerializer.getClass();
            KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(compositeDecoder, str);
            if (findPolymorphicSerializerOrNull != null) {
                return findPolymorphicSerializerOrNull;
            }
            TuplesKt.throwSubtypeNotRegistered(str, abstractPolymorphicSerializer.getBaseClass());
            throw null;
        }
    }
}
