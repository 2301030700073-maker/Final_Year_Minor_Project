package app.k9mail.core.ui.compose.designsystem.atom.textfield;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda30;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.fsck.k9.activity.setup.AccountSetupCompositionKt$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextFieldLabelKt {
    public static final ComposableLambdaImpl lambda$725874656 = new ComposableLambdaImpl(725874656, new ReleaseConfigKt$$ExternalSyntheticLambda0(7), false);

    public static final void TextFieldLabel(String str, boolean z, Composer composer, int i) {
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-951925955);
        int i2 = (gapComposer2.changed(str) ? 4 : 2) | i | (gapComposer2.changed(z) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer = gapComposer2;
            TextKt.m362TextNvy7gAk(z ? str.concat("*") : str, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262142);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldLabelKt$$ExternalSyntheticLambda0(i, str, z);
        }
    }

    public static final void TextFieldOutlined(final String str, final Function1 function1, final Modifier modifier, final String str2, boolean z, boolean z2, boolean z3, boolean z4, KeyboardOptions keyboardOptions, Composer composer, final int i, final int i2) {
        int i3;
        final boolean z5;
        int i4;
        boolean z6;
        int i5;
        boolean z7;
        int i6;
        GapComposer gapComposer;
        final KeyboardOptions keyboardOptions2;
        final boolean z8;
        final boolean z9;
        final boolean z10;
        Function1 function12;
        str.getClass();
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-612625904);
        int i7 = i | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed(modifier) ? 256 : 128) | (gapComposer2.changed(str2) ? 2048 : 1024);
        int i8 = i7 | 24576;
        int i9 = i2 & 32;
        if (i9 != 0) {
            i3 = i7 | 221184;
        } else {
            i3 = i8 | (gapComposer2.changed(z) ? 131072 : 65536);
        }
        int i10 = 1572864 | i3;
        int i11 = i2 & 128;
        if (i11 != 0) {
            i4 = i3 | 14155776;
            z5 = z2;
        } else {
            z5 = z2;
            i4 = i10 | (gapComposer2.changed(z5) ? 8388608 : 4194304);
        }
        int i12 = i2 & 256;
        if (i12 != 0) {
            i5 = i4 | 100663296;
            z6 = z3;
        } else {
            z6 = z3;
            i5 = i4 | (gapComposer2.changed(z6) ? 67108864 : 33554432);
        }
        int i13 = i2 & 512;
        if (i13 != 0) {
            i6 = i5 | 805306368;
            z7 = z4;
        } else {
            z7 = z4;
            i6 = i5 | (gapComposer2.changed(z7) ? 536870912 : 268435456);
        }
        int i14 = i2 & 1024;
        int i15 = i14 != 0 ? 6 : gapComposer2.changed(keyboardOptions) ? 4 : 2;
        if (gapComposer2.shouldExecute(i6 & 1, ((i6 & 306783379) == 306783378 && (i15 & 3) == 2) ? false : true)) {
            boolean z11 = i9 != 0 ? true : z;
            if (i11 != 0) {
                z5 = false;
            }
            boolean z12 = i12 == 0 ? z6 : false;
            boolean z13 = i13 != 0 ? true : z7;
            KeyboardOptions keyboardOptions3 = i14 != 0 ? KeyboardOptions.Default : keyboardOptions;
            if (z13) {
                Regex regex = TextFieldCommonKt.LINE_BREAK;
                function12 = new NavHostKt$$ExternalSyntheticLambda14(4, function1);
            } else {
                function12 = function1;
            }
            int i16 = i6 >> 6;
            gapComposer = gapComposer2;
            CardKt.OutlinedTextField(str, function12, modifier, z11, false, null, TextFieldCommonKt.selectLabel(str2, z5), null, z12, null, keyboardOptions3, null, z13, 0, 0, null, null, null, gapComposer, (i6 & 910) | (i16 & 7168) | 805330944, ((i6 >> 15) & 7168) | (458752 & (i15 << 15)) | (i16 & 29360128), 0, 8215968);
            z10 = z11;
            z9 = z12;
            keyboardOptions2 = keyboardOptions3;
            z8 = z13;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            keyboardOptions2 = keyboardOptions;
            z8 = z7;
            z9 = z6;
            z10 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(str, function1, modifier, str2, z10, z5, z9, z8, keyboardOptions2, i, i2) { // from class: app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldOutlinedKt$$ExternalSyntheticLambda1
                public final /* synthetic */ String f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ KeyboardOptions f$10;
                public final /* synthetic */ int f$13;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ String f$3;
                public final /* synthetic */ boolean f$5;
                public final /* synthetic */ boolean f$7;
                public final /* synthetic */ boolean f$8;
                public final /* synthetic */ boolean f$9;

                {
                    this.f$13 = i2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    TextFieldLabelKt.TextFieldOutlined(this.f$0, this.f$1, this.f$2, this.f$3, this.f$5, this.f$7, this.f$8, this.f$9, this.f$10, (Composer) obj, updateChangedFlags, this.f$13);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void TextFieldOutlinedEmailAddress(final String str, final Function1 function1, final Modifier modifier, final String str2, boolean z, boolean z2, Composer composer, final int i, final int i2) {
        boolean z3;
        int i3;
        boolean z4;
        int i4;
        GapComposer gapComposer;
        final boolean z5;
        final boolean z6;
        int i5;
        boolean z7;
        str.getClass();
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1275609062);
        int i6 = 4;
        int i7 = (gapComposer2.changed(str) ? 4 : 2) | i | (gapComposer2.changedInstance(function1) ? 32 : 16);
        if ((i & 384) == 0) {
            i7 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        int i8 = i7 | (gapComposer2.changed(str2) ? 2048 : 1024);
        int i9 = i2 & 16;
        if (i9 != 0) {
            i3 = i8 | 24576;
            z3 = z;
        } else {
            z3 = z;
            i3 = i8 | (gapComposer2.changed(z3) ? 16384 : 8192);
        }
        int i10 = 1769472 | i3;
        int i11 = i2 & 128;
        if (i11 != 0) {
            i4 = i3 | 14352384;
            z4 = z2;
        } else {
            z4 = z2;
            i4 = i10 | (gapComposer2.changed(z4) ? 8388608 : 4194304);
        }
        if (gapComposer2.shouldExecute(i4 & 1, (4793491 & i4) != 4793490)) {
            if (i9 != 0) {
                i5 = i11;
                z7 = true;
            } else {
                i5 = i11;
                z7 = z3;
            }
            boolean z8 = i5 != 0 ? false : z4;
            Regex regex = TextFieldCommonKt.LINE_BREAK;
            NavHostKt$$ExternalSyntheticLambda14 navHostKt$$ExternalSyntheticLambda14 = new NavHostKt$$ExternalSyntheticLambda14(i6, function1);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Data$$ExternalSyntheticLambda0(20);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            gapComposer = gapComposer2;
            CardKt.OutlinedTextField(str, navHostKt$$ExternalSyntheticLambda14, SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue), z7, false, null, TextFieldCommonKt.selectLabel(str2, false), null, z8, null, new KeyboardOptions(6, 121), null, true, 0, 0, null, null, null, gapComposer, (i4 & 14) | ((i4 >> 3) & 7168) | 24576, ((i4 >> 12) & 7168) | 12779520, 0, 8216480);
            z6 = z7;
            z5 = z8;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            z5 = z4;
            z6 = z3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TextFieldLabelKt.TextFieldOutlinedEmailAddress(str, function1, modifier, str2, z6, z5, (Composer) obj, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void TextFieldOutlinedFakeSelect(String str, Function0 function0, Modifier modifier, String str2, Composer composer, int i) {
        String str3;
        int i2;
        GapComposer gapComposer;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-492297033);
        int i3 = 2;
        if ((i & 6) == 0) {
            str3 = str;
            i2 = (gapComposer2.changed(str3) ? 4 : 2) | i;
        } else {
            str3 = str;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(str2) ? 2048 : 1024;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new Data$$ExternalSyntheticLambda0(21);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Modifier then = SizeKt.FillWholeMaxWidth.then(modifier);
            Continuation continuation = null;
            ComposableLambdaImpl composableLambdaImpl = str2 != null ? new ComposableLambdaImpl(336333914, new LoadingItemKt$$ExternalSyntheticLambda0(str2, i3), true) : null;
            gapComposer2.startReplaceGroup(-651028521);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new MutableInteractionSourceImpl();
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue2;
            boolean changed = gapComposer2.changed(mutableInteractionSourceImpl) | ((i2 & 112) == 32);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changed || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new BlockRunner$maybeRun$1(mutableInteractionSourceImpl, function0, continuation, 21);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer2, mutableInteractionSourceImpl, (Function2) rememberedValue3);
            gapComposer2.end(false);
            gapComposer = gapComposer2;
            ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
            CardKt.OutlinedTextField(str3, function1, then, false, true, null, composableLambdaImpl2, lambda$725874656, false, null, null, null, true, 0, 0, mutableInteractionSourceImpl, null, null, gapComposer, (i2 & 14) | 805330992, 12582912, 0, 7208360);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(str, function0, modifier, str2, i, 3);
        }
    }

    public static final void TextFieldOutlinedNumber(Long l, Function1 function1, Modifier modifier, String str, boolean z, boolean z2, boolean z3, Composer composer, int i) {
        GapComposer gapComposer;
        boolean z4;
        String str2;
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1350255907);
        int i2 = i | (gapComposer2.changed(l) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed(str) ? 2048 : 1024) | 221184 | (gapComposer2.changed(z2) ? 1048576 : 524288) | (gapComposer2.changed(z3) ? 8388608 : 4194304);
        if (gapComposer2.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            if (l == null || (str2 = String.valueOf(l.longValue())) == null) {
                str2 = "";
            }
            ComposableLambdaImpl selectLabel = TextFieldCommonKt.selectLabel(str, z2);
            KeyboardOptions keyboardOptions = new KeyboardOptions(8, 123);
            boolean z5 = (i2 & 112) == 32;
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z5 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(5, function1);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            gapComposer = gapComposer2;
            CardKt.OutlinedTextField(str2, (Function1) rememberedValue, modifier, true, false, null, selectLabel, null, z3, null, keyboardOptions, null, true, 0, 0, null, null, null, gapComposer, 28032, ((i2 >> 12) & 7168) | 12779520, 0, 8216480);
            z4 = true;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            z4 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldOutlinedKt$$ExternalSyntheticLambda0(l, function1, modifier, str, z4, z2, z3, i, 1);
        }
    }

    public static final void TextFieldOutlinedPassword(final String str, final Function1 function1, final boolean z, final Function0 function0, final Modifier modifier, String str2, boolean z2, final boolean z3, Composer composer, final int i) {
        int i2;
        String str3;
        boolean z4;
        GapComposer gapComposer;
        str.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(163307260);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            str3 = str2;
            i2 |= gapComposer2.changed(str3) ? 131072 : 65536;
        } else {
            str3 = str2;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer2.changed(true) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer2.changed(false) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            z4 = z2;
            i2 |= gapComposer2.changed(z4) ? 67108864 : 33554432;
        } else {
            z4 = z2;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer2.changed(z3) ? 536870912 : 268435456;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Regex regex = TextFieldCommonKt.LINE_BREAK;
            NavHostKt$$ExternalSyntheticLambda14 navHostKt$$ExternalSyntheticLambda14 = new NavHostKt$$ExternalSyntheticLambda14(i3, function1);
            modifier.getClass();
            gapComposer = gapComposer2;
            int i4 = i2 >> 9;
            CardKt.OutlinedTextField(str, navHostKt$$ExternalSyntheticLambda14, SemanticsModifierKt.semantics(SemanticsModifierKt.semantics(modifier, false, new JsonObject$$ExternalSyntheticLambda0(24)), false, new JsonObject$$ExternalSyntheticLambda0(23)), true, false, null, TextFieldCommonKt.selectLabel(str2, z2), new ComposableLambdaImpl(-1401275962, new CoreTextFieldKt$$ExternalSyntheticLambda17(z, function0), true), z3, z ? VisualTransformation.Companion.None : new PasswordVisualTransformation(), new KeyboardOptions(7, 123), null, true, 0, 0, null, null, null, gapComposer, (i4 & 7168) | (i2 & 14) | (57344 & i4), ((i2 >> 18) & 7168) | 12779520, 0, 8199584);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final String str4 = str3;
            final boolean z5 = z4;
            endRestartGroup.block = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldOutlinedPasswordKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TextFieldLabelKt.TextFieldOutlinedPassword(str, function1, z, function0, modifier, str4, z5, z3, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void TextFieldOutlinedSelect(ImmutableList immutableList, Object obj, Function1 function1, Modifier modifier, Function1 function12, String str, boolean z, Composer composer, int i) {
        int i2;
        Function1 function13;
        String str2;
        GapComposer gapComposer;
        boolean z2;
        immutableList.getClass();
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1383825734);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer2.changed(immutableList) : gapComposer2.changedInstance(immutableList) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer2.changed(obj) : gapComposer2.changedInstance(obj) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            function13 = function12;
            i2 |= gapComposer2.changedInstance(function13) ? 16384 : 8192;
        } else {
            function13 = function12;
        }
        if ((196608 & i) == 0) {
            str2 = str;
            i2 |= gapComposer2.changed(str2) ? 131072 : 65536;
        } else {
            str2 = str;
        }
        int i3 = i2 | 920125440;
        if (gapComposer2.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            boolean z3 = false;
            boolean changed = gapComposer2.changed(false);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new AccountSetupNavHostKt$$ExternalSyntheticLambda30(false, mutableState, 1);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1750513628, new AccountSetupCompositionKt$$ExternalSyntheticLambda1(function13, obj, modifier, str2, z3, mutableState, immutableList, function1), gapComposer2);
            gapComposer = gapComposer2;
            CardKt.ExposedDropdownMenuBox(booleanValue, (Function1) rememberedValue2, null, rememberComposableLambda, gapComposer, 3072, 4);
            z2 = true;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwipeableRowKt$$ExternalSyntheticLambda4(immutableList, obj, function1, modifier, function12, str, z2, i);
        }
    }

    public static final void TextFieldOutlined(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, boolean z2, boolean z3, KeyboardOptions keyboardOptions, Composer composer, int i) {
        GapComposer gapComposer;
        Function1 function12;
        textFieldValue.getClass();
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1719235421);
        int i2 = i | (gapComposer2.changed(textFieldValue) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed((Object) null) ? 2048 : 1024) | 24576 | (gapComposer2.changed(z) ? 131072 : 65536) | 1572864 | (gapComposer2.changed(false) ? 8388608 : 4194304) | (gapComposer2.changed(z2) ? 67108864 : 33554432) | (gapComposer2.changed(z3) ? 536870912 : 268435456);
        int i3 = gapComposer2.changed(keyboardOptions) ? 4 : 2;
        if (gapComposer2.shouldExecute(i2 & 1, ((306783379 & i2) == 306783378 && (i3 & 3) == 2) ? false : true)) {
            if (z3) {
                Regex regex = TextFieldCommonKt.LINE_BREAK;
                function12 = new NavHostKt$$ExternalSyntheticLambda14(3, function1);
            } else {
                function12 = function1;
            }
            int i4 = i2 >> 6;
            gapComposer = gapComposer2;
            CardKt.OutlinedTextField(textFieldValue, function12, modifier, z, null, TextFieldCommonKt.selectLabel(null, false), z2, null, keyboardOptions, null, z3, 0, 0, null, null, gapComposer, (i2 & 910) | (i4 & 7168) | 805330944, ((i2 >> 15) & 7168) | ((i3 << 15) & 458752) | (29360128 & i4));
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldOutlinedKt$$ExternalSyntheticLambda0(textFieldValue, function1, modifier, z, z2, z3, keyboardOptions, i);
        }
    }

    public static final void TextFieldOutlinedPassword(String str, Function1 function1, Modifier modifier, String str2, boolean z, boolean z2, boolean z3, Composer composer, int i) {
        GapComposer gapComposer;
        boolean z4;
        VisualTransformation passwordVisualTransformation;
        str.getClass();
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1121240980);
        int i2 = 4;
        int i3 = i | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | (gapComposer2.changed(str2) ? 2048 : 1024) | 221184 | (gapComposer2.changed(z2) ? 1048576 : 524288) | (gapComposer2.changed(z3) ? 8388608 : 4194304);
        if (gapComposer2.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            Object[] objArr = new Object[0];
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda0(8);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer2, 48);
            Regex regex = TextFieldCommonKt.LINE_BREAK;
            NavHostKt$$ExternalSyntheticLambda14 navHostKt$$ExternalSyntheticLambda14 = new NavHostKt$$ExternalSyntheticLambda14(i2, function1);
            modifier.getClass();
            Modifier semantics = SemanticsModifierKt.semantics(SemanticsModifierKt.semantics(modifier, false, new JsonObject$$ExternalSyntheticLambda0(24)), false, new JsonObject$$ExternalSyntheticLambda0(23));
            ComposableLambdaImpl selectLabel = TextFieldCommonKt.selectLabel(str2, z2);
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            boolean changed = gapComposer2.changed(mutableState);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 10);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-1401275962, new CoreTextFieldKt$$ExternalSyntheticLambda17(booleanValue, (Function0) rememberedValue2), true);
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                passwordVisualTransformation = VisualTransformation.Companion.None;
            } else {
                passwordVisualTransformation = new PasswordVisualTransformation();
            }
            gapComposer = gapComposer2;
            CardKt.OutlinedTextField(str, navHostKt$$ExternalSyntheticLambda14, semantics, true, false, null, selectLabel, composableLambdaImpl, z3, passwordVisualTransformation, new KeyboardOptions(7, 123), null, true, 0, 0, null, null, null, gapComposer, (i3 & 14) | 27648, ((i3 >> 12) & 7168) | 12779520, 0, 8199584);
            z4 = true;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            z4 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldOutlinedKt$$ExternalSyntheticLambda0(str, function1, modifier, str2, z4, z2, z3, i, 2);
        }
    }
}
