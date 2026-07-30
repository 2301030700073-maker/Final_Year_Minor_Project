package defpackage;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import defpackage.C0378Na;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class YG implements InterfaceC0553Uv {
    @Override // defpackage.InterfaceC0553Uv
    /* renamed from: do */
    public final C0378Na mo2481do(View view, C0378Na c0378Na) {
        CharSequence coerceToStyledText;
        if (Log.isLoggable("ReceiveContent", 3)) {
            Objects.toString(c0378Na);
        }
        if (c0378Na.f2398do.mo1535do() == 2) {
            return c0378Na;
        }
        C0378Na.Ctry ctry = c0378Na.f2398do;
        ClipData mo1538new = ctry.mo1538new();
        int mo1536for = ctry.mo1536for();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z = false;
        for (int i = 0; i < mo1538new.getItemCount(); i++) {
            ClipData.Item itemAt = mo1538new.getItemAt(i);
            if ((mo1536for & 1) != 0) {
                coerceToStyledText = itemAt.coerceToText(context);
                if (coerceToStyledText instanceof Spanned) {
                    coerceToStyledText = coerceToStyledText.toString();
                }
            } else {
                coerceToStyledText = itemAt.coerceToStyledText(context);
            }
            if (coerceToStyledText != null) {
                if (z) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), coerceToStyledText);
                } else {
                    int selectionStart = Selection.getSelectionStart(editable);
                    int selectionEnd = Selection.getSelectionEnd(editable);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(editable, max2);
                    editable.replace(max, max2, coerceToStyledText);
                    z = true;
                }
            }
        }
        return null;
    }
}
