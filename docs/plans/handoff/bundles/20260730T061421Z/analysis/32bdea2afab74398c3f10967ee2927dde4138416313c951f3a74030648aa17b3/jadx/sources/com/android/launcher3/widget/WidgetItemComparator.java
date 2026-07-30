package com.android.launcher3.widget;

import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.model.WidgetItem;
import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public class WidgetItemComparator implements Comparator {
    public final UserHandle mMyUserHandle = Process.myUserHandle();
    public final Collator mCollator = Collator.getInstance();

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        WidgetItem widgetItem = (WidgetItem) obj;
        WidgetItem widgetItem2 = (WidgetItem) obj2;
        boolean z = !this.mMyUserHandle.equals(widgetItem.user);
        if ((!this.mMyUserHandle.equals(widgetItem2.user)) ^ z) {
            return z ? 1 : -1;
        }
        int compare = this.mCollator.compare(widgetItem.label, widgetItem2.label);
        if (compare != 0) {
            return compare;
        }
        int i = widgetItem.spanX;
        int i2 = widgetItem.spanY;
        int i3 = i * i2;
        int i4 = widgetItem2.spanX;
        int i5 = widgetItem2.spanY;
        int i6 = i4 * i5;
        return i3 == i6 ? Integer.compare(i2, i5) : Integer.compare(i3, i6);
    }
}
