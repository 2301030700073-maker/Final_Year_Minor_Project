package org.wikipedia.views;

import android.content.Context;
import android.content.DialogInterface;
import android.view.Window;
import android.widget.Button;
import android.widget.RadioButton;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputLayout;
import okio.internal.DefaultSocket;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextInputDialog extends MaterialAlertDialogBuilder {
    public final /* synthetic */ int $r8$classId;
    public Object binding;
    public Object callback;
    public AlertDialog dialog;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextInputDialog(Context context, int i, int i2) {
        super(context, i);
        this.$r8$classId = i2;
    }

    @Override // com.google.android.material.dialog.MaterialAlertDialogBuilder, okio.PriorityQueue
    public final AlertDialog create() {
        switch (this.$r8$classId) {
            case 0:
                AlertDialog create = super.create();
                this.dialog = create;
                final int i = 0;
                create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        Window window;
                        Window window2;
                        int i2 = i;
                        TextInputDialog textInputDialog = (TextInputDialog) this;
                        switch (i2) {
                            case 0:
                                AlertDialog alertDialog = textInputDialog.dialog;
                                if (alertDialog != null && (window = alertDialog.getWindow()) != null) {
                                    window.setSoftInputMode(5);
                                }
                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog.callback;
                                if (defaultSocket != null) {
                                    DefaultSocket defaultSocket2 = (DefaultSocket) textInputDialog.binding;
                                    TextInputLayout textInputLayout = (TextInputLayout) defaultSocket2.sink;
                                    PlainPasteEditText plainPasteEditText = (PlainPasteEditText) defaultSocket2.source;
                                    AlertController.AlertParams alertParams = (AlertController.AlertParams) textInputDialog.array;
                                    textInputLayout.setHint(alertParams.mContext.getResources().getString(R.string.reading_list_name_hint));
                                    ((TextInputLayout) defaultSocket2.closeBits).setHint(alertParams.mContext.getResources().getString(R.string.reading_list_description_hint));
                                    plainPasteEditText.setText((String) defaultSocket.socket);
                                    plainPasteEditText.selectAll();
                                    String str = (String) defaultSocket.closeBits;
                                    if (str == null) {
                                        str = "";
                                    }
                                    ((PlainPasteEditText) defaultSocket2.socket).setText(str);
                                    break;
                                }
                                break;
                            default:
                                AlertDialog alertDialog2 = textInputDialog.dialog;
                                if (alertDialog2 != null && (window2 = alertDialog2.getWindow()) != null) {
                                    window2.setSoftInputMode(5);
                                }
                                ((RadioButton) ((DefaultSocket) textInputDialog.binding).socket).setChecked(true);
                                break;
                        }
                    }
                });
                AlertDialog alertDialog = this.dialog;
                alertDialog.getClass();
                return alertDialog;
            default:
                AlertDialog create2 = super.create();
                this.dialog = create2;
                final int i2 = 1;
                create2.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        Window window;
                        Window window2;
                        int i22 = i2;
                        TextInputDialog textInputDialog = (TextInputDialog) this;
                        switch (i22) {
                            case 0:
                                AlertDialog alertDialog2 = textInputDialog.dialog;
                                if (alertDialog2 != null && (window = alertDialog2.getWindow()) != null) {
                                    window.setSoftInputMode(5);
                                }
                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog.callback;
                                if (defaultSocket != null) {
                                    DefaultSocket defaultSocket2 = (DefaultSocket) textInputDialog.binding;
                                    TextInputLayout textInputLayout = (TextInputLayout) defaultSocket2.sink;
                                    PlainPasteEditText plainPasteEditText = (PlainPasteEditText) defaultSocket2.source;
                                    AlertController.AlertParams alertParams = (AlertController.AlertParams) textInputDialog.array;
                                    textInputLayout.setHint(alertParams.mContext.getResources().getString(R.string.reading_list_name_hint));
                                    ((TextInputLayout) defaultSocket2.closeBits).setHint(alertParams.mContext.getResources().getString(R.string.reading_list_description_hint));
                                    plainPasteEditText.setText((String) defaultSocket.socket);
                                    plainPasteEditText.selectAll();
                                    String str = (String) defaultSocket.closeBits;
                                    if (str == null) {
                                        str = "";
                                    }
                                    ((PlainPasteEditText) defaultSocket2.socket).setText(str);
                                    break;
                                }
                                break;
                            default:
                                AlertDialog alertDialog22 = textInputDialog.dialog;
                                if (alertDialog22 != null && (window2 = alertDialog22.getWindow()) != null) {
                                    window2.setSoftInputMode(5);
                                }
                                ((RadioButton) ((DefaultSocket) textInputDialog.binding).socket).setChecked(true);
                                break;
                        }
                    }
                });
                PlainPasteEditText plainPasteEditText = (PlainPasteEditText) ((DefaultSocket) this.binding).source;
                DefaultSocket defaultSocket = (DefaultSocket) this.callback;
                plainPasteEditText.setText(defaultSocket != null ? (String) defaultSocket.sink : null);
                AlertDialog alertDialog2 = this.dialog;
                alertDialog2.getClass();
                return alertDialog2;
        }
    }

    public void setPositiveButtonEnabled$1(boolean z) {
        Button button;
        AlertDialog alertDialog = this.dialog;
        if (alertDialog == null || (button = alertDialog.mAlert.mButtonPositive) == null) {
            return;
        }
        button.setEnabled(z);
    }
}
