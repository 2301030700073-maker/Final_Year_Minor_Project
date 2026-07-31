package okhttp3;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.room.util.DBUtil;
import androidx.work.Operation$State;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.text.DateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Function;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ConflatedBufferedChannel;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import net.thunderbird.core.common.net.HostNameUtils;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.IconListItemKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsScreenKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.internal.ui.component.page.MessageListPageKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import okhttp3.CacheControl;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.DateFormattingKt;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Cookie {
    public final String domain;
    public final long expiresAt;
    public final boolean hostOnly;
    public final boolean httpOnly;
    public final String name;
    public final String path;
    public final boolean persistent;
    public final String sameSite;
    public final boolean secure;
    public final String value;
    public static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.persistent = z3;
        this.hostOnly = z4;
        this.sameSite = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.expiresAt == this.expiresAt && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly && Intrinsics.areEqual(cookie.sameSite, this.sameSite);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(Modifier.CC.m(527, this.name, 31), this.value, 31);
        long j = this.expiresAt;
        int m2 = (((((((Modifier.CC.m(Modifier.CC.m((m + ((int) (j ^ (j >>> 32)))) * 31, this.domain, 31), this.path, 31) + (this.secure ? 1231 : 1237)) * 31) + (this.httpOnly ? 1231 : 1237)) * 31) + (this.persistent ? 1231 : 1237)) * 31) + (this.hostOnly ? 1231 : 1237)) * 31;
        String str = this.sameSite;
        return m2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            long j = this.expiresAt;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String format = ((DateFormat) DateFormattingKt.STANDARD_DATE_FORMAT.get()).format(new Date(j));
                format.getClass();
                sb.append(format);
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String str = this.sameSite;
        if (str != null) {
            sb.append("; samesite=");
            sb.append(str);
        }
        return sb.toString();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static BufferedChannel Channel$default(int i, BufferOverflow bufferOverflow, Function1 function1, int i2) {
            if ((i2 & 1) != 0) {
                i = 0;
            }
            int i3 = i2 & 2;
            BufferOverflow bufferOverflow2 = BufferOverflow.SUSPEND;
            if (i3 != 0) {
                bufferOverflow = bufferOverflow2;
            }
            if ((i2 & 4) != 0) {
                function1 = null;
            }
            if (i == -2) {
                if (bufferOverflow != bufferOverflow2) {
                    return new ConflatedBufferedChannel(1, bufferOverflow, function1);
                }
                Channel.Factory.getClass();
                return new BufferedChannel(Channel.Factory.CHANNEL_DEFAULT_CAPACITY, function1);
            }
            if (i != -1) {
                return i != 0 ? i != Integer.MAX_VALUE ? bufferOverflow == bufferOverflow2 ? new BufferedChannel(i, function1) : new ConflatedBufferedChannel(i, bufferOverflow, function1) : new BufferedChannel(Integer.MAX_VALUE, function1) : bufferOverflow == bufferOverflow2 ? new BufferedChannel(0, function1) : new ConflatedBufferedChannel(1, bufferOverflow, function1);
            }
            if (bufferOverflow == bufferOverflow2) {
                return new ConflatedBufferedChannel(1, BufferOverflow.DROP_OLDEST, function1);
            }
            UriKt$$ExternalSyntheticBUOutline0.m("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }

        public static final void GeneralSettingsScreen(AccountId accountId, Function0 function0, GeneralSettingsViewModel generalSettingsViewModel, DialogSettingViewProvider dialogSettingViewProvider, GeneralSettingsBuilder generalSettingsBuilder, Composer composer, int i) {
            GapComposer gapComposer;
            GeneralSettingsViewModel generalSettingsViewModel2;
            DialogSettingViewProvider dialogSettingViewProvider2;
            GeneralSettingsBuilder generalSettingsBuilder2;
            int i2;
            GeneralSettingsViewModel generalSettingsViewModel3;
            GeneralSettingsBuilder generalSettingsBuilder3;
            DialogSettingViewProvider dialogSettingViewProvider3;
            accountId.getClass();
            function0.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(1126253988);
            int i3 = i | (gapComposer2.changedInstance(accountId) ? 4 : 2) | (gapComposer2.changedInstance(function0) ? 32 : 16) | 9344;
            int i4 = 0;
            if (gapComposer2.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
                gapComposer2.startDefaults();
                int i5 = i & 1;
                Continuation continuation = null;
                Object obj = Composer.Companion.Empty;
                if (i5 == 0 || gapComposer2.getDefaultsInvalid()) {
                    boolean changedInstance = gapComposer2.changedInstance(accountId);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == obj) {
                        rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 7);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function02 = (Function0) rememberedValue;
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                    if (current == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return;
                    }
                    GeneralSettingsViewModel generalSettingsViewModel4 = (GeneralSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(GeneralSettingsViewModel.class), current.getViewModelStore(), defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer2), function02);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer2);
                    boolean changed = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue2 == obj) {
                        rememberedValue2 = ViewSizeResolver.CC.m(DialogSettingViewProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                    }
                    DialogSettingViewProvider dialogSettingViewProvider4 = (DialogSettingViewProvider) rememberedValue2;
                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer2);
                    boolean changed2 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope2);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue3 == obj) {
                        rememberedValue3 = ViewSizeResolver.CC.m(GeneralSettingsBuilder.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                    }
                    GeneralSettingsBuilder generalSettingsBuilder4 = (GeneralSettingsBuilder) rememberedValue3;
                    i2 = i3 & (-65409);
                    generalSettingsViewModel3 = generalSettingsViewModel4;
                    generalSettingsBuilder3 = generalSettingsBuilder4;
                    dialogSettingViewProvider3 = dialogSettingViewProvider4;
                } else {
                    gapComposer2.skipToGroupEnd();
                    dialogSettingViewProvider3 = dialogSettingViewProvider;
                    generalSettingsBuilder3 = generalSettingsBuilder;
                    i2 = i3 & (-65409);
                    generalSettingsViewModel3 = generalSettingsViewModel;
                }
                gapComposer2.endDefaults();
                AuthorizationContract authorizationContract = new AuthorizationContract(3);
                boolean changedInstance2 = gapComposer2.changedInstance(generalSettingsViewModel3);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changedInstance2 || rememberedValue4 == obj) {
                    rememberedValue4 = new GeneralSettingsScreenKt$$ExternalSyntheticLambda1(generalSettingsViewModel3, i4);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                ManagedActivityResultLauncher rememberLauncherForActivityResult = DBUtil.rememberLauncherForActivityResult(authorizationContract, (Function1) rememberedValue4, gapComposer2);
                MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(generalSettingsViewModel3.state, gapComposer2);
                boolean changedInstance3 = gapComposer2.changedInstance(generalSettingsViewModel3);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue5 == obj) {
                    rememberedValue5 = new ProduceKt$awaitClose$4$1(10, generalSettingsViewModel3);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                Function1 function1 = (Function1) rememberedValue5;
                GeneralSettingsViewModel generalSettingsViewModel5 = generalSettingsViewModel3;
                Updater.LaunchedEffect(gapComposer2, generalSettingsViewModel3.effect, new StringResourcesKt$stringResource$str$3$1(generalSettingsViewModel3, continuation, function0, rememberLauncherForActivityResult, 3));
                collectAsStateWithLifecycle.getClass();
                function1.getClass();
                DebugUtils.BackHandler(false, function0, gapComposer2, i2 & 112, 1);
                GeneralSettingsContract$State generalSettingsContract$State = (GeneralSettingsContract$State) collectAsStateWithLifecycle.getValue();
                boolean changed3 = gapComposer2.changed(function1);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changed3 || rememberedValue6 == obj) {
                    rememberedValue6 = new ChangelogScreenKt$$ExternalSyntheticLambda7(6, function1);
                    gapComposer2.updateRememberedValue(rememberedValue6);
                }
                Function1 function12 = (Function1) rememberedValue6;
                gapComposer = gapComposer2;
                dialogSettingViewProvider2 = dialogSettingViewProvider3;
                generalSettingsBuilder2 = generalSettingsBuilder3;
                CacheControl.Companion.GeneralSettingsContent(generalSettingsContract$State, function12, dialogSettingViewProvider2, generalSettingsBuilder2, null, gapComposer, 0);
                generalSettingsViewModel2 = generalSettingsViewModel5;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                generalSettingsViewModel2 = generalSettingsViewModel;
                dialogSettingViewProvider2 = dialogSettingViewProvider;
                generalSettingsBuilder2 = generalSettingsBuilder;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(accountId, function0, generalSettingsViewModel2, dialogSettingViewProvider2, generalSettingsBuilder2, i, 17);
            }
        }

        public static final void IconListItem(SettingValue.IconList iconList, Function1 function1, Modifier modifier, Composer composer, int i) {
            int i2;
            iconList.getClass();
            function1.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1135779299);
            if ((i & 6) == 0) {
                i2 = ((i & 8) == 0 ? gapComposer.changed(iconList) : gapComposer.changedInstance(iconList) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changed(modifier) ? 256 : 128;
            }
            int i3 = 0;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                SettingItemLayout(null, (ImageVector) iconList.icon.invoke(), modifier, null, Expect_jvmKt.rememberComposableLambda(-1926911787, new IconListItemKt$$ExternalSyntheticLambda0(iconList, function1, i3), gapComposer), gapComposer, (i2 & 896) | 24582, 8);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(iconList, function1, modifier, i, 1);
            }
        }

        public static final void MessageListPage(DefaultMessageListScope defaultMessageListScope, Function1 function1, MessageListState messageListState, Function1 function12, Modifier modifier, Composer composer, int i) {
            int i2;
            Modifier modifier2;
            GapComposer gapComposer;
            defaultMessageListScope.getClass();
            messageListState.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(-2118456273);
            if ((i & 6) == 0) {
                i2 = (gapComposer2.changed(defaultMessageListScope) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer2.changed(messageListState) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer2.changedInstance(function12) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                modifier2 = modifier;
                i2 |= gapComposer2.changed(modifier2) ? 16384 : 8192;
            } else {
                modifier2 = modifier;
            }
            if (gapComposer2.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
                gapComposer = gapComposer2;
                InAppNotificationHostKt.InAppNotificationScaffold(modifier2, null, null, null, null, null, null, null, function1, Expect_jvmKt.rememberComposableLambda(-949899639, new MessageListPageKt$$ExternalSyntheticLambda0(messageListState, function12, defaultMessageListScope), gapComposer2), gapComposer, ((i2 >> 12) & 14) | 805306368 | ((i2 << 21) & 234881024));
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) defaultMessageListScope, (Function) function1, (Object) messageListState, (Object) function12, modifier, i, 12);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0255  */
        /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x007b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void SettingItemLayout(kotlin.jvm.functions.Function0 r20, androidx.compose.ui.graphics.vector.ImageVector r21, androidx.compose.ui.Modifier r22, kotlin.jvm.functions.Function3 r23, androidx.compose.runtime.internal.ComposableLambdaImpl r24, androidx.compose.runtime.Composer r25, int r26, int r27) {
            /*
                Method dump skipped, instructions count: 616
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.SettingItemLayout(kotlin.jvm.functions.Function0, androidx.compose.ui.graphics.vector.ImageVector, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final void SettingListItem(String str, Function0 function0, ImageVector imageVector, Modifier modifier, boolean z, Composer composer, int i, int i2) {
            boolean z2;
            int i3;
            Modifier modifier2;
            boolean z3;
            final float f;
            String str2 = str;
            final ImageVector imageVector2 = imageVector;
            str2.getClass();
            function0.getClass();
            imageVector2.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(962843440);
            int i4 = i | (gapComposer.changed(str2) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changed(imageVector2) ? 256 : 128);
            int i5 = i4 | 3072;
            int i6 = i2 & 16;
            if (i6 != 0) {
                i3 = i4 | 27648;
                z2 = z;
            } else {
                z2 = z;
                i3 = i5 | (gapComposer.changed(z2) ? 16384 : 8192);
            }
            if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
                boolean z4 = i6 != 0 ? false : z2;
                WindowSizeInfo calculateWindowSizeInfo = Jsoup.calculateWindowSizeInfo(gapComposer);
                boolean z5 = (Dp.m744compareTo0680j_4(DpSize.m749getWidthD9Ej5fM(calculateWindowSizeInfo.size), DpSize.m748getHeightD9Ej5fM(calculateWindowSizeInfo.size)) > 0) && (calculateWindowSizeInfo.sizeClass.heightSizeClass == WindowHeightSizeClass.Compact);
                if (z4) {
                    gapComposer.startReplaceGroup(-2016884172);
                    f = ((Number) ArcSplineKt.animateFloat(ArcSplineKt.rememberInfiniteTransition(gapComposer, 0), 0.0f, 360.0f, ArcSplineKt.m112infiniteRepeatable9IiC70o$default(ArcSplineKt.tween$default(1000, 0, EasingKt.LinearEasing, 2), 4), gapComposer, 29112, 0).value$delegate.getValue()).floatValue();
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-2016449056);
                    gapComposer.end(false);
                    f = 0.0f;
                }
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                if (z5) {
                    gapComposer.startReplaceGroup(-2016404974);
                    IntRectKt.ButtonIcon(function0, imageVector, f == 0.0f ? companion : ClipKt.rotate(companion, f), false, str2, null, gapComposer, ((i3 >> 3) & 126) | ((i3 << 12) & 57344), 40);
                    imageVector2 = imageVector;
                    str2 = str2;
                    gapComposer = gapComposer;
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-2016170645);
                    Operation$State.NavigationDrawerItem(str2, function0, Expect_jvmKt.rememberComposableLambda(1255882947, new Function2() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.setting.SettingListItemKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                float f2 = f;
                                Modifier modifier3 = Modifier.Companion.$$INSTANCE;
                                if (f2 != 0.0f) {
                                    modifier3 = ClipKt.rotate(modifier3, f2);
                                }
                                AtomicFU.m1009IconxqIIw2o(ImageVector.this, modifier3, null, gapComposer2, 384, 8);
                            } else {
                                gapComposer2.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer), gapComposer, (i3 & 14) | 24624 | ((i3 << 3) & 896) | 3072);
                    gapComposer.end(false);
                }
                modifier2 = companion;
                z3 = z4;
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
                z3 = z2;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda1(str2, function0, imageVector2, modifier2, z3, i, i2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00e0  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x020e  */
        /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0203  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x00d7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void UnreadMessageItem(net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi r27, net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences r28, net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator r29, kotlin.jvm.functions.Function0 r30, kotlin.jvm.functions.Function0 r31, kotlin.jvm.functions.Function0 r32, kotlin.jvm.functions.Function1 r33, androidx.compose.ui.Modifier r34, androidx.compose.runtime.Composer r35, int r36, int r37) {
            /*
                Method dump skipped, instructions count: 551
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.UnreadMessageItem(net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi, net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences, net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final void closeFinally(AutoCloseable autoCloseable, Throwable th) {
            if (autoCloseable != null) {
                if (th != null) {
                    try {
                        ViewSizeResolver.CC.m(autoCloseable);
                        return;
                    } catch (Throwable th2) {
                        ResultKt.addSuppressed(th, th2);
                        return;
                    }
                }
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                    return;
                }
                if (autoCloseable instanceof ExecutorService) {
                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) autoCloseable);
                    return;
                }
                if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                    return;
                }
                if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                    return;
                }
                if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                    return;
                }
                if (autoCloseable instanceof DrmManagerClient) {
                    ((DrmManagerClient) autoCloseable).release();
                } else if (autoCloseable instanceof ContentProviderClient) {
                    ((ContentProviderClient) autoCloseable).release();
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                }
            }
        }

        public static int dateCharacterOffset(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && charAt < ':') || (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || charAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static final CreationExtras defaultExtras(ViewModelStoreOwner viewModelStoreOwner) {
            return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
        }

        public static final KClass getCapturedKClass(SerialDescriptor serialDescriptor) {
            serialDescriptor.getClass();
            if (serialDescriptor instanceof ContextDescriptor) {
                return ((ContextDescriptor) serialDescriptor).kClass;
            }
            if (serialDescriptor instanceof SerialDescriptorForNullable) {
                return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).original);
            }
            return null;
        }

        public static boolean isASCII(String str) {
            if (str == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("String may not be null");
                return false;
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if ((str.charAt(i) & 65408) != 0) {
                    return false;
                }
            }
            return true;
        }

        public static boolean isWhitespace(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!isWhitespace(str.charAt(i))) {
                    return false;
                }
            }
            return true;
        }

        public static long parseExpires(String str, int i) {
            int dateCharacterOffset = dateCharacterOffset(str, 0, i, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (dateCharacterOffset < i) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i3 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    group.getClass();
                    i3 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    group2.getClass();
                    i6 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    i7 = Integer.parseInt(group3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    group4.getClass();
                    i4 = Integer.parseInt(group4);
                } else {
                    if (i5 == -1) {
                        Pattern pattern = Cookie.MONTH_PATTERN;
                        if (matcher.usePattern(pattern).matches()) {
                            String group5 = matcher.group(1);
                            group5.getClass();
                            Locale locale = Locale.US;
                            locale.getClass();
                            String lowerCase = group5.toLowerCase(locale);
                            lowerCase.getClass();
                            String pattern2 = pattern.pattern();
                            pattern2.getClass();
                            i5 = StringsKt.indexOf$default(pattern2, lowerCase, 0, false, 6) / 4;
                        }
                    }
                    if (i2 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                        String group6 = matcher.group(1);
                        group6.getClass();
                        i2 = Integer.parseInt(group6);
                    }
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            if (i5 == -1) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            if (1 > i4 || i4 >= 32) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            if (i3 < 0 || i3 >= 24) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            if (i7 < 0 || i7 >= 60) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i2);
            gregorianCalendar.set(2, i5 - 1);
            gregorianCalendar.set(5, i4);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i6);
            gregorianCalendar.set(13, i7);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        public static final void toHostname(String str) {
            str.getClass();
            if (HostNameUtils.isLegalHostNameOrIP(str) != null) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Not a valid domain or IP: '", str, "'"));
        }

        public static boolean isWhitespace(char c) {
            return c == ' ' || c == '\t' || c == '\r' || c == '\n';
        }
    }
}
