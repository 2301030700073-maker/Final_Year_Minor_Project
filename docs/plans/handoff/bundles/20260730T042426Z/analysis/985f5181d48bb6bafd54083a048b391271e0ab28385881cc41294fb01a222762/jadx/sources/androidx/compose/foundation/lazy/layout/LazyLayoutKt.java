package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: LazyLayout.kt */
/* loaded from: classes.dex */
public abstract class LazyLayoutKt {
    public static final void LazyLayout(final Function0 function0, final Modifier modifier, final LazyLayoutPrefetchState lazyLayoutPrefetchState, final Function2 function2, Composer composer, final int i, final int i2) {
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(2002163445);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (startRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= startRestartGroup.changed(modifier) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= startRestartGroup.changed(lazyLayoutPrefetchState) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i3 & 1171) != 1170 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (i5 != 0) {
                lazyLayoutPrefetchState = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2002163445, i3, -1, "androidx.compose.foundation.lazy.layout.LazyLayout (LazyLayout.kt:78)");
            }
            final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function0, startRestartGroup, i3 & 14);
            LazySaveableStateHolderKt.LazySaveableStateHolderProvider(ComposableLambdaKt.rememberComposableLambda(-1488997347, true, new Function3() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((SaveableStateHolder) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SaveableStateHolder saveableStateHolder, Composer composer2, int i6) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1488997347, i6, -1, "androidx.compose.foundation.lazy.layout.LazyLayout.<anonymous> (LazyLayout.kt:82)");
                    }
                    final State state = rememberUpdatedState;
                    Object rememberedValue = composer2.rememberedValue();
                    Composer.Companion companion = Composer.Companion;
                    if (rememberedValue == companion.getEmpty()) {
                        rememberedValue = new LazyLayoutItemContentFactory(saveableStateHolder, new Function0() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$3$itemContentFactory$1$1
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final LazyLayoutItemProvider invoke() {
                                return (LazyLayoutItemProvider) ((Function0) State.this.getValue()).invoke();
                            }
                        });
                        composer2.updateRememberedValue(rememberedValue);
                    }
                    final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) rememberedValue;
                    Object rememberedValue2 = composer2.rememberedValue();
                    if (rememberedValue2 == companion.getEmpty()) {
                        rememberedValue2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                        composer2.updateRememberedValue(rememberedValue2);
                    }
                    final SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) rememberedValue2;
                    if (LazyLayoutPrefetchState.this != null) {
                        composer2.startReplaceGroup(205264983);
                        final PrefetchScheduler prefetchScheduler$foundation_release = LazyLayoutPrefetchState.this.getPrefetchScheduler$foundation_release();
                        if (prefetchScheduler$foundation_release == null) {
                            composer2.startReplaceGroup(6622915);
                            prefetchScheduler$foundation_release = PrefetchScheduler_androidKt.rememberDefaultPrefetchScheduler(composer2, 0);
                        } else {
                            composer2.startReplaceGroup(6621830);
                        }
                        composer2.endReplaceGroup();
                        Object[] objArr = {LazyLayoutPrefetchState.this, lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler$foundation_release};
                        boolean changed = composer2.changed(LazyLayoutPrefetchState.this) | composer2.changedInstance(lazyLayoutItemContentFactory) | composer2.changedInstance(subcomposeLayoutState) | composer2.changedInstance(prefetchScheduler$foundation_release);
                        final LazyLayoutPrefetchState lazyLayoutPrefetchState2 = LazyLayoutPrefetchState.this;
                        Object rememberedValue3 = composer2.rememberedValue();
                        if (changed || rememberedValue3 == companion.getEmpty()) {
                            rememberedValue3 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$3$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
                                    LazyLayoutPrefetchState.this.setPrefetchHandleProvider$foundation_release(new PrefetchHandleProvider(lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler$foundation_release));
                                    final LazyLayoutPrefetchState lazyLayoutPrefetchState3 = LazyLayoutPrefetchState.this;
                                    return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$3$1$1$invoke$$inlined$onDispose$1
                                        @Override // androidx.compose.runtime.DisposableEffectResult
                                        public void dispose() {
                                            LazyLayoutPrefetchState.this.setPrefetchHandleProvider$foundation_release(null);
                                        }
                                    };
                                }
                            };
                            composer2.updateRememberedValue(rememberedValue3);
                        }
                        EffectsKt.DisposableEffect(objArr, (Function1) rememberedValue3, composer2, 0);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(205858881);
                        composer2.endReplaceGroup();
                    }
                    Modifier traversablePrefetchState = LazyLayoutPrefetchStateKt.traversablePrefetchState(modifier, LazyLayoutPrefetchState.this);
                    boolean changed2 = composer2.changed(lazyLayoutItemContentFactory) | composer2.changed(function2);
                    final Function2 function22 = function2;
                    Object rememberedValue4 = composer2.rememberedValue();
                    if (changed2 || rememberedValue4 == companion.getEmpty()) {
                        rememberedValue4 = new Function2() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$3$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                return m351invoke0kLqBqw((SubcomposeMeasureScope) obj, ((Constraints) obj2).m2403unboximpl());
                            }

                            /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                            public final MeasureResult m351invoke0kLqBqw(SubcomposeMeasureScope subcomposeMeasureScope, long j) {
                                return (MeasureResult) function22.invoke(new LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory.this, subcomposeMeasureScope), Constraints.m2386boximpl(j));
                            }
                        };
                        composer2.updateRememberedValue(rememberedValue4);
                    }
                    SubcomposeLayoutKt.SubcomposeLayout(subcomposeLayoutState, traversablePrefetchState, (Function2) rememberedValue4, composer2, SubcomposeLayoutState.$stable, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, startRestartGroup, 54), startRestartGroup, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        final LazyLayoutPrefetchState lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i6) {
                    LazyLayoutKt.LazyLayout(Function0.this, modifier2, lazyLayoutPrefetchState2, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                }
            });
        }
    }
}
