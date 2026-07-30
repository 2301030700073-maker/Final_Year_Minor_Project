package com.android.launcher3.allapps.search;

import android.os.Handler;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import java.text.Collator;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DefaultAppSearchAlgorithm implements SearchAlgorithm {
    public final List mApps;
    public final Handler mResultHandler = new Handler();

    public class StringMatcher {
        public final Collator mCollator;

        public StringMatcher() {
            Collator collator = Collator.getInstance();
            this.mCollator = collator;
            collator.setStrength(0);
            this.mCollator.setDecomposition(1);
        }
    }

    public DefaultAppSearchAlgorithm(List list) {
        this.mApps = list;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        if (r10 != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0098, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0094, code lost:
    
        if (r15.mCollator.compare(r14 + (char) 65535, r6) > (-1)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0057, code lost:
    
        if (r6 != 11) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0063, code lost:
    
        if (r6 != 1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x005d, code lost:
    
        if (r6 > 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0060, code lost:
    
        if (r8 == 1) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean matches(com.android.launcher3.model.data.AppInfo r13, java.lang.String r14, com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm.StringMatcher r15) {
        /*
            int r0 = r14.length()
            java.lang.CharSequence r13 = r13.title
            java.lang.String r13 = r13.toString()
            int r1 = r13.length()
            r2 = 0
            if (r1 < r0) goto La1
            if (r0 > 0) goto L15
            goto La1
        L15:
            int r3 = r13.codePointAt(r2)
            int r3 = java.lang.Character.getType(r3)
            int r4 = r1 - r0
            r5 = r2
            r6 = r5
        L21:
            if (r5 > r4) goto La1
            r7 = -1
            int r8 = r1 + (-1)
            if (r5 >= r8) goto L33
            int r8 = r5 + 1
            int r8 = r13.codePointAt(r8)
            int r8 = java.lang.Character.getType(r8)
            goto L34
        L33:
            r8 = r2
        L34:
            r9 = 1
            if (r6 == 0) goto L68
            switch(r6) {
                case 12: goto L68;
                case 13: goto L68;
                case 14: goto L68;
                default: goto L3a;
            }
        L3a:
            if (r3 == r9) goto L60
            r10 = 2
            if (r3 == r10) goto L5a
            r10 = 3
            if (r3 == r10) goto L63
            r10 = 20
            if (r3 == r10) goto L68
            switch(r3) {
                case 9: goto L4d;
                case 10: goto L4d;
                case 11: goto L4d;
                default: goto L49;
            }
        L49:
            switch(r3) {
                case 24: goto L68;
                case 25: goto L68;
                case 26: goto L68;
                default: goto L4c;
            }
        L4c:
            goto L66
        L4d:
            r10 = 9
            if (r6 == r10) goto L66
            r10 = 10
            if (r6 == r10) goto L66
            r10 = 11
            if (r6 == r10) goto L66
            goto L68
        L5a:
            r10 = 5
            if (r6 > r10) goto L68
            if (r6 > 0) goto L66
            goto L68
        L60:
            if (r8 != r9) goto L63
            goto L68
        L63:
            if (r6 == r9) goto L66
            goto L68
        L66:
            r6 = r2
            goto L69
        L68:
            r6 = r9
        L69:
            if (r6 == 0) goto L9c
            int r6 = r5 + r0
            java.lang.String r6 = r13.substring(r5, r6)
            java.text.Collator r10 = r15.mCollator
            int r10 = r10.compare(r14, r6)
            if (r10 == r7) goto L7c
            if (r10 == 0) goto L96
            goto L98
        L7c:
            java.text.Collator r10 = r15.mCollator
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r14)
            r12 = 65535(0xffff, float:9.1834E-41)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            int r6 = r10.compare(r11, r6)
            if (r6 <= r7) goto L98
        L96:
            r6 = r9
            goto L99
        L98:
            r6 = r2
        L99:
            if (r6 == 0) goto L9c
            return r9
        L9c:
            int r5 = r5 + 1
            r6 = r3
            r3 = r8
            goto L21
        La1:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm.matches(com.android.launcher3.model.data.AppInfo, java.lang.String, com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm$StringMatcher):boolean");
    }

    @Override // com.android.launcher3.allapps.search.SearchAlgorithm
    public void cancel(boolean z) {
        if (z) {
            this.mResultHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAlgorithm
    public void doSearch(final String str, final AllAppsSearchBarController.Callbacks callbacks) {
        String lowerCase = str.toLowerCase();
        final ArrayList arrayList = new ArrayList();
        StringMatcher stringMatcher = new StringMatcher();
        for (AppInfo appInfo : this.mApps) {
            if (matches(appInfo, lowerCase, stringMatcher)) {
                arrayList.add(new ComponentKey(appInfo.componentName, appInfo.user));
            }
        }
        this.mResultHandler.post(new Runnable(this) { // from class: com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm.1
            @Override // java.lang.Runnable
            public void run() {
                callbacks.onSearchResult(str, arrayList);
            }
        });
    }
}
