package com.android.contacts.vcard;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.android.contacts.R;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.util.ContactsNotificationChannelsUtil;
import com.android.vcard.VCardEntry;
import java.text.NumberFormat;

/* loaded from: classes.dex */
public class NotificationImportExportListener implements VCardImportExportListener, Handler.Callback {
    private final Activity mContext;
    private final Handler mHandler = new Handler(this);
    private final NotificationManager mNotificationManager;

    public NotificationImportExportListener(Activity activity) {
        this.mContext = activity;
        this.mNotificationManager = (NotificationManager) activity.getSystemService("notification");
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Toast.makeText(this.mContext, (String) message.obj, 1).show();
        return true;
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onImportProcessed(ImportRequest importRequest, int i, int i2) {
        String string;
        String str = importRequest.displayName;
        if (str != null) {
            string = this.mContext.getString(R.string.vcard_import_will_start_message, new Object[]{str});
        } else {
            str = this.mContext.getString(R.string.vcard_unknown_filename);
            string = this.mContext.getString(R.string.vcard_import_will_start_message_with_default_name);
        }
        String str2 = str;
        String str3 = string;
        if (i2 == 0) {
            this.mHandler.obtainMessage(0, str3).sendToTarget();
        }
        ContactsNotificationChannelsUtil.createDefaultChannel(this.mContext);
        return constructProgressNotification(this.mContext, 1, str3, str3, i, str2, -1, 0);
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onImportParsed(ImportRequest importRequest, int i, VCardEntry vCardEntry, int i2, int i3) {
        if (vCardEntry.isIgnorable()) {
            return null;
        }
        return constructProgressNotification(this.mContext.getApplicationContext(), 1, this.mContext.getString(R.string.importing_vcard_description, new Object[]{vCardEntry.getDisplayName()}), this.mContext.getString(R.string.progress_notifier_message, new Object[]{String.valueOf(i2), String.valueOf(i3), vCardEntry.getDisplayName()}), i, importRequest.displayName, i3, i2);
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFinished(ImportRequest importRequest, int i, Uri uri) {
        Intent intent;
        String string = this.mContext.getString(R.string.importing_vcard_finished_title, new Object[]{importRequest.displayName});
        if (uri != null) {
            intent = new Intent("android.intent.action.VIEW", ContactsContract.RawContacts.getContactLookupUri(this.mContext.getContentResolver(), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(uri))));
        } else {
            intent = new Intent("android.intent.action.VIEW");
            intent.setType("vnd.android.cursor.dir/contact");
        }
        intent.setPackage(this.mContext.getPackageName());
        this.mNotificationManager.notify("VCardServiceProgress", i, constructFinishNotification(this.mContext, string, null, intent));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFailed(ImportRequest importRequest) {
        this.mHandler.obtainMessage(0, this.mContext.getString(R.string.vcard_import_request_rejected_message)).sendToTarget();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportCanceled(ImportRequest importRequest, int i) {
        this.mNotificationManager.notify("VCardServiceProgress", i, constructCancelNotification(this.mContext, this.mContext.getString(R.string.importing_vcard_canceled_title, new Object[]{importRequest.displayName})));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onExportProcessed(ExportRequest exportRequest, int i) {
        String openableUriDisplayName = ExportVCardActivity.getOpenableUriDisplayName(this.mContext, exportRequest.destUri);
        String string = this.mContext.getString(R.string.contacts_export_will_start_message);
        this.mHandler.obtainMessage(0, string).sendToTarget();
        ContactsNotificationChannelsUtil.createDefaultChannel(this.mContext);
        return constructProgressNotification(this.mContext, 2, string, string, i, openableUriDisplayName, -1, 0);
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportFailed(ExportRequest exportRequest) {
        this.mHandler.obtainMessage(0, this.mContext.getString(R.string.vcard_export_request_rejected_message)).sendToTarget();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onCancelRequest(CancelRequest cancelRequest, int i) {
        String string;
        if (i == 1) {
            string = this.mContext.getString(R.string.importing_vcard_canceled_title, new Object[]{cancelRequest.displayName});
        } else {
            string = this.mContext.getString(R.string.exporting_vcard_canceled_title, new Object[]{cancelRequest.displayName});
        }
        this.mNotificationManager.notify("VCardServiceProgress", cancelRequest.jobId, constructCancelNotification(this.mContext, string));
    }

    static Notification constructProgressNotification(Context context, int i, String str, String str2, int i2, String str3, int i3, int i4) {
        Intent intent = new Intent(context, (Class<?>) CancelActivity.class);
        intent.setData(new Uri.Builder().scheme("invalidscheme").authority("invalidauthority").appendQueryParameter("job_id", String.valueOf(i2)).appendQueryParameter("display_name", str3).appendQueryParameter(BaseAccountType.Attr.TYPE, String.valueOf(i)).build());
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        builder.setOngoing(true);
        builder.setChannelId(ContactsNotificationChannelsUtil.DEFAULT_CHANNEL);
        builder.setOnlyAlertOnce(true);
        builder.setProgress(i3, i4, i3 == -1);
        builder.setTicker(str2);
        builder.setContentTitle(str);
        builder.setColor(context.getResources().getColor(R.color.dialtacts_theme_color));
        builder.setSmallIcon(i == 1 ? android.R.drawable.stat_sys_download : android.R.drawable.stat_sys_upload);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 67108864));
        if (i3 > 0) {
            builder.setContentText(NumberFormat.getPercentInstance().format(i4 / i3));
        }
        return builder.build();
    }

    static Notification constructCancelNotification(Context context, String str) {
        ContactsNotificationChannelsUtil.createDefaultChannel(context);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, ContactsNotificationChannelsUtil.DEFAULT_CHANNEL);
        builder.setAutoCancel(true);
        builder.setSmallIcon(android.R.drawable.stat_notify_error);
        builder.setColor(context.getResources().getColor(R.color.dialtacts_theme_color));
        builder.setContentTitle(str);
        builder.setContentText(str);
        return builder.build();
    }

    static Notification constructFinishNotification(Context context, String str, String str2, Intent intent) {
        ContactsNotificationChannelsUtil.createDefaultChannel(context);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, ContactsNotificationChannelsUtil.DEFAULT_CHANNEL);
        builder.setAutoCancel(true);
        builder.setColor(context.getResources().getColor(R.color.dialtacts_theme_color));
        builder.setSmallIcon(R.drawable.quantum_ic_done_vd_theme_24);
        builder.setContentTitle(str);
        builder.setContentText(str2);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 67108864));
        return builder.build();
    }

    static Notification constructImportFailureNotification(Context context, String str) {
        ContactsNotificationChannelsUtil.createDefaultChannel(context);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, ContactsNotificationChannelsUtil.DEFAULT_CHANNEL);
        builder.setAutoCancel(true);
        builder.setColor(context.getResources().getColor(R.color.dialtacts_theme_color));
        builder.setSmallIcon(android.R.drawable.stat_notify_error);
        builder.setContentTitle(context.getString(R.string.vcard_import_failed));
        builder.setContentText(str);
        return builder.build();
    }
}
