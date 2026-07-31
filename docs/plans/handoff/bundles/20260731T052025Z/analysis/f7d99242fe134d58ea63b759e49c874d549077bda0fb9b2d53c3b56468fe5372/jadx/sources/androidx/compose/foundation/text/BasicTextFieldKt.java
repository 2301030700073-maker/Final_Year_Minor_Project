package androidx.compose.foundation.text;

import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.work.OperationKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BasicTextFieldKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        OperationKt.m835DpSizeYgX7TsA(40.0f, 40.0f);
    }

    public static final void BasicTextField(final String str, final Function1 function1, final Modifier modifier, final boolean z, final boolean z2, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z3, final int i, final int i2, final VisualTransformation visualTransformation, Function1 function12, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final SolidColor solidColor, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3) {
        GapComposer gapComposer;
        final Function1 function13;
        Function1 function14;
        Function1 function15;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(2026950908);
        int i4 = i3 | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed(modifier) ? 256 : 128) | (gapComposer2.changed(z) ? 2048 : 1024) | (gapComposer2.changed(z2) ? 16384 : 8192) | (gapComposer2.changed(textStyle) ? 131072 : 65536) | (gapComposer2.changed(keyboardOptions) ? 1048576 : 524288) | (gapComposer2.changed(keyboardActions) ? 8388608 : 4194304) | (gapComposer2.changed(z3) ? 67108864 : 33554432) | (gapComposer2.changed(i) ? 536870912 : 268435456);
        int i5 = 196608 | (gapComposer2.changed(i2) ? 4 : 2) | (gapComposer2.changed(visualTransformation) ? 32 : 16) | 384 | (gapComposer2.changed(mutableInteractionSourceImpl) ? 2048 : 1024) | (gapComposer2.changed(solidColor) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i4 & 1, ((i4 & 306783379) == 306783378 && (74899 & i5) == 74898) ? false : true)) {
            gapComposer2.startDefaults();
            int i6 = i3 & 1;
            Object obj = Composer.Companion.Empty;
            if (i6 == 0 || gapComposer2.getDefaultsInvalid()) {
                Object rememberedValue = gapComposer2.rememberedValue();
                if (rememberedValue == obj) {
                    rememberedValue = new ScrollState$$ExternalSyntheticLambda4(17);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                function14 = (Function1) rememberedValue;
            } else {
                gapComposer2.skipToGroupEnd();
                function14 = function12;
            }
            gapComposer2.endDefaults();
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == obj) {
                function15 = function14;
                rememberedValue2 = Updater.mutableStateOf$default(new TextFieldValue(6, 0L, str));
                gapComposer2.updateRememberedValue(rememberedValue2);
            } else {
                function15 = function14;
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            TextFieldValue m715copy3r_uNRQ$default = TextFieldValue.m715copy3r_uNRQ$default((TextFieldValue) mutableState.getValue(), str);
            boolean changed = gapComposer2.changed(m715copy3r_uNRQ$default);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changed || rememberedValue3 == obj) {
                rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(13, m715copy3r_uNRQ$default, mutableState);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Updater.SideEffect((Function0) rememberedValue3, gapComposer2);
            boolean z4 = (i4 & 14) == 4;
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (z4 || rememberedValue4 == obj) {
                rememberedValue4 = Updater.mutableStateOf$default(str);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            Object obj2 = (MutableState) rememberedValue4;
            ImeOptions imeOptions$foundation = keyboardOptions.toImeOptions$foundation(z3);
            boolean z5 = !z3;
            int i7 = z3 ? 1 : i2;
            int i8 = z3 ? 1 : i;
            boolean changed2 = gapComposer2.changed(obj2) | ((i4 & 112) == 32);
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue5 == obj) {
                rememberedValue5 = new SimpleActor$$ExternalSyntheticLambda0(function1, mutableState, obj2, 5);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            int i9 = i5 << 9;
            gapComposer = gapComposer2;
            Function1 function16 = function15;
            BasicTextKt.CoreTextField(m715copy3r_uNRQ$default, (Function1) rememberedValue5, modifier, textStyle, visualTransformation, function16, mutableInteractionSourceImpl, solidColor, z5, i8, i7, imeOptions$foundation, keyboardActions, z, z2, composableLambdaImpl, gapComposer, (i4 & 896) | ((i4 >> 6) & 7168) | (i9 & 57344) | 196608 | (3670016 & i9) | (i9 & 29360128), ((i4 >> 15) & 896) | (i4 & 7168) | (i4 & 57344) | 196608);
            function13 = function16;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(str, function1, modifier, z, z2, textStyle, keyboardOptions, keyboardActions, z3, i, i2, visualTransformation, function13, mutableInteractionSourceImpl, solidColor, composableLambdaImpl, i3) { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda3
                public final /* synthetic */ String f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ int f$10;
                public final /* synthetic */ VisualTransformation f$11;
                public final /* synthetic */ Function1 f$12;
                public final /* synthetic */ MutableInteractionSourceImpl f$13;
                public final /* synthetic */ SolidColor f$14;
                public final /* synthetic */ ComposableLambdaImpl f$15;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ boolean f$4;
                public final /* synthetic */ TextStyle f$5;
                public final /* synthetic */ KeyboardOptions f$6;
                public final /* synthetic */ KeyboardActions f$7;
                public final /* synthetic */ boolean f$8;
                public final /* synthetic */ int f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    BasicTextFieldKt.BasicTextField(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, this.f$15, (Composer) obj3, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void BasicTextField(final TextFieldValue textFieldValue, final Function1 function1, final Modifier modifier, final boolean z, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z2, final int i, final int i2, final VisualTransformation visualTransformation, Function1 function12, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final SolidColor solidColor, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3) {
        GapComposer gapComposer;
        final Function1 function13;
        Function1 function14;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-971111025);
        int i4 = i3 | (gapComposer2.changed(textFieldValue) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed(modifier) ? 256 : 128) | (gapComposer2.changed(z) ? 2048 : 1024) | (gapComposer2.changed(false) ? 16384 : 8192) | (gapComposer2.changed(textStyle) ? 131072 : 65536) | (gapComposer2.changed(keyboardOptions) ? 1048576 : 524288) | (gapComposer2.changed(keyboardActions) ? 8388608 : 4194304) | (gapComposer2.changed(z2) ? 67108864 : 33554432) | (gapComposer2.changed(i) ? 536870912 : 268435456);
        int i5 = 196608 | (gapComposer2.changed(i2) ? 4 : 2) | (gapComposer2.changed(visualTransformation) ? 32 : 16) | 384 | (gapComposer2.changed(mutableInteractionSourceImpl) ? 2048 : 1024) | (gapComposer2.changed(solidColor) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i4 & 1, ((i4 & 306783379) == 306783378 && (74899 & i5) == 74898) ? false : true)) {
            gapComposer2.startDefaults();
            int i6 = i3 & 1;
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (i6 != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
                function14 = function12;
            } else {
                Object rememberedValue = gapComposer2.rememberedValue();
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ScrollState$$ExternalSyntheticLambda4(17);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                function14 = (Function1) rememberedValue;
            }
            gapComposer2.endDefaults();
            ImeOptions imeOptions$foundation = keyboardOptions.toImeOptions$foundation(z2);
            boolean z3 = !z2;
            int i7 = z2 ? 1 : i2;
            int i8 = z2 ? 1 : i;
            boolean z4 = ((i4 & 14) == 4) | ((i4 & 112) == 32);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z4 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Navigator$$ExternalSyntheticLambda1(4, textFieldValue, function1);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            int i9 = i5 << 9;
            int i10 = (i4 & 910) | ((i4 >> 6) & 7168) | (i9 & 57344) | 196608 | (i9 & 3670016) | (i9 & 29360128);
            int i11 = ((i4 >> 15) & 896) | (i4 & 7168) | (i4 & 57344) | 196608;
            gapComposer = gapComposer2;
            Function1 function15 = function14;
            BasicTextKt.CoreTextField(textFieldValue, (Function1) rememberedValue2, modifier, textStyle, visualTransformation, function15, mutableInteractionSourceImpl, solidColor, z3, i8, i7, imeOptions$foundation, keyboardActions, z, false, composableLambdaImpl, gapComposer, i10, i11);
            function13 = function15;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(function1, modifier, z, textStyle, keyboardOptions, keyboardActions, z2, i, i2, visualTransformation, function13, mutableInteractionSourceImpl, solidColor, composableLambdaImpl, i3) { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda5
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ int f$10;
                public final /* synthetic */ VisualTransformation f$11;
                public final /* synthetic */ Function1 f$12;
                public final /* synthetic */ MutableInteractionSourceImpl f$13;
                public final /* synthetic */ SolidColor f$14;
                public final /* synthetic */ ComposableLambdaImpl f$15;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ TextStyle f$5;
                public final /* synthetic */ KeyboardOptions f$6;
                public final /* synthetic */ KeyboardActions f$7;
                public final /* synthetic */ boolean f$8;
                public final /* synthetic */ int f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    BasicTextFieldKt.BasicTextField(TextFieldValue.this, this.f$1, this.f$2, this.f$3, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, this.f$15, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
