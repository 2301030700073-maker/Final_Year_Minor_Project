package kotlinx.atomicfu;

import android.content.ComponentCallbacks;
import android.content.res.Resources;
import android.net.Uri;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;
import kotlinx.datetime.internal.format.parser.UnsignedIntConsumer;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.IconKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;
import net.thunderbird.feature.mail.message.list.extension.DomainSortTypeToUiSortTypeKt$WhenMappings;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollBehaviour;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import okio.internal.ZipFilesKt;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AtomicFU {
    /* renamed from: AvatarMonogram-sW7UJKQ, reason: not valid java name */
    public static final void m1008AvatarMonogramsW7UJKQ(final String str, final long j, final AvatarSize avatarSize, Modifier modifier, Composer composer, final int i) {
        final Modifier modifier2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2093270211);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(j) ? 32 : 16) | (gapComposer.changed(avatarSize.ordinal()) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            int ordinal = avatarSize.ordinal();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(1982870256);
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                DebugUtils.m787TextTitleMediumXl4FiYE(upperCase, companion, j, null, 0, 0, gapComposer, 48 | ((i2 << 3) & 896), 56);
                gapComposer.end(false);
            } else {
                if (ordinal != 1) {
                    throw ViewSizeResolver.CC.m(gapComposer, 1587982655, false);
                }
                gapComposer.startReplaceGroup(1983065649);
                String upperCase2 = str.toUpperCase(Locale.ROOT);
                upperCase2.getClass();
                DBUtil.m807TextTitleLargeXl4FiYE(upperCase2, companion, j, null, 0, 0, gapComposer, 48 | ((i2 << 3) & 896), 56);
                gapComposer.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(str, j, avatarSize, modifier2, i) { // from class: net.thunderbird.feature.account.avatar.ui.AvatarMonogramKt$$ExternalSyntheticLambda0
                public final /* synthetic */ String f$0;
                public final /* synthetic */ long f$1;
                public final /* synthetic */ AvatarSize f$2;
                public final /* synthetic */ Modifier f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    AtomicFU.m1008AvatarMonogramsW7UJKQ(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Icon-xqIIw2o, reason: not valid java name */
    public static final void m1009IconxqIIw2o(ImageVector imageVector, Modifier modifier, Color color, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        long j;
        imageVector.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1863436909);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(imageVector) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= gapComposer.changed((Object) null) ? 256 : 128;
        }
        int i5 = i2 & 8;
        if (i5 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(color) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            if (i5 != 0) {
                color = null;
            }
            if (color == null) {
                gapComposer.startReplaceGroup(-238482444);
                j = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-238483529);
                gapComposer.end(false);
                j = color.value;
            }
            Modifier modifier3 = modifier;
            IconKt.m345Iconww6aTOc(imageVector, null, modifier3, j, gapComposer, (i3 & 14) | ((i3 >> 3) & 112) | ((i3 << 3) & 896), 0);
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        Color color2 = color;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconKt$$ExternalSyntheticLambda0(imageVector, modifier2, color2, i, i2);
        }
    }

    public static final void InAppNotificationHostLayout(BannerInlineListScrollBehaviour bannerInlineListScrollBehaviour, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Function3 function3, Composer composer, int i) {
        int i2;
        int i3;
        bannerInlineListScrollBehaviour.getClass();
        paddingValues.getClass();
        function3.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1061440472);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(bannerInlineListScrollBehaviour) : gapComposer.changedInstance(bannerInlineListScrollBehaviour) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(modifier) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ParcelableSnapshotMutableFloatState(0.0f);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) rememberedValue;
            BannerInlineListScrollState bannerInlineListScrollState = bannerInlineListScrollBehaviour.state;
            Float valueOf = Float.valueOf(parcelableSnapshotMutableFloatState.getFloatValue());
            boolean changedInstance = gapComposer.changedInstance(bannerInlineListScrollState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Continuation continuation = null;
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new InterruptibleKt$runInterruptible$2(bannerInlineListScrollState, parcelableSnapshotMutableFloatState, continuation, 28);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, valueOf, (Function2) rememberedValue2);
            Modifier nestedScroll = NestedScrollModifierKt.nestedScroll(modifier, bannerInlineListScrollBehaviour.connection, null);
            boolean changedInstance2 = ((i2 & 458752) == 131072) | ((i2 & 896) == 256) | ((i2 & 7168) == 2048) | gapComposer.changedInstance(bannerInlineListScrollState) | ((i2 & 112) == 32);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                i3 = 0;
                CoilImageKt$$ExternalSyntheticLambda14 coilImageKt$$ExternalSyntheticLambda14 = new CoilImageKt$$ExternalSyntheticLambda14(composableLambdaImpl, composableLambdaImpl2, bannerInlineListScrollState, paddingValues, function3, parcelableSnapshotMutableFloatState, 6);
                gapComposer.updateRememberedValue(coilImageKt$$ExternalSyntheticLambda14);
                rememberedValue3 = coilImageKt$$ExternalSyntheticLambda14;
            } else {
                i3 = 0;
            }
            RulerKt.SubcomposeLayout(nestedScroll, (Function2) rememberedValue3, gapComposer, i3, i3);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(bannerInlineListScrollBehaviour, paddingValues, composableLambdaImpl, composableLambdaImpl2, modifier, function3, i);
        }
    }

    public static final void NewMessageBadge(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1648630301);
        int i2 = i | 6;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            BoxKt.Box(ImageKt.m132backgroundbw27NRU(ClipKt.clip(OffsetKt.m218padding3ABfNKs(SizeKt.m234size3ABfNKs(companion, 14.0f), 1.0f), RoundedCornerShapeKt.CircleShape), ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).primary, ColorKt.RectangleShape), gapComposer, 0);
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, 7);
        }
    }

    public static final void TextDialogView(SettingValue.Text text, Function1 function1, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        int i3;
        Object stringResourcesKt$stringResource$str$3$1;
        NeverEqualPolicy neverEqualPolicy;
        FocusRequester focusRequester;
        MutableState mutableState;
        MutableState mutableState2;
        text.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1131133291);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(text) : gapComposer.changedInstance(text) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy2 = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy2) {
                rememberedValue = new FocusRequester();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            FocusRequester focusRequester2 = (FocusRequester) rememberedValue;
            Object[] objArr = new Object[0];
            int i4 = i2 & 14;
            boolean z = i4 == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(text));
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy2) {
                rememberedValue2 = new ResourceFileSystem$$ExternalSyntheticLambda0(6, text);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState3 = (MutableState) SaverKt.rememberSaveable(Arrays.copyOf(objArr, 0), new WeakCache(3, new SaversKt$$ExternalSyntheticLambda0(13), new TextKt$$ExternalSyntheticLambda1(21)), (Function0) rememberedValue2, gapComposer, 384, 0);
            Object rememberedValue3 = gapComposer.rememberedValue();
            Continuation continuation = null;
            if (rememberedValue3 == neverEqualPolicy2) {
                rememberedValue3 = Updater.mutableStateOf$default(null);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState4 = (MutableState) rememberedValue3;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy2) {
                rememberedValue4 = new BlockRunner$cancel$1(focusRequester2, continuation, 22);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue4);
            String str = ((TextFieldValue) mutableState3.getValue()).annotatedString.text;
            boolean changed = (i4 == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(text))) | gapComposer.changed(mutableState3);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed || rememberedValue5 == neverEqualPolicy2) {
                i3 = i2;
                neverEqualPolicy = neverEqualPolicy2;
                focusRequester = focusRequester2;
                stringResourcesKt$stringResource$str$3$1 = new StringResourcesKt$stringResource$str$3$1(text, mutableState3, mutableState4, (Continuation) null, 2);
                mutableState = mutableState4;
                mutableState2 = mutableState3;
                gapComposer.updateRememberedValue(stringResourcesKt$stringResource$str$3$1);
            } else {
                i3 = i2;
                stringResourcesKt$stringResource$str$3$1 = rememberedValue5;
                neverEqualPolicy = neverEqualPolicy2;
                mutableState2 = mutableState3;
                focusRequester = focusRequester2;
                mutableState = mutableState4;
            }
            Updater.LaunchedEffect(gapComposer, str, (Function2) stringResourcesKt$stringResource$str$3$1);
            String str2 = (String) text.title.invoke();
            ImageVector imageVector = (ImageVector) text.icon.invoke();
            boolean z2 = ((String) mutableState.getValue()) == null;
            boolean changed2 = (i4 == 4 || ((i3 & 8) != 0 && gapComposer.changedInstance(text))) | gapComposer.changed(mutableState2) | ((i3 & 112) == 32);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue6 == neverEqualPolicy) {
                GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = new GapComposer$$ExternalSyntheticLambda0(text, function1, mutableState2, mutableState, 10);
                gapComposer.updateRememberedValue(gapComposer$$ExternalSyntheticLambda0);
                rememberedValue6 = gapComposer$$ExternalSyntheticLambda0;
            }
            int i5 = i3 << 3;
            Jsoup.SettingDialogLayout(str2, imageVector, (Function0) rememberedValue6, function0, function02, z2, Expect_jvmKt.rememberComposableLambda(-1700244149, new TextFieldCursorKt$$ExternalSyntheticLambda0(text, focusRequester, mutableState2, mutableState, 9), gapComposer), gapComposer, (i5 & 7168) | 12582912 | (57344 & i5) | (i5 & 458752), 0);
            gapComposer = gapComposer;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0((Object) text, function1, function0, (Object) function02, i, 13);
        }
    }

    public static final void UnreadMessageBadge(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2033897710);
        int i2 = i | 6;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, 14.0f);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(m234size3ABfNKs, 2.0f);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            Modifier clip = ClipKt.clip(m218padding3ABfNKs, roundedCornerShape);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
            BoxKt.Box(ImageKt.m133borderxT4_qwU(ImageKt.m132backgroundbw27NRU(clip, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface, ColorKt.RectangleShape), 2.0f, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, roundedCornerShape), gapComposer, 0);
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, 8);
        }
    }

    public static final boolean arrayRangeEquals(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        bArr.getClass();
        bArr2.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final AtomicRef atomic(Object obj) {
        AtomicRef atomicRef = new AtomicRef();
        atomicRef.value = obj;
        return atomicRef;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Continuation createCoroutineUnintercepted(final Continuation continuation, final Continuation continuation2, final Function2 function2) {
        function2.getClass();
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(continuation, continuation2);
        }
        final CoroutineContext context = continuation2.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(continuation2) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
            public int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                Function2 function22 = function2;
                function22.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        } : new ContinuationImpl(continuation2, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            public int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                Function2 function22 = function2;
                function22.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        };
    }

    public static JSONObject getJsonObjectIfDefined(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            return optJSONObject;
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static final Scope getKoinScope(ComponentCallbacks componentCallbacks) {
        componentCallbacks.getClass();
        if (componentCallbacks instanceof KoinComponent) {
            return ((KoinComponent) componentCallbacks).getKoin().scopeRegistry.rootScope;
        }
        Koin koin = GlobalContext._koin;
        if (koin != null) {
            return koin.scopeRegistry.rootScope;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
        return null;
    }

    public static Long getLongIfDefined(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        try {
            return Long.valueOf(jSONObject.getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String getString(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            throw new JSONException(CameraDevices$CC.m("field \"", str, "\" not found in json object"));
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return string;
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static String getStringIfDefined(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return string;
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static ArrayList getStringListIfDefined(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(str);
        if (jSONArray != null) {
            return toStringList(jSONArray);
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static LinkedHashMap getStringMap(JSONObject jSONObject, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject2.getString(next);
                Okio.checkNotNull(string, "additional parameter values must not be null");
                linkedHashMap.put(next, string);
            }
        }
        return linkedHashMap;
    }

    public static Uri getUri(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        String string = jSONObject.getString(str);
        if (string != null) {
            return Uri.parse(string);
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static Uri getUriIfDefined(JSONObject jSONObject, String str) {
        Okio.checkNotNull(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return Uri.parse(string);
        }
        throw new JSONException(CameraDevices$CC.m("field \"", str, "\" is mapped to a null value"));
    }

    public static Continuation intercepted(Continuation continuation) {
        Continuation intercepted;
        continuation.getClass();
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        return (continuationImpl == null || (intercepted = continuationImpl.intercepted()) == null) ? continuation : intercepted;
    }

    public static final String labelForCount(int i, Resources resources) {
        resources.getClass();
        if (1 <= i && i < 100) {
            return String.valueOf(i);
        }
        if (100 <= i && i < 1001) {
            String string = resources.getString(R.string.navigation_drawer_dropdown_folder_item_badge_count_greater_than_99);
            string.getClass();
            return string;
        }
        if (i <= 1000) {
            return "";
        }
        String string2 = resources.getString(R.string.navigation_drawer_dropdown_folder_item_badge_count_greater_than_1_000);
        string2.getClass();
        return string2;
    }

    public static JSONObject mapToJsonObject(Map map) {
        map.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            Okio.checkNotNull((String) entry.getKey(), "map entries must not have null keys");
            Okio.checkNotNull((String) entry.getValue(), "map entries must not have null values");
            put(jSONObject, (String) entry.getKey(), (String) entry.getValue());
        }
        return jSONObject;
    }

    public static void put(JSONObject jSONObject, String str, String str2) {
        Okio.checkNotNull(str, "field must not be null");
        Okio.checkNotNull(str2, "value must not be null");
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }

    public static void putIfNotNull(JSONObject jSONObject, String str, Uri uri) {
        if (uri == null) {
            return;
        }
        try {
            jSONObject.put(str, uri.toString());
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }

    public static final ParserStructure spaceAndZeroPaddedUnsignedInt(Integer num, Integer num2, Integer num3, PropertyAccessor propertyAccessor, String str, boolean z) {
        int i;
        EmptyList emptyList;
        int intValue = (num != null ? num.intValue() : 1) + (z ? 1 : 0);
        if (num2 != null) {
            i = num2.intValue();
            if (z) {
                i++;
            }
        } else {
            i = Integer.MAX_VALUE;
        }
        int intValue2 = num3 != null ? num3.intValue() : 0;
        int min = Math.min(i, intValue2);
        if (intValue >= min) {
            return spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths(z, propertyAccessor, str, intValue, i);
        }
        ParserStructure spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths = spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths(z, propertyAccessor, str, intValue, intValue);
        while (true) {
            emptyList = EmptyList.INSTANCE;
            if (intValue >= min) {
                break;
            }
            intValue++;
            spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths = new ParserStructure(emptyList, IntOffsetKt.listOf((Object[]) new ParserStructure[]{spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths(z, propertyAccessor, str, intValue, intValue), UuidKt.concat(IntOffsetKt.listOf((Object[]) new ParserStructure[]{new ParserStructure(IntOffsetKt.listOf(new PlainStringParserOperation(" ")), emptyList), spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths}))}));
        }
        return intValue2 > i ? UuidKt.concat(IntOffsetKt.listOf((Object[]) new ParserStructure[]{new ParserStructure(IntOffsetKt.listOf(new PlainStringParserOperation(StringsKt__StringsJVMKt.repeat(" ", intValue2 - i))), emptyList), spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths})) : intValue2 == i ? spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths : new ParserStructure(emptyList, IntOffsetKt.listOf((Object[]) new ParserStructure[]{spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths(z, propertyAccessor, str, intValue2 + 1, i), spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths}));
    }

    public static final ParserStructure spaceAndZeroPaddedUnsignedInt$numberOfRequiredLengths(boolean z, PropertyAccessor propertyAccessor, String str, int i, int i2) {
        if (i2 < (z ? 1 : 0) + 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        if (z) {
            createListBuilder.add(new PlainStringParserOperation("-"));
        }
        createListBuilder.add(new NumberSpanParserOperation(IntOffsetKt.listOf(new UnsignedIntConsumer(Integer.valueOf(i - (z ? 1 : 0)), Integer.valueOf(i2 - (z ? 1 : 0)), propertyAccessor, str, z))));
        return new ParserStructure(IntOffsetKt.build(createListBuilder), EmptyList.INSTANCE);
    }

    public static final Pair toDomainSortType(SortType sortType) {
        sortType.getClass();
        int ordinal = sortType.ordinal();
        net.thunderbird.core.android.account.SortType sortType2 = net.thunderbird.core.android.account.SortType.SORT_DATE;
        net.thunderbird.core.android.account.SortType sortType3 = net.thunderbird.core.android.account.SortType.SORT_ARRIVAL;
        net.thunderbird.core.android.account.SortType sortType4 = net.thunderbird.core.android.account.SortType.SORT_SUBJECT;
        net.thunderbird.core.android.account.SortType sortType5 = net.thunderbird.core.android.account.SortType.SORT_SENDER;
        net.thunderbird.core.android.account.SortType sortType6 = net.thunderbird.core.android.account.SortType.SORT_FLAGGED;
        net.thunderbird.core.android.account.SortType sortType7 = net.thunderbird.core.android.account.SortType.SORT_UNREAD;
        net.thunderbird.core.android.account.SortType sortType8 = net.thunderbird.core.android.account.SortType.SORT_ATTACHMENT;
        switch (ordinal) {
            case 0:
                return new Pair(sortType2, Boolean.TRUE);
            case 1:
                return new Pair(sortType2, Boolean.FALSE);
            case 2:
                return new Pair(sortType3, Boolean.TRUE);
            case 3:
                return new Pair(sortType3, Boolean.FALSE);
            case 4:
                return new Pair(sortType4, Boolean.TRUE);
            case 5:
                return new Pair(sortType4, Boolean.FALSE);
            case 6:
                return new Pair(sortType5, Boolean.TRUE);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Pair(sortType5, Boolean.FALSE);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new Pair(sortType6, Boolean.TRUE);
            case 9:
                return new Pair(sortType6, Boolean.FALSE);
            case 10:
                return new Pair(sortType7, Boolean.TRUE);
            case 11:
                return new Pair(sortType7, Boolean.FALSE);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new Pair(sortType8, Boolean.TRUE);
            case 13:
                return new Pair(sortType8, Boolean.FALSE);
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }

    public static final String toHexString(int i) {
        if (i == 0) {
            return "0";
        }
        char[] cArr = ZipFilesKt.HEX_DIGIT_CHARS;
        int i2 = 0;
        char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
        while (i2 < 8 && cArr2[i2] == '0') {
            i2++;
        }
        Operation$State.checkBoundsIndexes$kotlin_stdlib(i2, 8, 8);
        return new String(cArr2, i2, 8 - i2);
    }

    public static JSONArray toJsonArray(Iterable iterable) {
        Okio.checkNotNull(iterable, "objects cannot be null");
        JSONArray jSONArray = new JSONArray();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().toString());
        }
        return jSONArray;
    }

    public static ArrayList toList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                obj = toList((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = toMap((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static HashMap toMap(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = toList((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = toMap((JSONObject) obj);
            }
            hashMap.put(next, obj);
        }
        return hashMap;
    }

    public static final SortType toSortType(net.thunderbird.core.android.account.SortType sortType, boolean z) {
        sortType.getClass();
        int i = DomainSortTypeToUiSortTypeKt$WhenMappings.$EnumSwitchMapping$0[sortType.ordinal()];
        if (i == 1 && z) {
            return SortType.DateAsc;
        }
        if (i == 1) {
            return SortType.DateDesc;
        }
        if (i == 2 && z) {
            return SortType.ArrivalAsc;
        }
        if (i == 2) {
            return SortType.ArrivalDesc;
        }
        if (i == 3 && z) {
            return SortType.SubjectAsc;
        }
        if (i == 3) {
            return SortType.SubjectDesc;
        }
        if (i == 4 && z) {
            return SortType.SenderAsc;
        }
        if (i == 4) {
            return SortType.SenderDesc;
        }
        if (i == 5 && z) {
            return SortType.UnreadAsc;
        }
        if (i == 5) {
            return SortType.UnreadDesc;
        }
        if (i == 6 && z) {
            return SortType.FlaggedAsc;
        }
        if (i == 6) {
            return SortType.FlaggedDesc;
        }
        if (i == 7 && z) {
            return SortType.AttachmentAsc;
        }
        if (i == 7) {
            return SortType.AttachmentDesc;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static ArrayList toStringList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                obj.getClass();
                arrayList.add(obj.toString());
            }
        }
        return arrayList;
    }

    public static Object wrapWithContinuationImpl(Function2 function2, Object obj, Continuation continuation) {
        function2.getClass();
        CoroutineContext context = continuation.getContext();
        Object intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1 = context == EmptyCoroutineContext.INSTANCE ? new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1(continuation) : new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2(continuation, context);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        return function2.invoke(obj, intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1);
    }

    public static final AtomicInt atomic(int i) {
        AtomicInt atomicInt = new AtomicInt();
        atomicInt.value = i;
        return atomicInt;
    }

    public static final AtomicBoolean atomic(boolean z) {
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        atomicBoolean._value = z ? 1 : 0;
        return atomicBoolean;
    }

    public static void putIfNotNull(JSONObject jSONObject, String str, String str2) {
        if (str2 == null) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }

    public static void putIfNotNull(JSONObject jSONObject, String str, Long l) {
        if (l == null) {
            return;
        }
        try {
            jSONObject.put(str, l);
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }

    public static void put(JSONObject jSONObject, String str, JSONArray jSONArray) {
        try {
            jSONObject.put(str, jSONArray);
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }

    public static void put(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        Okio.checkNotNull(jSONObject2, "value must not be null");
        try {
            jSONObject.put(str, jSONObject2);
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
        }
    }
}
