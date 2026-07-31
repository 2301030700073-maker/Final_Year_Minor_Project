package androidx.appcompat.app;

import android.content.Context;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppCompatDelegate$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ AppCompatDelegate$$ExternalSyntheticLambda0(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r2 != null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            r1 = 1
            android.content.Context r10 = r10.f$0
            switch(r0) {
                case 0: goto L2e;
                case 1: goto L14;
                default: goto L8;
            }
        L8:
            androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0 r0 = new androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0
            r0.<init>(r1)
            androidx.work.impl.AutoMigration_14_15 r1 = androidx.profileinstaller.Encoding.EMPTY_DIAGNOSTICS
            r2 = 0
            androidx.profileinstaller.Encoding.writeProfile(r10, r0, r1, r2)
            return
        L14:
            java.util.concurrent.ThreadPoolExecutor r3 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.LinkedBlockingQueue r9 = new java.util.concurrent.LinkedBlockingQueue
            r9.<init>()
            r4 = 0
            r5 = 1
            r6 = 0
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.MILLISECONDS
            r3.<init>(r4, r5, r6, r8, r9)
            androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0 r0 = new androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0
            r1 = 2
            r0.<init>(r10, r1)
            r3.execute(r0)
            return
        L2e:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 33
            if (r0 < r2) goto Lab
            android.content.ComponentName r3 = new android.content.ComponentName
            java.lang.String r4 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r3.<init>(r10, r4)
            android.content.pm.PackageManager r4 = r10.getPackageManager()
            int r4 = r4.getComponentEnabledSetting(r3)
            if (r4 == r1) goto Lab
            java.lang.String r4 = "locale"
            if (r0 < r2) goto L84
            androidx.collection.ArraySet r0 = androidx.appcompat.app.AppCompatDelegate.sActivityDelegates
            r0.getClass()
            androidx.collection.ArrayMap$KeyIterator r2 = new androidx.collection.ArrayMap$KeyIterator
            r2.<init>(r0)
        L53:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L72
            java.lang.Object r0 = r2.next()
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            java.lang.Object r0 = r0.get()
            androidx.appcompat.app.AppCompatDelegate r0 = (androidx.appcompat.app.AppCompatDelegate) r0
            if (r0 == 0) goto L53
            androidx.appcompat.app.AppCompatDelegateImpl r0 = (androidx.appcompat.app.AppCompatDelegateImpl) r0
            android.content.Context r0 = r0.mContext
            if (r0 == 0) goto L53
            java.lang.Object r0 = r0.getSystemService(r4)
            goto L73
        L72:
            r0 = 0
        L73:
            if (r0 == 0) goto L89
            android.os.LocaleList r0 = androidx.appcompat.app.AppCompatDelegate.Api33Impl.localeManagerGetApplicationLocales(r0)
            androidx.core.os.LocaleListCompat r2 = new androidx.core.os.LocaleListCompat
            androidx.core.os.LocaleListPlatformWrapper r5 = new androidx.core.os.LocaleListPlatformWrapper
            r5.<init>(r0)
            r2.<init>(r5)
            goto L8b
        L84:
            androidx.core.os.LocaleListCompat r2 = androidx.appcompat.app.AppCompatDelegate.sRequestedAppLocales
            if (r2 == 0) goto L89
            goto L8b
        L89:
            androidx.core.os.LocaleListCompat r2 = androidx.core.os.LocaleListCompat.sEmptyLocaleList
        L8b:
            androidx.core.os.LocaleListInterface r0 = r2.mImpl
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto La4
            java.lang.String r0 = androidx.core.app.NavUtils.readLocales(r10)
            java.lang.Object r2 = r10.getSystemService(r4)
            if (r2 == 0) goto La4
            android.os.LocaleList r0 = androidx.appcompat.app.AppCompatDelegate.Api24Impl.localeListForLanguageTags(r0)
            androidx.appcompat.app.AppCompatDelegate.Api33Impl.localeManagerSetApplicationLocales(r2, r0)
        La4:
            android.content.pm.PackageManager r10 = r10.getPackageManager()
            r10.setComponentEnabledSetting(r3, r1, r1)
        Lab:
            androidx.appcompat.app.AppCompatDelegate.sIsFrameworkSyncChecked = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0.run():void");
    }
}
