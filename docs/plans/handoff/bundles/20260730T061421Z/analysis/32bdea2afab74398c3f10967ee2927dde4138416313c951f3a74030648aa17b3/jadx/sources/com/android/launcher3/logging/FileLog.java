package com.android.launcher3.logging;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import c.a.c.a.a;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Executors;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class FileLog {
    public static final int LOG_DAYS;
    public static final DateFormat DATE_FORMAT = DateFormat.getDateTimeInstance(3, 3);
    public static Handler sHandler = null;
    public static File sLogsDirectory = null;

    public class LogWriterCallback implements Handler.Callback {
        public String mCurrentFileName = null;
        public PrintWriter mCurrentWriter = null;

        public LogWriterCallback(AnonymousClass1 anonymousClass1) {
        }

        public final void closeWriter() {
            PrintWriter printWriter = this.mCurrentWriter;
            if (printWriter != null) {
                try {
                    printWriter.close();
                } catch (IOException unused) {
                }
            }
            this.mCurrentWriter = null;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (FileLog.sLogsDirectory != null) {
                int i = message.what;
                boolean z = false;
                z = false;
                z = false;
                if (i != 1) {
                    if (i == 2) {
                        closeWriter();
                        return true;
                    }
                    if (i != 3) {
                        return true;
                    }
                    closeWriter();
                    Pair pair = (Pair) message.obj;
                    if (pair.first != null) {
                        for (int i2 = 0; i2 < FileLog.LOG_DAYS; i2++) {
                            PrintWriter printWriter = (PrintWriter) pair.first;
                            String c2 = a.c("log-", i2);
                            File file = new File(FileLog.sLogsDirectory, c2);
                            if (file.exists()) {
                                BufferedReader bufferedReader = null;
                                try {
                                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                                    try {
                                        printWriter.println();
                                        printWriter.println("--- logfile: " + c2 + " ---");
                                        while (true) {
                                            String readLine = bufferedReader2.readLine();
                                            if (readLine != null) {
                                                printWriter.println(readLine);
                                            } else {
                                                try {
                                                    break;
                                                } catch (IOException unused) {
                                                }
                                            }
                                        }
                                        bufferedReader2.close();
                                    } catch (Exception unused2) {
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Exception unused4) {
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    }
                    ((CountDownLatch) pair.second).countDown();
                    return true;
                }
                Calendar calendar = Calendar.getInstance();
                StringBuilder f = a.f("log-");
                f.append(calendar.get(6) % FileLog.LOG_DAYS);
                String sb = f.toString();
                if (!sb.equals(this.mCurrentFileName)) {
                    closeWriter();
                }
                try {
                    if (this.mCurrentWriter == null) {
                        this.mCurrentFileName = sb;
                        File file2 = new File(FileLog.sLogsDirectory, sb);
                        if (file2.exists()) {
                            Calendar calendar2 = Calendar.getInstance();
                            calendar2.setTimeInMillis(file2.lastModified());
                            calendar2.add(10, 36);
                            if (calendar.before(calendar2) && file2.length() < 8388608) {
                                z = true;
                            }
                        }
                        this.mCurrentWriter = new PrintWriter(new FileWriter(file2, z));
                    }
                    this.mCurrentWriter.println((String) message.obj);
                    this.mCurrentWriter.flush();
                    FileLog.sHandler.removeMessages(2);
                    FileLog.sHandler.sendEmptyMessageDelayed(2, 5000L);
                } catch (Exception e) {
                    Log.e("FileLog", "Error writing logs to file", e);
                    closeWriter();
                }
            }
            return true;
        }
    }

    static {
        LOG_DAYS = FeatureFlags.ENABLE_HYBRID_HOTSEAT.get() ? 10 : 4;
    }

    public static void d(String str, String str2, Exception exc) {
        Log.d(str, str2, exc);
        print(str, str2, exc);
    }

    public static void e(String str, String str2, Exception exc) {
        Log.e(str, str2, exc);
        print(str, str2, exc);
    }

    public static boolean flushAll(PrintWriter printWriter) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Message.obtain(getHandler(), 3, Pair.create(printWriter, countDownLatch)).sendToTarget();
        countDownLatch.await(2L, TimeUnit.SECONDS);
        return countDownLatch.getCount() == 0;
    }

    public static Handler getHandler() {
        synchronized (DATE_FORMAT) {
            if (sHandler == null) {
                sHandler = new Handler(Executors.createAndStartNewLooper("file-logger"), new LogWriterCallback(null));
            }
        }
        return sHandler;
    }

    public static void print(String str, String str2, Exception exc) {
        String format = String.format("%s %s %s", DATE_FORMAT.format(new Date()), str, str2);
        if (exc != null) {
            StringBuilder g = a.g(format, "\n");
            g.append(Log.getStackTraceString(exc));
            format = g.toString();
        }
        Message.obtain(getHandler(), 1, format).sendToTarget();
    }

    public static void setDir(File file) {
        synchronized (DATE_FORMAT) {
            if (sHandler != null && !file.equals(sLogsDirectory)) {
                ((HandlerThread) sHandler.getLooper().getThread()).quit();
                sHandler = null;
            }
        }
        sLogsDirectory = file;
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
        print(str, str2, null);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2);
        print(str, str2, null);
    }
}
