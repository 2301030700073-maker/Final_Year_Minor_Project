package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BottomSheetDefaults {
    public static final BottomSheetDefaults INSTANCE = new BottomSheetDefaults();
    public static final float SheetMaxWidth = 640.0f;
    public static final float PositionalThreshold = 56.0f;
    public static final float VelocityThreshold = 125.0f;

    /* renamed from: DragHandle-lgZ2HuY, reason: not valid java name */
    public final void m324DragHandlelgZ2HuY(Modifier modifier, float f, float f2, Shape shape, long j, Composer composer, final int i) {
        GapComposer gapComposer;
        final Modifier modifier2;
        final float f3;
        final float f4;
        final Shape shape2;
        final long j2;
        Shape shape3;
        long value;
        final float f5;
        final float f6;
        Modifier modifier3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1364277227);
        int i2 = i | 9654;
        int i3 = 1;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                float f7 = ListTokens.DockedDragHandleWidth;
                float f8 = ListTokens.DockedDragHandleHeight;
                shape3 = ((Shapes) gapComposer2.consume(ShapesKt.LocalShapes)).extraLarge;
                value = ColorSchemeKt.getValue(ListTokens.DockedDragHandleColor, gapComposer2);
                f5 = f8;
                f6 = f7;
                modifier3 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer2.skipToGroupEnd();
                modifier3 = modifier;
                f6 = f;
                f5 = f2;
                shape3 = shape;
                value = j;
            }
            gapComposer2.endDefaults();
            String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer2, R.string.m3c_bottom_sheet_drag_handle_description);
            TweenSpec tweenSpec = SheetDefaultsKt.BottomSheetAnimationSpec;
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(modifier3, 0.0f, 22.0f, 1);
            boolean changed = gapComposer2.changed(m371getString2EP1pXo);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new IconKt$$ExternalSyntheticLambda1(m371getString2EP1pXo, i3);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            gapComposer = gapComposer2;
            SurfaceKt.m357SurfaceT9BRK9s(SemanticsModifierKt.semantics(m220paddingVpY3zN4$default, false, (Function1) rememberedValue), shape3, value, 0L, 0.0f, 0.0f, null, Expect_jvmKt.rememberComposableLambda(-1039573072, new Function2() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        BoxKt.Box(SizeKt.m235sizeVpY3zN4(Modifier.Companion.$$INSTANCE, f6, f5), gapComposer3, 0);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer, 12582912, 120);
            f4 = f5;
            shape2 = shape3;
            j2 = value;
            f3 = f6;
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            f3 = f;
            f4 = f2;
            shape2 = shape;
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier2, f3, f4, shape2, j2, i) { // from class: androidx.compose.material3.BottomSheetDefaults$$ExternalSyntheticLambda1
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ float f$2;
                public final /* synthetic */ float f$3;
                public final /* synthetic */ Shape f$4;
                public final /* synthetic */ long f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(196609);
                    BottomSheetDefaults.this.m324DragHandlelgZ2HuY(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
