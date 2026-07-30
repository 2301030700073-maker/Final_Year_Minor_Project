package com.android.launcher3.logging;

import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.function.IntFunction;

/* loaded from: classes.dex */
public class EventLogArray {
    public static final int TYPE_BOOL_FALSE = 4;
    public static final int TYPE_BOOL_TRUE = 3;
    public static final int TYPE_FLOAT = 1;
    public static final int TYPE_INTEGER = 2;
    public static final int TYPE_ONE_OFF = 0;
    public final EventEntry[] logs;
    public int mLogId;
    public final String name;
    public int nextIndex = 0;

    public class EventEntry {
        public int duplicateCount;
        public String event;
        public float extras;
        public long time;
        public int traceId;
        public int type;

        public EventEntry(AnonymousClass1 anonymousClass1) {
        }
    }

    public EventLogArray(String str, int i) {
        this.name = str;
        this.logs = new EventEntry[i];
    }

    private boolean isEntrySame(EventEntry eventEntry, int i, String str) {
        return eventEntry != null && eventEntry.type == i && eventEntry.event.equals(str);
    }

    public void addLog(String str) {
        addLog(0, str, RecentsState.NO_OFFSET);
    }

    public void clear() {
        Arrays.setAll(this.logs, new IntFunction() { // from class: c.a.a.M0.a
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return null;
            }
        });
    }

    public void dump(String str, PrintWriter printWriter) {
        StringBuilder g = a.g(str, "EventLog (");
        g.append(this.name);
        g.append(") history:");
        printWriter.println(g.toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("  HH:mm:ss.SSSZ  ", Locale.US);
        Date date = new Date();
        int i = 0;
        while (true) {
            EventEntry[] eventEntryArr = this.logs;
            if (i >= eventEntryArr.length) {
                return;
            }
            EventEntry eventEntry = eventEntryArr[(((this.nextIndex + eventEntryArr.length) - i) - 1) % eventEntryArr.length];
            if (eventEntry != null) {
                date.setTime(eventEntry.time);
                StringBuilder sb = new StringBuilder(str);
                sb.append(simpleDateFormat.format(date));
                sb.append(eventEntry.event);
                int i2 = eventEntry.type;
                if (i2 == 1) {
                    sb.append(": ");
                    sb.append(eventEntry.extras);
                } else if (i2 == 2) {
                    sb.append(": ");
                    sb.append((int) eventEntry.extras);
                } else if (i2 == 3) {
                    sb.append(": true");
                } else if (i2 == 4) {
                    sb.append(": false");
                }
                if (eventEntry.duplicateCount > 0) {
                    sb.append(" & ");
                    sb.append(eventEntry.duplicateCount);
                    sb.append(" similar events");
                }
                sb.append(" traceId: ");
                sb.append(eventEntry.traceId);
                printWriter.println(sb);
            }
            i++;
        }
    }

    public int generateAndSetLogId() {
        int nextInt = new Random().nextInt(900) + 100;
        this.mLogId = nextInt;
        return nextInt;
    }

    public void addLog(String str, int i) {
        addLog(2, str, i);
    }

    public void addLog(String str, boolean z) {
        addLog(z ? 3 : 4, str, RecentsState.NO_OFFSET);
    }

    private void addLog(int i, String str, float f) {
        int i2 = this.nextIndex;
        EventEntry[] eventEntryArr = this.logs;
        int length = ((eventEntryArr.length + i2) - 1) % eventEntryArr.length;
        int length2 = ((i2 + eventEntryArr.length) - 2) % eventEntryArr.length;
        if (isEntrySame(eventEntryArr[length], i, str) && isEntrySame(this.logs[length2], i, str)) {
            EventEntry eventEntry = this.logs[length];
            int i3 = this.mLogId;
            eventEntry.type = i;
            eventEntry.event = str;
            eventEntry.extras = f;
            eventEntry.traceId = i3;
            eventEntry.time = System.currentTimeMillis();
            eventEntry.duplicateCount = 0;
            this.logs[length2].duplicateCount++;
            return;
        }
        EventEntry[] eventEntryArr2 = this.logs;
        int i4 = this.nextIndex;
        if (eventEntryArr2[i4] == null) {
            eventEntryArr2[i4] = new EventEntry(null);
        }
        EventEntry eventEntry2 = this.logs[this.nextIndex];
        int i5 = this.mLogId;
        eventEntry2.type = i;
        eventEntry2.event = str;
        eventEntry2.extras = f;
        eventEntry2.traceId = i5;
        eventEntry2.time = System.currentTimeMillis();
        eventEntry2.duplicateCount = 0;
        this.nextIndex = (this.nextIndex + 1) % this.logs.length;
    }
}
