package androidx.glance.appwidget.action;

import androidx.glance.action.ActionParameters$Key;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ToggleableKt {
    public static final ActionParameters$Key ToggleableStateKey = new ActionParameters$Key("android.widget.extra.CHECKED");

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
    
        if (r1 != 4) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void launchTrampolineAction(android.app.Activity r9, android.content.Intent r10) {
        /*
            java.lang.String r0 = "ACTION_INTENT"
            android.os.Parcelable r0 = r10.getParcelableExtra(r0)
            if (r0 == 0) goto Lcc
            android.content.Intent r0 = (android.content.Intent) r0
            java.lang.String r1 = "android.widget.extra.CHECKED"
            boolean r2 = r10.hasExtra(r1)
            r3 = 0
            if (r2 == 0) goto L1a
            boolean r2 = r10.getBooleanExtra(r1, r3)
            r0.putExtra(r1, r2)
        L1a:
            java.lang.String r1 = "ACTION_TYPE"
            java.lang.String r1 = r10.getStringExtra(r1)
            if (r1 == 0) goto Lc6
            java.lang.String r2 = "ACTIVITY_OPTIONS"
            android.os.Bundle r10 = r10.getBundleExtra(r2)
            android.os.StrictMode$VmPolicy r2 = android.os.StrictMode.getVmPolicy()
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 31
            if (r4 < r5) goto L42
            android.os.StrictMode$VmPolicy$Builder r4 = new android.os.StrictMode$VmPolicy$Builder
            r4.<init>(r2)
            androidx.glance.appwidget.action.StrictModeVmPolicyApi31Impl r5 = androidx.glance.appwidget.action.StrictModeVmPolicyApi31Impl.INSTANCE
            android.os.StrictMode$VmPolicy$Builder r4 = r5.permitUnsafeIntentLaunch(r4)
            android.os.StrictMode$VmPolicy r4 = r4.build()
            goto L4b
        L42:
            android.os.StrictMode$VmPolicy$Builder r4 = new android.os.StrictMode$VmPolicy$Builder
            r4.<init>()
            android.os.StrictMode$VmPolicy r4 = r4.build()
        L4b:
            android.os.StrictMode.setVmPolicy(r4)
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r1 == 0) goto L90
            java.lang.String r8 = "ACTIVITY"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L5e
            r3 = r7
            goto L95
        L5e:
            java.lang.String r8 = "BROADCAST"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L68
            r3 = r6
            goto L95
        L68:
            java.lang.String r8 = "SERVICE"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L72
            r3 = r5
            goto L95
        L72:
            java.lang.String r8 = "FOREGROUND_SERVICE"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L7c
            r3 = r4
            goto L95
        L7c:
            java.lang.String r8 = "CALLBACK"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L86
            r3 = 5
            goto L95
        L86:
            java.lang.String r8 = "No enum constant androidx.glance.appwidget.action.ActionTrampolineType."
            java.lang.String r1 = r8.concat(r1)
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r1)
            goto L95
        L90:
            java.lang.String r1 = "Name is null"
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m(r1)
        L95:
            int r1 = androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3.ordinal(r3)
            if (r1 == 0) goto Lbc
            if (r1 == r7) goto Lb8
            if (r1 == r6) goto Lb4
            if (r1 == r5) goto La4
            if (r1 == r4) goto Lb8
            goto Lbf
        La4:
            int r10 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r10 < r1) goto Lb0
            androidx.glance.appwidget.action.ListAdapterTrampolineApi26Impl r10 = androidx.glance.appwidget.action.ListAdapterTrampolineApi26Impl.INSTANCE
            r10.startForegroundService(r9, r0)
            goto Lbf
        Lb0:
            r9.startService(r0)
            goto Lbf
        Lb4:
            r9.startService(r0)
            goto Lbf
        Lb8:
            r9.sendBroadcast(r0)
            goto Lbf
        Lbc:
            r9.startActivity(r0, r10)
        Lbf:
            android.os.StrictMode.setVmPolicy(r2)
            r9.finish()
            return
        Lc6:
            java.lang.String r9 = "List adapter activity trampoline invoked without trampoline type"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r9)
            return
        Lcc:
            java.lang.String r9 = "List adapter activity trampoline invoked without specifying target intent."
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.action.ToggleableKt.launchTrampolineAction(android.app.Activity, android.content.Intent):void");
    }
}
