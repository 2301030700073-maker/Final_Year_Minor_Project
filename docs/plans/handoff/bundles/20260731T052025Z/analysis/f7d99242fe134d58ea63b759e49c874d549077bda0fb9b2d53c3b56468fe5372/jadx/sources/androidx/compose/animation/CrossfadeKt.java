package androidx.compose.animation;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$1$1;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexNode$measure$1;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.window.PopupLayout$Content$4;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CrossfadeKt {
    public static final void AnimatedContent(final Transition transition, Modifier modifier, Function1 function1, Alignment alignment, Function1 function12, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        Function1 function13;
        GapComposer gapComposer;
        DnsQueryResult dnsQueryResult;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl;
        SnapshotStateList snapshotStateList;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2;
        Transition.DeferredAnimation deferredAnimation;
        boolean z;
        final Function1 function14 = function1;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(511725103);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(transition) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function14) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(alignment) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function12) ? 16384 : 8192;
        }
        final ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            int i3 = i2 & 14;
            boolean z2 = i3 == 4;
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z2 || rememberedValue == obj) {
                rememberedValue = new AnimatedContentTransitionScopeImpl(transition, alignment);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl3 = (AnimatedContentTransitionScopeImpl) rememberedValue;
            boolean z3 = i3 == 4;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z3 || rememberedValue2 == obj) {
                Object[] objArr = {transition.transitionState.getCurrentState()};
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                snapshotStateList2.addAll(ArraysKt___ArraysKt.toList(objArr));
                gapComposer2.updateRememberedValue(snapshotStateList2);
                rememberedValue2 = snapshotStateList2;
            }
            final SnapshotStateList snapshotStateList3 = (SnapshotStateList) rememberedValue2;
            boolean z4 = i3 == 4;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (z4 || rememberedValue3 == obj) {
                long[] jArr = ScatterMapKt.EmptyGroup;
                rememberedValue3 = new MutableScatterMap();
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) rememberedValue3;
            DnsQueryResult dnsQueryResult2 = transition.transitionState;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
            if (!snapshotStateList3.contains(dnsQueryResult2.getCurrentState())) {
                snapshotStateList3.clear();
                snapshotStateList3.add(dnsQueryResult2.getCurrentState());
            }
            if (Intrinsics.areEqual(dnsQueryResult2.getCurrentState(), parcelableSnapshotMutableState.getValue())) {
                if (snapshotStateList3.size() != 1 || !Intrinsics.areEqual(snapshotStateList3.get(0), dnsQueryResult2.getCurrentState())) {
                    snapshotStateList3.clear();
                    snapshotStateList3.add(dnsQueryResult2.getCurrentState());
                }
                if (mutableScatterMap._size != 1 || mutableScatterMap.containsKey(dnsQueryResult2.getCurrentState())) {
                    mutableScatterMap.clear();
                }
                animatedContentTransitionScopeImpl3.contentAlignment = alignment;
            }
            if (Intrinsics.areEqual(dnsQueryResult2.getCurrentState(), parcelableSnapshotMutableState.getValue()) || snapshotStateList3.contains(parcelableSnapshotMutableState.getValue())) {
                dnsQueryResult = dnsQueryResult2;
            } else {
                ListIterator listIterator = snapshotStateList3.listIterator();
                int i4 = 0;
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    dnsQueryResult = dnsQueryResult2;
                    if (!itr.hasNext()) {
                        i4 = -1;
                        break;
                    } else {
                        if (Intrinsics.areEqual(function12.invoke(itr.next()), function12.invoke(parcelableSnapshotMutableState.getValue()))) {
                            break;
                        }
                        i4++;
                        dnsQueryResult2 = dnsQueryResult;
                    }
                }
                if (i4 == -1) {
                    snapshotStateList3.add(parcelableSnapshotMutableState.getValue());
                } else {
                    snapshotStateList3.set(i4, parcelableSnapshotMutableState.getValue());
                }
            }
            if (mutableScatterMap.containsKey(parcelableSnapshotMutableState.getValue()) && mutableScatterMap.containsKey(dnsQueryResult.getCurrentState())) {
                gapComposer2.startReplaceGroup(1968995539);
                gapComposer2.end(false);
                function13 = function14;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
            } else {
                gapComposer2.startReplaceGroup(1966410449);
                mutableScatterMap.clear();
                int size = snapshotStateList3.size();
                int i5 = 0;
                while (i5 < size) {
                    final Object obj2 = snapshotStateList3.get(i5);
                    mutableScatterMap.set(obj2, Expect_jvmKt.rememberComposableLambda(-23915175, new Function2() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int intValue = ((Number) obj4).intValue();
                            int i6 = 1;
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                Function1 function15 = function14;
                                final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl3;
                                Object obj5 = Composer.Companion.Empty;
                                if (rememberedValue4 == obj5) {
                                    rememberedValue4 = (ContentTransform) function15.invoke(animatedContentTransitionScopeImpl4);
                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                }
                                final ContentTransform contentTransform = (ContentTransform) rememberedValue4;
                                Transition transition2 = Transition.this;
                                Transition.Segment segment = transition2.getSegment();
                                ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = transition2.targetState$delegate;
                                Object targetState = segment.getTargetState();
                                final Object obj6 = obj2;
                                boolean changed = gapComposer3.changed(Intrinsics.areEqual(targetState, obj6));
                                Object rememberedValue5 = gapComposer3.rememberedValue();
                                if (changed || rememberedValue5 == obj5) {
                                    rememberedValue5 = Intrinsics.areEqual(transition2.getSegment().getTargetState(), obj6) ? ExitTransitionImpl.None : ((ContentTransform) function15.invoke(animatedContentTransitionScopeImpl4)).initialContentExit;
                                    gapComposer3.updateRememberedValue(rememberedValue5);
                                }
                                ExitTransitionImpl exitTransitionImpl = (ExitTransitionImpl) rememberedValue5;
                                Object rememberedValue6 = gapComposer3.rememberedValue();
                                if (rememberedValue6 == obj5) {
                                    rememberedValue6 = new AnimatedContentTransitionScopeImpl.ChildData(Intrinsics.areEqual(obj6, parcelableSnapshotMutableState2.getValue()));
                                    gapComposer3.updateRememberedValue(rememberedValue6);
                                }
                                AnimatedContentTransitionScopeImpl.ChildData childData = (AnimatedContentTransitionScopeImpl.ChildData) rememberedValue6;
                                EnterTransitionImpl enterTransitionImpl = contentTransform.targetContentEnter;
                                boolean changedInstance = gapComposer3.changedInstance(contentTransform);
                                Object rememberedValue7 = gapComposer3.rememberedValue();
                                if (changedInstance || rememberedValue7 == obj5) {
                                    rememberedValue7 = new Function3() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$1$1
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                            Placeable mo571measureBRTryo0 = ((Measurable) obj8).mo571measureBRTryo0(((Constraints) obj9).value);
                                            return ((MeasureScope) obj7).layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new ZIndexNode$measure$1(1, mo571measureBRTryo0, ContentTransform.this));
                                        }
                                    };
                                    gapComposer3.updateRememberedValue(rememberedValue7);
                                }
                                Modifier layout = RulerKt.layout(Modifier.Companion.$$INSTANCE, (Function3) rememberedValue7);
                                childData.isTarget$delegate.setValue(Boolean.valueOf(Intrinsics.areEqual(obj6, parcelableSnapshotMutableState2.getValue())));
                                Modifier then = layout.then(childData);
                                boolean changedInstance2 = gapComposer3.changedInstance(obj6);
                                Object rememberedValue8 = gapComposer3.rememberedValue();
                                if (changedInstance2 || rememberedValue8 == obj5) {
                                    rememberedValue8 = new NodeChainKt$fillVector$1(1, obj6);
                                    gapComposer3.updateRememberedValue(rememberedValue8);
                                }
                                Function1 function16 = (Function1) rememberedValue8;
                                boolean changed2 = gapComposer3.changed(exitTransitionImpl);
                                Object rememberedValue9 = gapComposer3.rememberedValue();
                                if (changed2 || rememberedValue9 == obj5) {
                                    rememberedValue9 = new PopupLayout$Content$4(i6, exitTransitionImpl);
                                    gapComposer3.updateRememberedValue(rememberedValue9);
                                }
                                Function2 function2 = (Function2) rememberedValue9;
                                final SnapshotStateList snapshotStateList4 = snapshotStateList3;
                                final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                CrossfadeKt.AnimatedEnterExitImpl(Transition.this, function16, then, enterTransitionImpl, exitTransitionImpl, function2, Expect_jvmKt.rememberComposableLambda(-143346359, new Function3() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1.5
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj7;
                                        Composer composer3 = (Composer) obj8;
                                        int intValue2 = ((Number) obj9).intValue();
                                        if ((intValue2 & 6) == 0) {
                                            intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer3).changed(animatedVisibilityScope) : ((GapComposer) composer3).changedInstance(animatedVisibilityScope) ? 4 : 2;
                                        }
                                        int i7 = 1;
                                        GapComposer gapComposer4 = (GapComposer) composer3;
                                        if (gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                            SnapshotStateList snapshotStateList5 = SnapshotStateList.this;
                                            boolean changed3 = gapComposer4.changed(snapshotStateList5);
                                            Object obj10 = obj6;
                                            boolean changedInstance3 = changed3 | gapComposer4.changedInstance(obj10);
                                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl4;
                                            boolean changedInstance4 = changedInstance3 | gapComposer4.changedInstance(animatedContentTransitionScopeImpl5);
                                            Object rememberedValue10 = gapComposer4.rememberedValue();
                                            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                                            if (changedInstance4 || rememberedValue10 == neverEqualPolicy) {
                                                rememberedValue10 = new FocusOwnerImpl$focusSearch$1(snapshotStateList5, obj10, animatedContentTransitionScopeImpl5, i7);
                                                gapComposer4.updateRememberedValue(rememberedValue10);
                                            }
                                            Updater.DisposableEffect(animatedVisibilityScope, (Function1) rememberedValue10, gapComposer4);
                                            MutableScatterMap mutableScatterMap2 = animatedContentTransitionScopeImpl5.targetSizeMap;
                                            animatedVisibilityScope.getClass();
                                            mutableScatterMap2.set(obj10, ((AnimatedVisibilityScopeImpl) animatedVisibilityScope).targetSize);
                                            Object rememberedValue11 = gapComposer4.rememberedValue();
                                            if (rememberedValue11 == neverEqualPolicy) {
                                                rememberedValue11 = new AnimatedContentScopeImpl();
                                                gapComposer4.updateRememberedValue(rememberedValue11);
                                            }
                                            composableLambdaImpl3.invoke(rememberedValue11, obj10, (Object) gapComposer4, (Object) 0);
                                        } else {
                                            gapComposer4.skipToGroupEnd();
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }, gapComposer3), gapComposer3, 12582912);
                            } else {
                                gapComposer3.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer2));
                    i5++;
                    function14 = function14;
                    composableLambdaImpl2 = composableLambdaImpl;
                }
                function13 = function14;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
                gapComposer2.end(false);
            }
            boolean changed = gapComposer2.changed(transition.getSegment()) | gapComposer2.changed(animatedContentTransitionScopeImpl);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (changed || rememberedValue4 == obj) {
                rememberedValue4 = (ContentTransform) function13.invoke(animatedContentTransitionScopeImpl);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            ContentTransform contentTransform = (ContentTransform) rememberedValue4;
            Transition transition2 = animatedContentTransitionScopeImpl.transition;
            boolean changed2 = gapComposer2.changed(animatedContentTransitionScopeImpl);
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue5 == obj) {
                rememberedValue5 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            MutableState mutableState = (MutableState) rememberedValue5;
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(contentTransform.sizeTransform, gapComposer2);
            if (Intrinsics.areEqual(transition2.transitionState.getCurrentState(), transition2.targetState$delegate.getValue())) {
                mutableState.setValue(Boolean.FALSE);
            } else if (rememberUpdatedState.getValue() != null) {
                mutableState.setValue(Boolean.TRUE);
            }
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            Modifier modifier2 = Modifier.Companion.$$INSTANCE;
            if (booleanValue) {
                gapComposer2.startReplaceGroup(1353077497);
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl;
                snapshotStateList = snapshotStateList3;
                gapComposer = gapComposer2;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl4;
                deferredAnimation = ArcSplineKt.createDeferredAnimation(animatedContentTransitionScopeImpl4.transition, ArcSplineKt.IntSizeToVector, null, gapComposer, 0, 2);
                boolean changed3 = gapComposer.changed(deferredAnimation);
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue6 == obj) {
                    rememberedValue6 = ClipKt.clipToBounds(modifier2);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                modifier2 = (Modifier) rememberedValue6;
                gapComposer.end(false);
            } else {
                snapshotStateList = snapshotStateList3;
                gapComposer = gapComposer2;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                gapComposer.startReplaceGroup(1353343539);
                gapComposer.end(false);
                deferredAnimation = null;
            }
            Modifier then = modifier.then(modifier2.then(new AnimatedContentTransitionScopeImpl.SizeModifierElement(deferredAnimation, rememberUpdatedState, animatedContentTransitionScopeImpl2)));
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (rememberedValue7 == obj) {
                rememberedValue7 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) rememberedValue7;
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, animatedContentMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m378initimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer.startReplaceGroup(-860173498);
            int size2 = snapshotStateList.size();
            int i7 = 0;
            while (i7 < size2) {
                SnapshotStateList snapshotStateList4 = snapshotStateList;
                Object obj3 = snapshotStateList4.get(i7);
                gapComposer.startMovableGroup(-2026002954, function12.invoke(obj3));
                Function2 function2 = (Function2) mutableScatterMap.get(obj3);
                if (function2 == null) {
                    gapComposer.startReplaceGroup(1618454323);
                    z = false;
                } else {
                    z = false;
                    gapComposer.startReplaceGroup(-2026001778);
                    function2.invoke(gapComposer, 0);
                }
                gapComposer.end(z);
                gapComposer.end(z);
                i7++;
                snapshotStateList = snapshotStateList4;
            }
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            function13 = function14;
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AnimatedContentKt$AnimatedContent$9(transition, modifier, function13, alignment, function12, composableLambdaImpl, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v27, types: [androidx.compose.runtime.internal.ComposableLambdaImpl] */
    public static final void AnimatedEnterExitImpl(final Transition transition, final Function1 function1, final Modifier modifier, final EnterTransitionImpl enterTransitionImpl, final ExitTransitionImpl exitTransitionImpl, final Function2 function2, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        final ComposableLambdaImpl composableLambdaImpl2;
        int i3;
        Transition transition2;
        TransitionData transitionData;
        TwoWayConverterImpl twoWayConverterImpl;
        TransitionData transitionData2;
        NeverEqualPolicy neverEqualPolicy;
        Transition transition3;
        boolean z;
        boolean z2;
        Transition.DeferredAnimation deferredAnimation;
        Transition.DeferredAnimation deferredAnimation2;
        Transition.DeferredAnimation deferredAnimation3;
        Transition.DeferredAnimation deferredAnimation4;
        Transition.DeferredAnimation deferredAnimation5;
        Transition.DeferredAnimation deferredAnimation6;
        Transition.DeferredAnimation deferredAnimation7;
        EnterTransitionImpl enterTransitionImpl2;
        ExitTransitionImpl exitTransitionImpl2;
        ComposableLambdaImpl composableLambdaImpl3;
        ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1912839215);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(transition) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(enterTransitionImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(exitTransitionImpl) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 131072 : 65536;
        }
        int i4 = i2 | 1572864;
        if ((12582912 & i) == 0) {
            i4 |= gapComposer.changedInstance(composableLambdaImpl4) ? 8388608 : 4194304;
        }
        if (gapComposer.shouldExecute(i4 & 1, (4793491 & i4) != 4793490)) {
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
            DnsQueryResult dnsQueryResult = transition.transitionState;
            if (((Boolean) function1.invoke(parcelableSnapshotMutableState.getValue())).booleanValue() || ((Boolean) function1.invoke(dnsQueryResult.getCurrentState())).booleanValue() || transition.isSeeking() || transition.getHasInitialValueAnimations()) {
                gapComposer.startReplaceGroup(-232386135);
                int i5 = i4 & 14;
                int i6 = i5 | 48;
                int i7 = i6 & 14;
                boolean z3 = ((i7 ^ 6) > 4 && gapComposer.changed(transition)) || (i6 & 6) == 4;
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy2 = Composer.Companion.Empty;
                if (z3 || rememberedValue == neverEqualPolicy2) {
                    rememberedValue = dnsQueryResult.getCurrentState();
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                if (transition.isSeeking()) {
                    rememberedValue = dnsQueryResult.getCurrentState();
                }
                gapComposer.startReplaceGroup(1844425648);
                EnterExitState targetEnterExit = targetEnterExit(transition, function1, rememberedValue, gapComposer);
                gapComposer.end(false);
                Object value = transition.targetState$delegate.getValue();
                gapComposer.startReplaceGroup(1844425648);
                EnterExitState targetEnterExit2 = targetEnterExit(transition, function1, value, gapComposer);
                gapComposer.end(false);
                int i8 = i7 | 3072;
                int i9 = (i8 & 14) ^ 6;
                int i10 = i4;
                boolean z4 = (i9 > 4 && gapComposer.changed(transition)) || (i8 & 6) == 4;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z4 || rememberedValue2 == neverEqualPolicy2) {
                    i3 = i8;
                    rememberedValue2 = new Transition(new MutableTransitionState(targetEnterExit), transition, CameraDevices$CC.m(new StringBuilder(), transition.label, " > EnterExitTransition"));
                    gapComposer.updateRememberedValue(rememberedValue2);
                } else {
                    i3 = i8;
                }
                Transition transition4 = (Transition) rememberedValue2;
                boolean changed = ((i9 > 4 && gapComposer.changed(transition)) || (i3 & 6) == 4) | gapComposer.changed(transition4);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy2) {
                    rememberedValue3 = new BackHandlerKt$$ExternalSyntheticLambda2(10, transition, transition4);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Updater.DisposableEffect(transition4, (Function1) rememberedValue3, gapComposer);
                if (transition.isSeeking()) {
                    transition4.seek(targetEnterExit, targetEnterExit2);
                } else {
                    transition4.updateTarget$animation_core(targetEnterExit2);
                    transition4.isSeeking$delegate.setValue(Boolean.FALSE);
                }
                TwoWayConverterImpl twoWayConverterImpl2 = EnterExitTransitionKt.TransformOriginVectorConverter;
                boolean changed2 = gapComposer.changed(transition4);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue4 == neverEqualPolicy2) {
                    rememberedValue4 = Updater.mutableStateOf$default(enterTransitionImpl);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                MutableState mutableState = (MutableState) rememberedValue4;
                DnsQueryResult dnsQueryResult2 = transition4.transitionState;
                DnsQueryResult dnsQueryResult3 = transition4.transitionState;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = transition4.targetState$delegate;
                Object currentState = dnsQueryResult2.getCurrentState();
                Object value2 = parcelableSnapshotMutableState2.getValue();
                EnterExitState enterExitState = EnterExitState.Visible;
                if (currentState == value2 && dnsQueryResult3.getCurrentState() == enterExitState) {
                    if (transition4.isSeeking()) {
                        mutableState.setValue(enterTransitionImpl);
                    } else {
                        mutableState.setValue(EnterTransitionImpl.None);
                    }
                } else if (parcelableSnapshotMutableState2.getValue() == enterExitState) {
                    mutableState.setValue(((EnterTransitionImpl) mutableState.getValue()).plus(enterTransitionImpl));
                }
                EnterTransitionImpl enterTransitionImpl3 = (EnterTransitionImpl) mutableState.getValue();
                boolean changed3 = gapComposer.changed(transition4);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue5 == neverEqualPolicy2) {
                    rememberedValue5 = Updater.mutableStateOf$default(exitTransitionImpl);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                MutableState mutableState2 = (MutableState) rememberedValue5;
                if (dnsQueryResult3.getCurrentState() == parcelableSnapshotMutableState2.getValue() && dnsQueryResult3.getCurrentState() == enterExitState) {
                    if (transition4.isSeeking()) {
                        mutableState2.setValue(exitTransitionImpl);
                    } else {
                        mutableState2.setValue(ExitTransitionImpl.None);
                    }
                } else if (parcelableSnapshotMutableState2.getValue() != enterExitState) {
                    mutableState2.setValue(((ExitTransitionImpl) mutableState2.getValue()).plus(exitTransitionImpl));
                }
                ExitTransitionImpl exitTransitionImpl3 = (ExitTransitionImpl) mutableState2.getValue();
                MutableState rememberUpdatedState = Updater.rememberUpdatedState(function2, gapComposer);
                Object invoke = function2.invoke(dnsQueryResult3.getCurrentState(), parcelableSnapshotMutableState2.getValue());
                boolean changed4 = gapComposer.changed(transition4) | gapComposer.changed(rememberUpdatedState);
                Object rememberedValue6 = gapComposer.rememberedValue();
                Continuation continuation = null;
                if (changed4 || rememberedValue6 == neverEqualPolicy2) {
                    rememberedValue6 = new DraggableNode$drag$2(transition4, rememberUpdatedState, continuation, 9);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function2 function22 = (Function2) rememberedValue6;
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (rememberedValue7 == neverEqualPolicy2) {
                    rememberedValue7 = Updater.mutableStateOf$default(invoke);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                MutableState mutableState3 = (MutableState) rememberedValue7;
                boolean changedInstance = gapComposer.changedInstance(function22);
                Object rememberedValue8 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue8 == neverEqualPolicy2) {
                    transition2 = transition4;
                    rememberedValue8 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function22, mutableState3, null, 0);
                    gapComposer.updateRememberedValue(rememberedValue8);
                } else {
                    transition2 = transition4;
                }
                Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue8);
                Object currentState2 = dnsQueryResult3.getCurrentState();
                EnterExitState enterExitState2 = EnterExitState.PostExit;
                if (currentState2 == enterExitState2 && parcelableSnapshotMutableState2.getValue() == enterExitState2 && ((Boolean) mutableState3.getValue()).booleanValue()) {
                    gapComposer.startReplaceGroup(-229368781);
                    gapComposer.end(false);
                    composableLambdaImpl3 = composableLambdaImpl;
                    z2 = false;
                } else {
                    gapComposer.startReplaceGroup(-230699766);
                    boolean z5 = i5 == 4;
                    Object rememberedValue9 = gapComposer.rememberedValue();
                    if (z5 || rememberedValue9 == neverEqualPolicy2) {
                        rememberedValue9 = new AnimatedVisibilityScopeImpl();
                        gapComposer.updateRememberedValue(rememberedValue9);
                    }
                    AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl = (AnimatedVisibilityScopeImpl) rememberedValue9;
                    TwoWayConverterImpl twoWayConverterImpl3 = ArcSplineKt.IntOffsetToVector;
                    Object rememberedValue10 = gapComposer.rememberedValue();
                    if (rememberedValue10 == neverEqualPolicy2) {
                        rememberedValue10 = EnterExitTransitionKt$createModifier$1$1.INSTANCE;
                        gapComposer.updateRememberedValue(rememberedValue10);
                    }
                    final Function0 function0 = (Function0) rememberedValue10;
                    gapComposer.startReplaceGroup(-167964673);
                    gapComposer.end(false);
                    gapComposer.startReplaceGroup(-167961890);
                    gapComposer.end(false);
                    TransitionData transitionData3 = enterTransitionImpl3.data;
                    TransitionData transitionData4 = exitTransitionImpl3.data;
                    Slide slide = transitionData3.slide;
                    ChangeSize changeSize = transitionData3.changeSize;
                    boolean z6 = (slide == null && transitionData4.slide == null) ? false : true;
                    boolean z7 = (changeSize == null && transitionData4.changeSize == null) ? false : true;
                    if (z6) {
                        gapComposer.startReplaceGroup(-911488127);
                        Object rememberedValue11 = gapComposer.rememberedValue();
                        if (rememberedValue11 == neverEqualPolicy2) {
                            rememberedValue11 = "Built-in slide";
                            gapComposer.updateRememberedValue("Built-in slide");
                        }
                        transitionData = transitionData3;
                        transitionData2 = transitionData4;
                        neverEqualPolicy = neverEqualPolicy2;
                        transition3 = transition2;
                        z = true;
                        z2 = false;
                        Transition.DeferredAnimation createDeferredAnimation = ArcSplineKt.createDeferredAnimation(transition3, twoWayConverterImpl3, (String) rememberedValue11, gapComposer, 384, 0);
                        twoWayConverterImpl = twoWayConverterImpl3;
                        gapComposer.end(false);
                        deferredAnimation = createDeferredAnimation;
                    } else {
                        transitionData = transitionData3;
                        twoWayConverterImpl = twoWayConverterImpl3;
                        transitionData2 = transitionData4;
                        neverEqualPolicy = neverEqualPolicy2;
                        transition3 = transition2;
                        z = true;
                        z2 = false;
                        gapComposer.startReplaceGroup(-911382324);
                        gapComposer.end(false);
                        deferredAnimation = null;
                    }
                    if (z7) {
                        gapComposer.startReplaceGroup(-911290533);
                        TwoWayConverterImpl twoWayConverterImpl4 = ArcSplineKt.IntSizeToVector;
                        Object rememberedValue12 = gapComposer.rememberedValue();
                        if (rememberedValue12 == neverEqualPolicy) {
                            rememberedValue12 = "Built-in shrink/expand";
                            gapComposer.updateRememberedValue("Built-in shrink/expand");
                        }
                        Transition.DeferredAnimation createDeferredAnimation2 = ArcSplineKt.createDeferredAnimation(transition3, twoWayConverterImpl4, (String) rememberedValue12, gapComposer, 384, 0);
                        gapComposer.end(z2);
                        deferredAnimation2 = createDeferredAnimation2;
                    } else {
                        gapComposer.startReplaceGroup(-911179709);
                        gapComposer.end(z2);
                        deferredAnimation2 = null;
                    }
                    if (z7) {
                        gapComposer.startReplaceGroup(-911106083);
                        Object rememberedValue13 = gapComposer.rememberedValue();
                        if (rememberedValue13 == neverEqualPolicy) {
                            rememberedValue13 = "Built-in InterruptionHandlingOffset";
                            gapComposer.updateRememberedValue("Built-in InterruptionHandlingOffset");
                        }
                        Transition.DeferredAnimation createDeferredAnimation3 = ArcSplineKt.createDeferredAnimation(transition3, twoWayConverterImpl, (String) rememberedValue13, gapComposer, 384, 0);
                        gapComposer.end(z2);
                        deferredAnimation3 = createDeferredAnimation3;
                    } else {
                        gapComposer.startReplaceGroup(-910935677);
                        gapComposer.end(z2);
                        deferredAnimation3 = null;
                    }
                    final boolean z8 = !z7;
                    float[] fArr = ColorSpaces.SrgbPrimaries;
                    gapComposer.startReplaceGroup(-910130296);
                    gapComposer.end(z2);
                    TwoWayConverterImpl twoWayConverterImpl5 = ArcSplineKt.FloatToVector;
                    boolean z9 = (transitionData.fade == null && transitionData2.fade == null) ? z2 : z;
                    boolean z10 = (transitionData.scale == null && transitionData2.scale == null) ? z2 : z;
                    if (z9) {
                        gapComposer.startReplaceGroup(-703879421);
                        Object rememberedValue14 = gapComposer.rememberedValue();
                        if (rememberedValue14 == neverEqualPolicy) {
                            rememberedValue14 = "Built-in alpha";
                            gapComposer.updateRememberedValue("Built-in alpha");
                        }
                        Transition.DeferredAnimation createDeferredAnimation4 = ArcSplineKt.createDeferredAnimation(transition3, twoWayConverterImpl5, (String) rememberedValue14, gapComposer, 384, 0);
                        gapComposer.end(z2);
                        deferredAnimation4 = createDeferredAnimation4;
                    } else {
                        gapComposer.startReplaceGroup(-703709976);
                        gapComposer.end(z2);
                        deferredAnimation4 = null;
                    }
                    if (z10) {
                        gapComposer.startReplaceGroup(-703642333);
                        Object rememberedValue15 = gapComposer.rememberedValue();
                        if (rememberedValue15 == neverEqualPolicy) {
                            rememberedValue15 = "Built-in scale";
                            gapComposer.updateRememberedValue("Built-in scale");
                        }
                        Transition.DeferredAnimation createDeferredAnimation5 = ArcSplineKt.createDeferredAnimation(transition3, twoWayConverterImpl5, (String) rememberedValue15, gapComposer, 384, 0);
                        gapComposer.end(z2);
                        deferredAnimation5 = createDeferredAnimation5;
                    } else {
                        gapComposer.startReplaceGroup(-703472888);
                        gapComposer.end(z2);
                        deferredAnimation5 = null;
                    }
                    if (z10) {
                        gapComposer.startReplaceGroup(-703395232);
                        deferredAnimation6 = deferredAnimation5;
                        deferredAnimation7 = ArcSplineKt.createDeferredAnimation(transition3, EnterExitTransitionKt.TransformOriginVectorConverter, "TransformOriginInterruptionHandling", gapComposer, 384, 0);
                        gapComposer.end(z2);
                    } else {
                        deferredAnimation6 = deferredAnimation5;
                        gapComposer.startReplaceGroup(-703222904);
                        gapComposer.end(z2);
                        deferredAnimation7 = null;
                    }
                    boolean changedInstance2 = gapComposer.changedInstance(deferredAnimation4) | gapComposer.changed(enterTransitionImpl3) | gapComposer.changed(exitTransitionImpl3) | gapComposer.changedInstance(deferredAnimation6) | gapComposer.changed(transition3) | gapComposer.changedInstance(deferredAnimation7);
                    Object rememberedValue16 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue16 == neverEqualPolicy) {
                        enterTransitionImpl2 = enterTransitionImpl3;
                        exitTransitionImpl2 = exitTransitionImpl3;
                        rememberedValue16 = new EnterExitTransitionKt$$ExternalSyntheticLambda0(deferredAnimation4, deferredAnimation6, transition3, enterTransitionImpl2, exitTransitionImpl2, deferredAnimation7);
                        gapComposer.updateRememberedValue(rememberedValue16);
                    } else {
                        enterTransitionImpl2 = enterTransitionImpl3;
                        exitTransitionImpl2 = exitTransitionImpl3;
                    }
                    EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0 = (EnterExitTransitionKt$$ExternalSyntheticLambda0) rememberedValue16;
                    boolean changed5 = gapComposer.changed(z8) | gapComposer.changed(function0);
                    Object rememberedValue17 = gapComposer.rememberedValue();
                    if (changed5 || rememberedValue17 == neverEqualPolicy) {
                        rememberedValue17 = new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                ((ReusableGraphicsLayerScope) obj).setClip(!z8 && ((Boolean) function0.invoke()).booleanValue());
                                return Unit.INSTANCE;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue17);
                    }
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier then = ColorKt.graphicsLayer(companion, (Function1) rememberedValue17).then(new EnterExitTransitionElement(transition3, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransitionImpl2, exitTransitionImpl2, function0, enterExitTransitionKt$$ExternalSyntheticLambda0)).then(companion);
                    gapComposer.startReplaceGroup(-7404393);
                    gapComposer.end(z2);
                    Modifier then2 = modifier.then(then.then(companion));
                    Object rememberedValue18 = gapComposer.rememberedValue();
                    if (rememberedValue18 == neverEqualPolicy) {
                        rememberedValue18 = new AnimatedEnterExitMeasurePolicy(animatedVisibilityScopeImpl);
                        gapComposer.updateRememberedValue(rememberedValue18);
                    }
                    AnimatedEnterExitMeasurePolicy animatedEnterExitMeasurePolicy = (AnimatedEnterExitMeasurePolicy) rememberedValue18;
                    long j = gapComposer.compositeKeyHashCode;
                    int i11 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, animatedEnterExitMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m378initimpl(gapComposer, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    ?? r7 = composableLambdaImpl;
                    r7.invoke(animatedVisibilityScopeImpl, gapComposer, Integer.valueOf((i10 >> 18) & 112));
                    gapComposer.end(z);
                    gapComposer.end(z2);
                    composableLambdaImpl3 = r7;
                }
                gapComposer.end(z2);
                composableLambdaImpl2 = composableLambdaImpl3;
            } else {
                gapComposer.startReplaceGroup(-229362829);
                gapComposer.end(false);
                composableLambdaImpl2 = composableLambdaImpl4;
            }
        } else {
            gapComposer.skipToGroupEnd();
            composableLambdaImpl2 = composableLambdaImpl4;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    CrossfadeKt.AnimatedEnterExitImpl(Transition.this, function1, modifier, enterTransitionImpl, exitTransitionImpl, function2, composableLambdaImpl2, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AnimatedVisibility(final boolean r16, androidx.compose.ui.Modifier r17, androidx.compose.animation.EnterTransitionImpl r18, androidx.compose.animation.ExitTransitionImpl r19, java.lang.String r20, final androidx.compose.runtime.internal.ComposableLambdaImpl r21, androidx.compose.runtime.Composer r22, final int r23, final int r24) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.CrossfadeKt.AnimatedVisibility(boolean, androidx.compose.ui.Modifier, androidx.compose.animation.EnterTransitionImpl, androidx.compose.animation.ExitTransitionImpl, java.lang.String, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void AnimatedVisibilityImpl(final Transition transition, final Function1 function1, Modifier modifier, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        EnterTransitionImpl enterTransitionImpl2;
        ExitTransitionImpl exitTransitionImpl2;
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1706321816);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(transition) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            enterTransitionImpl2 = enterTransitionImpl;
            i2 |= gapComposer.changed(enterTransitionImpl2) ? 2048 : 1024;
        } else {
            enterTransitionImpl2 = enterTransitionImpl;
        }
        if ((i & 24576) == 0) {
            exitTransitionImpl2 = exitTransitionImpl;
            i2 |= gapComposer.changed(exitTransitionImpl2) ? 16384 : 8192;
        } else {
            exitTransitionImpl2 = exitTransitionImpl;
        }
        if ((i & 196608) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 131072 : 65536;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            int i3 = i2 & 112;
            int i4 = i2 & 14;
            boolean z = (i3 == 32) | (i4 == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new Function3() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        long j;
                        MeasureScope measureScope = (MeasureScope) obj;
                        Placeable mo571measureBRTryo0 = ((Measurable) obj2).mo571measureBRTryo0(((Constraints) obj3).value);
                        if (measureScope.isLookingAhead()) {
                            if (!((Boolean) Function1.this.invoke(transition.targetState$delegate.getValue())).booleanValue()) {
                                j = 0;
                                return measureScope.layout((int) (j >> 32), (int) (4294967295L & j), EmptyMap.INSTANCE, new PainterNode$measure$1(mo571measureBRTryo0, 1));
                            }
                        }
                        j = (mo571measureBRTryo0.width << 32) | (mo571measureBRTryo0.height & 4294967295L);
                        return measureScope.layout((int) (j >> 32), (int) (4294967295L & j), EmptyMap.INSTANCE, new PainterNode$measure$1(mo571measureBRTryo0, 1));
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier layout = RulerKt.layout(modifier, (Function3) rememberedValue);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = AnimatedContentKt$SizeTransform$1.INSTANCE$1;
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            AnimatedEnterExitImpl(transition, function1, layout, enterTransitionImpl2, exitTransitionImpl2, (Function2) rememberedValue2, composableLambdaImpl2, gapComposer, 196608 | i4 | i3 | (i2 & 7168) | (57344 & i2) | ((i2 << 6) & 29360128));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AnimatedContentKt$AnimatedContent$9(transition, function1, modifier, enterTransitionImpl, exitTransitionImpl, composableLambdaImpl, i);
        }
    }

    public static final void Crossfade(final Transition transition, final Modifier modifier, final FiniteAnimationSpec finiteAnimationSpec, Function1 function1, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        Function1 function12;
        DnsQueryResult dnsQueryResult = transition.transitionState;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1877370462);
        int i2 = (i & 6) == 0 ? (gapComposer.changed(transition) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(finiteAnimationSpec) ? 256 : 128;
        }
        int i3 = i2 | 3072;
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            function12 = (Function1) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            Object obj = rememberedValue2;
            if (rememberedValue2 == neverEqualPolicy) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                snapshotStateList.add(dnsQueryResult.getCurrentState());
                gapComposer.updateRememberedValue(snapshotStateList);
                obj = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                long[] jArr = ScatterMapKt.EmptyGroup;
                rememberedValue3 = new MutableScatterMap();
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) rememberedValue3;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
            if (Intrinsics.areEqual(dnsQueryResult.getCurrentState(), parcelableSnapshotMutableState.getValue())) {
                gapComposer.startReplaceGroup(321145192);
                if (snapshotStateList2.size() == 1 && Intrinsics.areEqual(snapshotStateList2.get(0), parcelableSnapshotMutableState.getValue())) {
                    gapComposer.startReplaceGroup(321469824);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(321279546);
                    boolean z = (i3 & 14) == 4;
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (z || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new NodeChainKt$fillVector$1(3, transition);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    CollectionsKt.removeAll(snapshotStateList2, (Function1) rememberedValue4);
                    mutableScatterMap.clear();
                    gapComposer.end(false);
                }
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(321475776);
                gapComposer.end(false);
            }
            if (mutableScatterMap.contains(parcelableSnapshotMutableState.getValue())) {
                gapComposer.startReplaceGroup(322279296);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(321536443);
                ListIterator listIterator = snapshotStateList2.listIterator();
                int i4 = 0;
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    if (!itr.hasNext()) {
                        i4 = -1;
                        break;
                    } else if (Intrinsics.areEqual(function12.invoke(itr.next()), function12.invoke(parcelableSnapshotMutableState.getValue()))) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i4 == -1) {
                    snapshotStateList2.add(parcelableSnapshotMutableState.getValue());
                } else {
                    snapshotStateList2.set(i4, parcelableSnapshotMutableState.getValue());
                }
                mutableScatterMap.clear();
                int size = snapshotStateList2.size();
                for (int i5 = 0; i5 < size; i5++) {
                    Object obj2 = snapshotStateList2.get(i5);
                    mutableScatterMap.set(obj2, Expect_jvmKt.rememberComposableLambda(-934471669, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpec, obj2, composableLambdaImpl), gapComposer));
                }
                gapComposer.end(false);
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            Updater.m378initimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer.startReplaceGroup(-1312707512);
            int size2 = snapshotStateList2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Object obj3 = snapshotStateList2.get(i7);
                gapComposer.startMovableGroup(1171574969, function12.invoke(obj3));
                Function2 function2 = (Function2) mutableScatterMap.get(obj3);
                if (function2 == null) {
                    gapComposer.startReplaceGroup(1959122128);
                } else {
                    gapComposer.startReplaceGroup(1171576145);
                    function2.invoke(gapComposer, 0);
                }
                gapComposer.end(false);
                gapComposer.end(false);
            }
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            function12 = function1;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final Function1 function13 = function12;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Number) obj5).intValue();
                    CrossfadeKt.Crossfade(Transition.this, modifier, finiteAnimationSpec, function13, composableLambdaImpl, (Composer) obj4, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static Modifier animateContentSize$default(Modifier modifier, TweenSpec tweenSpec, int i) {
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
            finiteAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
        }
        return ClipKt.clipToBounds(modifier).then(new SizeAnimationModifierElement(finiteAnimationSpec));
    }

    public static final EnterExitState targetEnterExit(Transition transition, Function1 function1, Object obj, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startMovableGroup(-422486745, transition);
        boolean isSeeking = transition.isSeeking();
        DnsQueryResult dnsQueryResult = transition.transitionState;
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.PostExit;
        EnterExitState enterExitState3 = EnterExitState.Visible;
        if (isSeeking) {
            gapComposer.startReplaceGroup(-212166497);
            gapComposer.end(false);
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = enterExitState3;
            } else if (((Boolean) function1.invoke(dnsQueryResult.getCurrentState())).booleanValue()) {
                enterExitState = enterExitState2;
            }
        } else {
            gapComposer.startReplaceGroup(-211892364);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) function1.invoke(dnsQueryResult.getCurrentState())).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            }
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = enterExitState3;
            } else if (((Boolean) mutableState.getValue()).booleanValue()) {
                enterExitState = enterExitState2;
            }
            gapComposer.end(false);
        }
        gapComposer.end(false);
        return enterExitState;
    }

    public static final ContentTransform togetherWith(EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl) {
        return new ContentTransform(enterTransitionImpl, exitTransitionImpl, 0.0f, new SizeTransformImpl(AnimatedContentKt$SizeTransform$1.INSTANCE));
    }

    public static final void AnimatedVisibility(final boolean z, Modifier modifier, final EnterTransitionImpl enterTransitionImpl, final ExitTransitionImpl exitTransitionImpl, String str, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        final String str2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1448730565);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(enterTransitionImpl) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(exitTransitionImpl) ? 2048 : 1024;
        }
        int i4 = i3 | 24576;
        if ((196608 & i) == 0) {
            i4 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i4 & 1, (74899 & i4) != 74898)) {
            str2 = "AnimatedVisibility";
            Transition updateTransition = ArcSplineKt.updateTransition(Boolean.valueOf(z), "AnimatedVisibility", gapComposer, (i4 & 14) | ((i4 >> 9) & 112), 0);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE$3;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            int i5 = i4 << 3;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AnimatedVisibilityImpl(updateTransition, function1, companion, enterTransitionImpl, exitTransitionImpl, composableLambdaImpl, gapComposer, (i5 & 57344) | (i5 & 896) | 48 | (i5 & 7168) | (i4 & 458752));
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            str2 = str;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    CrossfadeKt.AnimatedVisibility(z, modifier2, enterTransitionImpl, exitTransitionImpl, str2, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Crossfade(final java.lang.Object r14, androidx.compose.ui.Modifier r15, androidx.compose.animation.core.FiniteAnimationSpec r16, java.lang.String r17, final androidx.compose.runtime.internal.ComposableLambdaImpl r18, androidx.compose.runtime.Composer r19, final int r20, final int r21) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.CrossfadeKt.Crossfade(java.lang.Object, androidx.compose.ui.Modifier, androidx.compose.animation.core.FiniteAnimationSpec, java.lang.String, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AnimatedContent(final java.lang.Object r17, androidx.compose.ui.Modifier r18, kotlin.jvm.functions.Function1 r19, androidx.compose.ui.Alignment r20, java.lang.String r21, kotlin.jvm.functions.Function1 r22, final androidx.compose.runtime.internal.ComposableLambdaImpl r23, androidx.compose.runtime.Composer r24, final int r25, final int r26) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.CrossfadeKt.AnimatedContent(java.lang.Object, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.ui.Alignment, java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }
}
