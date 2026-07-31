package androidx.compose.material3;

import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.DraggableElement;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FixedIntInsets;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.room.util.DBUtil;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ModalBottomSheetKt {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long PredictiveBackChildTransformOrigin = ColorKt.TransformOrigin(0.5f, 0.0f);

    /* JADX WARN: Removed duplicated region for block: B:100:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ff  */
    /* renamed from: ModalBottomSheet-YbuCTN8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m347ModalBottomSheetYbuCTN8(final kotlin.jvm.functions.Function0 r30, final androidx.compose.material3.SheetState r31, float r32, boolean r33, androidx.compose.ui.graphics.Shape r34, long r35, long r37, long r39, kotlin.jvm.functions.Function2 r41, kotlin.jvm.functions.Function2 r42, androidx.compose.material3.ModalBottomSheetProperties r43, final androidx.compose.runtime.internal.ComposableLambdaImpl r44, androidx.compose.runtime.Composer r45, final int r46, final int r47) {
        /*
            Method dump skipped, instructions count: 811
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ModalBottomSheetKt.m347ModalBottomSheetYbuCTN8(kotlin.jvm.functions.Function0, androidx.compose.material3.SheetState, float, boolean, androidx.compose.ui.graphics.Shape, long, long, long, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.ModalBottomSheetProperties, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: ModalBottomSheetContent-7---e2Q, reason: not valid java name */
    public static final void m348ModalBottomSheetContent7e2Q(final Animatable animatable, final CoroutineScope coroutineScope, final Function0 function0, final Function1 function1, final SheetState sheetState, final float f, final boolean z, final Shape shape, final long j, final long j2, final float f2, final Function2 function2, final Function2 function22, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        GapComposer gapComposer;
        final Function1 function12;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-37400432);
        int i2 = i | (gapComposer2.changedInstance(animatable) ? 32 : 16) | (gapComposer2.changedInstance(coroutineScope) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(function1) ? 16384 : 8192);
        Modifier modifier = Modifier.Companion.$$INSTANCE;
        int i3 = i2 | (gapComposer2.changed(modifier) ? 131072 : 65536) | (gapComposer2.changed(sheetState) ? 1048576 : 524288) | (gapComposer2.changed(f) ? 8388608 : 4194304) | (gapComposer2.changed(z) ? 67108864 : 33554432) | (gapComposer2.changed(shape) ? 536870912 : 268435456);
        int i4 = (gapComposer2.changed(j) ? 4 : 2) | (gapComposer2.changed(j2) ? 32 : 16) | (gapComposer2.changed(f2) ? 256 : 128) | (gapComposer2.changedInstance(function2) ? 2048 : 1024) | (gapComposer2.changedInstance(function22) ? 16384 : 8192) | (gapComposer2.changedInstance(composableLambdaImpl) ? 131072 : 65536);
        if (gapComposer2.shouldExecute(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 74899) == 74898) ? false : true)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
            }
            gapComposer2.endDefaults();
            String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer2, R.string.m3c_bottom_sheet_pane_title);
            Modifier then = SizeKt.m240widthInVpY3zN4$default(BoxScopeInstance.INSTANCE.align(modifier, Alignment.Companion.TopCenter), 0.0f, f, 1).then(SizeKt.FillWholeMaxWidth);
            Object obj = Composer.Companion.Empty;
            if (z) {
                gapComposer2.startReplaceGroup(-1582035383);
                boolean z2 = (((i3 & 3670016) ^ 1572864) > 1048576 && gapComposer2.changed(sheetState)) || (i3 & 1572864) == 1048576;
                Object rememberedValue = gapComposer2.rememberedValue();
                if (z2 || rememberedValue == obj) {
                    TweenSpec tweenSpec = SheetDefaultsKt.BottomSheetAnimationSpec;
                    function12 = function1;
                    rememberedValue = new NestedScrollConnection() { // from class: androidx.compose.material3.SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1
                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        /* renamed from: onPostFling-RZ2iAVY */
                        public final Object mo185onPostFlingRZ2iAVY(long j3, long j4, Continuation continuation) {
                            function12.invoke(new Float(Velocity.m780getYimpl(j4)));
                            return new Velocity(j4);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        /* renamed from: onPostScroll-DzOQY0M */
                        public final long mo186onPostScrollDzOQY0M(int i5, long j3, long j4) {
                            if (i5 != 1) {
                                return 0L;
                            }
                            AnchoredDraggableState anchoredDraggableState = SheetState.this.anchoredDraggableState;
                            float newOffsetForDelta$material3 = anchoredDraggableState.newOffsetForDelta$material3(Float.intBitsToFloat((int) (4294967295L & j4)));
                            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = anchoredDraggableState.offset$delegate;
                            float floatValue = Float.isNaN(parcelableSnapshotMutableFloatState.getFloatValue()) ? 0.0f : parcelableSnapshotMutableFloatState.getFloatValue();
                            parcelableSnapshotMutableFloatState.setFloatValue(newOffsetForDelta$material3);
                            return toOffset(newOffsetForDelta$material3 - floatValue);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        /* renamed from: onPreFling-QWom1Mo */
                        public final Object mo187onPreFlingQWom1Mo(long j3, Continuation continuation) {
                            float m780getYimpl = Velocity.m780getYimpl(j3);
                            SheetState sheetState2 = SheetState.this;
                            float requireOffset = sheetState2.anchoredDraggableState.requireOffset();
                            float minAnchor = sheetState2.anchoredDraggableState.getAnchors().minAnchor();
                            if (m780getYimpl >= 0.0f || requireOffset <= minAnchor) {
                                j3 = 0;
                            } else {
                                function12.invoke(new Float(m780getYimpl));
                            }
                            return new Velocity(j3);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        /* renamed from: onPreScroll-OzD1aCk */
                        public final long mo188onPreScrollOzD1aCk(int i5, long j3) {
                            float intBitsToFloat = Float.intBitsToFloat((int) (j3 & 4294967295L));
                            if (intBitsToFloat >= 0.0f || i5 != 1) {
                                return 0L;
                            }
                            AnchoredDraggableState anchoredDraggableState = SheetState.this.anchoredDraggableState;
                            float newOffsetForDelta$material3 = anchoredDraggableState.newOffsetForDelta$material3(intBitsToFloat);
                            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = anchoredDraggableState.offset$delegate;
                            float floatValue = Float.isNaN(parcelableSnapshotMutableFloatState.getFloatValue()) ? 0.0f : parcelableSnapshotMutableFloatState.getFloatValue();
                            parcelableSnapshotMutableFloatState.setFloatValue(newOffsetForDelta$material3);
                            return toOffset(newOffsetForDelta$material3 - floatValue);
                        }

                        public final long toOffset(float f3) {
                            return (Float.floatToRawIntBits(f3) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
                        }
                    };
                    gapComposer2.updateRememberedValue(rememberedValue);
                } else {
                    function12 = function1;
                }
                modifier = NestedScrollModifierKt.nestedScroll(modifier, (NestedScrollConnection) rememberedValue, null);
                gapComposer2.end(false);
            } else {
                function12 = function1;
                gapComposer2.startReplaceGroup(-1582020872);
                gapComposer2.end(false);
            }
            Modifier then2 = then.then(modifier);
            AnchoredDraggableState anchoredDraggableState = sheetState.anchoredDraggableState;
            AnchoredDraggableState anchoredDraggableState2 = sheetState.anchoredDraggableState;
            int i5 = (i3 & 3670016) ^ 1572864;
            boolean z3 = (i5 > 1048576 && gapComposer2.changed(sheetState)) || (i3 & 1572864) == 1048576;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z3 || rememberedValue2 == obj) {
                rememberedValue2 = new ComposerKt$$ExternalSyntheticLambda0(13, sheetState);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier draggableAnchors = Icons$Filled.draggableAnchors(then2, anchoredDraggableState, (Function2) rememberedValue2);
            CardView.AnonymousClass1 anonymousClass1 = anchoredDraggableState2.draggableState;
            boolean z4 = z && sheetState.isVisible();
            boolean z5 = anchoredDraggableState2.dragTarget$delegate.getValue() != null;
            boolean z6 = (i3 & 57344) == 16384;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (z6 || rememberedValue3 == obj) {
                rememberedValue3 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(function12, null);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier then3 = draggableAnchors.then(new DraggableElement(anonymousClass1, z4, z5, DraggableKt.NoOpOnDragStarted, (Function3) rememberedValue3));
            boolean changed = gapComposer2.changed(m371getString2EP1pXo);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (changed || rememberedValue4 == obj) {
                rememberedValue4 = new IconKt$$ExternalSyntheticLambda1(m371getString2EP1pXo, 3);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            Modifier semantics = SemanticsModifierKt.semantics(then3, false, (Function1) rememberedValue4);
            int floatValue = (int) anchoredDraggableState2.offset$delegate.getFloatValue();
            if (floatValue < 0) {
                floatValue = 0;
            }
            Modifier consumeWindowInsets = OffsetKt.consumeWindowInsets(semantics, new FixedIntInsets(floatValue));
            boolean z7 = ((i5 > 1048576 && gapComposer2.changed(sheetState)) || (i3 & 1572864) == 1048576) | ((i3 & 112) == 32 || gapComposer2.changedInstance(animatable));
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (z7 || rememberedValue5 == obj) {
                rememberedValue5 = new Navigator$$ExternalSyntheticLambda1(16, sheetState, animatable);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            int i6 = i4 << 6;
            int i7 = ((i3 >> 24) & 112) | 12582912 | (i6 & 896) | (i6 & 7168) | (i6 & 57344);
            gapComposer = gapComposer2;
            SurfaceKt.m357SurfaceT9BRK9s(ColorKt.graphicsLayer(ColorKt.graphicsLayer(consumeWindowInsets, (Function1) rememberedValue5), new BottomSheetScaffoldKt$$ExternalSyntheticLambda0(sheetState, 0)), shape, j, j2, f2, 0.0f, null, Expect_jvmKt.rememberComposableLambda(728743275, new ModalBottomSheetKt$ModalBottomSheetContent$7(function22, animatable, sheetState, function2, composableLambdaImpl, function0, coroutineScope, z), gapComposer2), gapComposer, i7, 96);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(coroutineScope, function0, function1, sheetState, f, z, shape, j, j2, f2, function2, function22, composableLambdaImpl, i) { // from class: androidx.compose.material3.ModalBottomSheetKt$$ExternalSyntheticLambda16
                public final /* synthetic */ long f$10;
                public final /* synthetic */ long f$11;
                public final /* synthetic */ float f$12;
                public final /* synthetic */ Function2 f$13;
                public final /* synthetic */ Function2 f$14;
                public final /* synthetic */ ComposableLambdaImpl f$15;
                public final /* synthetic */ CoroutineScope f$2;
                public final /* synthetic */ Function0 f$3;
                public final /* synthetic */ Function1 f$4;
                public final /* synthetic */ SheetState f$6;
                public final /* synthetic */ float f$7;
                public final /* synthetic */ boolean f$8;
                public final /* synthetic */ Shape f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(71);
                    ModalBottomSheetKt.m348ModalBottomSheetContent7e2Q(Animatable.this, this.f$2, this.f$3, this.f$4, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, this.f$15, (Composer) obj2, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Scrim-KTwxG1Y, reason: not valid java name */
    public static final void m349ScrimKTwxG1Y(final long j, final Function0 function0, final boolean z, final boolean z2, Composer composer, final int i) {
        boolean z3;
        Modifier modifier;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-391613911);
        int i2 = i | (gapComposer.changed(j) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changed(z2) ? 2048 : 1024);
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.skipToGroupEnd();
        } else if (j != 16) {
            gapComposer.startReplaceGroup(-1438582326);
            State animateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.0f : 0.0f, CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), null, gapComposer, 0, 28);
            String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer, R.string.close_sheet);
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z2) {
                gapComposer.startReplaceGroup(-1438283579);
                int i3 = i2 & 112;
                boolean z4 = i3 == 32;
                Object rememberedValue = gapComposer.rememberedValue();
                if (z4 || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ExposedDropdownMenuKt$expandable$1(7, function0);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(function0, null, (PointerInputEventHandler) rememberedValue, 6);
                boolean changed = (i3 == 32) | gapComposer.changed(m371getString2EP1pXo);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Navigator$$ExternalSyntheticLambda1(15, m371getString2EP1pXo, function0);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                z3 = true;
                modifier = SemanticsModifierKt.semantics(suspendPointerInputElement, true, (Function1) rememberedValue2);
                gapComposer.end(false);
            } else {
                z3 = true;
                gapComposer.startReplaceGroup(-1437857391);
                gapComposer.end(false);
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Modifier then = SizeKt.FillWholeMaxSize.then(modifier);
            boolean changed2 = gapComposer.changed(animateFloatAsState) | ((i2 & 14) == 4 ? z3 : false);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ModalBottomSheetKt$$ExternalSyntheticLambda11(j, animateFloatAsState);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ImageKt.Canvas(0, gapComposer, then, (Function1) rememberedValue3);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1437676103);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(j, function0, z, z2, i) { // from class: androidx.compose.material3.ModalBottomSheetKt$$ExternalSyntheticLambda12
                public final /* synthetic */ long f$0;
                public final /* synthetic */ Function0 f$1;
                public final /* synthetic */ boolean f$2;
                public final /* synthetic */ boolean f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    ModalBottomSheetKt.m349ScrimKTwxG1Y(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final float calculatePredictiveBackScaleX(ReusableGraphicsLayerScope reusableGraphicsLayerScope, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size >> 32));
        if (Float.isNaN(intBitsToFloat) || intBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (DBUtil.lerp(0.0f, Math.min(reusableGraphicsLayerScope.graphicsDensity.getDensity() * 48.0f, intBitsToFloat), f) / intBitsToFloat);
    }

    public static final float calculatePredictiveBackScaleY(ReusableGraphicsLayerScope reusableGraphicsLayerScope, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size & 4294967295L));
        if (Float.isNaN(intBitsToFloat) || intBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (DBUtil.lerp(0.0f, Math.min(reusableGraphicsLayerScope.graphicsDensity.getDensity() * 24.0f, intBitsToFloat), f) / intBitsToFloat);
    }

    public static final SheetState rememberModalBottomSheetState(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new TextKt$$ExternalSyntheticLambda1(7);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Function1 function1 = (Function1) rememberedValue;
        TweenSpec tweenSpec = SheetDefaultsKt.BottomSheetAnimationSpec;
        final float f = BottomSheetDefaults.PositionalThreshold;
        final float f2 = BottomSheetDefaults.VelocityThreshold;
        GapComposer gapComposer2 = (GapComposer) composer;
        final Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
        boolean changed = gapComposer2.changed(density) | gapComposer2.changed(f);
        Object rememberedValue2 = gapComposer2.rememberedValue();
        final int i = 0;
        if (changed || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new Function0() { // from class: androidx.compose.material3.SheetDefaultsKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float mo177toPx0680j_4;
                    int i2 = i;
                    float f3 = f;
                    Density density2 = density;
                    switch (i2) {
                        case 0:
                            mo177toPx0680j_4 = density2.mo177toPx0680j_4(f3);
                            break;
                        default:
                            mo177toPx0680j_4 = density2.mo177toPx0680j_4(f3);
                            break;
                    }
                    return Float.valueOf(mo177toPx0680j_4);
                }
            };
            gapComposer2.updateRememberedValue(rememberedValue2);
        }
        Function0 function0 = (Function0) rememberedValue2;
        boolean changed2 = gapComposer2.changed(density) | gapComposer2.changed(f2);
        Object rememberedValue3 = gapComposer2.rememberedValue();
        final int i2 = 1;
        if (changed2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = new Function0() { // from class: androidx.compose.material3.SheetDefaultsKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float mo177toPx0680j_4;
                    int i22 = i2;
                    float f3 = f2;
                    Density density2 = density;
                    switch (i22) {
                        case 0:
                            mo177toPx0680j_4 = density2.mo177toPx0680j_4(f3);
                            break;
                        default:
                            mo177toPx0680j_4 = density2.mo177toPx0680j_4(f3);
                            break;
                    }
                    return Float.valueOf(mo177toPx0680j_4);
                }
            };
            gapComposer2.updateRememberedValue(rememberedValue3);
        }
        Function0 function02 = (Function0) rememberedValue3;
        Object[] objArr = {false, function1, Boolean.FALSE};
        WeakCache weakCache = new WeakCache(3, new SaversKt$$ExternalSyntheticLambda0(11), new SimpleActor$$ExternalSyntheticLambda0(function0, function02, function1, 15));
        boolean changed3 = gapComposer2.changed(false) | gapComposer2.changed(function0) | gapComposer2.changed(function02) | gapComposer2.changed(function1) | gapComposer2.changed(false);
        Object rememberedValue4 = gapComposer2.rememberedValue();
        if (changed3 || rememberedValue4 == neverEqualPolicy) {
            GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = new GapComposer$$ExternalSyntheticLambda0(function0, function02, SheetValue.Hidden, function1, 6);
            gapComposer2.updateRememberedValue(gapComposer$$ExternalSyntheticLambda0);
            rememberedValue4 = gapComposer$$ExternalSyntheticLambda0;
        }
        return (SheetState) SaverKt.rememberSaveable(objArr, weakCache, (Function0) rememberedValue4, gapComposer2, 0);
    }
}
