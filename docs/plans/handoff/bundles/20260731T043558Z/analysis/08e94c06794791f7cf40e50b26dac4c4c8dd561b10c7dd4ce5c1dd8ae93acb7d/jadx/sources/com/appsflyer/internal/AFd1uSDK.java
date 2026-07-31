package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFc1cSDK;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class AFd1uSDK implements AFd1zSDK {
    private final AFc1gSDK getCurrencyIso4217Code;

    public AFd1uSDK(AFc1gSDK aFc1gSDK) {
        Intrinsics.checkNotNullParameter(aFc1gSDK, "");
        this.getCurrencyIso4217Code = aFc1gSDK;
    }

    private final File getMonetizationNetwork() {
        Context context = this.getCurrencyIso4217Code.getRevenue;
        if (context == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), "AFExceptionsCache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final String getRevenue(Throwable th, String str) {
        String str2;
        File file;
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(str, "");
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            str2 = null;
            if (monetizationNetwork != null) {
                file = new File(monetizationNetwork, "6.17.3");
                if (!file.exists()) {
                    file.mkdirs();
                }
            } else {
                file = null;
            }
            if (file != null) {
                try {
                    AFc1cSDK AFAdRevenueData = AFd1pSDK.AFAdRevenueData(th, str);
                    String str3 = AFAdRevenueData.getCurrencyIso4217Code;
                    File file2 = new File(file, str3);
                    if (file2.exists()) {
                        AFc1cSDK.Companion companion = AFc1cSDK.INSTANCE;
                        AFc1cSDK currencyIso4217Code = AFc1cSDK.Companion.getCurrencyIso4217Code(FilesKt.readText$default(file2, null, 1, null));
                        if (currencyIso4217Code != null) {
                            currencyIso4217Code.getMonetizationNetwork++;
                            AFAdRevenueData = currencyIso4217Code;
                        }
                    }
                    FilesKt.writeText$default(file2, AFAdRevenueData.getMediationNetwork(), null, 2, null);
                    str2 = str3;
                } catch (Exception e) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "Could not cache exception\n " + e.getMessage(), false, 4, null);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0077 A[Catch: all -> 0x008d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:9:0x001a, B:24:0x0077, B:26:0x007a, B:31:0x0050, B:33:0x007d, B:35:0x0087, B:11:0x001c, B:13:0x0022, B:15:0x0032, B:17:0x0046, B:19:0x0049, B:22:0x004c), top: B:2:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFd1zSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.appsflyer.internal.AFc1cSDK> getMediationNetwork() {
        /*
            r14 = this;
            monitor-enter(r14)
            java.io.File r0 = r14.getMonetizationNetwork()     // Catch: java.lang.Throwable -> L8d
            r1 = 0
            if (r0 == 0) goto L85
            java.io.File[] r0 = r0.listFiles()     // Catch: java.lang.Throwable -> L8d
            if (r0 == 0) goto L85
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8d
            r2.<init>()     // Catch: java.lang.Throwable -> L8d
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L8d
            int r3 = r0.length     // Catch: java.lang.Throwable -> L8d
            r4 = 0
            r5 = r4
        L18:
            if (r5 >= r3) goto L7d
            r6 = r0[r5]     // Catch: java.lang.Throwable -> L8d
            java.io.File[] r6 = r6.listFiles()     // Catch: java.lang.Throwable -> L4f
            if (r6 == 0) goto L74
            java.lang.String r7 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)     // Catch: java.lang.Throwable -> L4f
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4f
            r7.<init>()     // Catch: java.lang.Throwable -> L4f
            java.util.Collection r7 = (java.util.Collection) r7     // Catch: java.lang.Throwable -> L4f
            int r8 = r6.length     // Catch: java.lang.Throwable -> L4f
            r9 = r4
        L30:
            if (r9 >= r8) goto L4c
            r10 = r6[r9]     // Catch: java.lang.Throwable -> L4f
            com.appsflyer.internal.AFc1cSDK$AFa1vSDK r11 = com.appsflyer.internal.AFc1cSDK.INSTANCE     // Catch: java.lang.Throwable -> L4f
            java.lang.String r11 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r11)     // Catch: java.lang.Throwable -> L4f
            r11 = 1
            java.lang.String r10 = kotlin.io.FilesKt.readText$default(r10, r1, r11, r1)     // Catch: java.lang.Throwable -> L4f
            com.appsflyer.internal.AFc1cSDK r10 = com.appsflyer.internal.AFc1cSDK.Companion.getCurrencyIso4217Code(r10)     // Catch: java.lang.Throwable -> L4f
            if (r10 == 0) goto L49
            r7.add(r10)     // Catch: java.lang.Throwable -> L4f
        L49:
            int r9 = r9 + 1
            goto L30
        L4c:
            java.util.List r7 = (java.util.List) r7     // Catch: java.lang.Throwable -> L4f
            goto L75
        L4f:
            r6 = move-exception
            com.appsflyer.AFLogger r7 = com.appsflyer.AFLogger.INSTANCE     // Catch: java.lang.Throwable -> L8d
            r8 = r7
            com.appsflyer.internal.AFh1ySDK r8 = (com.appsflyer.internal.AFh1ySDK) r8     // Catch: java.lang.Throwable -> L8d
            com.appsflyer.internal.AFg1cSDK r9 = com.appsflyer.internal.AFg1cSDK.EXCEPTION_MANAGER     // Catch: java.lang.Throwable -> L8d
            java.lang.String r6 = r6.getMessage()     // Catch: java.lang.Throwable -> L8d
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d
            r7.<init>()     // Catch: java.lang.Throwable -> L8d
            java.lang.String r10 = "Could not get stored exceptions\n "
            java.lang.StringBuilder r7 = r7.append(r10)     // Catch: java.lang.Throwable -> L8d
            java.lang.StringBuilder r6 = r7.append(r6)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r10 = r6.toString()     // Catch: java.lang.Throwable -> L8d
            r12 = 4
            r13 = 0
            r11 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L8d
        L74:
            r7 = r1
        L75:
            if (r7 == 0) goto L7a
            r2.add(r7)     // Catch: java.lang.Throwable -> L8d
        L7a:
            int r5 = r5 + 1
            goto L18
        L7d:
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L8d
            java.lang.Iterable r2 = (java.lang.Iterable) r2     // Catch: java.lang.Throwable -> L8d
            java.util.List r1 = kotlin.collections.CollectionsKt.flatten(r2)     // Catch: java.lang.Throwable -> L8d
        L85:
            if (r1 != 0) goto L8b
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Throwable -> L8d
        L8b:
            monitor-exit(r14)
            return r1
        L8d:
            r0 = move-exception
            monitor-exit(r14)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1uSDK.getMediationNetwork():java.util.List");
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final int AFAdRevenueData() {
        Iterator<T> it = getMediationNetwork().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((AFc1cSDK) it.next()).getMonetizationNetwork;
        }
        return i;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final boolean getCurrencyIso4217Code() {
        return getCurrencyIso4217Code(new String[0]);
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final boolean getCurrencyIso4217Code(String... strArr) {
        boolean z;
        Intrinsics.checkNotNullParameter(strArr, "");
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            z = true;
            if (monetizationNetwork != null) {
                if (strArr.length == 0) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions", false, 4, null);
                    z = FilesKt.deleteRecursively(monetizationNetwork);
                } else {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions except for: " + ArraysKt.joinToString$default(strArr, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), false, 4, null);
                    File[] listFiles = monetizationNetwork.listFiles();
                    if (listFiles != null) {
                        Intrinsics.checkNotNullExpressionValue(listFiles, "");
                        ArrayList arrayList = new ArrayList();
                        for (File file : listFiles) {
                            if (!ArraysKt.contains(strArr, file.getName())) {
                                arrayList.add(file);
                            }
                        }
                        ArrayList<File> arrayList2 = arrayList;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                        for (File file2 : arrayList2) {
                            Intrinsics.checkNotNullExpressionValue(file2, "");
                            arrayList3.add(Boolean.valueOf(FilesKt.deleteRecursively(file2)));
                        }
                        Set set = CollectionsKt.toSet(arrayList3);
                        if (set.isEmpty()) {
                            set = SetsKt.setOf(Boolean.TRUE);
                        }
                        Set set2 = set;
                        if (set2.size() != 1 || !((Boolean) CollectionsKt.first(set2)).booleanValue()) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // com.appsflyer.internal.AFd1zSDK
    public final void getMediationNetwork(int i, int i2) {
        File[] listFiles;
        synchronized (this) {
            File monetizationNetwork = getMonetizationNetwork();
            if (monetizationNetwork != null && (listFiles = monetizationNetwork.listFiles()) != null) {
                Intrinsics.checkNotNullExpressionValue(listFiles, "");
                ArrayList arrayList = new ArrayList();
                for (File file : listFiles) {
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "");
                    int mediationNetwork = AFk1zSDK.getMediationNetwork(name);
                    if (i > mediationNetwork || mediationNetwork > i2) {
                        arrayList.add(file);
                    }
                }
                ArrayList<File> arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                for (File file2 : arrayList2) {
                    Intrinsics.checkNotNullExpressionValue(file2, "");
                    arrayList3.add(Boolean.valueOf(FilesKt.deleteRecursively(file2)));
                }
                ArrayList arrayList4 = arrayList3;
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
