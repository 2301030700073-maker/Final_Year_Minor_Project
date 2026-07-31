package androidx.compose.animation;

import android.os.Bundle;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.fragment.compose.FragmentState;
import androidx.room.util.DBUtil;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$5$1 extends Lambda implements Function2 {
    public final /* synthetic */ Object $animationSpec;
    public final /* synthetic */ Function $content;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object $stateForContent;
    public final /* synthetic */ Object $this_Crossfade;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossfadeKt$Crossfade$5$1(Transition transition, FiniteAnimationSpec finiteAnimationSpec, Object obj, ComposableLambdaImpl composableLambdaImpl) {
        super(2);
        this.$this_Crossfade = transition;
        this.$animationSpec = finiteAnimationSpec;
        this.$stateForContent = obj;
        this.$content = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object currentState;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.$content;
        Object obj3 = this.$stateForContent;
        Object obj4 = this.$animationSpec;
        Object obj5 = this.$this_Crossfade;
        final int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                final int i3 = 0;
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    final Transition transition = (Transition) obj5;
                    FiniteAnimationSpec finiteAnimationSpec = (FiniteAnimationSpec) obj4;
                    TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
                    boolean isSeeking = transition.isSeeking();
                    DnsQueryResult dnsQueryResult = transition.transitionState;
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (isSeeking) {
                        gapComposer.startReplaceGroup(1666827533);
                        gapComposer.end(false);
                        currentState = dnsQueryResult.getCurrentState();
                    } else {
                        gapComposer.startReplaceGroup(1666573488);
                        boolean changed = gapComposer.changed(transition);
                        currentState = gapComposer.rememberedValue();
                        if (changed || currentState == neverEqualPolicy) {
                            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                            try {
                                Object currentState2 = dnsQueryResult.getCurrentState();
                                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                gapComposer.updateRememberedValue(currentState2);
                                currentState = currentState2;
                            } catch (Throwable th) {
                                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                throw th;
                            }
                        }
                        gapComposer.end(false);
                    }
                    gapComposer.startReplaceGroup(1378811975);
                    float f = Intrinsics.areEqual(currentState, obj3) ? 1.0f : 0.0f;
                    gapComposer.end(false);
                    Float valueOf = Float.valueOf(f);
                    boolean changed2 = gapComposer.changed(transition);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue == neverEqualPolicy) {
                        rememberedValue = Updater.derivedStateOf(new Function0() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i3;
                                Transition transition2 = transition;
                                switch (i4) {
                                    case 0:
                                        return transition2.targetState$delegate.getValue();
                                    default:
                                        return transition2.getSegment();
                                }
                            }
                        });
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Object value = ((State) rememberedValue).getValue();
                    gapComposer.startReplaceGroup(1378811975);
                    float f2 = Intrinsics.areEqual(value, obj3) ? 1.0f : 0.0f;
                    gapComposer.end(false);
                    Float valueOf2 = Float.valueOf(f2);
                    boolean changed3 = gapComposer.changed(transition);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = Updater.derivedStateOf(new Function0() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i2;
                                Transition transition2 = transition;
                                switch (i4) {
                                    case 0:
                                        return transition2.targetState$delegate.getValue();
                                    default:
                                        return transition2.getSegment();
                                }
                            }
                        });
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    gapComposer.startReplaceGroup(955869654);
                    gapComposer.end(false);
                    Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(transition, valueOf, valueOf2, finiteAnimationSpec, twoWayConverterImpl, gapComposer, 0);
                    boolean changed4 = gapComposer.changed(createTransitionAnimation);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed4 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new NodeChainKt$fillVector$1(4, createTransitionAnimation);
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    Modifier graphicsLayer = ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, (Function1) rememberedValue3);
                    ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function;
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, graphicsLayer);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m378initimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke(obj3, (Object) gapComposer, (Object) 0);
                    gapComposer.end(true);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            default:
                ((Number) obj2).intValue();
                DBUtil.AndroidFragment((Modifier) obj5, (FragmentState) obj4, (Bundle) obj3, (Function1) function, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossfadeKt$Crossfade$5$1(Modifier modifier, FragmentState fragmentState, Bundle bundle, Function1 function1, int i) {
        super(2);
        this.$this_Crossfade = modifier;
        this.$animationSpec = fragmentState;
        this.$stateForContent = bundle;
        this.$content = function1;
    }
}
