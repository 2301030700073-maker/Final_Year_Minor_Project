package com.reactnativekeyboardcontroller.extensions;

import android.view.ViewTreeObserver;
import android.widget.EditText;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditText.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u008b\u0001\u0010\u0004\u001a\u0086\u0001\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010\u0018\u001a\u00020\u0010J\u0006\u0010\u0019\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0093\u0001\u0010\u0004\u001a\u0086\u0001\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/reactnativekeyboardcontroller/extensions/KeyboardControllerSelectionWatcher;", "", "editText", "Landroid/widget/EditText;", "action", "Lkotlin/Function6;", "", "Lkotlin/ParameterName;", "name", "start", "end", "", "startX", "startY", "endX", "endY", "", "<init>", "(Landroid/widget/EditText;Lkotlin/jvm/functions/Function6;)V", "lastSelectionStart", "lastSelectionEnd", "lastEditTextHeight", "preDrawListener", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "setup", "destroy", "react-native-keyboard-controller_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class KeyboardControllerSelectionWatcher {
    private final Function6<Integer, Integer, Double, Double, Double, Double, Unit> action;
    private final EditText editText;
    private int lastEditTextHeight;
    private int lastSelectionEnd;
    private int lastSelectionStart;
    private final ViewTreeObserver.OnPreDrawListener preDrawListener;

    /* JADX WARN: Multi-variable type inference failed */
    public KeyboardControllerSelectionWatcher(EditText editText, Function6<? super Integer, ? super Integer, ? super Double, ? super Double, ? super Double, ? super Double, Unit> action) {
        Intrinsics.checkNotNullParameter(editText, "editText");
        Intrinsics.checkNotNullParameter(action, "action");
        this.editText = editText;
        this.action = action;
        this.lastSelectionStart = -1;
        this.lastSelectionEnd = -1;
        this.lastEditTextHeight = -1;
        this.preDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.reactnativekeyboardcontroller.extensions.KeyboardControllerSelectionWatcher$preDrawListener$1
            /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
            
                if (r7 != r3) goto L11;
             */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onPreDraw() {
                /*
                    Method dump skipped, instructions count: 312
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.reactnativekeyboardcontroller.extensions.KeyboardControllerSelectionWatcher$preDrawListener$1.onPreDraw():boolean");
            }
        };
    }

    public final void setup() {
        this.editText.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
    }

    public final void destroy() {
        this.editText.getViewTreeObserver().removeOnPreDrawListener(this.preDrawListener);
    }
}
