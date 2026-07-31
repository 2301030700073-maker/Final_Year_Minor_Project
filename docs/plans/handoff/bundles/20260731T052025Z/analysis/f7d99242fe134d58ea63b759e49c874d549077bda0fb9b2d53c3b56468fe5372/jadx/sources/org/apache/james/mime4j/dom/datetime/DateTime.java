package org.apache.james.mime4j.dom.datetime;

import java.util.Date;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DateTime {
    public final Date date;
    public final int day;
    public final int hour;
    public final int minute;
    public final int month;
    public final int second;
    public final int timeZone;
    public final int year;

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r9 != 3) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DateTime(java.lang.String r9, int r10, int r11, int r12, int r13, int r14, int r15) {
        /*
            r8 = this;
            r8.<init>()
            int r0 = java.lang.Integer.parseInt(r9)
            int r9 = r9.length()
            r1 = 1
            if (r9 == r1) goto L19
            r1 = 2
            if (r9 == r1) goto L19
            r1 = 3
            if (r9 == r1) goto L16
        L14:
            r2 = r0
            goto L22
        L16:
            int r0 = r0 + 1900
            goto L14
        L19:
            if (r0 < 0) goto L16
            r9 = 50
            if (r0 >= r9) goto L16
            int r0 = r0 + 2000
            goto L14
        L22:
            r8.year = r2
            java.util.GregorianCalendar r1 = new java.util.GregorianCalendar
            java.lang.String r9 = "GMT+0"
            java.util.TimeZone r9 = j$.util.DesugarTimeZone.getTimeZone(r9)
            r1.<init>(r9)
            int r3 = r10 + (-1)
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r1.set(r2, r3, r4, r5, r6, r7)
            r9 = 14
            r11 = 0
            r1.set(r9, r11)
            r9 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r15 == r9) goto L50
            int r9 = r15 / 100
            int r9 = r9 * 60
            int r11 = r15 % 100
            int r11 = r11 + r9
            int r11 = r11 * (-1)
            r9 = 12
            r1.add(r9, r11)
        L50:
            java.util.Date r9 = r1.getTime()
            r8.date = r9
            r8.month = r10
            r8.day = r4
            r8.hour = r5
            r8.minute = r6
            r8.second = r7
            r8.timeZone = r15
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.dom.datetime.DateTime.<init>(java.lang.String, int, int, int, int, int, int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DateTime.class != obj.getClass()) {
            return false;
        }
        DateTime dateTime = (DateTime) obj;
        Date date = dateTime.date;
        Date date2 = this.date;
        if (date2 == null) {
            if (date != null) {
                return false;
            }
        } else if (!date2.equals(date)) {
            return false;
        }
        return this.day == dateTime.day && this.hour == dateTime.hour && this.minute == dateTime.minute && this.month == dateTime.month && this.second == dateTime.second && this.timeZone == dateTime.timeZone && this.year == dateTime.year;
    }

    public final int hashCode() {
        Date date = this.date;
        return (((((((((((((((date == null ? 0 : date.hashCode()) + 31) * 31) + this.day) * 31) + this.hour) * 31) + this.minute) * 31) + this.month) * 31) + this.second) * 31) + this.timeZone) * 31) + this.year;
    }

    public final String toString() {
        return this.year + " " + this.month + " " + this.day + "; " + this.hour + " " + this.minute + " " + this.second + " " + this.timeZone;
    }
}
