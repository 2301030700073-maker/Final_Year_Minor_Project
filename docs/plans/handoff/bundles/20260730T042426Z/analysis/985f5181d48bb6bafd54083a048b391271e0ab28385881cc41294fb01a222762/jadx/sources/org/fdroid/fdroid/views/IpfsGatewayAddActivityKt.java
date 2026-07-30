package org.fdroid.fdroid.views;

import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.recyclerview.widget.ItemTouchHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: IpfsGatewayAddActivity.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u001a1\u0010\u0006\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u000f\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b²\u0006\u000e\u0010\n\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lkotlin/Function0;", "", "onBackClicked", "Lkotlin/Function1;", "", "onAddUserGateway", "IpfsGatewayAddScreen", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "IpfsGatewayAddScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "errorMsg", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IpfsGatewayAddActivityKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IpfsGatewayAddScreen$lambda$5(Function0 function0, Function1 function1, int i, Composer composer, int i2) {
        IpfsGatewayAddScreen(function0, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IpfsGatewayAddScreenPreview$lambda$6(int i, Composer composer, int i2) {
        IpfsGatewayAddScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void IpfsGatewayAddScreen(final Function0 onBackClicked, final Function1 onAddUserGateway, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(onBackClicked, "onBackClicked");
        Intrinsics.checkNotNullParameter(onAddUserGateway, "onAddUserGateway");
        Composer startRestartGroup = composer.startRestartGroup(354774652);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(onBackClicked) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(onAddUserGateway) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(354774652, i2, -1, "org.fdroid.fdroid.views.IpfsGatewayAddScreen (IpfsGatewayAddActivity.kt:78)");
            }
            startRestartGroup.startReplaceGroup(4576852);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(4579108);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new FocusRequester();
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            FocusRequester focusRequester = (FocusRequester) rememberedValue2;
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(4580710);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (rememberedValue3 == companion.getEmpty()) {
                rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceGroup();
            composer2 = startRestartGroup;
            ScaffoldKt.m737ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(7546680, true, new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(7546680, i3, -1, "org.fdroid.fdroid.views.IpfsGatewayAddScreen.<anonymous> (IpfsGatewayAddActivity.kt:85)");
                        }
                        Function2 m3123getLambda1$app_fullRelease = ComposableSingletons$IpfsGatewayAddActivityKt.INSTANCE.m3123getLambda1$app_fullRelease();
                        final Function0 function0 = Function0.this;
                        AppBarKt.m607TopAppBarGHTll3U(m3123getLambda1$app_fullRelease, null, ComposableLambdaKt.rememberComposableLambda(-281499010, true, new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((Composer) obj, ((Number) obj2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i4) {
                                if ((i4 & 3) != 2 || !composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-281499010, i4, -1, "org.fdroid.fdroid.views.IpfsGatewayAddScreen.<anonymous>.<anonymous> (IpfsGatewayAddActivity.kt:87)");
                                    }
                                    IconButtonKt.IconButton(Function0.this, null, false, null, null, ComposableSingletons$IpfsGatewayAddActivityKt.INSTANCE.m3124getLambda2$app_fullRelease(), composer4, 196608, 30);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer4.skipToGroupEnd();
                            }
                        }, composer3, 54), null, 0.0f, null, null, null, composer3, 390, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, startRestartGroup, 54), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(1924022157, true, new IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2(mutableState, focusRequester, (MutableState) rememberedValue3, onAddUserGateway), startRestartGroup, 54), composer2, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit IpfsGatewayAddScreen$lambda$5;
                    IpfsGatewayAddScreen$lambda$5 = IpfsGatewayAddActivityKt.IpfsGatewayAddScreen$lambda$5(Function0.this, onAddUserGateway, i, (Composer) obj, ((Integer) obj2).intValue());
                    return IpfsGatewayAddScreen$lambda$5;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String IpfsGatewayAddScreen$lambda$3(MutableState mutableState) {
        return (String) mutableState.getValue();
    }

    public static final void IpfsGatewayAddScreenPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-384094241);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-384094241, i, -1, "org.fdroid.fdroid.views.IpfsGatewayAddScreenPreview (IpfsGatewayAddActivity.kt:179)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$IpfsGatewayAddActivityKt.INSTANCE.m3125getLambda3$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit IpfsGatewayAddScreenPreview$lambda$6;
                    IpfsGatewayAddScreenPreview$lambda$6 = IpfsGatewayAddActivityKt.IpfsGatewayAddScreenPreview$lambda$6(i, (Composer) obj, ((Integer) obj2).intValue());
                    return IpfsGatewayAddScreenPreview$lambda$6;
                }
            });
        }
    }
}
