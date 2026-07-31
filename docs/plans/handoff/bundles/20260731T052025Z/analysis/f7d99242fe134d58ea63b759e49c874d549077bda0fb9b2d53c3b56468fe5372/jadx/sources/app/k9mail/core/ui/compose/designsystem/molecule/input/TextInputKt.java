package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda3;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import kotlin.jvm.functions.Function1;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextInputKt {

    /* renamed from: lambda$-481747922, reason: not valid java name */
    public static final ComposableLambdaImpl f14lambda$481747922 = new ComposableLambdaImpl(-481747922, new PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1(1), false);

    public static final void AdvancedTextInput(Function1 function1, Modifier modifier, TextFieldValue textFieldValue, String str, PaddingValuesImpl paddingValuesImpl, boolean z, boolean z2, KeyboardOptions keyboardOptions, Composer composer, int i) {
        boolean z3;
        boolean z4;
        KeyboardOptions keyboardOptions2;
        KeyboardOptions keyboardOptions3;
        boolean z5;
        boolean z6;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(15690874);
        int i2 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(textFieldValue) ? 256 : 128) | 27648 | (gapComposer.changed(str) ? 131072 : 65536) | 918552576;
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                keyboardOptions3 = KeyboardOptions.Default;
                z5 = true;
                z6 = true;
            } else {
                gapComposer.skipToGroupEnd();
                z6 = z;
                z5 = z2;
                keyboardOptions3 = keyboardOptions;
            }
            gapComposer.endDefaults();
            InputLayout(modifier, paddingValuesImpl, str, null, Expect_jvmKt.rememberComposableLambda(-899637857, new FolderListKt$$ExternalSyntheticLambda1(str, textFieldValue, function1, z5, z6, keyboardOptions3), gapComposer), gapComposer, ((i2 >> 3) & 14) | 24624 | ((i2 >> 9) & 896), 8);
            z4 = z5;
            keyboardOptions2 = keyboardOptions3;
            z3 = z6;
        } else {
            gapComposer.skipToGroupEnd();
            z3 = z;
            z4 = z2;
            keyboardOptions2 = keyboardOptions;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DropdownMenuBoxKt$$ExternalSyntheticLambda3(function1, modifier, textFieldValue, str, paddingValuesImpl, z3, z4, keyboardOptions2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CheckboxInput(int r16, int r17, androidx.compose.foundation.layout.PaddingValuesImpl r18, androidx.compose.runtime.Composer r19, androidx.compose.ui.Modifier r20, java.lang.String r21, java.lang.String r22, kotlin.jvm.functions.Function1 r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt.CheckboxInput(int, int, androidx.compose.foundation.layout.PaddingValuesImpl, androidx.compose.runtime.Composer, androidx.compose.ui.Modifier, java.lang.String, java.lang.String, kotlin.jvm.functions.Function1, boolean):void");
    }

    public static final void EmailAddressInput(Function1 function1, Modifier modifier, String str, String str2, boolean z, PaddingValuesImpl paddingValuesImpl, Composer composer, int i) {
        boolean z2;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(975501211);
        int i2 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changed(str) ? 256 : 128) | (gapComposer.changed(str2) ? 2048 : 1024) | 24576;
        boolean z3 = true;
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                z3 = z;
            }
            gapComposer.endDefaults();
            boolean z4 = z3;
            InputLayout(modifier, paddingValuesImpl, str2, null, Expect_jvmKt.rememberComposableLambda(1163586838, new PasswordInputKt$$ExternalSyntheticLambda0(str2, str, function1, z4, 1), gapComposer), gapComposer, 24630 | ((i2 >> 3) & 896), 8);
            z2 = z4;
        } else {
            gapComposer.skipToGroupEnd();
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidMenu_androidKt$$ExternalSyntheticLambda2(function1, modifier, str, str2, z2, paddingValuesImpl, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void InputLayout(androidx.compose.ui.Modifier r19, androidx.compose.foundation.layout.PaddingValues r20, java.lang.String r21, java.lang.String r22, androidx.compose.runtime.internal.ComposableLambdaImpl r23, androidx.compose.runtime.Composer r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt.InputLayout(androidx.compose.ui.Modifier, androidx.compose.foundation.layout.PaddingValues, java.lang.String, java.lang.String, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NumberInput(kotlin.jvm.functions.Function1 r15, androidx.compose.ui.Modifier r16, java.lang.Long r17, java.lang.String r18, boolean r19, java.lang.String r20, androidx.compose.foundation.layout.PaddingValuesImpl r21, androidx.compose.runtime.Composer r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt.NumberInput(kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, java.lang.Long, java.lang.String, boolean, java.lang.String, androidx.compose.foundation.layout.PaddingValuesImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void PasswordInput(int r16, int r17, androidx.compose.foundation.layout.PaddingValuesImpl r18, androidx.compose.runtime.Composer r19, androidx.compose.ui.Modifier r20, java.lang.String r21, java.lang.String r22, kotlin.jvm.functions.Function1 r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt.PasswordInput(int, int, androidx.compose.foundation.layout.PaddingValuesImpl, androidx.compose.runtime.Composer, androidx.compose.ui.Modifier, java.lang.String, java.lang.String, kotlin.jvm.functions.Function1, boolean):void");
    }

    public static final void SelectInput(ImmutableList immutableList, Object obj, Function1 function1, Modifier modifier, Function1 function12, String str, PaddingValuesImpl paddingValuesImpl, Composer composer, int i, int i2) {
        Function1 function13;
        int i3;
        Modifier modifier2;
        Function1 function14;
        Function1 function15;
        Modifier modifier3;
        immutableList.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-284234097);
        int i4 = i | (gapComposer.changed(immutableList) ? 4 : 2) | (gapComposer.changed(obj) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128);
        int i5 = i4 | 3072;
        int i6 = i2 & 16;
        if (i6 != 0) {
            i3 = i4 | 27648;
            function13 = function12;
        } else {
            function13 = function12;
            i3 = i5 | (gapComposer.changedInstance(function13) ? 16384 : 8192);
        }
        int i7 = i3 | (gapComposer.changed(str) ? 131072 : 65536) | (gapComposer.changed(paddingValuesImpl) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i7 & 1, (599187 & i7) != 599186)) {
            gapComposer.startDefaults();
            int i8 = i & 1;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i8 == 0 || gapComposer.getDefaultsInvalid()) {
                if (i6 != 0) {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new Data$$ExternalSyntheticLambda0(27);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    function13 = (Function1) rememberedValue;
                }
                function15 = function13;
                modifier3 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                function15 = function13;
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            Modifier padding = OffsetKt.padding(companion, paddingValuesImpl);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier then = padding.then(fillElement).then(modifier3);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i9 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextFieldLabelKt.TextFieldOutlinedSelect(immutableList, obj, function1, fillElement, function15, str, false, gapComposer, (i7 & 14) | 3072 | (i7 & 112) | (i7 & 896) | (57344 & i7) | (i7 & 458752));
            gapComposer.end(true);
            modifier2 = modifier3;
            function14 = function15;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            function14 = function13;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(immutableList, obj, function1, modifier2, function14, str, paddingValuesImpl, i, i2);
        }
    }

    public static final void SwitchInput(String str, boolean z, Function1 function1, Modifier modifier, PaddingValuesImpl paddingValuesImpl, Composer composer, int i) {
        PaddingValuesImpl paddingValuesImpl2;
        Modifier modifier2;
        str.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-91424639);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | 27648 | (gapComposer.changed(paddingValuesImpl) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                modifier = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
            }
            Modifier modifier3 = modifier;
            gapComposer.endDefaults();
            InputLayout(modifier3, paddingValuesImpl, null, null, Expect_jvmKt.rememberComposableLambda(214109820, new SwitchInputKt$$ExternalSyntheticLambda0(function1, z, str), gapComposer), gapComposer, ((i2 >> 12) & 112) | 24966, 8);
            paddingValuesImpl2 = paddingValuesImpl;
            modifier2 = modifier3;
        } else {
            paddingValuesImpl2 = paddingValuesImpl;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(str, z, function1, modifier2, paddingValuesImpl2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0232  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TextInput(final kotlin.jvm.functions.Function1 r24, androidx.compose.ui.Modifier r25, java.lang.String r26, final java.lang.String r27, boolean r28, java.lang.String r29, androidx.compose.foundation.layout.PaddingValues r30, boolean r31, boolean r32, androidx.compose.foundation.text.KeyboardOptions r33, androidx.compose.ui.autofill.ContentType r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt.TextInput(kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, java.lang.String, java.lang.String, boolean, java.lang.String, androidx.compose.foundation.layout.PaddingValues, boolean, boolean, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.ui.autofill.ContentType, androidx.compose.runtime.Composer, int, int):void");
    }
}
