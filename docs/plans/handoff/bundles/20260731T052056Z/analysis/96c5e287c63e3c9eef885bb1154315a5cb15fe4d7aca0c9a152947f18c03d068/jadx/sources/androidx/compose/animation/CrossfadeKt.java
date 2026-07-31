package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.graphics.ColorKt;
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
import androidx.datastore.core.SimpleActor$1;
import androidx.glance.appwidget.components.ButtonsKt$FilledButton$2;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.glance.session.SessionWorkerKt$runSession$6;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CrossfadeKt {
    public static final void AnimatedContent(final Transition transition, Modifier modifier, Function1 function1, Alignment alignment, Function1 function12, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        Function1 function13;
        GapComposer gapComposer2;
        BasePreferenceLoader basePreferenceLoader;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl;
        SnapshotStateList snapshotStateList;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2;
        Transition.DeferredAnimation deferredAnimation;
        boolean z;
        final Function1 function14 = function1;
        gapComposer.startRestartGroup(511725103);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(transition) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function14) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(alignment) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function12) ? 16384 : 8192;
        }
        final ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            int i3 = i2 & 14;
            boolean z2 = i3 == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (z2 || rememberedValue == obj) {
                rememberedValue = new AnimatedContentTransitionScopeImpl(transition, alignment);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl3 = (AnimatedContentTransitionScopeImpl) rememberedValue;
            boolean z3 = i3 == 4;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z3 || rememberedValue2 == obj) {
                Object[] objArr = {transition.transitionState.getCurrentState()};
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                snapshotStateList2.addAll(ArraysKt___ArraysKt.toList(objArr));
                gapComposer.updateRememberedValue(snapshotStateList2);
                rememberedValue2 = snapshotStateList2;
            }
            final SnapshotStateList snapshotStateList3 = (SnapshotStateList) rememberedValue2;
            boolean z4 = i3 == 4;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z4 || rememberedValue3 == obj) {
                long[] jArr = ScatterMapKt.EmptyGroup;
                rememberedValue3 = new MutableScatterMap();
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) rememberedValue3;
            BasePreferenceLoader basePreferenceLoader2 = transition.transitionState;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
            if (!snapshotStateList3.contains(basePreferenceLoader2.getCurrentState())) {
                snapshotStateList3.clear();
                snapshotStateList3.add(basePreferenceLoader2.getCurrentState());
            }
            if (Intrinsics.areEqual(basePreferenceLoader2.getCurrentState(), parcelableSnapshotMutableState.getValue())) {
                if (snapshotStateList3.size() != 1 || !Intrinsics.areEqual(snapshotStateList3.get(0), basePreferenceLoader2.getCurrentState())) {
                    snapshotStateList3.clear();
                    snapshotStateList3.add(basePreferenceLoader2.getCurrentState());
                }
                if (mutableScatterMap._size != 1 || mutableScatterMap.containsKey(basePreferenceLoader2.getCurrentState())) {
                    mutableScatterMap.clear();
                }
                animatedContentTransitionScopeImpl3.contentAlignment = alignment;
            }
            if (Intrinsics.areEqual(basePreferenceLoader2.getCurrentState(), parcelableSnapshotMutableState.getValue()) || snapshotStateList3.contains(parcelableSnapshotMutableState.getValue())) {
                basePreferenceLoader = basePreferenceLoader2;
            } else {
                ListIterator listIterator = snapshotStateList3.listIterator();
                int i4 = 0;
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    basePreferenceLoader = basePreferenceLoader2;
                    if (!itr.hasNext()) {
                        i4 = -1;
                        break;
                    } else {
                        if (Intrinsics.areEqual(function12.invoke(itr.next()), function12.invoke(parcelableSnapshotMutableState.getValue()))) {
                            break;
                        }
                        i4++;
                        basePreferenceLoader2 = basePreferenceLoader;
                    }
                }
                if (i4 == -1) {
                    snapshotStateList3.add(parcelableSnapshotMutableState.getValue());
                } else {
                    snapshotStateList3.set(i4, parcelableSnapshotMutableState.getValue());
                }
            }
            if (mutableScatterMap.containsKey(parcelableSnapshotMutableState.getValue()) && mutableScatterMap.containsKey(basePreferenceLoader.getCurrentState())) {
                gapComposer.startReplaceGroup(1968995539);
                gapComposer.end(false);
                function13 = function14;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
            } else {
                gapComposer.startReplaceGroup(1966410449);
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
                            GapComposer gapComposer3 = (GapComposer) obj3;
                            int intValue = ((Number) obj4).intValue();
                            if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                Function1 function15 = function14;
                                final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl3;
                                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                                if (rememberedValue4 == neverEqualPolicy) {
                                    rememberedValue4 = (ContentTransform) function15.invoke(animatedContentTransitionScopeImpl4);
                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                }
                                final ContentTransform contentTransform = (ContentTransform) rememberedValue4;
                                Transition transition2 = Transition.this;
                                Transition.Segment segment = transition2.getSegment();
                                ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = transition2.targetState$delegate;
                                Object targetState = segment.getTargetState();
                                final Object obj5 = obj2;
                                boolean changed = gapComposer3.changed(Intrinsics.areEqual(targetState, obj5));
                                Object rememberedValue5 = gapComposer3.rememberedValue();
                                if (changed || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = Intrinsics.areEqual(transition2.getSegment().getTargetState(), obj5) ? ExitTransitionImpl.None : ((ContentTransform) function15.invoke(animatedContentTransitionScopeImpl4)).initialContentExit;
                                    gapComposer3.updateRememberedValue(rememberedValue5);
                                }
                                ExitTransitionImpl exitTransitionImpl = (ExitTransitionImpl) rememberedValue5;
                                Object rememberedValue6 = gapComposer3.rememberedValue();
                                if (rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new AnimatedContentTransitionScopeImpl.ChildData(Intrinsics.areEqual(obj5, parcelableSnapshotMutableState2.getValue()));
                                    gapComposer3.updateRememberedValue(rememberedValue6);
                                }
                                AnimatedContentTransitionScopeImpl.ChildData childData = (AnimatedContentTransitionScopeImpl.ChildData) rememberedValue6;
                                EnterTransitionImpl enterTransitionImpl = contentTransform.targetContentEnter;
                                boolean changedInstance = gapComposer3.changedInstance(contentTransform);
                                Object rememberedValue7 = gapComposer3.rememberedValue();
                                if (changedInstance || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new Function3() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$1$1
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                            Placeable mo512measureBRTryo0 = ((Measurable) obj7).mo512measureBRTryo0(((Constraints) obj8).value);
                                            return ((MeasureScope) obj6).layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new SimpleActor$1(1, mo512measureBRTryo0, ContentTransform.this));
                                        }
                                    };
                                    gapComposer3.updateRememberedValue(rememberedValue7);
                                }
                                Modifier layout = RulerKt.layout(Modifier.Companion.$$INSTANCE, (Function3) rememberedValue7);
                                childData.isTarget$delegate.setValue(Boolean.valueOf(Intrinsics.areEqual(obj5, parcelableSnapshotMutableState2.getValue())));
                                Modifier then = layout.then(childData);
                                boolean changedInstance2 = gapComposer3.changedInstance(obj5);
                                Object rememberedValue8 = gapComposer3.rememberedValue();
                                if (changedInstance2 || rememberedValue8 == neverEqualPolicy) {
                                    rememberedValue8 = new NodeChainKt$fillVector$1(1, obj5);
                                    gapComposer3.updateRememberedValue(rememberedValue8);
                                }
                                Function1 function16 = (Function1) rememberedValue8;
                                boolean changed2 = gapComposer3.changed(exitTransitionImpl);
                                Object rememberedValue9 = gapComposer3.rememberedValue();
                                if (changed2 || rememberedValue9 == neverEqualPolicy) {
                                    rememberedValue9 = new SpacerKt$Spacer$3(1, exitTransitionImpl);
                                    gapComposer3.updateRememberedValue(rememberedValue9);
                                }
                                final SnapshotStateList snapshotStateList4 = snapshotStateList3;
                                final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                CrossfadeKt.AnimatedEnterExitImpl(Transition.this, function16, then, enterTransitionImpl, exitTransitionImpl, (Function2) rememberedValue9, Expect_jvmKt.rememberComposableLambda(-143346359, new Function3() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1.5
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj6;
                                        GapComposer gapComposer4 = (GapComposer) obj7;
                                        int intValue2 = ((Number) obj8).intValue();
                                        if ((intValue2 & 6) == 0) {
                                            intValue2 |= (intValue2 & 8) == 0 ? gapComposer4.changed(animatedVisibilityScope) : gapComposer4.changedInstance(animatedVisibilityScope) ? 4 : 2;
                                        }
                                        if (gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                            SnapshotStateList snapshotStateList5 = SnapshotStateList.this;
                                            boolean changed3 = gapComposer4.changed(snapshotStateList5);
                                            Object obj9 = obj5;
                                            boolean changedInstance3 = changed3 | gapComposer4.changedInstance(obj9);
                                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl4;
                                            boolean changedInstance4 = changedInstance3 | gapComposer4.changedInstance(animatedContentTransitionScopeImpl5);
                                            Object rememberedValue10 = gapComposer4.rememberedValue();
                                            NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                                            if (changedInstance4 || rememberedValue10 == neverEqualPolicy2) {
                                                rememberedValue10 = new SessionWorkerKt$runSession$6(snapshotStateList5, obj9, animatedContentTransitionScopeImpl5, 1);
                                                gapComposer4.updateRememberedValue(rememberedValue10);
                                            }
                                            Updater.DisposableEffect(animatedVisibilityScope, (Function1) rememberedValue10, gapComposer4);
                                            MutableScatterMap mutableScatterMap2 = animatedContentTransitionScopeImpl5.targetSizeMap;
                                            animatedVisibilityScope.getClass();
                                            mutableScatterMap2.set(obj9, ((AnimatedVisibilityScopeImpl) animatedVisibilityScope).targetSize);
                                            Object rememberedValue11 = gapComposer4.rememberedValue();
                                            if (rememberedValue11 == neverEqualPolicy2) {
                                                rememberedValue11 = new AnimatedContentScopeImpl();
                                                gapComposer4.updateRememberedValue(rememberedValue11);
                                            }
                                            composableLambdaImpl3.invoke(rememberedValue11, obj9, (Object) gapComposer4, (Object) 0);
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
                    }, gapComposer));
                    i5++;
                    function14 = function14;
                    composableLambdaImpl2 = composableLambdaImpl;
                }
                function13 = function14;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
                gapComposer.end(false);
            }
            boolean changed = gapComposer.changed(transition.getSegment()) | gapComposer.changed(animatedContentTransitionScopeImpl);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed || rememberedValue4 == obj) {
                rememberedValue4 = (ContentTransform) function13.invoke(animatedContentTransitionScopeImpl);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            ContentTransform contentTransform = (ContentTransform) rememberedValue4;
            Transition transition2 = animatedContentTransitionScopeImpl.transition;
            boolean changed2 = gapComposer.changed(animatedContentTransitionScopeImpl);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue5 == obj) {
                rememberedValue5 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            MutableState mutableState = (MutableState) rememberedValue5;
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(contentTransform.sizeTransform, gapComposer);
            if (Intrinsics.areEqual(transition2.transitionState.getCurrentState(), transition2.targetState$delegate.getValue())) {
                mutableState.setValue(Boolean.FALSE);
            } else if (rememberUpdatedState.getValue() != null) {
                mutableState.setValue(Boolean.TRUE);
            }
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            Modifier modifier2 = Modifier.Companion.$$INSTANCE;
            if (booleanValue) {
                gapComposer.startReplaceGroup(1353077497);
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl;
                snapshotStateList = snapshotStateList3;
                gapComposer2 = gapComposer;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl4;
                deferredAnimation = ArcSplineKt.createDeferredAnimation(animatedContentTransitionScopeImpl4.transition, ArcSplineKt.IntSizeToVector, null, gapComposer2, 0, 2);
                boolean changed3 = gapComposer2.changed(deferredAnimation);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changed3 || rememberedValue6 == obj) {
                    rememberedValue6 = ClipKt.clipToBounds(modifier2);
                    gapComposer2.updateRememberedValue(rememberedValue6);
                }
                modifier2 = (Modifier) rememberedValue6;
                gapComposer2.end(false);
            } else {
                snapshotStateList = snapshotStateList3;
                gapComposer2 = gapComposer;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                gapComposer2.startReplaceGroup(1353343539);
                gapComposer2.end(false);
                deferredAnimation = null;
            }
            Modifier then = modifier.then(modifier2.then(new AnimatedContentTransitionScopeImpl.SizeModifierElement(deferredAnimation, rememberUpdatedState, animatedContentTransitionScopeImpl2)));
            Object rememberedValue7 = gapComposer2.rememberedValue();
            if (rememberedValue7 == obj) {
                rememberedValue7 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                gapComposer2.updateRememberedValue(rememberedValue7);
            }
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) rememberedValue7;
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, animatedContentMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m325initimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer2.startReplaceGroup(-860173498);
            int size2 = snapshotStateList.size();
            int i7 = 0;
            while (i7 < size2) {
                SnapshotStateList snapshotStateList4 = snapshotStateList;
                Object obj3 = snapshotStateList4.get(i7);
                gapComposer2.startMovableGroup(-2026002954, function12.invoke(obj3));
                Function2 function2 = (Function2) mutableScatterMap.get(obj3);
                if (function2 == null) {
                    gapComposer2.startReplaceGroup(1618454323);
                    z = false;
                } else {
                    z = false;
                    gapComposer2.startReplaceGroup(-2026001778);
                    function2.invoke(gapComposer2, 0);
                }
                gapComposer2.end(z);
                gapComposer2.end(z);
                i7++;
                snapshotStateList = snapshotStateList4;
            }
            gapComposer2.end(false);
            gapComposer2.end(true);
        } else {
            function13 = function14;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AnimatedContentKt$AnimatedContent$9(transition, modifier, function13, alignment, function12, composableLambdaImpl, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0252  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AnimatedEnterExitImpl(final androidx.compose.animation.core.Transition r30, final kotlin.jvm.functions.Function1 r31, final androidx.compose.ui.Modifier r32, final androidx.compose.animation.EnterTransitionImpl r33, final androidx.compose.animation.ExitTransitionImpl r34, final kotlin.jvm.functions.Function2 r35, androidx.compose.runtime.internal.ComposableLambdaImpl r36, androidx.compose.runtime.GapComposer r37, final int r38) {
        /*
            Method dump skipped, instructions count: 1379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.CrossfadeKt.AnimatedEnterExitImpl(androidx.compose.animation.core.Transition, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.animation.EnterTransitionImpl, androidx.compose.animation.ExitTransitionImpl, kotlin.jvm.functions.Function2, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int):void");
    }

    public static final void AnimatedVisibility(boolean z, Modifier modifier, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, String str, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        String str2;
        gapComposer.startRestartGroup(-1448730565);
        int i3 = (gapComposer.changed(z) ? 4 : 2) | i;
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(enterTransitionImpl) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(exitTransitionImpl) ? 2048 : 1024;
        }
        int i5 = i3 | 24576;
        if (gapComposer.shouldExecute(i5 & 1, (74899 & i5) != 74898)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            modifier2 = modifier;
            Transition updateTransition = ArcSplineKt.updateTransition(Boolean.valueOf(z), "AnimatedVisibility", gapComposer, (i5 & 14) | 48);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE$3;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            int i6 = i5 << 3;
            AnimatedVisibilityImpl(updateTransition, function1, modifier2, enterTransitionImpl, exitTransitionImpl, composableLambdaImpl, gapComposer, (i6 & 57344) | (i6 & 896) | 48 | (i6 & 7168) | 196608);
            str2 = "AnimatedVisibility";
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            str2 = str;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonsKt$FilledButton$2(z, modifier2, enterTransitionImpl, exitTransitionImpl, str2, composableLambdaImpl, i, i2);
        }
    }

    public static final void AnimatedVisibilityImpl(final Transition transition, final Function1 function1, Modifier modifier, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        EnterTransitionImpl enterTransitionImpl2;
        ExitTransitionImpl exitTransitionImpl2;
        ComposableLambdaImpl composableLambdaImpl2;
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
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
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
                        Placeable mo512measureBRTryo0 = ((Measurable) obj2).mo512measureBRTryo0(((Constraints) obj3).value);
                        if (measureScope.isLookingAhead()) {
                            if (!((Boolean) Function1.this.invoke(transition.targetState$delegate.getValue())).booleanValue()) {
                                j = 0;
                                return measureScope.layout((int) (j >> 32), (int) (4294967295L & j), EmptyMap.INSTANCE, new PainterNode$measure$1(mo512measureBRTryo0, 1));
                            }
                        }
                        j = (mo512measureBRTryo0.width << 32) | (mo512measureBRTryo0.height & 4294967295L);
                        return measureScope.layout((int) (j >> 32), (int) (4294967295L & j), EmptyMap.INSTANCE, new PainterNode$measure$1(mo512measureBRTryo0, 1));
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

    public static final void Crossfade(final Transition transition, final Modifier modifier, final FiniteAnimationSpec finiteAnimationSpec, Function1 function1, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        final Function1 function12;
        BasePreferenceLoader basePreferenceLoader = transition.transitionState;
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
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function13 = (Function1) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            Object obj2 = rememberedValue2;
            if (rememberedValue2 == obj) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                snapshotStateList.add(basePreferenceLoader.getCurrentState());
                gapComposer.updateRememberedValue(snapshotStateList);
                obj2 = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj2;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                long[] jArr = ScatterMapKt.EmptyGroup;
                rememberedValue3 = new MutableScatterMap();
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) rememberedValue3;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
            if (Intrinsics.areEqual(basePreferenceLoader.getCurrentState(), parcelableSnapshotMutableState.getValue())) {
                gapComposer.startReplaceGroup(321145192);
                if (snapshotStateList2.size() == 1 && Intrinsics.areEqual(snapshotStateList2.get(0), parcelableSnapshotMutableState.getValue())) {
                    gapComposer.startReplaceGroup(321469824);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(321279546);
                    boolean z = (i3 & 14) == 4;
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (z || rememberedValue4 == obj) {
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
                    } else if (Intrinsics.areEqual(function13.invoke(itr.next()), function13.invoke(parcelableSnapshotMutableState.getValue()))) {
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
                    final Object obj3 = snapshotStateList2.get(i5);
                    mutableScatterMap.set(obj3, Expect_jvmKt.rememberComposableLambda(-934471669, new Function2() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Object currentState;
                            GapComposer gapComposer2 = (GapComposer) obj4;
                            int intValue = ((Number) obj5).intValue();
                            final int i6 = 0;
                            final int i7 = 1;
                            if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
                                final Transition transition2 = Transition.this;
                                boolean isSeeking = transition2.isSeeking();
                                BasePreferenceLoader basePreferenceLoader2 = transition2.transitionState;
                                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                                if (isSeeking) {
                                    gapComposer2.startReplaceGroup(1666827533);
                                    gapComposer2.end(false);
                                    currentState = basePreferenceLoader2.getCurrentState();
                                } else {
                                    gapComposer2.startReplaceGroup(1666573488);
                                    boolean changed = gapComposer2.changed(transition2);
                                    currentState = gapComposer2.rememberedValue();
                                    if (changed || currentState == neverEqualPolicy) {
                                        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                                        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                                        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                                        try {
                                            Object currentState2 = basePreferenceLoader2.getCurrentState();
                                            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                            gapComposer2.updateRememberedValue(currentState2);
                                            currentState = currentState2;
                                        } catch (Throwable th) {
                                            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                            throw th;
                                        }
                                    }
                                    gapComposer2.end(false);
                                }
                                gapComposer2.startReplaceGroup(1378811975);
                                Object obj6 = obj3;
                                boolean areEqual = Intrinsics.areEqual(currentState, obj6);
                                float f = RecyclerView.DECELERATION_RATE;
                                float f2 = areEqual ? 1.0f : 0.0f;
                                gapComposer2.end(false);
                                Float valueOf = Float.valueOf(f2);
                                boolean changed2 = gapComposer2.changed(transition2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (changed2 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i8 = i6;
                                            Transition transition3 = transition2;
                                            switch (i8) {
                                                case 0:
                                                    return transition3.targetState$delegate.getValue();
                                                default:
                                                    return transition3.getSegment();
                                            }
                                        }
                                    });
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Object value = ((State) rememberedValue5).getValue();
                                gapComposer2.startReplaceGroup(1378811975);
                                if (Intrinsics.areEqual(value, obj6)) {
                                    f = 1.0f;
                                }
                                gapComposer2.end(false);
                                Float valueOf2 = Float.valueOf(f);
                                boolean changed3 = gapComposer2.changed(transition2);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i8 = i7;
                                            Transition transition3 = transition2;
                                            switch (i8) {
                                                case 0:
                                                    return transition3.targetState$delegate.getValue();
                                                default:
                                                    return transition3.getSegment();
                                            }
                                        }
                                    });
                                    gapComposer2.updateRememberedValue(rememberedValue6);
                                }
                                gapComposer2.startReplaceGroup(955869654);
                                gapComposer2.end(false);
                                Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(transition2, valueOf, valueOf2, finiteAnimationSpec, twoWayConverterImpl, gapComposer2, 0);
                                boolean changed4 = gapComposer2.changed(createTransitionAnimation);
                                Object rememberedValue7 = gapComposer2.rememberedValue();
                                if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new NodeChainKt$fillVector$1(4, createTransitionAnimation);
                                    gapComposer2.updateRememberedValue(rememberedValue7);
                                }
                                Modifier graphicsLayer = ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, (Function1) rememberedValue7);
                                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                long j = gapComposer2.compositeKeyHashCode;
                                int i8 = (int) (j ^ (j >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, graphicsLayer);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                gapComposer2.startReusableNode();
                                if (gapComposer2.inserting) {
                                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                                } else {
                                    gapComposer2.useNode();
                                }
                                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m325initimpl(gapComposer2, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                composableLambdaImpl.invoke(obj6, (Object) gapComposer2, (Object) 0);
                                gapComposer2.end(true);
                            } else {
                                gapComposer2.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer));
                }
                gapComposer.end(false);
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m325initimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer.startReplaceGroup(-1312707512);
            int size2 = snapshotStateList2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Object obj4 = snapshotStateList2.get(i7);
                gapComposer.startMovableGroup(1171574969, function13.invoke(obj4));
                Function2 function2 = (Function2) mutableScatterMap.get(obj4);
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
            function12 = function13;
        } else {
            gapComposer.skipToGroupEnd();
            function12 = function1;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    ((Number) obj6).intValue();
                    CrossfadeKt.Crossfade(Transition.this, modifier, finiteAnimationSpec, function12, composableLambdaImpl, (GapComposer) obj5, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static Modifier animateContentSize$default(Modifier modifier) {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        return ClipKt.clipToBounds(modifier).then(new SizeAnimationModifierElement(ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntSize(4294967297L), 1)));
    }

    public static final EnterExitState targetEnterExit(Transition transition, Function1 function1, Object obj, GapComposer gapComposer) {
        EnterExitState enterExitState;
        gapComposer.startMovableGroup(-422486745, transition);
        boolean isSeeking = transition.isSeeking();
        BasePreferenceLoader basePreferenceLoader = transition.transitionState;
        if (isSeeking) {
            gapComposer.startReplaceGroup(-212166497);
            gapComposer.end(false);
            enterExitState = ((Boolean) function1.invoke(obj)).booleanValue() ? EnterExitState.Visible : ((Boolean) function1.invoke(basePreferenceLoader.getCurrentState())).booleanValue() ? EnterExitState.PostExit : EnterExitState.PreEnter;
        } else {
            gapComposer.startReplaceGroup(-211892364);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) function1.invoke(basePreferenceLoader.getCurrentState())).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            }
            enterExitState = ((Boolean) function1.invoke(obj)).booleanValue() ? EnterExitState.Visible : ((Boolean) mutableState.getValue()).booleanValue() ? EnterExitState.PostExit : EnterExitState.PreEnter;
            gapComposer.end(false);
        }
        gapComposer.end(false);
        return enterExitState;
    }

    public static final ContentTransform togetherWith(EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl) {
        return new ContentTransform(enterTransitionImpl, exitTransitionImpl, RecyclerView.DECELERATION_RATE, new SizeTransformImpl(AnimatedContentKt$SizeTransform$1.INSTANCE));
    }

    public static final void AnimatedVisibility(final boolean z, Modifier modifier, EnterTransitionImpl enterTransitionImpl, final ExitTransitionImpl exitTransitionImpl, String str, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        final Modifier modifier2;
        final EnterTransitionImpl enterTransitionImpl2;
        final String str2;
        gapComposer.startRestartGroup(234057107);
        int i2 = i | (gapComposer.changed(z) ? 32 : 16) | 200064;
        if (gapComposer.shouldExecute(i2 & 1, (599185 & i2) != 599184)) {
            EnterTransitionImpl plus = EnterExitTransitionKt.fadeIn$default(null, 3).plus(EnterExitTransitionKt.expandHorizontally$default(null, null, 15));
            Transition updateTransition = ArcSplineKt.updateTransition(Boolean.valueOf(z), "AnimatedVisibility", gapComposer, ((i2 >> 3) & 14) | 48);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE$4;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AnimatedVisibilityImpl(updateTransition, (Function1) rememberedValue, companion, plus, exitTransitionImpl, composableLambdaImpl, gapComposer, 224688);
            enterTransitionImpl2 = plus;
            str2 = "AnimatedVisibility";
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            enterTransitionImpl2 = enterTransitionImpl;
            str2 = str;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(z, modifier2, enterTransitionImpl2, exitTransitionImpl, str2, composableLambdaImpl, i) { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$4
                public final /* synthetic */ ComposableLambdaImpl $content;
                public final /* synthetic */ EnterTransitionImpl $enter;
                public final /* synthetic */ ExitTransitionImpl $exit;
                public final /* synthetic */ String $label;
                public final /* synthetic */ Modifier $modifier;
                public final /* synthetic */ boolean $visible;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int updateChangedFlags = Updater.updateChangedFlags(1597447);
                    CrossfadeKt.AnimatedVisibility(this.$visible, this.$modifier, this.$enter, this.$exit, this.$label, this.$content, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void Crossfade(final Boolean bool, Modifier modifier, final FiniteAnimationSpec finiteAnimationSpec, String str, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        final Modifier modifier2;
        final String str2;
        gapComposer.startRestartGroup(-513216493);
        int i2 = i | (gapComposer.changed(bool) ? 4 : 2) | 48 | (gapComposer.changedInstance(finiteAnimationSpec) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Crossfade(ArcSplineKt.updateTransition(bool, "Crossfade", gapComposer, (i2 & 14) | 48), companion, finiteAnimationSpec, (Function1) null, composableLambdaImpl, gapComposer, i2 & 58352);
            modifier2 = companion;
            str2 = "Crossfade";
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            str2 = str;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(bool, modifier2, finiteAnimationSpec, str2, composableLambdaImpl, i) { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                public final /* synthetic */ FiniteAnimationSpec $animationSpec;
                public final /* synthetic */ ComposableLambdaImpl $content;
                public final /* synthetic */ String $label;
                public final /* synthetic */ Modifier $modifier;
                public final /* synthetic */ Boolean $targetState;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int updateChangedFlags = Updater.updateChangedFlags(24577);
                    CrossfadeKt.Crossfade(this.$targetState, this.$modifier, this.$animationSpec, this.$label, this.$content, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void AnimatedContent(final Object obj, Modifier modifier, Function1 function1, Alignment alignment, String str, Function1 function12, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        final Function1 function13;
        final Alignment alignment2;
        final Function1 function14;
        gapComposer.startRestartGroup(1501828832);
        int i4 = (gapComposer.changed(obj) ? 4 : 2) | i;
        int i5 = i4 | 48;
        int i6 = i2 & 4;
        if (i6 != 0) {
            i3 = i4 | 432;
        } else {
            i3 = (gapComposer.changedInstance(function1) ? 256 : 128) | i5;
        }
        int i7 = i3 | 3072;
        int i8 = i2 & 16;
        if (i8 != 0) {
            i7 = i3 | 27648;
        } else if ((i & 24576) == 0) {
            i7 |= gapComposer.changed(str) ? 16384 : 8192;
        }
        int i9 = 196608 | i7;
        if (gapComposer.shouldExecute(i9 & 1, (599187 & i9) != 599186)) {
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (i6 != 0) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = CrossfadeKt$Crossfade$3$1.INSTANCE$1;
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                function1 = (Function1) rememberedValue;
            }
            Function1 function15 = function1;
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            if (i8 != 0) {
                str = "AnimatedContent";
            }
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = CrossfadeKt$Crossfade$3$1.INSTANCE$2;
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function16 = (Function1) rememberedValue2;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AnimatedContent(ArcSplineKt.updateTransition(obj, str, gapComposer, (i9 & 14) | ((i9 >> 9) & 112)), companion, function15, biasAlignment, function16, composableLambdaImpl, gapComposer, (i9 & 8176) | 221184);
            function14 = function16;
            alignment2 = biasAlignment;
            function13 = function15;
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            function13 = function1;
            alignment2 = alignment;
            function14 = function12;
        }
        final String str2 = str;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Number) obj3).intValue();
                    CrossfadeKt.AnimatedContent(obj, modifier2, function13, alignment2, str2, function14, composableLambdaImpl, (GapComposer) obj2, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
