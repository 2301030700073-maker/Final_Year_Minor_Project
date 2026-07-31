package androidx.compose.material3;

import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CardElevation$animateElevation$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ MutableInteractionSourceImpl $interactionSource;
    public final /* synthetic */ SnapshotStateList $interactions;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CardElevation$animateElevation$1$1(MutableInteractionSourceImpl mutableInteractionSourceImpl, SnapshotStateList snapshotStateList, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$interactionSource = mutableInteractionSourceImpl;
        this.$interactions = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new CardElevation$animateElevation$1$1(this.$interactionSource, this.$interactions, continuation, 0);
            default:
                return new CardElevation$animateElevation$1$1(this.$interactionSource, this.$interactions, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CardElevation$animateElevation$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final SnapshotStateList snapshotStateList = this.$interactions;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.$interactionSource;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        final int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    SharedFlowImpl sharedFlowImpl = mutableInteractionSourceImpl.interactions;
                    final int i4 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material3.CardElevation$animateElevation$1$1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            int i5 = i4;
                            Unit unit2 = Unit.INSTANCE;
                            SnapshotStateList snapshotStateList2 = snapshotStateList;
                            switch (i5) {
                                case 0:
                                    Interaction interaction = (Interaction) obj2;
                                    if (!(interaction instanceof HoverInteraction$Enter)) {
                                        if (!(interaction instanceof HoverInteraction$Exit)) {
                                            if (!(interaction instanceof FocusInteraction$Focus)) {
                                                if (!(interaction instanceof FocusInteraction$Unfocus)) {
                                                    if (!(interaction instanceof PressInteraction.Press)) {
                                                        if (!(interaction instanceof PressInteraction.Release)) {
                                                            if (!(interaction instanceof PressInteraction.Cancel)) {
                                                                if (!(interaction instanceof DragInteraction$Start)) {
                                                                    if (!(interaction instanceof DragInteraction$Stop)) {
                                                                        if (interaction instanceof DragInteraction$Cancel) {
                                                                            snapshotStateList2.remove(((DragInteraction$Cancel) interaction).start);
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        snapshotStateList2.remove(((DragInteraction$Stop) interaction).start);
                                                                        break;
                                                                    }
                                                                } else {
                                                                    snapshotStateList2.add(interaction);
                                                                    break;
                                                                }
                                                            } else {
                                                                snapshotStateList2.remove(((PressInteraction.Cancel) interaction).press);
                                                                break;
                                                            }
                                                        } else {
                                                            snapshotStateList2.remove(((PressInteraction.Release) interaction).press);
                                                            break;
                                                        }
                                                    } else {
                                                        snapshotStateList2.add(interaction);
                                                        break;
                                                    }
                                                } else {
                                                    snapshotStateList2.remove(((FocusInteraction$Unfocus) interaction).focus);
                                                    break;
                                                }
                                            } else {
                                                snapshotStateList2.add(interaction);
                                                break;
                                            }
                                        } else {
                                            snapshotStateList2.remove(((HoverInteraction$Exit) interaction).enter);
                                            break;
                                        }
                                    } else {
                                        snapshotStateList2.add(interaction);
                                        break;
                                    }
                                    break;
                                default:
                                    Interaction interaction2 = (Interaction) obj2;
                                    if (!(interaction2 instanceof HoverInteraction$Enter)) {
                                        if (!(interaction2 instanceof HoverInteraction$Exit)) {
                                            if (!(interaction2 instanceof FocusInteraction$Focus)) {
                                                if (!(interaction2 instanceof FocusInteraction$Unfocus)) {
                                                    if (!(interaction2 instanceof PressInteraction.Press)) {
                                                        if (!(interaction2 instanceof PressInteraction.Release)) {
                                                            if (interaction2 instanceof PressInteraction.Cancel) {
                                                                snapshotStateList2.remove(((PressInteraction.Cancel) interaction2).press);
                                                                break;
                                                            }
                                                        } else {
                                                            snapshotStateList2.remove(((PressInteraction.Release) interaction2).press);
                                                            break;
                                                        }
                                                    } else {
                                                        snapshotStateList2.add(interaction2);
                                                        break;
                                                    }
                                                } else {
                                                    snapshotStateList2.remove(((FocusInteraction$Unfocus) interaction2).focus);
                                                    break;
                                                }
                                            } else {
                                                snapshotStateList2.add(interaction2);
                                                break;
                                            }
                                        } else {
                                            snapshotStateList2.remove(((HoverInteraction$Exit) interaction2).enter);
                                            break;
                                        }
                                    } else {
                                        snapshotStateList2.add(interaction2);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    sharedFlowImpl.collect(flowCollector, this);
                    break;
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
            default:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    SharedFlowImpl sharedFlowImpl2 = mutableInteractionSourceImpl.interactions;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: androidx.compose.material3.CardElevation$animateElevation$1$1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            int i52 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            SnapshotStateList snapshotStateList2 = snapshotStateList;
                            switch (i52) {
                                case 0:
                                    Interaction interaction = (Interaction) obj2;
                                    if (!(interaction instanceof HoverInteraction$Enter)) {
                                        if (!(interaction instanceof HoverInteraction$Exit)) {
                                            if (!(interaction instanceof FocusInteraction$Focus)) {
                                                if (!(interaction instanceof FocusInteraction$Unfocus)) {
                                                    if (!(interaction instanceof PressInteraction.Press)) {
                                                        if (!(interaction instanceof PressInteraction.Release)) {
                                                            if (!(interaction instanceof PressInteraction.Cancel)) {
                                                                if (!(interaction instanceof DragInteraction$Start)) {
                                                                    if (!(interaction instanceof DragInteraction$Stop)) {
                                                                        if (interaction instanceof DragInteraction$Cancel) {
                                                                            snapshotStateList2.remove(((DragInteraction$Cancel) interaction).start);
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        snapshotStateList2.remove(((DragInteraction$Stop) interaction).start);
                                                                        break;
                                                                    }
                                                                } else {
                                                                    snapshotStateList2.add(interaction);
                                                                    break;
                                                                }
                                                            } else {
                                                                snapshotStateList2.remove(((PressInteraction.Cancel) interaction).press);
                                                                break;
                                                            }
                                                        } else {
                                                            snapshotStateList2.remove(((PressInteraction.Release) interaction).press);
                                                            break;
                                                        }
                                                    } else {
                                                        snapshotStateList2.add(interaction);
                                                        break;
                                                    }
                                                } else {
                                                    snapshotStateList2.remove(((FocusInteraction$Unfocus) interaction).focus);
                                                    break;
                                                }
                                            } else {
                                                snapshotStateList2.add(interaction);
                                                break;
                                            }
                                        } else {
                                            snapshotStateList2.remove(((HoverInteraction$Exit) interaction).enter);
                                            break;
                                        }
                                    } else {
                                        snapshotStateList2.add(interaction);
                                        break;
                                    }
                                    break;
                                default:
                                    Interaction interaction2 = (Interaction) obj2;
                                    if (!(interaction2 instanceof HoverInteraction$Enter)) {
                                        if (!(interaction2 instanceof HoverInteraction$Exit)) {
                                            if (!(interaction2 instanceof FocusInteraction$Focus)) {
                                                if (!(interaction2 instanceof FocusInteraction$Unfocus)) {
                                                    if (!(interaction2 instanceof PressInteraction.Press)) {
                                                        if (!(interaction2 instanceof PressInteraction.Release)) {
                                                            if (interaction2 instanceof PressInteraction.Cancel) {
                                                                snapshotStateList2.remove(((PressInteraction.Cancel) interaction2).press);
                                                                break;
                                                            }
                                                        } else {
                                                            snapshotStateList2.remove(((PressInteraction.Release) interaction2).press);
                                                            break;
                                                        }
                                                    } else {
                                                        snapshotStateList2.add(interaction2);
                                                        break;
                                                    }
                                                } else {
                                                    snapshotStateList2.remove(((FocusInteraction$Unfocus) interaction2).focus);
                                                    break;
                                                }
                                            } else {
                                                snapshotStateList2.add(interaction2);
                                                break;
                                            }
                                        } else {
                                            snapshotStateList2.remove(((HoverInteraction$Exit) interaction2).enter);
                                            break;
                                        }
                                    } else {
                                        snapshotStateList2.add(interaction2);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    sharedFlowImpl2.collect(flowCollector2, this);
                    break;
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
        }
        return coroutineSingletons;
    }
}
