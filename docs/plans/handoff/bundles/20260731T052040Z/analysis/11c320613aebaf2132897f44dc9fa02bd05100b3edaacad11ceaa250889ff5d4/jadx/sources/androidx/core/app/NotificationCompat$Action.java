package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationCompat$Action {
    public final PendingIntent actionIntent;
    public final int icon;
    public final boolean mAllowGeneratedReplies;
    public final Bundle mExtras;
    public IconCompat mIcon;
    public final boolean mShowsUserInterface;
    public final CharSequence title;

    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NotificationCompat$Action(int r10, java.lang.CharSequence r11, android.app.PendingIntent r12) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L5
            r10 = r0
            goto L9
        L5:
            androidx.core.graphics.drawable.IconCompat r10 = androidx.core.graphics.drawable.IconCompat.createWithResource(r10)
        L9:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            r9.<init>()
            r2 = 1
            r9.mShowsUserInterface = r2
            r9.mIcon = r10
            if (r10 == 0) goto L82
            int r3 = r10.mType
            r4 = -1
            if (r3 != r4) goto L79
            java.lang.Object r3 = r10.mObj1
            java.lang.String r5 = "Unable to get icon type "
            java.lang.String r6 = "IconCompat"
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 28
            if (r7 < r8) goto L2e
            int r3 = org.acra.util.PackageManagerWrapperKt.getType(r3)
            goto L79
        L2e:
            java.lang.Class r7 = r3.getClass()     // Catch: java.lang.NoSuchMethodException -> L43 java.lang.reflect.InvocationTargetException -> L45 java.lang.IllegalAccessException -> L47
            java.lang.String r8 = "getType"
            java.lang.reflect.Method r7 = r7.getMethod(r8, r0)     // Catch: java.lang.NoSuchMethodException -> L43 java.lang.reflect.InvocationTargetException -> L45 java.lang.IllegalAccessException -> L47
            java.lang.Object r0 = r7.invoke(r3, r0)     // Catch: java.lang.NoSuchMethodException -> L43 java.lang.reflect.InvocationTargetException -> L45 java.lang.IllegalAccessException -> L47
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.NoSuchMethodException -> L43 java.lang.reflect.InvocationTargetException -> L45 java.lang.IllegalAccessException -> L47
            int r3 = r0.intValue()     // Catch: java.lang.NoSuchMethodException -> L43 java.lang.reflect.InvocationTargetException -> L45 java.lang.IllegalAccessException -> L47
            goto L79
        L43:
            r0 = move-exception
            goto L49
        L45:
            r0 = move-exception
            goto L59
        L47:
            r0 = move-exception
            goto L69
        L49:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r5)
            r7.append(r3)
            java.lang.String r3 = r7.toString()
            android.util.Log.e(r6, r3, r0)
            goto L78
        L59:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r5)
            r7.append(r3)
            java.lang.String r3 = r7.toString()
            android.util.Log.e(r6, r3, r0)
            goto L78
        L69:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r5)
            r7.append(r3)
            java.lang.String r3 = r7.toString()
            android.util.Log.e(r6, r3, r0)
        L78:
            r3 = r4
        L79:
            r0 = 2
            if (r3 != r0) goto L82
            int r10 = r10.getResId()
            r9.icon = r10
        L82:
            java.lang.CharSequence r10 = androidx.core.app.NotificationCompat$Builder.limitCharSequenceLength(r11)
            r9.title = r10
            r9.actionIntent = r12
            r9.mExtras = r1
            r9.mAllowGeneratedReplies = r2
            r9.mShowsUserInterface = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat$Action.<init>(int, java.lang.CharSequence, android.app.PendingIntent):void");
    }
}
