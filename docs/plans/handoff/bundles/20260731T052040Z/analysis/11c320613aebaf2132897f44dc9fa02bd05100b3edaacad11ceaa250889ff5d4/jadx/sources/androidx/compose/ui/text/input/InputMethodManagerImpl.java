package androidx.compose.ui.text.input;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InputMethodManagerImpl {
    public final View view;

    public InputMethodManagerImpl(View view) {
        this.view = view;
        ResultKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: androidx.compose.ui.text.input.InputMethodManagerImpl$imm$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object systemService = InputMethodManagerImpl.this.view.getContext().getSystemService("input_method");
                systemService.getClass();
                return (InputMethodManager) systemService;
            }
        });
    }
}
