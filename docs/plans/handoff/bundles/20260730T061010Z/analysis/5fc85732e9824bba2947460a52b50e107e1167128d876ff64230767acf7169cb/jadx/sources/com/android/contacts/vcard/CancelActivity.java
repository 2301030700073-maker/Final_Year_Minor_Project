package com.android.contacts.vcard;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.R;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.vcard.VCardService;

/* loaded from: classes.dex */
public class CancelActivity extends Activity implements ServiceConnection {
    private final CancelListener mCancelListener = new CancelListener();
    private String mDisplayName;
    private int mJobId;
    private int mType;

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    private class RequestCancelListener implements DialogInterface.OnClickListener {
        private RequestCancelListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CancelActivity.this.bindService(new Intent(CancelActivity.this, (Class<?>) VCardService.class), CancelActivity.this, 1);
        }
    }

    private class CancelListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CancelActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            CancelActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        this.mJobId = Integer.parseInt(data.getQueryParameter("job_id"));
        this.mDisplayName = data.getQueryParameter("display_name");
        this.mType = Integer.parseInt(data.getQueryParameter(BaseAccountType.Attr.TYPE));
        showDialog(R.id.dialog_cancel_confirmation);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        if (i == R.id.dialog_cancel_confirmation) {
            return new AlertDialog.Builder(this).setMessage(this.mType == 1 ? getString(R.string.cancel_import_confirmation_message, new Object[]{this.mDisplayName}) : getString(R.string.cancel_export_confirmation_message, new Object[]{this.mDisplayName})).setPositiveButton(R.string.yes_button, new RequestCancelListener()).setOnCancelListener(this.mCancelListener).setNegativeButton(R.string.no_button, this.mCancelListener).create();
        }
        if (i == R.id.dialog_cancel_failed) {
            return new AlertDialog.Builder(this).setTitle(R.string.cancel_vcard_import_or_export_failed).setIconAttribute(android.R.attr.alertDialogIcon).setMessage(getString(R.string.fail_reason_unknown)).setOnCancelListener(this.mCancelListener).setPositiveButton(android.R.string.ok, this.mCancelListener).create();
        }
        Log.w("VCardCancel", "Unknown dialog id: " + i);
        return super.onCreateDialog(i, bundle);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            ((VCardService.MyBinder) iBinder).getService().handleCancelRequest(new CancelRequest(this.mJobId, this.mDisplayName), null);
            unbindService(this);
            finish();
        } catch (Throwable th) {
            unbindService(this);
            throw th;
        }
    }
}
