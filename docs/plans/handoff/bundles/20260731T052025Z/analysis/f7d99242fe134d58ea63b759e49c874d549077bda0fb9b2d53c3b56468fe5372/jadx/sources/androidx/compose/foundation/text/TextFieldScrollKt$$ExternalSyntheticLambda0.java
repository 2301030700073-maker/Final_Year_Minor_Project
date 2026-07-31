package androidx.compose.foundation.text;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldScrollKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ TextFieldScrollKt$$ExternalSyntheticLambda0(TextFieldScrollerPosition textFieldScrollerPosition, boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        this.f$0 = textFieldScrollerPosition;
        this.f$1 = z;
        this.f$3 = mutableInteractionSourceImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        boolean z = this.f$1;
        Object obj4 = this.f$3;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj5;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = textFieldScrollerPosition.orientation$delegate;
                MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) obj4;
                ((Integer) obj3).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-2137546592);
                boolean z2 = ((Orientation) parcelableSnapshotMutableState.getValue()) == Orientation.Vertical || !(gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection) == LayoutDirection.Rtl);
                boolean changed = gapComposer.changed(textFieldScrollerPosition);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new TorchControl$$ExternalSyntheticLambda1(22, textFieldScrollerPosition);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState rememberUpdatedState = Updater.rememberUpdatedState((Function1) rememberedValue, gapComposer);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    DefaultScrollableState defaultScrollableState = new DefaultScrollableState(new BasicTextKt$$ExternalSyntheticLambda0(rememberUpdatedState, 1));
                    gapComposer.updateRememberedValue(defaultScrollableState);
                    rememberedValue2 = defaultScrollableState;
                }
                ScrollableState scrollableState = (ScrollableState) rememberedValue2;
                boolean changed2 = gapComposer.changed(scrollableState) | gapComposer.changed(textFieldScrollerPosition);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new ScrollableState(textFieldScrollerPosition) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                        public final DerivedSnapshotState canScrollBackward$delegate;
                        public final DerivedSnapshotState canScrollForward$delegate;

                        {
                            final int i2 = 0;
                            this.canScrollForward$delegate = Updater.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i3 = i2;
                                    TextFieldScrollerPosition textFieldScrollerPosition2 = textFieldScrollerPosition;
                                    switch (i3) {
                                        case 0:
                                            return Boolean.valueOf(textFieldScrollerPosition2.offset$delegate.getFloatValue() < textFieldScrollerPosition2.maximum$delegate.getFloatValue());
                                        default:
                                            return Boolean.valueOf(textFieldScrollerPosition2.offset$delegate.getFloatValue() > 0.0f);
                                    }
                                }
                            });
                            final int i3 = 1;
                            this.canScrollBackward$delegate = Updater.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i32 = i3;
                                    TextFieldScrollerPosition textFieldScrollerPosition2 = textFieldScrollerPosition;
                                    switch (i32) {
                                        case 0:
                                            return Boolean.valueOf(textFieldScrollerPosition2.offset$delegate.getFloatValue() < textFieldScrollerPosition2.maximum$delegate.getFloatValue());
                                        default:
                                            return Boolean.valueOf(textFieldScrollerPosition2.offset$delegate.getFloatValue() > 0.0f);
                                    }
                                }
                            });
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final float dispatchRawDelta(float f) {
                            return ScrollableState.this.dispatchRawDelta(f);
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean getCanScrollBackward() {
                            return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean getCanScrollForward() {
                            return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean isScrollInProgress() {
                            return ScrollableState.this.isScrollInProgress();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final Object scroll(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
                            return ScrollableState.this.scroll(mutatePriority, function2, continuation);
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Modifier scrollable$default = ScrollableKt.scrollable$default((TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) rememberedValue3, (Orientation) parcelableSnapshotMutableState.getValue(), z && textFieldScrollerPosition.maximum$delegate.getFloatValue() != 0.0f, z2, mutableInteractionSourceImpl);
                gapComposer.end(false);
                return scrollable$default;
            default:
                ImmutableList immutableList = (ImmutableList) obj5;
                Function1 function1 = (Function1) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.shouldExecute(1 & intValue, (intValue & 19) != 18)) {
                    MathKt.m983Surface_UMDTes(OffsetKt.consumeWindowInsets(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), paddingValues), null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-1087064638, new MessageListFragmentKt$$ExternalSyntheticLambda3(6, immutableList, function1, z), gapComposer2), gapComposer2, 196608, 30);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ TextFieldScrollKt$$ExternalSyntheticLambda0(ImmutableList immutableList, Function1 function1, boolean z) {
        this.f$0 = immutableList;
        this.f$3 = function1;
        this.f$1 = z;
    }
}
