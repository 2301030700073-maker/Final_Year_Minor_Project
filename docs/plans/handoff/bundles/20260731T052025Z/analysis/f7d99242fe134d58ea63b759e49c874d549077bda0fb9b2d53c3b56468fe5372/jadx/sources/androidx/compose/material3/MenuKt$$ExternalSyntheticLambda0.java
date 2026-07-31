package androidx.compose.material3;

import android.content.res.Resources;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Error;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(ServerValidationContract$State serverValidationContract$State, boolean z, Resources resources, Function1 function1, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel) {
        this.f$1 = serverValidationContract$State;
        this.f$0 = z;
        this.f$2 = resources;
        this.f$3 = function1;
        this.f$4 = accountOAuthContract$ViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        boolean z = this.f$0;
        Unit unit = Unit.INSTANCE;
        final int i2 = 1;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = ((MutableTransitionState) obj5).targetState$delegate;
                MutableState mutableState = (MutableState) obj4;
                State state = (State) obj3;
                State state2 = (State) obj2;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                float f = 0.8f;
                float f2 = 1.0f;
                reusableGraphicsLayerScope.setScaleX(!z ? ((Number) state.getValue()).floatValue() : ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() ? 1.0f : 0.8f);
                if (!z) {
                    f = ((Number) state.getValue()).floatValue();
                } else if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                    f = 1.0f;
                }
                reusableGraphicsLayerScope.setScaleY(f);
                if (!z) {
                    f2 = ((Number) state2.getValue()).floatValue();
                } else if (!((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                    f2 = 0.0f;
                }
                reusableGraphicsLayerScope.setAlpha(f2);
                reusableGraphicsLayerScope.m511setTransformOrigin__ExYCQ(((TransformOrigin) mutableState.getValue()).packedValue);
                break;
            case 1:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).element = true;
                ((Ref$BooleanRef) obj4).element = true;
                ((NavControllerImpl) obj3).popEntryFromBackStack$navigation_runtime_release(navBackStackEntry, z, (ArrayDeque) obj2);
                break;
            default:
                ServerValidationContract$State serverValidationContract$State = (ServerValidationContract$State) obj5;
                Resources resources = (Resources) obj4;
                Function1 function1 = (Function1) obj3;
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                ServerValidationContract$Error serverValidationContract$Error = serverValidationContract$State.error;
                final boolean z2 = this.f$0;
                if (serverValidationContract$Error == null) {
                    if (!serverValidationContract$State.isSuccess) {
                        if (!serverValidationContract$State.needsAuthorization) {
                            Config.CC.item$default(lazyListIntervalContent, "loading", new ComposableLambdaImpl(-1048221296, new Function3() { // from class: app.k9mail.feature.account.server.validation.ui.ServerValidationContentKt$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                    int i3 = i2;
                                    Unit unit2 = Unit.INSTANCE;
                                    boolean z3 = z2;
                                    LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj6;
                                    Composer composer = (Composer) obj7;
                                    int intValue = ((Integer) obj8).intValue();
                                    switch (i3) {
                                        case 0:
                                            lazyItemScopeImpl.getClass();
                                            if ((intValue & 6) == 0) {
                                                intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                                            }
                                            GapComposer gapComposer = (GapComposer) composer;
                                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                gapComposer.skipToGroupEnd();
                                                break;
                                            } else {
                                                SchemaInfoUtilKt.LoadingItem(lazyItemScopeImpl, null, Operation$State.stringResource(gapComposer, z3 ? R.string.account_server_validation_incoming_success : R.string.account_server_validation_outgoing_success), gapComposer, intValue & 14);
                                                break;
                                            }
                                        default:
                                            lazyItemScopeImpl.getClass();
                                            if ((intValue & 6) == 0) {
                                                intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                                            }
                                            GapComposer gapComposer2 = (GapComposer) composer;
                                            if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else {
                                                SchemaInfoUtilKt.LoadingItem(lazyItemScopeImpl, null, Operation$State.stringResource(gapComposer2, z3 ? R.string.account_server_validation_incoming_loading_message : R.string.account_server_validation_outgoing_loading_message), gapComposer2, intValue & 14);
                                                break;
                                            }
                                    }
                                    return unit2;
                                }
                            }, true), 2);
                            break;
                        } else {
                            Config.CC.item$default(lazyListIntervalContent, "oauth", new ComposableLambdaImpl(2045830897, new BufferedChannel$$ExternalSyntheticLambda1(13, function1, accountOAuthContract$ViewModel), true), 2);
                            break;
                        }
                    } else {
                        final int i3 = 0;
                        Config.CC.item$default(lazyListIntervalContent, "success", new ComposableLambdaImpl(220195120, new Function3() { // from class: app.k9mail.feature.account.server.validation.ui.ServerValidationContentKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                int i32 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                boolean z3 = z2;
                                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj6;
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                switch (i32) {
                                    case 0:
                                        lazyItemScopeImpl.getClass();
                                        if ((intValue & 6) == 0) {
                                            intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                                        }
                                        GapComposer gapComposer = (GapComposer) composer;
                                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                            gapComposer.skipToGroupEnd();
                                            break;
                                        } else {
                                            SchemaInfoUtilKt.LoadingItem(lazyItemScopeImpl, null, Operation$State.stringResource(gapComposer, z3 ? R.string.account_server_validation_incoming_success : R.string.account_server_validation_outgoing_success), gapComposer, intValue & 14);
                                            break;
                                        }
                                    default:
                                        lazyItemScopeImpl.getClass();
                                        if ((intValue & 6) == 0) {
                                            intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                                        }
                                        GapComposer gapComposer2 = (GapComposer) composer;
                                        if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                            gapComposer2.skipToGroupEnd();
                                            break;
                                        } else {
                                            SchemaInfoUtilKt.LoadingItem(lazyItemScopeImpl, null, Operation$State.stringResource(gapComposer2, z3 ? R.string.account_server_validation_incoming_loading_message : R.string.account_server_validation_outgoing_loading_message), gapComposer2, intValue & 14);
                                            break;
                                        }
                                }
                                return unit2;
                            }
                        }, true), 2);
                        break;
                    }
                } else {
                    Config.CC.item$default(lazyListIntervalContent, "error", new ComposableLambdaImpl(2056913401, new MessageListFragmentKt$$ExternalSyntheticLambda1(z2, serverValidationContract$State, resources, function1, 1), true), 2);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, NavControllerImpl navControllerImpl, boolean z, ArrayDeque arrayDeque) {
        this.f$1 = ref$BooleanRef;
        this.f$2 = ref$BooleanRef2;
        this.f$3 = navControllerImpl;
        this.f$0 = z;
        this.f$4 = arrayDeque;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(boolean z, MutableTransitionState mutableTransitionState, MutableState mutableState, Transition.TransitionAnimationState transitionAnimationState, Transition.TransitionAnimationState transitionAnimationState2) {
        this.f$0 = z;
        this.f$1 = mutableTransitionState;
        this.f$2 = mutableState;
        this.f$3 = transitionAnimationState;
        this.f$4 = transitionAnimationState2;
    }
}
