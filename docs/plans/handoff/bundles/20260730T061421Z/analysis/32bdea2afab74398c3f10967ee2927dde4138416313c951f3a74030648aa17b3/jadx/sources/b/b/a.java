package b.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import b.b.g.E0;
import b.b.g.n1;

/* loaded from: classes.dex */
public final class a {
    public static Drawable a(Context context, int i) {
        return E0.c().e(context, i);
    }

    public static InputConnection b(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                }
                if (parent instanceof n1) {
                    editorInfo.hintText = ((n1) parent).a();
                    break;
                }
                parent = parent.getParent();
            }
        }
        return inputConnection;
    }
}
