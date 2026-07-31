package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.DpKt;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BasicTextFieldKt {
    static {
        DpKt.m695DpSizeYgX7TsA(40.0f, 40.0f);
    }

    public static final void BasicTextField(final String str, final Function1 function1, final Modifier modifier, final boolean z, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z2, final int i, final int i2, final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0, Function1 function12, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final SolidColor solidColor, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i3) {
        final Function1 function13;
        Function1 function14;
        gapComposer.startRestartGroup(2026950908);
        int i4 = i3 | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changed(false) ? 16384 : 8192) | (gapComposer.changed(textStyle) ? 131072 : 65536) | (gapComposer.changed(keyboardOptions) ? 1048576 : 524288) | (gapComposer.changed(keyboardActions) ? 8388608 : 4194304) | (gapComposer.changed(z2) ? 67108864 : 33554432) | (gapComposer.changed(i) ? 536870912 : 268435456);
        int i5 = 196608 | (gapComposer.changed(i2) ? 4 : 2) | (gapComposer.changed(visualTransformation$Companion$$ExternalSyntheticLambda0) ? 32 : 16) | 384 | (gapComposer.changed(mutableInteractionSourceImpl) ? 2048 : 1024) | (gapComposer.changed(solidColor) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 74899) == 74898) ? false : true)) {
            gapComposer.startDefaults();
            int i6 = i3 & 1;
            Object obj = Composer$Companion.Empty;
            if (i6 == 0 || gapComposer.getDefaultsInvalid()) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == obj) {
                    rememberedValue = new BasicTextKt$$ExternalSyntheticLambda3(24);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                function14 = (Function1) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
                function14 = function12;
            }
            gapComposer.endDefaults();
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.mutableStateOf$default(new TextFieldValue(6, 0L, str));
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            TextFieldValue textFieldValue = (TextFieldValue) mutableState.getValue();
            TextFieldValue textFieldValue2 = new TextFieldValue(new AnnotatedString(str), textFieldValue.selection, textFieldValue.composition);
            boolean changed = gapComposer.changed(textFieldValue2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == obj) {
                rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(10, textFieldValue2, mutableState);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.SideEffect((Function0) rememberedValue3, gapComposer);
            boolean z3 = (i4 & 14) == 4;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == obj) {
                rememberedValue4 = Updater.mutableStateOf$default(str);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Object obj2 = (MutableState) rememberedValue4;
            keyboardOptions.getClass();
            int i7 = keyboardOptions.keyboardType;
            KeyboardType keyboardType = new KeyboardType(i7);
            if (i7 == 0) {
                keyboardType = null;
            }
            int i8 = keyboardType != null ? keyboardType.value : 1;
            int i9 = keyboardOptions.imeAction;
            ImeAction imeAction = i9 == -1 ? null : new ImeAction(i9);
            ImeOptions imeOptions = new ImeOptions(z2, 0, true, i8, imeAction != null ? imeAction.value : 1, LocaleList.Empty);
            boolean z4 = false;
            boolean z5 = !z2;
            int i10 = z2 ? 1 : i2;
            int i11 = z2 ? 1 : i;
            boolean changed2 = gapComposer.changed(obj2);
            if ((i4 & 112) == 32) {
                z4 = true;
            }
            boolean z6 = changed2 | z4;
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (z6 || rememberedValue5 == obj) {
                rememberedValue5 = new UtilsKt$$ExternalSyntheticLambda1(function1, mutableState, obj2, 3);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            int i12 = i5 << 9;
            function13 = function14;
            BasicTextKt.CoreTextField(textFieldValue2, (Function1) rememberedValue5, modifier, textStyle, visualTransformation$Companion$$ExternalSyntheticLambda0, function13, mutableInteractionSourceImpl, solidColor, z5, i11, i10, imeOptions, keyboardActions, z, composableLambdaImpl, gapComposer, (i4 & 896) | ((i4 >> 6) & 7168) | (i12 & 57344) | 196608 | (3670016 & i12) | (i12 & 29360128), ((i4 >> 15) & 896) | (i4 & 7168) | (i4 & 57344) | 196608);
        } else {
            gapComposer.skipToGroupEnd();
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(str, function1, modifier, z, textStyle, keyboardOptions, keyboardActions, z2, i, i2, visualTransformation$Companion$$ExternalSyntheticLambda0, function13, mutableInteractionSourceImpl, solidColor, composableLambdaImpl, i3) { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda3
                public final /* synthetic */ String f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ int f$10;
                public final /* synthetic */ VisualTransformation$Companion$$ExternalSyntheticLambda0 f$11;
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
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    BasicTextFieldKt.BasicTextField(this.f$0, this.f$1, this.f$2, this.f$3, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, this.f$15, (GapComposer) obj3, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
