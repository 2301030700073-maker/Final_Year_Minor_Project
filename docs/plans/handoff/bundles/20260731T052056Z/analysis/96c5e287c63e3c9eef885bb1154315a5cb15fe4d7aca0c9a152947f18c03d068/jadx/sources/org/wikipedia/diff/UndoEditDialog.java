package org.wikipedia.diff;

import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.widget.Button;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UndoEditDialog extends MaterialAlertDialogBuilder {
    public ConnectionPool binding;
    public AlertDialog dialog;

    @Override // okio.PriorityQueue
    public final AlertDialog show() {
        AlertDialog show = super.show();
        this.dialog = show;
        Button button = show.mAlert.mButtonPositive;
        if (button != null) {
            ContextThemeWrapper contextThemeWrapper = ((AlertController.AlertParams) this.array).mContext;
            TypedValue typedValue = new TypedValue();
            if (!contextThemeWrapper.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                return null;
            }
            button.setTextColor(typedValue.data);
        }
        AlertDialog alertDialog = this.dialog;
        alertDialog.getClass();
        return alertDialog;
    }
}
