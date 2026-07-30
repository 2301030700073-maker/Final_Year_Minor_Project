package androidx.compose.ui.text.input;

import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import kotlin.jvm.functions.Function1;

/* compiled from: NullableInputConnectionWrapper.android.kt */
/* loaded from: classes.dex */
class NullableInputConnectionWrapperApi25 extends NullableInputConnectionWrapperApi24 {
    public NullableInputConnectionWrapperApi25(InputConnection inputConnection, Function1 function1) {
        super(inputConnection, function1);
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        boolean commitContent;
        InputConnection delegate = getDelegate();
        if (delegate == null) {
            return false;
        }
        commitContent = delegate.commitContent(inputContentInfo, i, bundle);
        return commitContent;
    }
}
