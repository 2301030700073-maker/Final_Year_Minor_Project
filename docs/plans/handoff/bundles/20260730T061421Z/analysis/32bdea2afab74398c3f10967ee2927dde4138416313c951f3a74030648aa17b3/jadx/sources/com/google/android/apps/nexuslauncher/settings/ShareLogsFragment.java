package com.google.android.apps.nexuslauncher.settings;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.core.content.FileProvider;
import androidx.fragment.app.DialogFragment;
import c.a.c.a.a;
import com.android.launcher3.hybridhotseat.HotseatFileLog;
import com.android.launcher3.logging.FileLog;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.settings.ShareLogsFragment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public class ShareLogsFragment extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f3330a = {"hybrid-hotseat-feedback@google.com"};

    public void a(DialogInterface dialogInterface, int i) {
        int i2;
        File[] fileArr;
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM d, yyyy");
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType("text/plain");
        StringBuilder f = a.f("Hybrid hotseat feedback ");
        f.append(simpleDateFormat.format(calendar.getTime()));
        intent.putExtra("android.intent.extra.SUBJECT", f.toString());
        intent.putExtra("android.intent.extra.EMAIL", f3330a);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        File file = new File(getContext().getApplicationContext().getFilesDir(), "logs.zip");
        HotseatFileLog hotseatFileLog = (HotseatFileLog) HotseatFileLog.INSTANCE.b(getContext());
        synchronized (hotseatFileLog) {
            i2 = FileLog.LOG_DAYS + 10;
            fileArr = new File[i2];
            try {
                FileLog.flushAll(null);
            } catch (InterruptedException unused) {
            }
            File[] fileArr2 = new File[FileLog.LOG_DAYS];
            for (int i3 = 0; i3 < FileLog.LOG_DAYS; i3++) {
                fileArr2[i3] = new File(FileLog.sLogsDirectory, "log-" + i3);
            }
            System.arraycopy(fileArr2, 0, fileArr, 0, FileLog.LOG_DAYS);
            hotseatFileLog.closeWriter();
            for (int i4 = 0; i4 < 10; i4++) {
                fileArr[FileLog.LOG_DAYS + i4] = new File(hotseatFileLog.mLogsDir, "hotseat-log-" + i4);
            }
        }
        byte[] bArr = new byte[1024];
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
            for (int i5 = 0; i5 < i2; i5++) {
                try {
                    File file2 = fileArr[i5];
                    if (file2.exists() && file2.canRead()) {
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        try {
                            zipOutputStream.putNextEntry(new ZipEntry(file2.getName()));
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read <= -1) {
                                    break;
                                } else {
                                    zipOutputStream.write(bArr, 0, read);
                                }
                            }
                            zipOutputStream.closeEntry();
                            fileInputStream.close();
                        } finally {
                        }
                    }
                } finally {
                }
            }
            zipOutputStream.close();
        } catch (Exception e) {
            Log.e("FeedbackFragment", "Failed to create zip file", e);
        }
        arrayList.add(FileProvider.a(getContext(), ImageActionUtils.AUTHORITY).b(file));
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        intent.setFlags(1);
        startActivity(Intent.createChooser(intent, getString(R.string.send_hotseat_feedback)));
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new AlertDialog.Builder(getActivity()).setTitle(R.string.send_hotseat_feedback).setMessage(R.string.hotseat_feedback_summary).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: c.b.a.b.b.o.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ShareLogsFragment.this.a(dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create();
    }
}
