package androidx.compose.material3;

import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SnackbarKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Function2 f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ Function2 f$2;
    public final /* synthetic */ Shape f$4;
    public final /* synthetic */ long f$5;
    public final /* synthetic */ long f$6;
    public final /* synthetic */ long f$7;
    public final /* synthetic */ long f$8;
    public final /* synthetic */ ComposableLambdaImpl f$9;

    public /* synthetic */ SnackbarKt$$ExternalSyntheticLambda1(Modifier modifier, Function2 function2, Function2 function22, Shape shape, long j, long j2, long j3, long j4, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = modifier;
        this.f$1 = function2;
        this.f$2 = function22;
        this.f$4 = shape;
        this.f$5 = j;
        this.f$6 = j2;
        this.f$7 = j3;
        this.f$8 = j4;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i;
        Function2 function2;
        long j;
        long j2;
        long j3;
        ComposableLambdaImpl composableLambdaImpl;
        Function2 function22;
        ((Integer) obj2).getClass();
        int updateChangedFlags = Updater.updateChangedFlags(this.f$10 | 1);
        GapComposer gapComposer = (GapComposer) ((Composer) obj);
        gapComposer.startRestartGroup(-1218779924);
        int i2 = updateChangedFlags & 6;
        Modifier modifier = this.f$0;
        if (i2 == 0) {
            i = (gapComposer.changed(modifier) ? 4 : 2) | updateChangedFlags;
        } else {
            i = updateChangedFlags;
        }
        int i3 = updateChangedFlags & 48;
        final Function2 function23 = this.f$1;
        if (i3 == 0) {
            i |= gapComposer.changedInstance(function23) ? 32 : 16;
        }
        int i4 = updateChangedFlags & 384;
        final Function2 function24 = this.f$2;
        if (i4 == 0) {
            i |= gapComposer.changedInstance(function24) ? 256 : 128;
        }
        if ((updateChangedFlags & 3072) == 0) {
            i |= gapComposer.changed(false) ? 2048 : 1024;
        }
        int i5 = updateChangedFlags & 24576;
        Shape shape = this.f$4;
        if (i5 == 0) {
            i |= gapComposer.changed(shape) ? 16384 : 8192;
        }
        int i6 = 196608 & updateChangedFlags;
        long j4 = this.f$5;
        if (i6 == 0) {
            i |= gapComposer.changed(j4) ? 131072 : 65536;
        }
        int i7 = 1572864 & updateChangedFlags;
        long j5 = this.f$6;
        if (i7 == 0) {
            i |= gapComposer.changed(j5) ? 1048576 : 524288;
        }
        int i8 = 12582912 & updateChangedFlags;
        long j6 = j4;
        final long j7 = this.f$7;
        if (i8 == 0) {
            i |= gapComposer.changed(j7) ? 8388608 : 4194304;
        }
        int i9 = 100663296 & updateChangedFlags;
        final long j8 = this.f$8;
        if (i9 == 0) {
            i |= gapComposer.changed(j8) ? 67108864 : 33554432;
        }
        int i10 = 805306368 & updateChangedFlags;
        final ComposableLambdaImpl composableLambdaImpl2 = this.f$9;
        if (i10 == 0) {
            i |= gapComposer.changedInstance(composableLambdaImpl2) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i & 1, (306783379 & i) != 306783378)) {
            gapComposer.startDefaults();
            if ((updateChangedFlags & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            float f = ListTokens.ContainerElevation$2;
            Function2 function25 = new Function2() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Composer composer = (Composer) obj3;
                    int intValue = ((Number) obj4).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        TextStyle value = TypographyKt.getValue(ListTokens.SupportingTextFont$2, gapComposer2);
                        final TextStyle value2 = TypographyKt.getValue(ListTokens.ActionLabelTextFont$1, gapComposer2);
                        ProvidedValue defaultProvidedValue$runtime = TextKt.LocalTextStyle.defaultProvidedValue$runtime(value);
                        final long j9 = j7;
                        final long j10 = j8;
                        final Function2 function26 = Function2.this;
                        final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                        final Function2 function27 = function24;
                        Updater.CompositionLocalProvider(defaultProvidedValue$runtime, Expect_jvmKt.rememberComposableLambda(969655473, new Function2() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                Composer composer2 = (Composer) obj5;
                                int intValue2 = ((Number) obj6).intValue();
                                GapComposer gapComposer3 = (GapComposer) composer2;
                                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer3.startReplaceGroup(-168976609);
                                    CardKt.m332OneRowSnackbarkKq0p4A(composableLambdaImpl3, Function2.this, function27, value2, j9, j10, gapComposer3, 0);
                                    gapComposer3.end(false);
                                } else {
                                    gapComposer3.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 56);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            };
            function22 = function23;
            function2 = function24;
            j = j7;
            j2 = j8;
            composableLambdaImpl = composableLambdaImpl2;
            j3 = j5;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1343524879, function25, gapComposer);
            int i11 = (i & 14) | 12779520;
            int i12 = i >> 9;
            SurfaceKt.m357SurfaceT9BRK9s(modifier, shape, j6, j3, 0.0f, f, null, rememberComposableLambda, gapComposer, (i12 & 7168) | i11 | (i12 & 112) | (i12 & 896), 80);
            j6 = j6;
        } else {
            function2 = function24;
            j = j7;
            j2 = j8;
            j3 = j5;
            composableLambdaImpl = composableLambdaImpl2;
            function22 = function23;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SnackbarKt$$ExternalSyntheticLambda1(modifier, function22, function2, shape, j6, j3, j, j2, composableLambdaImpl, updateChangedFlags);
        }
        return Unit.INSTANCE;
    }
}
