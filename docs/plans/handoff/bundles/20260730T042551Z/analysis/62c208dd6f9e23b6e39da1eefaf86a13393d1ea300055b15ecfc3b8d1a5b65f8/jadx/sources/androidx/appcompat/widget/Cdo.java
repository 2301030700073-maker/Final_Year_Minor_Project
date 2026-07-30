package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import j$.util.DesugarCollections;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: androidx.appcompat.widget.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo extends DataSetObservable {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5973do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Intent f5974do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f5977do;

    /* renamed from: if, reason: not valid java name */
    public static final Object f5971if = new Object();

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f5970do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f5976do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f5978do = new ArrayList();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f5981if = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5975do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f5972do = 50;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5979do = true;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5982if = false;

    /* renamed from: for, reason: not valid java name */
    public boolean f5980for = true;

    /* renamed from: new, reason: not valid java name */
    public boolean f5983new = false;

    /* renamed from: androidx.appcompat.widget.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0029do implements Comparable<C0029do> {

        /* renamed from: do, reason: not valid java name */
        public float f5984do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ResolveInfo f5985do;

        public C0029do(ResolveInfo resolveInfo) {
            this.f5985do = resolveInfo;
        }

        @Override // java.lang.Comparable
        public final int compareTo(C0029do c0029do) {
            return Float.floatToIntBits(c0029do.f5984do) - Float.floatToIntBits(this.f5984do);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && C0029do.class == obj.getClass() && Float.floatToIntBits(this.f5984do) == Float.floatToIntBits(((C0029do) obj).f5984do);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.f5984do) + 31;
        }

        public final String toString() {
            return "[resolveInfo:" + this.f5985do.toString() + "; weight:" + new BigDecimal(this.f5984do) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.do$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final float f5986do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f5987do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ComponentName f5988do;

        public Cfor(ComponentName componentName, long j, float f) {
            this.f5988do = componentName;
            this.f5987do = j;
            this.f5986do = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cfor.class != obj.getClass()) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            ComponentName componentName = cfor.f5988do;
            ComponentName componentName2 = this.f5988do;
            if (componentName2 == null) {
                if (componentName != null) {
                    return false;
                }
            } else if (!componentName2.equals(componentName)) {
                return false;
            }
            return this.f5987do == cfor.f5987do && Float.floatToIntBits(this.f5986do) == Float.floatToIntBits(cfor.f5986do);
        }

        public final int hashCode() {
            ComponentName componentName = this.f5988do;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f5987do;
            return Float.floatToIntBits(this.f5986do) + ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31);
        }

        public final String toString() {
            return "[; activity:" + this.f5988do + "; time:" + this.f5987do + "; weight:" + new BigDecimal(this.f5986do) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final HashMap f5989do = new HashMap();
    }

    /* renamed from: androidx.appcompat.widget.do$new, reason: invalid class name */
    public interface Cnew {
    }

    /* renamed from: androidx.appcompat.widget.do$try, reason: invalid class name */
    public final class Ctry extends AsyncTask<Object, Void, Void> {
        public Ctry() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
        
            if (r15 != null) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0080, code lost:
        
            r15.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        
            if (r15 == null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
        
            if (r15 == null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0077, code lost:
        
            if (r15 == null) goto L32;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Void doInBackground(java.lang.Object[] r15) {
            /*
                r14 = this;
                java.lang.String r0 = "historical-record"
                java.lang.String r1 = "historical-records"
                androidx.appcompat.widget.do r2 = androidx.appcompat.widget.Cdo.this
                r3 = 0
                r4 = r15[r3]
                java.util.List r4 = (java.util.List) r4
                r5 = 1
                r15 = r15[r5]
                java.lang.String r15 = (java.lang.String) r15
                r6 = 0
                android.content.Context r7 = r2.f5973do     // Catch: java.io.FileNotFoundException -> L8c
                java.io.FileOutputStream r15 = r7.openFileOutput(r15, r3)     // Catch: java.io.FileNotFoundException -> L8c
                org.xmlpull.v1.XmlSerializer r7 = android.util.Xml.newSerializer()
                r7.setOutput(r15, r6)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r8 = "UTF-8"
                java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.startDocument(r8, r9)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.startTag(r6, r1)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                int r8 = r4.size()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r9 = 0
            L2d:
                if (r9 >= r8) goto L5f
                java.lang.Object r10 = r4.remove(r3)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                androidx.appcompat.widget.do$for r10 = (androidx.appcompat.widget.Cdo.Cfor) r10     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.startTag(r6, r0)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r11 = "activity"
                android.content.ComponentName r12 = r10.f5988do     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r12 = r12.flattenToString()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r11 = "time"
                long r12 = r10.f5987do     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r11 = "weight"
                float r10 = r10.f5986do     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.attribute(r6, r11, r10)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.endTag(r6, r0)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                int r9 = r9 + 1
                goto L2d
            L5f:
                r7.endTag(r6, r1)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r7.endDocument()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6c java.lang.IllegalStateException -> L73 java.lang.IllegalArgumentException -> L7a
                r2.f5979do = r5
                if (r15 == 0) goto L8e
                goto L80
            L6a:
                r0 = move-exception
                goto L84
            L6c:
                java.lang.Object r0 = androidx.appcompat.widget.Cdo.f5971if     // Catch: java.lang.Throwable -> L6a
                r2.f5979do = r5
                if (r15 == 0) goto L8e
                goto L80
            L73:
                java.lang.Object r0 = androidx.appcompat.widget.Cdo.f5971if     // Catch: java.lang.Throwable -> L6a
                r2.f5979do = r5
                if (r15 == 0) goto L8e
                goto L80
            L7a:
                java.lang.Object r0 = androidx.appcompat.widget.Cdo.f5971if     // Catch: java.lang.Throwable -> L6a
                r2.f5979do = r5
                if (r15 == 0) goto L8e
            L80:
                r15.close()     // Catch: java.io.IOException -> L8e
                goto L8e
            L84:
                r2.f5979do = r5
                if (r15 == 0) goto L8b
                r15.close()     // Catch: java.io.IOException -> L8b
            L8b:
                throw r0
            L8c:
                java.lang.Object r15 = androidx.appcompat.widget.Cdo.f5971if
            L8e:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Cdo.Ctry.doInBackground(java.lang.Object[]):java.lang.Object");
        }
    }

    public Cdo(Context context, String str) {
        this.f5973do = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(".xml")) {
            this.f5977do = str;
        } else {
            this.f5977do = str.concat(".xml");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m3510new(Context context, String str) {
        Cdo cdo;
        synchronized (f5971if) {
            HashMap hashMap = f5970do;
            cdo = (Cdo) hashMap.get(str);
            if (cdo == null) {
                cdo = new Cdo(context, str);
                hashMap.put(str, cdo);
            }
        }
        return cdo;
    }

    /* renamed from: case, reason: not valid java name */
    public final int m3511case() {
        int size;
        synchronized (this.f5976do) {
            m3514for();
            size = this.f5978do.size();
        }
        return size;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3512do(Cfor cfor) {
        ArrayList arrayList = this.f5981if;
        if (arrayList.add(cfor)) {
            this.f5980for = true;
            m3515goto();
            if (!this.f5982if) {
                throw new IllegalStateException("No preceding call to #readHistoricalData");
            }
            if (this.f5980for) {
                this.f5980for = false;
                String str = this.f5977do;
                if (!TextUtils.isEmpty(str)) {
                    new Ctry().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(arrayList), str);
                }
            }
            m3517this();
            notifyChanged();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final ResolveInfo m3513else() {
        synchronized (this.f5976do) {
            m3514for();
            if (this.f5978do.isEmpty()) {
                return null;
            }
            return ((C0029do) this.f5978do.get(0)).f5985do;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d6, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d0, code lost:
    
        if (r1 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d4, code lost:
    
        if (r1 == null) goto L54;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3514for() {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Cdo.m3514for():void");
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3515goto() {
        ArrayList arrayList = this.f5981if;
        int size = arrayList.size() - this.f5972do;
        if (size <= 0) {
            return;
        }
        this.f5980for = true;
        for (int i = 0; i < size; i++) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Intent m3516if(int i) {
        synchronized (this.f5976do) {
            if (this.f5974do == null) {
                return null;
            }
            m3514for();
            ActivityInfo activityInfo = ((C0029do) this.f5978do.get(i)).f5985do.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            Intent intent = new Intent(this.f5974do);
            intent.setComponent(componentName);
            m3512do(new Cfor(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3517this() {
        Cif cif = this.f5975do;
        if (cif == null || this.f5974do == null) {
            return;
        }
        ArrayList arrayList = this.f5978do;
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = this.f5981if;
        if (arrayList2.isEmpty()) {
            return;
        }
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
        HashMap hashMap = cif.f5989do;
        hashMap.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0029do c0029do = (C0029do) arrayList.get(i);
            c0029do.f5984do = 0.0f;
            ActivityInfo activityInfo = c0029do.f5985do.activityInfo;
            hashMap.put(new ComponentName(activityInfo.packageName, activityInfo.name), c0029do);
        }
        float f = 1.0f;
        for (int size2 = unmodifiableList.size() - 1; size2 >= 0; size2--) {
            Cfor cfor = (Cfor) unmodifiableList.get(size2);
            C0029do c0029do2 = (C0029do) hashMap.get(cfor.f5988do);
            if (c0029do2 != null) {
                c0029do2.f5984do = (cfor.f5986do * f) + c0029do2.f5984do;
                f *= 0.95f;
            }
        }
        Collections.sort(arrayList);
    }

    /* renamed from: try, reason: not valid java name */
    public final ResolveInfo m3518try(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f5976do) {
            m3514for();
            resolveInfo = ((C0029do) this.f5978do.get(i)).f5985do;
        }
        return resolveInfo;
    }
}
