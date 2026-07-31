package androidx.room.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.Metadata;
import androidx.compose.animation.CrossfadeKt$Crossfade$5$1;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectImpl;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.compose.FragmentContainerViewFactory;
import androidx.fragment.compose.FragmentState;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.button.RadioButtonKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextLabelSmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationMainScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.account.server.validation.ui.ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContentKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$State;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.NotCachedHolder;
import com.eygraber.uri.parts.Part;
import com.fsck.k9.mail.store.imap.ContiguousIdGroup;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda6;
import com.fsck.k9.ui.notification.DeleteConfirmationActivity;
import com.google.zxing.BinaryBitmap;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.internal.ContextScope;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* loaded from: classes.dex */
public abstract class DBUtil {
    public static ImageVector _info;
    public static ImageVector _warning;
    public static AndroidCanvas canvas;
    public static CanvasDrawScope canvasDrawScope;
    public static AndroidImageBitmap imageBitmap;

    public static final void AndroidFragment(Modifier modifier, final FragmentState fragmentState, final Bundle bundle, Function1 function1, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1012439764);
        int i2 = i | (gapComposer.changedInstance(SettingsImportFragment.class) ? 4 : 2) | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(fragmentState) ? 256 : 128) | (gapComposer.changedInstance(bundle) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192);
        if ((i2 & 9363) == 9362 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            final MutableState rememberUpdatedState = Updater.rememberUpdatedState(function1, gapComposer);
            final int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
            gapComposer.startReplaceableGroup(485393906);
            boolean changed = gapComposer.changed(view);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = FragmentManager.findFragmentManager(view);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final FragmentManager fragmentManager = (FragmentManager) rememberedValue;
            gapComposer.end(false);
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            gapComposer.startReplaceableGroup(485398332);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new FragmentContainerViewFactory(currentCompositeKeyHash);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            final FragmentContainerViewFactory fragmentContainerViewFactory = (FragmentContainerViewFactory) rememberedValue2;
            gapComposer.end(false);
            AndroidView_androidKt.AndroidView(fragmentContainerViewFactory, modifier, null, gapComposer, i2 & 112);
            Object[] objArr = {fragmentManager, fragmentContainerViewFactory, SettingsImportFragment.class, fragmentState};
            gapComposer.startReplaceableGroup(485406992);
            boolean changedInstance = gapComposer.changedInstance(SettingsImportFragment.class) | gapComposer.changedInstance(fragmentManager) | gapComposer.changedInstance(fragmentContainerViewFactory) | gapComposer.changedInstance(context) | ((((i2 & 896) ^ 384) > 256 && gapComposer.changed(fragmentState)) || (i2 & 384) == 256) | gapComposer.changedInstance(bundle) | gapComposer.changed(currentCompositeKeyHash) | gapComposer.changed(rememberUpdatedState);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                Function1 function12 = new Function1() { // from class: androidx.fragment.compose.AndroidFragmentKt$AndroidFragment$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Bundle bundle2;
                        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                        FragmentContainerViewFactory fragmentContainerViewFactory2 = fragmentContainerViewFactory;
                        int id = fragmentContainerViewFactory2.getContainer().getId();
                        final FragmentManager fragmentManager2 = FragmentManager.this;
                        final Fragment findFragmentById = fragmentManager2.findFragmentById(id);
                        final FragmentState fragmentState2 = fragmentState;
                        if (findFragmentById == null) {
                            FragmentManager.AnonymousClass3 fragmentFactory = fragmentManager2.getFragmentFactory();
                            context.getClassLoader();
                            findFragmentById = fragmentFactory.instantiate(SettingsImportFragment.class.getName());
                            Fragment.SavedState savedState = (Fragment.SavedState) fragmentState2.state.getValue();
                            if (findFragmentById.mFragmentManager != null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fragment already added");
                                return null;
                            }
                            if (savedState == null || (bundle2 = savedState.mState) == null) {
                                bundle2 = null;
                            }
                            findFragmentById.mSavedFragmentState = bundle2;
                            findFragmentById.setArguments(bundle);
                            BackStackRecord backStackRecord = new BackStackRecord(fragmentManager2);
                            backStackRecord.mReorderingAllowed = true;
                            FragmentContainerView container = fragmentContainerViewFactory2.getContainer();
                            String valueOf = String.valueOf(currentCompositeKeyHash);
                            findFragmentById.mContainer = container;
                            findFragmentById.mInDynamicContainer = true;
                            backStackRecord.doAddOp(container.getId(), findFragmentById, valueOf, 1);
                            if (fragmentManager2.isStateSaved()) {
                                ref$BooleanRef.element = true;
                                findFragmentById.mLifecycleRegistry.addObserver(new DefaultLifecycleObserver() { // from class: androidx.fragment.compose.AndroidFragmentKt$AndroidFragment$3$1$fragment$1$1
                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onStart(LifecycleOwner lifecycleOwner) {
                                        Ref$BooleanRef.this.element = false;
                                        findFragmentById.mLifecycleRegistry.removeObserver(this);
                                    }

                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onCreate(LifecycleOwner lifecycleOwner) {
                                    }

                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onDestroy(LifecycleOwner lifecycleOwner) {
                                    }

                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onPause(LifecycleOwner lifecycleOwner) {
                                    }

                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onResume(LifecycleOwner lifecycleOwner) {
                                    }

                                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                                    public final void onStop(LifecycleOwner lifecycleOwner) {
                                    }
                                });
                                if (backStackRecord.mAddToBackStack) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This transaction is already being added to the back stack");
                                    return null;
                                }
                                backStackRecord.mAllowAddToBackStack = false;
                                backStackRecord.mManager.execSingleAction(backStackRecord, true);
                            } else {
                                backStackRecord.commitNow();
                            }
                        }
                        fragmentManager2.onContainerAvailable(fragmentContainerViewFactory2.getContainer());
                        ((Function1) rememberUpdatedState.getValue()).invoke(findFragmentById);
                        return new DisposableEffectResult() { // from class: androidx.fragment.compose.AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                FragmentManager fragmentManager3 = FragmentManager.this;
                                Fragment fragment = findFragmentById;
                                fragmentState2.state.setValue(fragmentManager3.saveFragmentInstanceState(fragment));
                                if (!ref$BooleanRef.element) {
                                    if (fragmentManager3.isStateSaved()) {
                                        return;
                                    }
                                    BackStackRecord backStackRecord2 = new BackStackRecord(fragmentManager3);
                                    backStackRecord2.remove(fragment);
                                    backStackRecord2.commitNow();
                                    return;
                                }
                                BackStackRecord backStackRecord3 = new BackStackRecord(fragmentManager3);
                                backStackRecord3.remove(fragment);
                                if (backStackRecord3.mAddToBackStack) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This transaction is already being added to the back stack");
                                } else {
                                    backStackRecord3.mAllowAddToBackStack = false;
                                    backStackRecord3.mManager.execSingleAction(backStackRecord3, true);
                                }
                            }
                        };
                    }
                };
                gapComposer.updateRememberedValue(function12);
                rememberedValue3 = function12;
            }
            gapComposer.end(false);
            Updater.DisposableEffect(objArr, (Function1) rememberedValue3, (Composer) gapComposer);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CrossfadeKt$Crossfade$5$1(modifier, fragmentState, bundle, function1, i);
        }
    }

    public static final void AppTitleTopHeader(String str, Modifier modifier, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2004838586);
        int i4 = i | (gapComposer.changed(str) ? 4 : 2);
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 = i4 | 48;
        } else {
            i3 = i4 | (gapComposer.changed(modifier) ? 32 : 16);
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier modifier3 = i5 != 0 ? Modifier.Companion.$$INSTANCE : modifier;
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.m222paddingqDBjuR0$default(fillElement, 0.0f, 32.0f, 0.0f, 8.0f, 5).then(modifier3), Expect_jvmKt.rememberComposableLambda(1201284666, new BufferedChannel$$ExternalSyntheticLambda1(8, modifier3, str), gapComposer), gapComposer, 48, 0);
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda6(str, modifier2, i, i2, 1);
        }
    }

    public static final void QrCodeScannerContent(DrawResult drawResult, QrCodeScannerContract$State qrCodeScannerContract$State, Function1 function1, Composer composer, int i) {
        drawResult.getClass();
        qrCodeScannerContract$State.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(994658612);
        int i2 = (gapComposer.changed(drawResult) ? 4 : 2) | i | (gapComposer.changedInstance(qrCodeScannerContract$State) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            MathKt.m983Surface_UMDTes(OffsetKt.windowInsetsPadding(SizeKt.FillWholeMaxSize, OffsetKt.safeDrawingLambda), null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-816372041, new QrCodeScannerContentKt$$ExternalSyntheticLambda0(qrCodeScannerContract$State, drawResult, function1), gapComposer), gapComposer, 196608, 30);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new QrCodeScannerContentKt$$ExternalSyntheticLambda0(drawResult, qrCodeScannerContract$State, function1, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RadioButton(boolean r17, androidx.compose.runtime.internal.ComposableLambdaImpl r18, kotlin.jvm.functions.Function0 r19, androidx.compose.ui.Modifier r20, boolean r21, androidx.compose.runtime.Composer r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.RadioButton(boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m805RoundRectgG7oq9Y(float f, float f2, float f3, float f4, long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (4294967295L & Float.floatToRawIntBits(intBitsToFloat2));
        return new RoundRect(f, f2, f3, f4, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ServerSettingsPasswordInput(app.k9mail.feature.account.common.domain.entity.InteractionMode r18, kotlin.jvm.functions.Function1 r19, androidx.compose.ui.Modifier r20, java.lang.String r21, boolean r22, java.lang.String r23, androidx.compose.foundation.layout.PaddingValuesImpl r24, androidx.compose.runtime.Composer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.ServerSettingsPasswordInput(app.k9mail.feature.account.common.domain.entity.InteractionMode, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, java.lang.String, boolean, java.lang.String, androidx.compose.foundation.layout.PaddingValuesImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void ServerValidationToolbarScreen(String str, BaseServerValidationViewModel baseServerValidationViewModel, Modifier modifier, Composer composer, int i) {
        int i2;
        baseServerValidationViewModel.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1664178607);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(baseServerValidationViewModel) : gapComposer.changedInstance(baseServerValidationViewModel) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        int i3 = 0;
        int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            int i5 = i2 >> 3;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(baseServerValidationViewModel.state, gapComposer);
            int i6 = 6;
            boolean z = (((i5 & 14) ^ 6) > 4 && gapComposer.changedInstance(baseServerValidationViewModel)) || (i5 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(baseServerValidationViewModel, i6);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(modifier, FlowRowOverflow.current(gapComposer).navigationBars), Expect_jvmKt.rememberComposableLambda(-1594807957, new ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0(str, function1, i3), gapComposer), Expect_jvmKt.rememberComposableLambda(1948610186, new Updater$$ExternalSyntheticLambda0(5, function1), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(1601447331, new ServerValidationMainScreenKt$$ExternalSyntheticLambda2(collectAsStateWithLifecycle, baseServerValidationViewModel, function1, i4), gapComposer), gapComposer, 1573296, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(str, baseServerValidationViewModel, modifier, i, 23);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045  */
    /* renamed from: TextTitleLarge-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m807TextTitleLargeXl4FiYE(java.lang.String r30, androidx.compose.ui.Modifier r31, long r32, androidx.compose.ui.text.style.TextAlign r34, int r35, int r36, androidx.compose.runtime.Composer r37, int r38, int r39) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.m807TextTitleLargeXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.ui.text.style.TextAlign, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0082 -> B:13:0x0065). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0085 -> B:13:0x0065). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runMigrations(java.util.List r7, androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1$api$1 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L41
            if (r1 == r4) goto L39
            if (r1 != r3) goto L33
            java.util.Iterator r7 = r0.L$1
            java.io.Serializable r8 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r8 = (kotlin.jvm.internal.Ref$ObjectRef) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L65
        L31:
            r9 = move-exception
            goto L7e
        L33:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r2
        L39:
            java.io.Serializable r7 = r0.L$0
            java.util.List r7 = (java.util.List) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            androidx.navigation.compose.NavHostKt$NavHost$25$1 r1 = new androidx.navigation.compose.NavHostKt$NavHost$25$1
            r6 = 9
            r1.<init>(r7, r9, r2, r6)
            r0.L$0 = r9
            r0.label = r4
            java.lang.Object r7 = r8.updateData(r1, r0)
            if (r7 != r5) goto L5b
            goto L93
        L5b:
            r7 = r9
        L5c:
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef
            r8.<init>()
            java.util.Iterator r7 = r7.iterator()
        L65:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L8b
            java.lang.Object r9 = r7.next()
            kotlin.jvm.functions.Function1 r9 = (kotlin.jvm.functions.Function1) r9
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L31
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L31
            r0.label = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = r9.invoke(r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r5) goto L65
            goto L93
        L7e:
            java.lang.Object r1 = r8.element
            if (r1 != 0) goto L85
            r8.element = r9
            goto L65
        L85:
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            kotlin.ResultKt.addSuppressed(r1, r9)
            goto L65
        L8b:
            java.lang.Object r7 = r8.element
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 != 0) goto L94
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
        L93:
            return r5
        L94:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.access$runMigrations(java.util.List, androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1$api$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final AnnotatedString annotatedStringResource(int i, AnnotatedString annotatedString, Composer composer) {
        String stringResource = Operation$State.stringResource(i, new Object[]{"{placeHolder}"}, composer);
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(50275434);
        AnnotatedString.Builder builder = new AnnotatedString.Builder();
        if (((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
            builder.append(stringResource);
        } else {
            int indexOf$default = StringsKt.indexOf$default(stringResource, "{placeHolder}", 0, false, 6);
            if (indexOf$default == -1) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return null;
            }
            builder.append(0, indexOf$default, stringResource);
            builder.append(annotatedString);
            builder.append(indexOf$default + 13, stringResource.length(), stringResource);
        }
        AnnotatedString annotatedString2 = builder.toAnnotatedString();
        gapComposer.end(false);
        return annotatedString2;
    }

    public static final boolean containsInclusive(Rect rect, float f, float f2) {
        float f3 = rect.left;
        if (f > rect.right || f3 > f) {
            return false;
        }
        return f2 <= rect.bottom && rect.top <= f2;
    }

    public static Metadata.Key create(String str, ClassReference classReference) {
        Metadata.Key key;
        HashMap hashMap = Metadata.Key.keys;
        synchronized (hashMap) {
            try {
                Object obj = hashMap.get(str);
                if (obj == null) {
                    obj = new Metadata.Key(str, classReference);
                    hashMap.put(str, obj);
                }
                key = (Metadata.Key) obj;
                if (!key.type.equals(classReference)) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return key;
    }

    public static Handler createAsync(Looper looper) {
        Handler createAsync;
        if (Build.VERSION.SDK_INT >= 28) {
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException e) {
            e = e;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InstantiationException e2) {
            e = e2;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (NoSuchMethodException e3) {
            e = e3;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InvocationTargetException e4) {
            Throwable cause = e4.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(cause);
            return null;
        }
    }

    public static final float fastCbrt(float f) {
        float intBitsToFloat = Float.intBitsToFloat(((int) ((Float.floatToRawIntBits(f) & 8589934591L) / 3)) + 709952852);
        float f2 = intBitsToFloat - ((intBitsToFloat - (f / (intBitsToFloat * intBitsToFloat))) * 0.33333334f);
        return f2 - ((f2 - (f / (f2 * f2))) * 0.33333334f);
    }

    public static Part fromEncoded(String str) {
        String str2 = NotCachedHolder.NotCached;
        return str == null ? Part.NULL : str.length() == 0 ? Part.EMPTY : str2 == null ? Part.NULL : str2.length() == 0 ? Part.EMPTY : new Part(str, str2);
    }

    public static final CoroutineContext getCoroutineContext(RoomDatabase roomDatabase, boolean z, ContinuationImpl continuationImpl) {
        if (!roomDatabase.inCompatibilityMode$room_runtime_release()) {
            ContextScope contextScope = roomDatabase.coroutineScope;
            if (contextScope != null) {
                return contextScope.coroutineContext;
            }
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            throw null;
        }
        if (continuationImpl.getContext().get(TransactionElement.Key) != null) {
            DBUtil$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        if (z) {
            CoroutineContext coroutineContext = roomDatabase.transactionContext;
            if (coroutineContext != null) {
                return coroutineContext;
            }
            Intrinsics.throwUninitializedPropertyAccessException("transactionContext");
            throw null;
        }
        ContextScope contextScope2 = roomDatabase.coroutineScope;
        if (contextScope2 != null) {
            return contextScope2.coroutineContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
        throw null;
    }

    public static String getHumanReadableName(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 4) != 0) {
            arrayList.add("IMAGE_CAPTURE");
        }
        if ((i & 1) != 0) {
            arrayList.add("PREVIEW");
        }
        if ((i & 2) != 0) {
            arrayList.add("VIDEO_CAPTURE");
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) "|");
            }
        }
        return sb.toString();
    }

    public static final ImageVector getInfo() {
        ImageVector imageVector = _info;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Info", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(11.0f, 7.0f);
        builder2.horizontalLineToRelative(2.0f);
        builder2.verticalLineToRelative(2.0f);
        builder2.horizontalLineToRelative(-2.0f);
        builder2.close();
        builder2.moveTo(11.0f, 11.0f);
        builder2.horizontalLineToRelative(2.0f);
        builder2.verticalLineToRelative(6.0f);
        builder2.horizontalLineToRelative(-2.0f);
        builder2.close();
        builder2.moveTo(12.0f, 2.0f);
        builder2.curveTo(6.48f, 2.0f, 2.0f, 6.48f, 2.0f, 12.0f);
        builder2.reflectiveCurveToRelative(4.48f, 10.0f, 10.0f, 10.0f);
        builder2.reflectiveCurveToRelative(10.0f, -4.48f, 10.0f, -10.0f);
        builder2.reflectiveCurveTo(17.52f, 2.0f, 12.0f, 2.0f);
        builder2.close();
        builder2.moveTo(12.0f, 20.0f);
        builder2.curveToRelative(-4.41f, 0.0f, -8.0f, -3.59f, -8.0f, -8.0f);
        builder2.reflectiveCurveToRelative(3.59f, -8.0f, 8.0f, -8.0f);
        builder2.reflectiveCurveToRelative(8.0f, 3.59f, 8.0f, 8.0f);
        builder2.reflectiveCurveToRelative(-3.59f, 8.0f, -8.0f, 8.0f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        ImageVector build = builder.build();
        _info = build;
        return build;
    }

    public static Intent getIntent(Context context, List list) {
        String str = ((MessageReference) list.get(0)).accountUuid;
        ArrayList messageReferenceStringList = Data.Companion.toMessageReferenceStringList(list);
        Intent intent = new Intent(context, (Class<?>) DeleteConfirmationActivity.class);
        intent.setFlags(335544320);
        intent.putExtra("accountUuid", str);
        intent.putExtra("messageReferences", messageReferenceStringList);
        return intent;
    }

    public static String getNameForNavigator$navigation_common_release(Class cls) {
        LinkedHashMap linkedHashMap = NavigatorProvider.annotationNames;
        String str = (String) linkedHashMap.get(cls);
        if (str == null) {
            Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
            str = name != null ? name.value() : null;
            if (str == null || str.length() <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                return null;
            }
            linkedHashMap.put(cls, str);
        }
        str.getClass();
        return str;
    }

    public static boolean isEditable(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static final boolean isSimple(RoundRect roundRect) {
        long j = roundRect.topLeftCornerRadius;
        return (j >>> 32) == (4294967295L & j) && j == roundRect.topRightCornerRadius && j == roundRect.bottomRightCornerRadius && j == roundRect.bottomLeftCornerRadius;
    }

    public static final int lerp(int i, float f, int i2) {
        return i + ((int) Math.round((i2 - i) * f));
    }

    public static final Object performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        roomDatabase.getClass();
        roomDatabase.assertNotMainThread();
        if (!roomDatabase.inCompatibilityMode$room_runtime_release() || roomDatabase.inTransaction() || roomDatabase.suspendingTransactionId.get() == null) {
            return Util.runBlockingUninterruptible(new DBUtil__DBUtil_androidKt$performBlocking$1(roomDatabase, z, z2, function1, (Continuation) null));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object performSuspending(androidx.room.RoomDatabase r16, boolean r17, boolean r18, kotlin.jvm.functions.Function1 r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            r0 = r20
            boolean r1 = r0 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            if (r1 == 0) goto L16
            r1 = r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = (androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r7 = r1
            goto L1c
        L16:
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            r1.<init>(r0)
            goto L14
        L1c:
            java.lang.Object r0 = r7.result
            int r1 = r7.label
            r2 = 0
            r3 = 3
            r4 = 2
            r8 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L4c
            if (r1 == r8) goto L48
            if (r1 == r4) goto L38
            if (r1 != r3) goto L32
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L32:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r2
        L38:
            boolean r1 = r7.Z$1
            boolean r4 = r7.Z$0
            kotlin.jvm.functions.Function1 r5 = r7.L$1
            androidx.room.RoomDatabase r6 = r7.L$0
            kotlin.ResultKt.throwOnFailure(r0)
            r14 = r1
            r13 = r4
            r15 = r5
            r12 = r6
            goto L9b
        L48:
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L4c:
            kotlin.ResultKt.throwOnFailure(r0)
            boolean r0 = r16.inCompatibilityMode$room_runtime_release()
            if (r0 == 0) goto L7d
            boolean r0 = r16.isOpenInternal()
            if (r0 == 0) goto L7d
            boolean r0 = r16.inTransaction()
            if (r0 == 0) goto L7d
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 r0 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1
            r4 = 0
            r6 = 0
            r3 = r16
            r2 = r17
            r1 = r18
            r5 = r19
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r1 = r2
            r2 = r0
            r0 = r3
            r7.label = r8
            java.lang.Object r0 = r0.useConnection$room_runtime_release(r1, r2, r7)
            if (r0 != r9) goto L7c
            goto Laf
        L7c:
            return r0
        L7d:
            r0 = r16
            r1 = r17
            r5 = r18
            r7.L$0 = r0
            r6 = r19
            r7.L$1 = r6
            r7.Z$0 = r1
            r7.Z$1 = r5
            r7.label = r4
            kotlin.coroutines.CoroutineContext r4 = getCoroutineContext(r0, r5, r7)
            if (r4 != r9) goto L96
            goto Laf
        L96:
            r12 = r0
            r13 = r1
            r0 = r4
            r14 = r5
            r15 = r6
        L9b:
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1 r10 = new androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1
            r11 = 0
            r10.<init>(r11, r12, r13, r14, r15)
            r7.L$0 = r2
            r7.L$1 = r2
            r7.label = r3
            java.lang.Object r0 = kotlinx.coroutines.JobKt.withContext(r0, r10, r7)
            if (r0 != r9) goto Lb0
        Laf:
            return r9
        Lb0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.performSuspending(androidx.room.RoomDatabase, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void positionToParentOf(SlotWriter slotWriter, Applier applier, int i) {
        while (true) {
            int i2 = slotWriter.parent;
            if (i > i2 && i < slotWriter.currentGroupEnd) {
                return;
            }
            if (i2 == 0 && i == 0) {
                return;
            }
            slotWriter.skipToGroupEnd();
            if (slotWriter.isNode(slotWriter.parent)) {
                applier.up();
            }
            slotWriter.endGroup();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void propagateTo(Deferred deferred, CompletableDeferredImpl completableDeferredImpl) {
        deferred.getClass();
        completableDeferredImpl.getClass();
        ((JobSupport) deferred).invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(2, deferred, completableDeferredImpl));
    }

    public static final ManagedActivityResultLauncher rememberLauncherForActivityResult(OAuthBearer oAuthBearer, Function1 function1, Composer composer) {
        Object xmlSettingsParser$$ExternalSyntheticLambda7;
        Object obj;
        Updater.rememberUpdatedState(oAuthBearer, composer);
        Object rememberUpdatedState = Updater.rememberUpdatedState(function1, composer);
        Object[] objArr = new Object[0];
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj2 = Composer.Companion.Empty;
        if (rememberedValue == obj2) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Object obj3 = (String) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer, 48);
        ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) gapComposer.consume(LocalActivityResultRegistryOwner.LocalComposition);
        if (activityResultRegistryOwner == null) {
            gapComposer.startReplaceGroup(1213380307);
            Object obj4 = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            while (true) {
                if (!(obj4 instanceof ContextWrapper)) {
                    obj4 = null;
                    break;
                }
                if (obj4 instanceof ActivityResultRegistryOwner) {
                    break;
                }
                obj4 = ((ContextWrapper) obj4).getBaseContext();
            }
            activityResultRegistryOwner = (ActivityResultRegistryOwner) obj4;
        } else {
            gapComposer.startReplaceGroup(1213379439);
        }
        gapComposer.end(false);
        if (activityResultRegistryOwner == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
            return null;
        }
        Object activityResultRegistry = activityResultRegistryOwner.getActivityResultRegistry();
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == obj2) {
            rememberedValue2 = new ActivityResultLauncherHolder();
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) rememberedValue2;
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (rememberedValue3 == obj2) {
            rememberedValue3 = new ManagedActivityResultLauncher(activityResultLauncherHolder);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) rememberedValue3;
        boolean changedInstance = gapComposer.changedInstance(activityResultLauncherHolder) | gapComposer.changedInstance(activityResultRegistry) | gapComposer.changed(obj3) | gapComposer.changedInstance(oAuthBearer) | gapComposer.changed(rememberUpdatedState);
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue4 == obj2) {
            obj = oAuthBearer;
            xmlSettingsParser$$ExternalSyntheticLambda7 = new XmlSettingsParser$$ExternalSyntheticLambda7(activityResultLauncherHolder, activityResultRegistry, obj3, obj, rememberUpdatedState, 1);
            gapComposer.updateRememberedValue(xmlSettingsParser$$ExternalSyntheticLambda7);
        } else {
            xmlSettingsParser$$ExternalSyntheticLambda7 = rememberedValue4;
            obj = oAuthBearer;
        }
        Function1 function12 = (Function1) xmlSettingsParser$$ExternalSyntheticLambda7;
        boolean changed = gapComposer.changed(activityResultRegistry) | gapComposer.changed(obj3) | gapComposer.changed(obj);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changed || rememberedValue5 == obj2) {
            rememberedValue5 = new DisposableEffectImpl(function12);
            gapComposer.updateRememberedValue(rememberedValue5);
        }
        return managedActivityResultLauncher;
    }

    public static ArrayList splitCommand(String str, String str2, BinaryBitmap binaryBitmap, int i) {
        Pair pair;
        ArrayList arrayList = new ArrayList();
        TreeSet treeSet = new TreeSet();
        ArraysKt___ArraysKt.toCollection(new Long[0], treeSet);
        treeSet.addAll((Set) binaryBitmap.binarizer);
        ArrayList arrayList2 = new ArrayList((List) binaryBitmap.matrix);
        int length = str2.length();
        int length2 = str.length() + length + 2;
        while (true) {
            if (treeSet.isEmpty() && arrayList2.isEmpty()) {
                return arrayList;
            }
            StringBuilder sb = new StringBuilder(str);
            sb.append(' ');
            int i2 = length2;
            while (i2 < i) {
                if (!treeSet.isEmpty()) {
                    long longValue = ((Number) CollectionsKt.first(treeSet)).longValue();
                    String valueOf = String.valueOf(longValue);
                    int length3 = valueOf.length() + i2 + 1;
                    if (length3 >= i) {
                        pair = new Pair(Boolean.FALSE, Integer.valueOf(i2));
                    } else {
                        sb.append(valueOf);
                        sb.append(',');
                        treeSet.remove(Long.valueOf(longValue));
                        pair = new Pair(Boolean.TRUE, Integer.valueOf(length3));
                    }
                } else if (arrayList2.isEmpty()) {
                    pair = new Pair(Boolean.FALSE, Integer.valueOf(i2));
                } else {
                    ContiguousIdGroup contiguousIdGroup = (ContiguousIdGroup) CollectionsKt.first((List) arrayList2);
                    String contiguousIdGroup2 = contiguousIdGroup.toString();
                    int length4 = contiguousIdGroup2.length() + i2 + 1;
                    if (length4 >= i) {
                        pair = new Pair(Boolean.FALSE, Integer.valueOf(i2));
                    } else {
                        sb.append(contiguousIdGroup2);
                        sb.append(',');
                        arrayList2.remove(contiguousIdGroup);
                        pair = new Pair(Boolean.TRUE, Integer.valueOf(length4));
                    }
                }
                boolean booleanValue = ((Boolean) pair.first).booleanValue();
                int intValue = ((Number) pair.second).intValue();
                if (!booleanValue) {
                    break;
                }
                i2 = intValue;
            }
            if (length != 0) {
                sb.setCharAt(sb.length() - 1, ' ');
                sb.append(str2);
            } else {
                sb.setLength(sb.length() - 1);
            }
            arrayList.add(sb.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0341 A[LOOP:2: B:100:0x033b->B:102:0x0341, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x078d  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0213 A[Catch: Exception -> 0x00a6, TRY_LEAVE, TryCatch #4 {Exception -> 0x00a6, blocks: (B:66:0x0090, B:26:0x00ab, B:28:0x00b1, B:29:0x00c7, B:31:0x00ef, B:32:0x0126, B:34:0x0131, B:36:0x013d, B:39:0x0213, B:43:0x015e, B:44:0x018c, B:46:0x0192, B:48:0x01a5, B:49:0x01bd, B:51:0x01cd, B:53:0x01d3, B:55:0x01e6, B:56:0x01fe), top: B:65:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0a4f  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0a73  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0adc  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0ae8  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0b0f  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0b1b  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0b27  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0b33  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0b3f  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0b6f  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0b7b  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0b87  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0b93  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0b9f  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0bad  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0bb9  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0bc5  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0bda  */
    /* JADX WARN: Removed duplicated region for block: B:510:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0ad7  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0277  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void upgradeDatabase(android.database.sqlite.SQLiteDatabase r48, com.jcraft.jzlib.Adler32 r49) {
        /*
            Method dump skipped, instructions count: 3068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.upgradeDatabase(android.database.sqlite.SQLiteDatabase, com.jcraft.jzlib.Adler32):void");
    }

    public static final float lerp(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    /* renamed from: TextTitleLarge-Xl4FiYE, reason: not valid java name */
    public static final void m806TextTitleLargeXl4FiYE(AnnotatedString annotatedString, Modifier modifier, long j, int i, int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        Modifier modifier2;
        int i4;
        int i5;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(201757555);
        int i6 = i3 | (gapComposer2.changed(annotatedString) ? 4 : 2) | 48 | (gapComposer2.changed(j) ? 256 : 128) | 224256;
        if (gapComposer2.shouldExecute(i6 & 1, (74899 & i6) != 74898)) {
            TextStyle textStyle = ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).titleLarge;
            int i7 = i6 & 1022;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            gapComposer = gapComposer2;
            TextKt.m363TextZ58ophY(annotatedString, companion, j, 0L, 0L, null, 0L, 1, false, Integer.MAX_VALUE, 0, null, null, textStyle, gapComposer, i7, 24966, 240632);
            modifier2 = companion;
            i4 = 1;
            i5 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            i4 = i;
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextLabelSmallKt$$ExternalSyntheticLambda1(annotatedString, modifier2, j, i4, i5, i3, 1);
        }
    }

    public static final void RadioButton(boolean z, String str, Function0 function0, Modifier modifier, boolean z2, Composer composer, int i) {
        boolean z3;
        Function0 function02;
        boolean z4;
        Modifier modifier2;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1468896443);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | 27648;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            z3 = z;
            function02 = function0;
            RadioButton(z3, Expect_jvmKt.rememberComposableLambda(1581085860, new LoadingItemKt$$ExternalSyntheticLambda0(str, i3), gapComposer), function02, companion, true, gapComposer, (i2 & 14) | 48 | (i2 & 896) | 27648, 0);
            modifier2 = companion;
            z4 = true;
        } else {
            z3 = z;
            function02 = function0;
            gapComposer.skipToGroupEnd();
            z4 = z2;
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RadioButtonKt$$ExternalSyntheticLambda1(z3, str, function02, modifier2, z4, i);
        }
    }
}
