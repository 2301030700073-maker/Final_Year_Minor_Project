package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.TextFieldDecorator;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;

/* compiled from: BasicTextField.kt */
/* loaded from: classes.dex */
public abstract class BasicTextFieldKt {
    private static final TextFieldDecorator DefaultTextFieldDecorator = new TextFieldDecorator() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$DefaultTextFieldDecorator$1
    };
    private static final long MinTouchTargetSizeForHandles;

    static {
        float f = 40;
        MinTouchTargetSizeForHandles = DpKt.m2435DpSizeYgX7TsA(Dp.m2424constructorimpl(f), Dp.m2424constructorimpl(f));
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0363  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void BasicTextField(final androidx.compose.ui.text.input.TextFieldValue r37, final kotlin.jvm.functions.Function1 r38, androidx.compose.ui.Modifier r39, boolean r40, boolean r41, androidx.compose.ui.text.TextStyle r42, androidx.compose.foundation.text.KeyboardOptions r43, androidx.compose.foundation.text.KeyboardActions r44, boolean r45, int r46, int r47, androidx.compose.ui.text.input.VisualTransformation r48, kotlin.jvm.functions.Function1 r49, androidx.compose.foundation.interaction.MutableInteractionSource r50, androidx.compose.ui.graphics.Brush r51, kotlin.jvm.functions.Function3 r52, androidx.compose.runtime.Composer r53, final int r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextFieldKt.BasicTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
