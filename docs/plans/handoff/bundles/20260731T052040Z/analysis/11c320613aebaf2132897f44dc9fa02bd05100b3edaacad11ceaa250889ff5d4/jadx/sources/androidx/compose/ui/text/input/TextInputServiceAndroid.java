package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.view.Choreographer;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import java.util.ArrayList;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextInputServiceAndroid {
    public final View view;

    public TextInputServiceAndroid(View view, AndroidComposeView androidComposeView) {
        new InputMethodManagerImpl(view);
        Choreographer.getInstance();
        this.view = view;
        long j = TextRange.Zero;
        int length = new AnnotatedString("").text.length();
        int i = TextRange.$r8$clinit;
        int i2 = (int) (j >> 32);
        int i3 = i2 < 0 ? 0 : i2;
        i3 = i3 > length ? length : i3;
        int i4 = (int) (j & 4294967295L);
        int i5 = i4 >= 0 ? i4 : 0;
        length = i5 <= length ? i5 : length;
        if (i3 != i2 || length != i4) {
            ParagraphKt.TextRange(i3, length);
        }
        int i6 = ImeOptions.$r8$clinit;
        new ArrayList();
        ResultKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$baseInputConnection$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new BaseInputConnection(TextInputServiceAndroid.this.view, false);
            }
        });
        new CursorAnchorInfo.Builder();
        new Matrix();
    }
}
