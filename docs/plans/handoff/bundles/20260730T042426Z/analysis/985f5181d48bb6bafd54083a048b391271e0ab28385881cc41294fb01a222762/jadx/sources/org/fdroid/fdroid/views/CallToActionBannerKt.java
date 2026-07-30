package org.fdroid.fdroid.views;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.res.StringResources_androidKt;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.Preferences;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: CallToActionBanner.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a#\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0007¢\u0006\u0002\u0010\t\u001a\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f\u001a\r\u0010\r\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u000e¨\u0006\u000f²\u0006\n\u0010\u0010\u001a\u00020\u0001X\u008a\u008e\u0002"}, d2 = {"hasCallToActionExpired", "", "now", "", "CallToActionBanner", "", "dismissed", "onDismiss", "Lkotlin/Function0;", "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "setContentCallToActionBanner", "composeView", "Landroidx/compose/ui/platform/ComposeView;", "CallToActionBannerPreview", "(Landroidx/compose/runtime/Composer;I)V", "app_fullRelease", "showBanner"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CallToActionBannerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CallToActionBanner$lambda$6(boolean z, Function0 function0, int i, Composer composer, int i2) {
        CallToActionBanner(z, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CallToActionBannerPreview$lambda$8(int i, Composer composer, int i2) {
        CallToActionBannerPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static /* synthetic */ boolean hasCallToActionExpired$default(long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = System.currentTimeMillis();
        }
        return hasCallToActionExpired(j);
    }

    public static final boolean hasCallToActionExpired(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2026, 8, 1);
        return j > calendar.getTimeInMillis();
    }

    public static final void CallToActionBanner(final boolean z, final Function0 onDismiss, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer startRestartGroup = composer.startRestartGroup(-2059358834);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(onDismiss) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2059358834, i2, -1, "org.fdroid.fdroid.views.CallToActionBanner (CallToActionBanner.kt:67)");
            }
            startRestartGroup.startReplaceGroup(-1933715828);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(!z), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceGroup();
            UriHandler uriHandler = (UriHandler) startRestartGroup.consume(CompositionLocalsKt.getLocalUriHandler());
            String stringResource = StringResources_androidKt.stringResource(R.string.call_to_action_keepandroidopen_url, startRestartGroup, 0);
            startRestartGroup.startReplaceGroup(-1933709925);
            boolean z2 = (i2 & 112) == 32;
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (z2 || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function0() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit CallToActionBanner$lambda$5$lambda$4;
                        CallToActionBanner$lambda$5$lambda$4 = CallToActionBannerKt.CallToActionBanner$lambda$5$lambda$4(Function0.this, mutableState);
                        return CallToActionBanner$lambda$5$lambda$4;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceGroup();
            AnimatedVisibilityKt.AnimatedVisibility(CallToActionBanner$lambda$2(mutableState), null, null, EnterExitTransitionKt.slideOutVertically$default(null, null, 3, null), null, ComposableLambdaKt.rememberComposableLambda(308140470, true, new CallToActionBannerKt$CallToActionBanner$1(uriHandler, stringResource, (Function0) rememberedValue2), startRestartGroup, 54), startRestartGroup, 199680, 22);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit CallToActionBanner$lambda$6;
                    CallToActionBanner$lambda$6 = CallToActionBannerKt.CallToActionBanner$lambda$6(z, onDismiss, i, (Composer) obj, ((Integer) obj2).intValue());
                    return CallToActionBanner$lambda$6;
                }
            });
        }
    }

    private static final void CallToActionBanner$lambda$3(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CallToActionBanner$lambda$5$lambda$4(Function0 function0, MutableState mutableState) {
        function0.invoke();
        CallToActionBanner$lambda$3(mutableState, false);
        return Unit.INSTANCE;
    }

    private static final boolean CallToActionBanner$lambda$2(MutableState mutableState) {
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    public static final void setContentCallToActionBanner(ComposeView composeView) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        final boolean z = hasCallToActionExpired$default(0L, 1, null) || Preferences.get().getCallToActionDismissed();
        final Function0 function0 = new Function0() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit contentCallToActionBanner$lambda$7;
                contentCallToActionBanner$lambda$7 = CallToActionBannerKt.setContentCallToActionBanner$lambda$7();
                return contentCallToActionBanner$lambda$7;
            }
        };
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(1196650564, true, new Function2() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$setContentCallToActionBanner$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Composer) obj, ((Number) obj2).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                if ((i & 3) != 2 || !composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1196650564, i, -1, "org.fdroid.fdroid.views.setContentCallToActionBanner.<anonymous> (CallToActionBanner.kt:138)");
                    }
                    final boolean z2 = z;
                    final Function0 function02 = function0;
                    ThemeKt.FDroidContent(false, false, ComposableLambdaKt.rememberComposableLambda(67568014, true, new Function2() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$setContentCallToActionBanner$1.1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer2, int i2) {
                            if ((i2 & 3) != 2 || !composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(67568014, i2, -1, "org.fdroid.fdroid.views.setContentCallToActionBanner.<anonymous>.<anonymous> (CallToActionBanner.kt:139)");
                                }
                                CallToActionBannerKt.CallToActionBanner(z2, function02, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer2.skipToGroupEnd();
                        }
                    }, composer, 54), composer, 384, 3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setContentCallToActionBanner$lambda$7() {
        Preferences.get().setCallToActionDismissed();
        return Unit.INSTANCE;
    }

    public static final void CallToActionBannerPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(92279010);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(92279010, i, -1, "org.fdroid.fdroid.views.CallToActionBannerPreview (CallToActionBanner.kt:149)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$CallToActionBannerKt.INSTANCE.m3121getLambda2$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit CallToActionBannerPreview$lambda$8;
                    CallToActionBannerPreview$lambda$8 = CallToActionBannerKt.CallToActionBannerPreview$lambda$8(i, (Composer) obj, ((Integer) obj2).intValue());
                    return CallToActionBannerPreview$lambda$8;
                }
            });
        }
    }
}
