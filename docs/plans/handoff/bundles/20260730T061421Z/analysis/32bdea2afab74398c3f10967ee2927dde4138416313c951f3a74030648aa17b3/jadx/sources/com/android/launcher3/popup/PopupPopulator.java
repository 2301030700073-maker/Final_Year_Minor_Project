package com.android.launcher3.popup;

import android.content.pm.ShortcutInfo;
import java.util.Comparator;

/* loaded from: classes.dex */
public class PopupPopulator {
    public static final int NUM_DYNAMIC = 2;
    public static final Comparator SHORTCUT_RANK_COMPARATOR = new Comparator() { // from class: com.android.launcher3.popup.PopupPopulator.1
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
            ShortcutInfo shortcutInfo2 = (ShortcutInfo) obj2;
            if (shortcutInfo.isDeclaredInManifest() && !shortcutInfo2.isDeclaredInManifest()) {
                return -1;
            }
            if (shortcutInfo.isDeclaredInManifest() || !shortcutInfo2.isDeclaredInManifest()) {
                return Integer.compare(shortcutInfo.getRank(), shortcutInfo2.getRank());
            }
            return 1;
        }
    };
}
