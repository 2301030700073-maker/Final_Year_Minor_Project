package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactory;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;

/* compiled from: TextFieldSelectionManager.android.kt */
/* loaded from: classes.dex */
final class TextFieldSelectionManager_androidKt$textFieldMagnifier$1 extends Lambda implements Function3 {
    final /* synthetic */ TextFieldSelectionManager $manager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionManager_androidKt$textFieldMagnifier$1(TextFieldSelectionManager textFieldSelectionManager) {
        super(3);
        this.$manager = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((Modifier) obj, (Composer) obj2, ((Number) obj3).intValue());
    }

    public final Modifier invoke(Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(1980580247);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1980580247, i, -1, "androidx.compose.foundation.text.selection.textFieldMagnifier.<anonymous> (TextFieldSelectionManager.android.kt:48)");
        }
        final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m2479boximpl(IntSize.Companion.m2488getZeroYbymL2g()), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        final MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = composer.changedInstance(this.$manager);
        final TextFieldSelectionManager textFieldSelectionManager = this.$manager;
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    return Offset.m1158boximpl(m578invokeF1C5BW0());
                }

                /* renamed from: invoke-F1C5BW0, reason: not valid java name */
                public final long m578invokeF1C5BW0() {
                    long invoke$lambda$1;
                    TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                    invoke$lambda$1 = TextFieldSelectionManager_androidKt$textFieldMagnifier$1.invoke$lambda$1(mutableState);
                    return TextFieldSelectionManagerKt.m573calculateSelectionMagnifierCenterAndroidO0kMr_c(textFieldSelectionManager2, invoke$lambda$1);
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        Function0 function0 = (Function0) rememberedValue2;
        boolean changed = composer.changed(density);
        Object rememberedValue3 = composer.rememberedValue();
        if (changed || rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new Function1() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Modifier invoke(final Function0 function02) {
                    Modifier m142magnifierjPUL71Q;
                    Modifier.Companion companion2 = Modifier.Companion;
                    Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1.1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            return Offset.m1158boximpl(m579invoketuRUvjQ((Density) obj));
                        }

                        /* renamed from: invoke-tuRUvjQ, reason: not valid java name */
                        public final long m579invoketuRUvjQ(Density density2) {
                            return ((Offset) Function0.this.invoke()).m1176unboximpl();
                        }
                    };
                    final Density density2 = Density.this;
                    final MutableState mutableState2 = mutableState;
                    m142magnifierjPUL71Q = Magnifier_androidKt.m142magnifierjPUL71Q(companion2, function1, (r23 & 2) != 0 ? null : null, (r23 & 4) != 0 ? null : new Function1() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1.2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            m580invokeEaSLcWc(((DpSize) obj).m2454unboximpl());
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke-EaSLcWc, reason: not valid java name */
                        public final void m580invokeEaSLcWc(long j) {
                            MutableState mutableState3 = mutableState2;
                            Density density3 = Density.this;
                            TextFieldSelectionManager_androidKt$textFieldMagnifier$1.invoke$lambda$2(mutableState3, IntSizeKt.IntSize(density3.mo207roundToPx0680j_4(DpSize.m2451getWidthD9Ej5fM(j)), density3.mo207roundToPx0680j_4(DpSize.m2450getHeightD9Ej5fM(j))));
                        }
                    }, (r23 & 8) != 0 ? Float.NaN : 0.0f, (r23 & 16) != 0 ? false : true, (r23 & 32) != 0 ? DpSize.Companion.m2455getUnspecifiedMYxV2XQ() : 0L, (r23 & 64) != 0 ? Dp.Companion.m2433getUnspecifiedD9Ej5fM() : 0.0f, (r23 & 128) != 0 ? Dp.Companion.m2433getUnspecifiedD9Ej5fM() : 0.0f, (r23 & 256) != 0, (r23 & 512) == 0 ? PlatformMagnifierFactory.Companion.getForCurrentPlatform() : null);
                    return m142magnifierjPUL71Q;
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        }
        Modifier animatedSelectionMagnifier = SelectionMagnifierKt.animatedSelectionMagnifier(modifier, function0, (Function1) rememberedValue3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return animatedSelectionMagnifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(MutableState mutableState, long j) {
        mutableState.setValue(IntSize.m2479boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long invoke$lambda$1(MutableState mutableState) {
        return ((IntSize) mutableState.getValue()).m2487unboximpl();
    }
}
