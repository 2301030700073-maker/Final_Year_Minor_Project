package okhttp3;

import android.content.Context;
import android.provider.Settings;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.CanvasKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.GridCells$Adaptive;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.emoji2.text.flatbuffer.Table;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.ChannelAsFlow;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder$$ExternalSyntheticLambda10;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.component.ScrollEvent$ScrollToMessage;
import net.thunderbird.feature.mail.message.list.ui.state.Folder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda6;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.jsoup.Jsoup;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.factory.KoinViewModelFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Handshake {
    public final CipherSuite cipherSuite;
    public final List localCertificates;
    public final SynchronizedLazyImpl peerCertificates$delegate;
    public final TlsVersion tlsVersion;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static final void AccountContent(DrawerContract$State drawerContract$State, Function1 function1, DisplayAccount displayAccount, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1720337915);
            int i2 = (gapComposer.changed(drawerContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(displayAccount) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                MathKt.m983Surface_UMDTes(null, null, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainerLow, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-1683930690, new DrawerContentKt$$ExternalSyntheticLambda6(drawerContract$State, displayAccount, function1), gapComposer), gapComposer, 196608, 27);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new DrawerContentKt$$ExternalSyntheticLambda6(drawerContract$State, function1, displayAccount, i);
            }
        }

        public static final void AvatarImageSelection(InAppNotificationHostKt$$ExternalSyntheticLambda4 inAppNotificationHostKt$$ExternalSyntheticLambda4, Modifier modifier, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1454824529);
            int i2 = (gapComposer.changedInstance(inAppNotificationHostKt$$ExternalSyntheticLambda4) ? 4 : 2) | i | 48;
            int i3 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-305666529, new GeneralSettingsBuilder$$ExternalSyntheticLambda10(inAppNotificationHostKt$$ExternalSyntheticLambda4, i3), gapComposer);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Cookie.Companion.SettingItemLayout(null, null, companion, null, rememberComposableLambda, gapComposer, 25014, 8);
                modifier = companion;
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 13, inAppNotificationHostKt$$ExternalSyntheticLambda4, modifier);
            }
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
            */
        public static final void DialogSettingView(java.lang.String r26, kotlinx.collections.immutable.ImmutableList r27, kotlin.jvm.functions.Function1 r28, kotlin.jvm.functions.Function0 r29, java.lang.String r30, kotlin.jvm.functions.Function3 r31, androidx.compose.runtime.Composer r32, int r33) {
            /*
                Method dump skipped, instructions count: 478
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Handshake.Companion.DialogSettingView(java.lang.String, kotlinx.collections.immutable.ImmutableList, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, java.lang.String, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int):void");
        }

        public static final void DrawerContent(DrawerContract$State drawerContract$State, Function1 function1, Modifier modifier, Composer composer, int i) {
            int i2;
            drawerContract$State.getClass();
            function1.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(2013156175);
            int i3 = (gapComposer.changed(drawerContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | 384;
            if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.LocalDensity;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = CompositionLocalsKt.LocalLayoutDirection;
                if (gapComposer.consume(staticProvidableCompositionLocal2) == LayoutDirection.Rtl) {
                    gapComposer.startReplaceGroup(705559368);
                    WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                    i2 = FlowRowOverflow.current(gapComposer).displayCutout.getInsets$foundation_layout().right;
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(705669449);
                    WeakHashMap weakHashMap2 = WindowInsetsHolder.viewMap;
                    i2 = FlowRowOverflow.current(gapComposer).displayCutout.getInsets$foundation_layout().left;
                    gapComposer.end(false);
                }
                float mo174toDpu2uoSUM = ((Density) gapComposer.consume(staticProvidableCompositionLocal)).mo174toDpu2uoSUM(i2);
                boolean z = !(Settings.Global.getFloat(((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)).getContentResolver(), "animator_duration_scale", 1.0f) == 0.0f);
                float f = 360.0f + mo174toDpu2uoSUM;
                modifier = Modifier.Companion.$$INSTANCE;
                MathKt.m983Surface_UMDTes(TestTagKt.testTag(SizeKt.m238width3ABfNKs(modifier, f).then(SizeKt.FillWholeMaxHeight), "DrawerContent"), null, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainerLow, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(1061666028, new DrawerContentKt$$ExternalSyntheticLambda0(drawerContract$State, z, function1), gapComposer), gapComposer, 196608, 26);
            } else {
                gapComposer.skipToGroupEnd();
            }
            Modifier modifier2 = modifier;
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(drawerContract$State, function1, modifier2, i, 27);
            }
        }

        public static final void FolderContent(DrawerContract$State drawerContract$State, Function1 function1, Composer composer, int i) {
            Object obj;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-440222033);
            int i2 = (gapComposer.changed(drawerContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
                Iterator<E> it = drawerContract$State.accounts.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it.next();
                        if (Intrinsics.areEqual(((DisplayAccount) obj).getId(), drawerContract$State.selectedAccountId)) {
                            break;
                        }
                    }
                }
                MathKt.m983Surface_UMDTes(null, null, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainerLow, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(89628786, new DrawerContentKt$$ExternalSyntheticLambda0(drawerContract$State, function1, obj instanceof UnifiedDisplayAccount), gapComposer), gapComposer, 196608, 27);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 17, drawerContract$State, function1);
            }
        }

        public static final void MessageList(DefaultMessageListScope defaultMessageListScope, MessageListState messageListState, Function1 function1, Modifier modifier, Composer composer, int i) {
            Modifier modifier2;
            LazyListState lazyListState;
            defaultMessageListScope.getClass();
            messageListState.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(2073488429);
            int i2 = i | (gapComposer.changed(defaultMessageListScope) ? 4 : 2) | (gapComposer.changed(messageListState) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                int i3 = i2 >> 3;
                LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
                MutableState rememberUpdatedState = Updater.rememberUpdatedState(messageListState.getMetadata().paging, gapComposer);
                Folder folder = messageListState.getMetadata().folder;
                Continuation continuation = null;
                String str = folder != null ? folder.id : null;
                boolean changed = ((((i3 & 112) ^ 48) > 32 && gapComposer.changed(function1)) || (i3 & 48) == 32) | gapComposer.changed(rememberLazyListState) | gapComposer.changed(rememberUpdatedState);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (changed || rememberedValue == neverEqualPolicy) {
                    StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$1 = new StringResourcesKt$stringResource$str$3$1(rememberLazyListState, function1, rememberUpdatedState, continuation, 5);
                    lazyListState = rememberLazyListState;
                    gapComposer.updateRememberedValue(stringResourcesKt$stringResource$str$3$1);
                    rememberedValue = stringResourcesKt$stringResource$str$3$1;
                } else {
                    lazyListState = rememberLazyListState;
                }
                Updater.LaunchedEffect(lazyListState, str, (Function2) rememberedValue, gapComposer);
                boolean z = messageListState.getMetadata().showAccountIndicator;
                PersistentMap persistentMap = messageListState.getMetadata().swipeActions;
                ScrollEventEffect(defaultMessageListScope, messageListState.getMessages(), lazyListState, gapComposer, i2 & 14);
                modifier2 = modifier;
                Modifier testTag = TestTagKt.testTag(modifier2, "TestMessageList_Root");
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                PaddingValuesImpl m215PaddingValuesa9UjIt4$default = OffsetKt.m215PaddingValuesa9UjIt4$default(0.0f, 0.0f, 64.0f, 7);
                boolean changedInstance = ((i2 & 112) == 32) | gapComposer.changedInstance(persistentMap) | ((i2 & 896) == 256) | gapComposer.changed(z);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new WorkerWrapper$$ExternalSyntheticLambda1(messageListState, persistentMap, function1, z, 2);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                ActionBar.LazyColumn(0, 504, null, null, null, m215PaddingValuesa9UjIt4$default, lazyListState, gapComposer, null, testTag, (Function1) rememberedValue2, false);
            } else {
                modifier2 = modifier;
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(defaultMessageListScope, messageListState, function1, modifier2, i, 18);
            }
        }

        public static final PrimitiveSerialDescriptor PrimitiveSerialDescriptor(String str) {
            PrimitiveKind$INT primitiveKind$INT = PrimitiveKind$INT.INSTANCE$8;
            if (StringsKt.isBlank(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                return null;
            }
            Object it = ((MapBuilderValues) PrimitivesKt.BUILTIN_SERIALIZERS.values()).iterator();
            while (((Table) it).hasNext()) {
                KSerializer kSerializer = (KSerializer) ((MapBuilder.KeysItr) it).next();
                if (str.equals(kSerializer.getDescriptor().getSerialName())) {
                    StringBuilder m31m = CameraDevices$CC.m31m("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exists ");
                    m31m.append(Reflection.getOrCreateKotlinClass(kSerializer.getClass()).getSimpleName());
                    m31m.append(".\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                    UriKt$$ExternalSyntheticBUOutline0.m(StringsKt__IndentKt.trimIndent(m31m.toString()));
                    return null;
                }
            }
            return new PrimitiveSerialDescriptor(str, primitiveKind$INT);
        }

        public static final void ScrollEventEffect(DefaultMessageListScope defaultMessageListScope, ImmutableList immutableList, LazyListState lazyListState, Composer composer, int i) {
            int i2;
            GapComposer gapComposer;
            MutableState mutableState;
            LazyListState lazyListState2 = lazyListState;
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(-927400721);
            if ((i & 6) == 0) {
                i2 = (gapComposer2.changed(defaultMessageListScope) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer2.changed(immutableList) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer2.changed(lazyListState2) ? 256 : 128;
            }
            if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                int i3 = i2 >> 3;
                MutableState rememberUpdatedState = Updater.rememberUpdatedState(immutableList, gapComposer2);
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = Updater.createCompositionCoroutineScope(gapComposer2);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
                ChannelAsFlow channelAsFlow = defaultMessageListScope.scrollEvents;
                int i4 = i2 & 896;
                boolean changedInstance = (i4 == 256) | ((i2 & 14) == 4) | gapComposer2.changedInstance(coroutineScope) | gapComposer2.changed(rememberUpdatedState);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    NavControllerImpl$$ExternalSyntheticLambda0 navControllerImpl$$ExternalSyntheticLambda0 = new NavControllerImpl$$ExternalSyntheticLambda0(coroutineScope, defaultMessageListScope, lazyListState2, rememberUpdatedState, 13);
                    mutableState = rememberUpdatedState;
                    gapComposer2.updateRememberedValue(navControllerImpl$$ExternalSyntheticLambda0);
                    rememberedValue2 = navControllerImpl$$ExternalSyntheticLambda0;
                } else {
                    mutableState = rememberUpdatedState;
                }
                gapComposer = gapComposer2;
                SchemaInfoUtilKt.LifecycleStartEffect(channelAsFlow, lazyListState, null, (Function1) rememberedValue2, gapComposer, i3 & 112);
                lazyListState2 = lazyListState;
                boolean changed = gapComposer.changed(mutableState) | (i4 == 256);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new OutboxFolderManager$getOutboxFolderIdSync$1(lazyListState2, mutableState, (Continuation) null, 5);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Updater.LaunchedEffect(gapComposer, lazyListState2, (Function2) rememberedValue3);
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(defaultMessageListScope, immutableList, lazyListState2, i, 5);
            }
        }

        public static final void SegmentedButtonItem(SettingValue.SegmentedButton segmentedButton, Function1 function1, Modifier modifier, Composer composer, int i) {
            int i2;
            segmentedButton.getClass();
            function1.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-462279224);
            if ((i & 6) == 0) {
                i2 = ((i & 8) == 0 ? gapComposer.changed(segmentedButton) : gapComposer.changedInstance(segmentedButton) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changed(modifier) ? 256 : 128;
            }
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                Cookie.Companion.SettingItemLayout(null, null, modifier, null, Expect_jvmKt.rememberComposableLambda(1955843606, new BufferedChannel$$ExternalSyntheticLambda1(20, (Object) segmentedButton, function1), gapComposer), gapComposer, (i2 & 896) | 24630, 8);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(segmentedButton, function1, modifier, i, 2);
            }
        }

        public static final void SettingList(int i, Composer composer, Modifier modifier, Function1 function1) {
            function1.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(787747698);
            int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
            int i3 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
                WindowSizeInfo calculateWindowSizeInfo = Jsoup.calculateWindowSizeInfo(gapComposer);
                GridCells$Adaptive gridCells$Adaptive = ((Dp.m744compareTo0680j_4(DpSize.m749getWidthD9Ej5fM(calculateWindowSizeInfo.size), DpSize.m748getHeightD9Ej5fM(calculateWindowSizeInfo.size)) > 0) && (calculateWindowSizeInfo.sizeClass.heightSizeClass == WindowHeightSizeClass.Compact)) ? new GridCells$Adaptive(64.0f) : new GridCells$Adaptive(200.0f);
                boolean z = (i2 & 112) == 32;
                Object rememberedValue = gapComposer.rememberedValue();
                if (z || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new ChangelogScreenKt$$ExternalSyntheticLambda7(17, function1);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Data.Companion.LazyVerticalGrid(gridCells$Adaptive, modifier, null, null, null, null, null, false, null, (Function1) rememberedValue, gapComposer, (i2 << 3) & 112, 1020);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CanvasKt$$ExternalSyntheticLambda0(modifier, function1, i, i3);
            }
        }

        public static final Object access$scrollToMessage(LazyListState lazyListState, ImmutableList immutableList, ScrollEvent$ScrollToMessage scrollEvent$ScrollToMessage, Continuation continuation) {
            MessageItemUi messageItemUi = scrollEvent$ScrollToMessage.message;
            boolean z = scrollEvent$ScrollToMessage.animated;
            Iterator it = immutableList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (Intrinsics.areEqual(messageItemUi.id, ((MessageItemUi) it.next()).id)) {
                    break;
                }
                i++;
            }
            Integer num = new Integer(i);
            if (num.intValue() < 0) {
                num = null;
            }
            if (num != null) {
                int intValue = num.intValue();
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.firstOrNull(lazyListState.getLayoutInfo().visibleItemsInfo);
                int i2 = lazyListMeasuredItem != null ? lazyListMeasuredItem.index : 0;
                LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.lastOrNull(lazyListState.getLayoutInfo().visibleItemsInfo);
                int i3 = lazyListMeasuredItem2 != null ? lazyListMeasuredItem2.index : 0;
                if (i2 > intValue || intValue > i3) {
                    return z ? lazyListState.animateScrollToItem(intValue, continuation) : LazyListState.scrollToItem$default(lazyListState, intValue, continuation);
                }
            }
            return Unit.INSTANCE;
        }

        public static final SerialDescriptorImpl buildSerialDescriptor(String str, RangesKt rangesKt, SerialDescriptor[] serialDescriptorArr, Function1 function1) {
            if (StringsKt.isBlank(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                return null;
            }
            if (rangesKt.equals(StructureKind$MAP.INSTANCE$1)) {
                UriKt$$ExternalSyntheticBUOutline0.m("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
                return null;
            }
            ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
            function1.invoke(classSerialDescriptorBuilder);
            return new SerialDescriptorImpl(str, rangesKt, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
        }

        public static SerialDescriptorImpl buildSerialDescriptor$default(String str, RangesKt rangesKt, SerialDescriptor[] serialDescriptorArr) {
            if (StringsKt.isBlank(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                return null;
            }
            if (rangesKt.equals(StructureKind$MAP.INSTANCE$1)) {
                UriKt$$ExternalSyntheticBUOutline0.m("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
                return null;
            }
            ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
            return new SerialDescriptorImpl(str, rangesKt, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
        }

        public static final void cancelConsumed(Channel channel, Throwable th) {
            CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            if (cancellationException == null) {
                cancellationException = JobKt.CancellationException("Channel was consumed, consumer had failed", th);
            }
            channel.cancel(cancellationException);
        }

        public static Handshake get(SSLSession sSLSession) {
            List list;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("cipherSuite == null");
                return null;
            }
            if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("cipherSuite == ".concat(cipherSuite));
                return null;
            }
            CipherSuite m1049forJavaName = CipherSuite.Companion.m1049forJavaName(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("tlsVersion == null");
                return null;
            }
            if ("NONE".equals(protocol)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("tlsVersion == NONE");
                return null;
            }
            TlsVersion.Companion.getClass();
            TlsVersion forJavaName = HttpUrl.Companion.forJavaName(protocol);
            try {
                list = _UtilJvmKt.toImmutableList(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                list = EmptyList.INSTANCE;
            }
            return new Handshake(forJavaName, m1049forJavaName, _UtilJvmKt.toImmutableList(sSLSession.getLocalCertificates()), new Handshake$Companion$$ExternalSyntheticLambda0(0, list));
        }

        public static final Class getJavaClass(KClass kClass) {
            kClass.getClass();
            Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
            jClass.getClass();
            return jClass;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
        java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
         */
        public static final Class getJavaObjectType(KClass kClass) {
            kClass.getClass();
            Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
            if (jClass.isPrimitive()) {
                String name = jClass.getName();
                switch (name.hashCode()) {
                    case -1325958191:
                        if (name.equals("double")) {
                            return Double.class;
                        }
                        break;
                    case 104431:
                        if (name.equals("int")) {
                            return Integer.class;
                        }
                        break;
                    case 3039496:
                        if (name.equals("byte")) {
                            return Byte.class;
                        }
                        break;
                    case 3052374:
                        if (name.equals("char")) {
                            return Character.class;
                        }
                        break;
                    case 3327612:
                        if (name.equals("long")) {
                            return Long.class;
                        }
                        break;
                    case 3625364:
                        if (name.equals("void")) {
                            return Void.class;
                        }
                        break;
                    case 64711720:
                        if (name.equals("boolean")) {
                            return Boolean.class;
                        }
                        break;
                    case 97526364:
                        if (name.equals("float")) {
                            return Float.class;
                        }
                        break;
                    case 109413500:
                        if (name.equals("short")) {
                            return Short.class;
                        }
                        break;
                }
            }
            return jClass;
        }

        public static int hashCode(int i, Object obj) {
            return (i * 37) + (obj != null ? obj.hashCode() : 0);
        }

        public static final ViewModel resolveViewModel(ClassReference classReference, ViewModelStore viewModelStore, CreationExtras creationExtras, Qualifier qualifier, Scope scope, Function0 function0) {
            String str;
            viewModelStore.getClass();
            creationExtras.getClass();
            scope.getClass();
            Dispatcher dispatcher = new Dispatcher(viewModelStore, new KoinViewModelFactory(classReference, scope, qualifier, function0), creationExtras);
            String qualifiedName = classReference.getQualifiedName();
            if (qualifier != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(qualifier.getValue());
                sb.append(qualifiedName != null ? "_".concat(qualifiedName) : "");
                str = sb.toString();
            } else {
                str = null;
            }
            if (str != null) {
                return dispatcher.getViewModel$lifecycle_viewmodel(str, classReference);
            }
            String qualifiedName2 = classReference.getQualifiedName();
            if (qualifiedName2 != null) {
                return dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName2), classReference);
            }
            UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
            return null;
        }

        public static final void toPort(int i) {
            if (1 > i || i >= 65536) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Not a valid port number: ", i));
            }
        }

        public static final Object trySendBlocking(Object obj, SendChannel sendChannel) {
            Object mo1016trySendJP2dKIU = sendChannel.mo1016trySendJP2dKIU(obj);
            if (!(mo1016trySendJP2dKIU instanceof ChannelResult.Failed)) {
                return Unit.INSTANCE;
            }
            return ((ChannelResult) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new Preferences$getAccountFlow$1(sendChannel, obj, null, 27))).holder;
        }
    }

    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List list, Function0 function0) {
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = list;
        this.peerCertificates$delegate = new SynchronizedLazyImpl(new Handshake$$ExternalSyntheticLambda0(0, function0));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        return handshake.tlsVersion == this.tlsVersion && handshake.cipherSuite == this.cipherSuite && Intrinsics.areEqual(handshake.peerCertificates(), peerCertificates()) && handshake.localCertificates.equals(this.localCertificates);
    }

    public final int hashCode() {
        return this.localCertificates.hashCode() + ((peerCertificates().hashCode() + ((this.cipherSuite.hashCode() + ((this.tlsVersion.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final List peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> peerCertificates = peerCertificates();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(peerCertificates, 10));
        for (Certificate certificate : peerCertificates) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                type2.getClass();
            }
            arrayList.add(type2);
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.tlsVersion);
        sb.append(" cipherSuite=");
        sb.append(this.cipherSuite);
        sb.append(" peerCertificates=");
        sb.append(obj);
        sb.append(" localCertificates=");
        List<Certificate> list = this.localCertificates;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                type.getClass();
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
