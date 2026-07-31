package okhttp3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Data;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlin.uuid.SecureRandomHolder;
import kotlin.uuid.Uuid;
import kotlin.uuid.UuidKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.NullableSerializer;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.core.AccountCoreModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityState;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListStateDescription;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda5;
import okhttp3.CacheControl;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.apache.hc.core5.util.Tokenizer$$ExternalSyntheticLambda1;
import org.apache.james.mime4j.Charsets;
import org.apache.james.mime4j.codec.DecoderUtil;
import org.apache.james.mime4j.dom.address.DomainList;
import org.apache.james.mime4j.dom.address.Group;
import org.apache.james.mime4j.dom.address.Mailbox;
import org.apache.james.mime4j.field.address.ASTaddr_spec;
import org.apache.james.mime4j.field.address.ASTaddress;
import org.apache.james.mime4j.field.address.ASTaddress_list;
import org.apache.james.mime4j.field.address.ASTangle_addr;
import org.apache.james.mime4j.field.address.ASTgroup_body;
import org.apache.james.mime4j.field.address.ASTmailbox;
import org.apache.james.mime4j.field.address.ASTname_addr;
import org.apache.james.mime4j.field.address.ASTphrase;
import org.apache.james.mime4j.field.address.AddressListParser;
import org.apache.james.mime4j.field.address.ParseException;
import org.apache.james.mime4j.field.address.SimpleNode;
import org.apache.james.mime4j.field.address.TokenMgrError;
import org.apache.james.mime4j.io.TextInputStream;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CacheControl {
    public static final /* synthetic */ int $r8$clinit = 0;
    public String headerValue;
    public final boolean immutable;
    public final boolean isPrivate;
    public final boolean isPublic;
    public final int maxAgeSeconds;
    public final int maxStaleSeconds;
    public final int minFreshSeconds;
    public final boolean mustRevalidate;
    public final boolean noCache;
    public final boolean noStore;
    public final boolean noTransform;
    public final boolean onlyIfCached;
    public final int sMaxAgeSeconds;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static final void ColorItem(final SettingValue.Color color, Function0 function0, Modifier modifier, Composer composer, int i) {
            int i2;
            color.getClass();
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(667751014);
            if ((i & 6) == 0) {
                i2 = ((i & 8) == 0 ? gapComposer.changed(color) : gapComposer.changedInstance(color) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changed(modifier) ? 256 : 128;
            }
            final int i3 = 0;
            final int i4 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                Cookie.Companion.SettingItemLayout(function0, (ImageVector) color.icon.invoke(), modifier, Expect_jvmKt.rememberComposableLambda(817044221, new Function3() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.list.value.ColorItemKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        int i5 = i3;
                        Unit unit = Unit.INSTANCE;
                        SettingValue.Color color2 = color;
                        switch (i5) {
                            case 0:
                                Composer composer2 = (Composer) obj2;
                                int intValue = ((Integer) obj3).intValue();
                                ((RowScope) obj).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    int i6 = color2.value;
                                    ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                                    CharsKt__CharKt.m989ColorViewFJfuzF0(i6, null, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 8.0f, 0.0f, 0.0f, 0.0f, 14), false, 32.0f, gapComposer2, 48, 8);
                                    break;
                                }
                            default:
                                Composer composer3 = (Composer) obj2;
                                int intValue2 = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    DebugUtils.m787TextTitleMediumXl4FiYE((String) color2.title.invoke(), null, 0L, null, 0, 0, gapComposer3, 0, 62);
                                    String str = (String) color2.description.invoke();
                                    if (str != null) {
                                        gapComposer3.startReplaceGroup(-1526991719);
                                        Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer3, 0, 126);
                                        gapComposer3.end(false);
                                        break;
                                    } else {
                                        gapComposer3.startReplaceGroup(-1526991720);
                                        gapComposer3.end(false);
                                        break;
                                    }
                                }
                        }
                        return unit;
                    }
                }, gapComposer), Expect_jvmKt.rememberComposableLambda(-144797900, new Function3() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.list.value.ColorItemKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        int i5 = i4;
                        Unit unit = Unit.INSTANCE;
                        SettingValue.Color color2 = color;
                        switch (i5) {
                            case 0:
                                Composer composer2 = (Composer) obj2;
                                int intValue = ((Integer) obj3).intValue();
                                ((RowScope) obj).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    int i6 = color2.value;
                                    ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                                    CharsKt__CharKt.m989ColorViewFJfuzF0(i6, null, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 8.0f, 0.0f, 0.0f, 0.0f, 14), false, 32.0f, gapComposer2, 48, 8);
                                    break;
                                }
                            default:
                                Composer composer3 = (Composer) obj2;
                                int intValue2 = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    DebugUtils.m787TextTitleMediumXl4FiYE((String) color2.title.invoke(), null, 0L, null, 0, 0, gapComposer3, 0, 62);
                                    String str = (String) color2.description.invoke();
                                    if (str != null) {
                                        gapComposer3.startReplaceGroup(-1526991719);
                                        Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer3, 0, 126);
                                        gapComposer3.end(false);
                                        break;
                                    } else {
                                        gapComposer3.startReplaceGroup(-1526991720);
                                        gapComposer3.end(false);
                                        break;
                                    }
                                }
                        }
                        return unit;
                    }
                }, gapComposer), gapComposer, ((i2 >> 3) & 14) | 27648 | (i2 & 896), 0);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3((Object) color, function0, (Object) modifier, i, 29);
            }
        }

        public static final void FolderSettingList(final Function0 function0, final Function0 function02, final Function0 function03, final Function0 function04, final boolean z, final boolean z2, Modifier modifier, Composer composer, final int i) {
            final Modifier modifier2;
            function0.getClass();
            function02.getClass();
            function03.getClass();
            function04.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(881986695);
            int i2 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | (gapComposer.changedInstance(function02) ? 32 : 16) | (gapComposer.changedInstance(function03) ? 256 : 128) | (gapComposer.changedInstance(function04) ? 2048 : 1024) | (gapComposer.changed(z) ? 16384 : 8192) | (gapComposer.changed(z2) ? 131072 : 65536) | 1572864;
            if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
                WindowSizeInfo calculateWindowSizeInfo = Jsoup.calculateWindowSizeInfo(gapComposer);
                final boolean z3 = (Dp.m744compareTo0680j_4(DpSize.m749getWidthD9Ej5fM(calculateWindowSizeInfo.size), DpSize.m748getHeightD9Ej5fM(calculateWindowSizeInfo.size)) > 0) && (calculateWindowSizeInfo.sizeClass.heightSizeClass == WindowHeightSizeClass.Compact);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Modifier then = OffsetKt.m220paddingVpY3zN4$default(companion, 0.0f, 8.0f, 1).then(SizeKt.FillWholeMaxWidth);
                boolean changed = ((i2 & 14) == 4) | ((57344 & i2) == 16384) | gapComposer.changed(z3) | ((458752 & i2) == 131072) | ((i2 & 112) == 32) | ((i2 & 896) == 256) | ((i2 & 7168) == 2048);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new Function1() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.setting.FolderSettingListKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) obj;
                            lazyGridIntervalContent.getClass();
                            int i3 = 5;
                            boolean z4 = z;
                            boolean z5 = z3;
                            boolean z6 = z2;
                            if (z4) {
                                Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z5, 7), new ComposableLambdaImpl(800516381, new AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8(function03, z6, 3), true));
                            } else {
                                Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z5, i3), new ComposableLambdaImpl(1187930054, new AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8(function0, z6, 2), true));
                                Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z5, 6), new ComposableLambdaImpl(265161391, new TextFieldImplKt$$ExternalSyntheticLambda9(4, function02), true));
                            }
                            Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z5, 8), new ComposableLambdaImpl(1531264833, new TextFieldImplKt$$ExternalSyntheticLambda9(i3, function04), true));
                            return Unit.INSTANCE;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Handshake.Companion.SettingList(0, gapComposer, then, (Function1) rememberedValue);
                modifier2 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2(function02, function03, function04, z, z2, modifier2, i) { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.setting.FolderSettingListKt$$ExternalSyntheticLambda1
                    public final /* synthetic */ Function0 f$1;
                    public final /* synthetic */ Function0 f$2;
                    public final /* synthetic */ Function0 f$3;
                    public final /* synthetic */ boolean f$4;
                    public final /* synthetic */ boolean f$5;
                    public final /* synthetic */ Modifier f$6;

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int updateChangedFlags = Updater.updateChangedFlags(1);
                        CacheControl.Companion.FolderSettingList(Function0.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags);
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:118:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0273  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void GeneralSettingsContent(net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$State r43, kotlin.jvm.functions.Function1 r44, net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider r45, final net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder r46, androidx.compose.ui.Modifier r47, androidx.compose.runtime.Composer r48, int r49) {
            /*
                Method dump skipped, instructions count: 1141
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.GeneralSettingsContent(net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$State, kotlin.jvm.functions.Function1, net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider, net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        
            if ((r17 & 1) != 0) goto L25;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void K9MailTheme2(boolean r13, androidx.compose.runtime.internal.ComposableLambdaImpl r14, androidx.compose.runtime.Composer r15, int r16, int r17) {
            /*
                r0 = r15
                androidx.compose.runtime.GapComposer r0 = (androidx.compose.runtime.GapComposer) r0
                r1 = -1777238172(0xffffffff96117f64, float:-1.1753204E-25)
                r0.startRestartGroup(r1)
                r1 = r16 & 6
                if (r1 != 0) goto L1d
                r1 = r17 & 1
                if (r1 != 0) goto L19
                boolean r1 = r0.changed(r13)
                if (r1 == 0) goto L19
                r1 = 4
                goto L1a
            L19:
                r1 = 2
            L1a:
                r1 = r16 | r1
                goto L1f
            L1d:
                r1 = r16
            L1f:
                r2 = r1 & 19
                r3 = 18
                if (r2 == r3) goto L27
                r2 = 1
                goto L28
            L27:
                r2 = 0
            L28:
                r3 = r1 & 1
                boolean r2 = r0.shouldExecute(r3, r2)
                if (r2 == 0) goto L81
                r0.startDefaults()
                r2 = r16 & 1
                if (r2 == 0) goto L48
                boolean r2 = r0.getDefaultsInvalid()
                if (r2 == 0) goto L3e
                goto L48
            L3e:
                r0.skipToGroupEnd()
                r2 = r17 & 1
                if (r2 == 0) goto L51
            L45:
                r1 = r1 & (-15)
                goto L51
            L48:
                r2 = r17 & 1
                if (r2 == 0) goto L51
                boolean r13 = androidx.compose.foundation.ImageKt.isSystemInDarkTheme(r0)
                goto L45
            L51:
                r0.endDefaults()
                net.thunderbird.core.ui.compose.theme2.ThemeImages r2 = new net.thunderbird.core.ui.compose.theme2.ThemeImages
                kotlin.SynchronizedLazyImpl r3 = net.thunderbird.core.ui.compose.theme2.resources.Drawable0_commonMainKt.core_ui_theme2_k9mail_logo$delegate
                java.lang.Object r3 = r3.getValue()
                org.jetbrains.compose.resources.DrawableResource r3 = (org.jetbrains.compose.resources.DrawableResource) r3
                r2.<init>(r3)
                net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeVariants r3 = new net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeVariants
                net.thunderbird.core.ui.compose.theme2.ThemeColorScheme r4 = net.thunderbird.core.ui.compose.theme2.k9mail.ThemeColorsKt.darkThemeColorScheme
                net.thunderbird.core.ui.compose.theme2.ThemeColorScheme r5 = net.thunderbird.core.ui.compose.theme2.k9mail.ThemeColorsKt.lightThemeColorScheme
                r3.<init>(r4, r5)
                net.thunderbird.core.ui.compose.theme2.ThemeImageVariants r4 = new net.thunderbird.core.ui.compose.theme2.ThemeImageVariants
                r4.<init>(r2, r2)
                net.thunderbird.core.ui.compose.theme2.ThemeShapes r2 = net.thunderbird.core.ui.compose.theme2.p001default.DefaultThemeShapesKt.defaultThemeShapes
                net.thunderbird.core.ui.compose.theme2.ThemeTypography r5 = net.thunderbird.core.ui.compose.theme2.p001default.DefaultThemeTypographyKt.defaultTypography
                net.thunderbird.core.ui.compose.theme2.ThemeConfig r6 = new net.thunderbird.core.ui.compose.theme2.ThemeConfig
                r6.<init>(r3, r4, r2, r5)
                int r1 = r1 << 3
                r1 = r1 & 1008(0x3f0, float:1.413E-42)
                kotlin.io.CloseableKt.MainTheme(r6, r13, r14, r0, r1)
            L7f:
                r8 = r13
                goto L85
            L81:
                r0.skipToGroupEnd()
                goto L7f
            L85:
                androidx.compose.runtime.RecomposeScopeImpl r13 = r0.endRestartGroup()
                if (r13 == 0) goto L98
                androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3 r7 = new androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3
                r12 = 1
                r9 = r14
                r10 = r16
                r11 = r17
                r7.<init>(r8, r9, r10, r11, r12)
                r13.block = r7
            L98:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.K9MailTheme2(boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
        }

        /* JADX WARN: Type inference failed for: r10v2, types: [net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0] */
        /* JADX WARN: Type inference failed for: r12v3, types: [net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0] */
        public static final void MessageListSwipeableItem(MessageItemUi messageItemUi, SwipeActions swipeActions, Function1 function1, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
            ComposableLambdaImpl composableLambdaImpl2;
            Modifier modifier2;
            SwipeAction swipeAction;
            SwipeAction swipeAction2;
            SwipeAction swipeAction3;
            SwipeAction swipeAction4;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1092947685);
            int i2 = i | (gapComposer.changed(messageItemUi) ? 4 : 2) | (gapComposer.changedInstance(swipeActions) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | 3072;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
                final int i3 = 1;
                final int i4 = 0;
                Map mapOf = MapsKt__MapsKt.mapOf(new Pair(MessageListStateDescription.NewMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_new_message_description)), new Pair(MessageListStateDescription.ReadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_read_message_description)), new Pair(MessageListStateDescription.UnreadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_unread_message_description)), new Pair(MessageListStateDescription.ActiveNewMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_active_new_message_description)), new Pair(MessageListStateDescription.ActiveReadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_active_read_message_description)), new Pair(MessageListStateDescription.ActiveUnreadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_active_unread_message_description)), new Pair(MessageListStateDescription.SelectedNewMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_selected_new_message_description)), new Pair(MessageListStateDescription.SelectedReadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_selected_read_message_description)), new Pair(MessageListStateDescription.SelectedUnreadMessage, Operation$State.stringResource(gapComposer, R.string.message_list_state_selected_unread_message_description)));
                boolean changed = gapComposer.changed(swipeActions);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                if (changed || rememberedValue == obj) {
                    ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                    final Integer num = null;
                    final Integer accessibilityStringRes = (swipeActions == null || (swipeAction2 = swipeActions.rightAction) == null) ? null : Okio.toAccessibilityStringRes(swipeAction2);
                    if (accessibilityStringRes != null) {
                        createListBuilder.add(new SwipeDirectionAccessibilityAction.StartToEndAccessibilityAction(new Function2() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                int i5 = i4;
                                Integer num2 = accessibilityStringRes;
                                Composer composer2 = (Composer) obj2;
                                ((Integer) obj3).getClass();
                                switch (i5) {
                                    case 0:
                                        GapComposer gapComposer2 = (GapComposer) composer2;
                                        gapComposer2.startReplaceGroup(-1464881199);
                                        String stringResource = Operation$State.stringResource(gapComposer2, num2.intValue());
                                        gapComposer2.end(false);
                                        return stringResource;
                                    default:
                                        GapComposer gapComposer3 = (GapComposer) composer2;
                                        gapComposer3.startReplaceGroup(-310744952);
                                        String stringResource2 = Operation$State.stringResource(gapComposer3, num2.intValue());
                                        gapComposer3.end(false);
                                        return stringResource2;
                                }
                            }
                        }));
                    }
                    if (swipeActions != null && (swipeAction = swipeActions.leftAction) != null) {
                        num = Okio.toAccessibilityStringRes(swipeAction);
                    }
                    if (num != null) {
                        createListBuilder.add(new SwipeDirectionAccessibilityAction.EndToStartAccessibilityAction(new Function2() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                int i5 = i3;
                                Integer num2 = num;
                                Composer composer2 = (Composer) obj2;
                                ((Integer) obj3).getClass();
                                switch (i5) {
                                    case 0:
                                        GapComposer gapComposer2 = (GapComposer) composer2;
                                        gapComposer2.startReplaceGroup(-1464881199);
                                        String stringResource = Operation$State.stringResource(gapComposer2, num2.intValue());
                                        gapComposer2.end(false);
                                        return stringResource;
                                    default:
                                        GapComposer gapComposer3 = (GapComposer) composer2;
                                        gapComposer3.startReplaceGroup(-310744952);
                                        String stringResource2 = Operation$State.stringResource(gapComposer3, num2.intValue());
                                        gapComposer3.end(false);
                                        return stringResource2;
                                }
                            }
                        }));
                    }
                    rememberedValue = IntOffsetKt.build(createListBuilder);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                List list = (List) rememberedValue;
                boolean changed2 = gapComposer.changed(mapOf) | gapComposer.changed(list);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == obj) {
                    rememberedValue2 = new MessageListScreenAccessibilityState(mapOf, Okio.toPersistentList(list));
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                MessageListScreenAccessibilityState messageListScreenAccessibilityState = (MessageListScreenAccessibilityState) rememberedValue2;
                SwipeAction swipeAction5 = SwipeAction.None;
                if (swipeActions == null || (swipeAction3 = swipeActions.rightAction) == null) {
                    swipeAction3 = swipeAction5;
                }
                if (swipeActions != null && (swipeAction4 = swipeActions.leftAction) != null) {
                    swipeAction5 = swipeAction4;
                }
                boolean changed3 = gapComposer.changed(swipeAction3.ordinal());
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue3 == obj) {
                    rememberedValue3 = getBehaviour(swipeAction3);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                final SwipeBehaviour swipeBehaviour = (SwipeBehaviour) rememberedValue3;
                boolean changed4 = gapComposer.changed(swipeAction5.ordinal());
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed4 || rememberedValue4 == obj) {
                    rememberedValue4 = getBehaviour(swipeAction5);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                final SwipeBehaviour swipeBehaviour2 = (SwipeBehaviour) rememberedValue4;
                final ImmutableList immutableList = messageListScreenAccessibilityState.swipeDirectionAccessibilityAction;
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (rememberedValue5 == obj) {
                    rememberedValue5 = Updater.createCompositionCoroutineScope(gapComposer);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                final CoroutineScope coroutineScope = (CoroutineScope) rememberedValue5;
                final Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                Object[] objArr = {density, swipeBehaviour, swipeBehaviour2, immutableList};
                coroutineScope.getClass();
                density.getClass();
                swipeBehaviour.getClass();
                swipeBehaviour2.getClass();
                immutableList.getClass();
                WeakCache listSaver = SaverKt.listSaver(new AccountCoreModuleKt$$ExternalSyntheticLambda0(1), new XmlSettingsParser$$ExternalSyntheticLambda7(coroutineScope, density, swipeBehaviour, swipeBehaviour2, immutableList, 8));
                boolean changedInstance = gapComposer.changedInstance(coroutineScope) | gapComposer.changed(density) | gapComposer.changed(swipeBehaviour) | gapComposer.changed(swipeBehaviour2) | gapComposer.changed(immutableList);
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue6 == obj) {
                    rememberedValue6 = new Function0() { // from class: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowStateKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return new SwipeableRowState(CoroutineScope.this, density, swipeBehaviour, swipeBehaviour2, immutableList, 0.0f, SwipeState.Settled, 0.0f, 0.0f);
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                SwipeableRowState swipeableRowState = (SwipeableRowState) SaverKt.rememberSaveable(objArr, listSaver, (Function0) rememberedValue6, gapComposer, 0);
                boolean z = swipeActions != null;
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1934838601, new BufferedChannel$$ExternalSyntheticLambda1(21, swipeActions, swipeableRowState), gapComposer);
                boolean changedInstance2 = gapComposer.changedInstance(swipeActions) | ((i2 & 896) == 256) | ((i2 & 14) == 4);
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue7 == obj) {
                    rememberedValue7 = new SettingListKt$$ExternalSyntheticLambda0(swipeActions, function1, messageItemUi);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                composableLambdaImpl2 = composableLambdaImpl;
                ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1535630908, new BufferedChannel$$ExternalSyntheticLambda1(22, composableLambdaImpl2, messageListScreenAccessibilityState), gapComposer);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Okio.SwipeableRow(swipeableRowState, rememberComposableLambda, companion, z, (Function1) rememberedValue7, null, rememberComposableLambda2, gapComposer, 1573296);
                modifier2 = companion;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(messageItemUi, swipeActions, function1, modifier2, composableLambdaImpl2, i, 18);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0241  */
        /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0236  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x00d1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void ReadMessageItem(net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi r26, net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences r27, net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator r28, kotlin.jvm.functions.Function0 r29, kotlin.jvm.functions.Function0 r30, kotlin.jvm.functions.Function0 r31, kotlin.jvm.functions.Function1 r32, androidx.compose.ui.Modifier r33, androidx.compose.runtime.Composer r34, int r35, int r36) {
            /*
                Method dump skipped, instructions count: 601
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.ReadMessageItem(net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi, net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences, net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
        }

        public static boolean containsEntry$kotlinx_collections_immutable(AbstractMutableMap abstractMutableMap, Map.Entry entry) {
            entry.getClass();
            V v = abstractMutableMap.get(entry.getKey());
            return v != 0 ? v.equals(entry.getValue()) : entry.getValue() == null && abstractMutableMap.containsKey(entry.getKey());
        }

        public static final String generateId() {
            byte[] bArr = new byte[16];
            SecureRandomHolder.instance.nextBytes(bArr);
            byte b = (byte) (bArr[6] & 15);
            bArr[6] = b;
            bArr[6] = (byte) (b | 64);
            byte b2 = (byte) (bArr[8] & 63);
            bArr[8] = b2;
            bArr[8] = (byte) (b2 | 128);
            long longAt = UuidKt.getLongAt(0, bArr);
            long longAt2 = UuidKt.getLongAt(8, bArr);
            return ((longAt == 0 && longAt2 == 0) ? Uuid.NIL : new Uuid(longAt, longAt2)).toString();
        }

        public static final SwipeBehaviour getBehaviour(SwipeAction swipeAction) {
            switch (swipeAction.ordinal()) {
                case 0:
                case 5:
                    return SwipeBehaviour.Disabled.INSTANCE;
                case 1:
                case 2:
                case 3:
                case 6:
                    return new SwipeBehaviour.Action();
                case 4:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                case 9:
                    return new SwipeBehaviour.Dismiss();
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
            }
        }

        public static final KSerializer getNullable(KSerializer kSerializer) {
            return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
        }

        public static final String getRootCauseMessage(Exception exc) {
            Throwable cause;
            do {
                cause = exc.getCause();
                if (cause != null) {
                    exc = cause;
                } else {
                    cause = null;
                }
            } while (cause != null);
            if (exc instanceof MessagingException) {
                return ((MessagingException) exc).message;
            }
            String simpleName = Reflection.getOrCreateKotlinClass(exc.getClass()).getSimpleName();
            String localizedMessage = exc.getLocalizedMessage();
            return (localizedMessage == null || StringsKt.isBlank(localizedMessage)) ? simpleName : Config.CC.m(simpleName, ": ", localizedMessage);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v7, types: [boolean] */
        /* JADX WARN: Type inference failed for: r6v3, types: [org.apache.james.mime4j.dom.address.Group] */
        public static DomainList parseAddressList(String str) {
            DomainList domainList;
            Mailbox mailbox;
            DomainList domainList2;
            Mailbox mailbox2;
            Charset charset = Charsets.UTF_8;
            DomainList domainList3 = null;
            if (str == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("CharSequence may not be null");
                return null;
            }
            if (charset == null) {
                charset = Charsets.DEFAULT_CHARSET;
            }
            AddressListParser addressListParser = new AddressListParser(new TextInputStream(str, charset));
            try {
                addressListParser.parseAddressList0();
                ArrayList arrayList = (ArrayList) addressListParser.jjtree.segments;
                boolean z = false;
                ASTaddress_list aSTaddress_list = (ASTaddress_list) ((SimpleNode) arrayList.get(0));
                ArrayList arrayList2 = new ArrayList();
                int i = 0;
                while (i < aSTaddress_list.jjtGetNumChildren()) {
                    ASTaddress aSTaddress = (ASTaddress) aSTaddress_list.children[i];
                    aSTaddress.jjtGetNumChildren();
                    SimpleNode simpleNode = aSTaddress.children[z ? 1 : 0];
                    if (simpleNode instanceof ASTaddr_spec) {
                        mailbox = CloseableKt.buildAddrSpec(domainList3, (ASTaddr_spec) simpleNode);
                    } else if (simpleNode instanceof ASTangle_addr) {
                        mailbox = CloseableKt.buildAngleAddr((ASTangle_addr) simpleNode);
                    } else {
                        if (!(simpleNode instanceof ASTphrase)) {
                            DomainList domainList4 = domainList3;
                            Tokenizer$$ExternalSyntheticLambda1.m(simpleNode, "Address \"phrase\" is expected but got \"");
                            return domainList4;
                        }
                        String buildString = CloseableKt.buildString((ASTphrase) simpleNode, z);
                        SimpleNode simpleNode2 = aSTaddress.children[1];
                        if (simpleNode2 instanceof ASTgroup_body) {
                            ASTgroup_body aSTgroup_body = (ASTgroup_body) simpleNode2;
                            ArrayList arrayList3 = new ArrayList();
                            int jjtGetNumChildren = aSTgroup_body.jjtGetNumChildren();
                            int i2 = z ? 1 : 0;
                            ?? r1 = z;
                            while (i2 < jjtGetNumChildren) {
                                int i3 = i2 + 1;
                                SimpleNode simpleNode3 = aSTgroup_body.children[i2];
                                if (!(simpleNode3 instanceof ASTmailbox)) {
                                    DomainList domainList5 = domainList3;
                                    Tokenizer$$ExternalSyntheticLambda1.m(simpleNode3, "Address \"mailbox\" is expected but got \"");
                                    return domainList5;
                                }
                                ASTmailbox aSTmailbox = (ASTmailbox) simpleNode3;
                                aSTmailbox.jjtGetNumChildren();
                                SimpleNode simpleNode4 = aSTmailbox.children[r1];
                                if (simpleNode4 instanceof ASTaddr_spec) {
                                    mailbox2 = CloseableKt.buildAddrSpec(domainList3, (ASTaddr_spec) simpleNode4);
                                } else if (simpleNode4 instanceof ASTangle_addr) {
                                    mailbox2 = CloseableKt.buildAngleAddr((ASTangle_addr) simpleNode4);
                                } else {
                                    if (!(simpleNode4 instanceof ASTname_addr)) {
                                        DomainList domainList6 = domainList3;
                                        Tokenizer$$ExternalSyntheticLambda1.m(simpleNode4, "Address \"addr_spec\" or \"angle_addr\" or \"name_addr\" is expected but got \"");
                                        return domainList6;
                                    }
                                    ASTname_addr aSTname_addr = (ASTname_addr) simpleNode4;
                                    aSTname_addr.jjtGetNumChildren();
                                    SimpleNode simpleNode5 = aSTname_addr.children[r1];
                                    if (!(simpleNode5 instanceof ASTphrase)) {
                                        DomainList domainList7 = domainList3;
                                        Tokenizer$$ExternalSyntheticLambda1.m(simpleNode5, "Address \"phrase\" is expected but got \"");
                                        return domainList7;
                                    }
                                    String buildString2 = CloseableKt.buildString((ASTphrase) simpleNode5, r1);
                                    SimpleNode simpleNode6 = aSTname_addr.children[1];
                                    if (!(simpleNode6 instanceof ASTangle_addr)) {
                                        DomainList domainList8 = domainList3;
                                        Tokenizer$$ExternalSyntheticLambda1.m(simpleNode6, "Address \"angle_addr\" is expected but got \"");
                                        return domainList8;
                                    }
                                    try {
                                        String decodeEncodedWords = DecoderUtil.decodeEncodedWords(buildString2);
                                        Mailbox buildAngleAddr = CloseableKt.buildAngleAddr((ASTangle_addr) simpleNode6);
                                        domainList2 = domainList3;
                                        mailbox2 = new Mailbox(decodeEncodedWords, buildAngleAddr.route, buildAngleAddr.localPart, buildAngleAddr.domain);
                                        arrayList3.add(mailbox2);
                                        i2 = i3;
                                        domainList3 = domainList2;
                                        r1 = 0;
                                    } catch (IllegalArgumentException e) {
                                        throw new ParseException(e);
                                    }
                                }
                                domainList2 = domainList3;
                                arrayList3.add(mailbox2);
                                i2 = i3;
                                domainList3 = domainList2;
                                r1 = 0;
                            }
                            domainList = domainList3;
                            mailbox = new Group(buildString, new DomainList(arrayList3, true));
                        } else {
                            domainList = domainList3;
                            if (!(simpleNode2 instanceof ASTangle_addr)) {
                                Tokenizer$$ExternalSyntheticLambda1.m(simpleNode, "Address \"group_body\" or \"angle_addr\" is expected but got \"");
                                return domainList;
                            }
                            try {
                                String decodeEncodedWords2 = DecoderUtil.decodeEncodedWords(buildString);
                                Mailbox buildAngleAddr2 = CloseableKt.buildAngleAddr((ASTangle_addr) simpleNode2);
                                mailbox = new Mailbox(decodeEncodedWords2, buildAngleAddr2.route, buildAngleAddr2.localPart, buildAngleAddr2.domain);
                            } catch (IllegalArgumentException e2) {
                                throw new ParseException(e2);
                            }
                        }
                        arrayList2.add(mailbox);
                        i++;
                        domainList3 = domainList;
                        z = false;
                    }
                    domainList = domainList3;
                    arrayList2.add(mailbox);
                    i++;
                    domainList3 = domainList;
                    z = false;
                }
                return new DomainList(arrayList2);
            } catch (TokenMgrError e3) {
                throw new ParseException(e3);
            }
        }
    }

    static {
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        long m1001toLongimpl = Duration.m1001toLongimpl(InstantKt.toDuration(Integer.MAX_VALUE, durationUnit), durationUnit);
        if (m1001toLongimpl >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(m1001toLongimpl, "maxStale < 0: "));
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    public final String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.noCache) {
            sb.append("no-cache, ");
        }
        if (this.noStore) {
            sb.append("no-store, ");
        }
        int i = this.maxAgeSeconds;
        if (i != -1) {
            sb.append("max-age=");
            sb.append(i);
            sb.append(", ");
        }
        int i2 = this.sMaxAgeSeconds;
        if (i2 != -1) {
            sb.append("s-maxage=");
            sb.append(i2);
            sb.append(", ");
        }
        if (this.isPrivate) {
            sb.append("private, ");
        }
        if (this.isPublic) {
            sb.append("public, ");
        }
        if (this.mustRevalidate) {
            sb.append("must-revalidate, ");
        }
        int i3 = this.maxStaleSeconds;
        if (i3 != -1) {
            sb.append("max-stale=");
            sb.append(i3);
            sb.append(", ");
        }
        int i4 = this.minFreshSeconds;
        if (i4 != -1) {
            sb.append("min-fresh=");
            sb.append(i4);
            sb.append(", ");
        }
        if (this.onlyIfCached) {
            sb.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb.append("no-transform, ");
        }
        if (this.immutable) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length()).getClass();
        String sb2 = sb.toString();
        this.headerValue = sb2;
        return sb2;
    }
}
