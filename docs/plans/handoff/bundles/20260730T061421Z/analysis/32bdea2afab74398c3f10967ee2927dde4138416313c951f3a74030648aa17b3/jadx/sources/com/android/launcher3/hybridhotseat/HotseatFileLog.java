package com.android.launcher3.hybridhotseat;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.android.launcher3.hybridhotseat.HotseatFileLog;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class HotseatFileLog {
    public static final DateFormat DATE_FORMAT = DateFormat.getDateTimeInstance(3, 3);
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.K0.g
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new HotseatFileLog(context);
        }
    });
    public PrintWriter mCurrentWriter;
    public String mFileName;
    public final Handler mHandler = new Handler(Executors.createAndStartNewLooper("hotseat-logger"));
    public final File mLogsDir;

    public HotseatFileLog(Context context) {
        this.mLogsDir = context.getFilesDir();
    }

    public final synchronized void closeWriter() {
        this.mFileName = null;
        if (this.mCurrentWriter != null) {
            this.mCurrentWriter.close();
        }
        this.mCurrentWriter = null;
    }

    public final PrintWriter getWriter() {
        if ("hotseat-log-0".equals(this.mFileName)) {
            return this.mCurrentWriter;
        }
        Calendar calendar = Calendar.getInstance();
        boolean z = false;
        File file = new File(this.mLogsDir, "hotseat-log-0");
        if (file.exists()) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(file.lastModified());
            calendar2.add(10, 36);
            z = calendar.before(calendar2);
        }
        PrintWriter printWriter = this.mCurrentWriter;
        if (printWriter != null) {
            printWriter.close();
        }
        try {
            this.mCurrentWriter = new PrintWriter(new FileWriter(file, z));
            this.mFileName = "hotseat-log-0";
        } catch (Exception e) {
            Log.e("HotseatLogs", "Error writing logs to file", e);
            closeWriter();
        }
        return this.mCurrentWriter;
    }

    public void log(String str, String str2) {
        final String format = String.format("%s %s %s", DATE_FORMAT.format(new Date()), str, str2);
        this.mHandler.post(new Runnable() { // from class: c.a.a.K0.h
            @Override // java.lang.Runnable
            public final void run() {
                HotseatFileLog hotseatFileLog = HotseatFileLog.this;
                String str3 = format;
                synchronized (hotseatFileLog) {
                    PrintWriter writer = hotseatFileLog.getWriter();
                    if (writer != null) {
                        writer.println(str3);
                    }
                }
            }
        });
    }
}
