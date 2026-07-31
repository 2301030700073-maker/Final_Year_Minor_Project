package com.fsck.k9.preferences.upgrader;

import com.fsck.k9.preferences.SettingsUpgrader;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerSettingsUpgraderTo92 implements SettingsUpgrader {
    public final /* synthetic */ int $r8$classId;

    public static void upgradeFolderEntry(String str, LinkedHashMap linkedHashMap) {
        if ("-NONE-".equals((String) linkedHashMap.get(str))) {
            linkedHashMap.put(str, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x025e, code lost:
    
        if (r10.equals("STARTTLS_OPTIONAL") == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0261, code lost:
    
        r3 = "STARTTLS_REQUIRED";
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0267, code lost:
    
        if (r10.equals("STARTTLS_REQUIRED") == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r10, "LOGIN") != false) goto L28;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // com.fsck.k9.preferences.SettingsUpgrader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void upgrade(java.util.LinkedHashMap r12) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.preferences.upgrader.ServerSettingsUpgraderTo92.upgrade(java.util.LinkedHashMap):void");
    }
}
