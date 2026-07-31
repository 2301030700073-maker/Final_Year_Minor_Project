package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceManager {
    public final Object mContext;
    public Object mEditor;
    public long mNextId;
    public boolean mNoCommit;
    public Object mOnDisplayPreferenceDialogListener;
    public Object mOnNavigateToScreenListener;
    public Object mOnPreferenceTreeClickListener;
    public Object mPreferenceScreen;
    public Object mSharedPreferences;
    public Object mSharedPreferencesName;

    public PreferenceManager(Function1 function1) {
        this.mContext = function1;
        this.mSharedPreferences = new AtomicReference(null);
        this.mEditor = new HintHandler$$ExternalSyntheticLambda0(23, this);
        this.mSharedPreferencesName = new DiskLruCache$$ExternalSyntheticLambda0(9, this);
        this.mPreferenceScreen = new MutableVector(new SnapshotStateObserver$ObservedScopeMap[16]);
        this.mOnPreferenceTreeClickListener = new Object();
        this.mNextId = -1L;
    }

    public static String getDefaultSharedPreferencesName(Context context) {
        return context.getPackageName() + "_preferences";
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0082 A[Catch: all -> 0x0090, TryCatch #0 {all -> 0x0090, blocks: (B:4:0x0007, B:8:0x0013, B:11:0x007a, B:13:0x0082, B:15:0x0092, B:17:0x0087, B:20:0x0023, B:23:0x002f, B:25:0x0043, B:27:0x0051, B:29:0x005b, B:31:0x006b, B:39:0x0076, B:42:0x0096), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void clear(java.lang.Object r22) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            java.lang.Object r2 = r0.mOnPreferenceTreeClickListener
            monitor-enter(r2)
            java.lang.Object r0 = r0.mPreferenceScreen     // Catch: java.lang.Throwable -> L90
            androidx.compose.runtime.collection.MutableVector r0 = (androidx.compose.runtime.collection.MutableVector) r0     // Catch: java.lang.Throwable -> L90
            int r3 = r0.size     // Catch: java.lang.Throwable -> L90
            r5 = 0
            r6 = 0
        Lf:
            java.lang.Object[] r7 = r0.content
            if (r5 >= r3) goto L96
            r7 = r7[r5]     // Catch: java.lang.Throwable -> L90
            androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap r7 = (androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap) r7     // Catch: java.lang.Throwable -> L90
            androidx.collection.MutableScatterMap r8 = r7.scopeToValues     // Catch: java.lang.Throwable -> L90
            java.lang.Object r8 = r8.remove(r1)     // Catch: java.lang.Throwable -> L90
            androidx.collection.MutableObjectIntMap r8 = (androidx.collection.MutableObjectIntMap) r8     // Catch: java.lang.Throwable -> L90
            if (r8 != 0) goto L23
        L21:
            r15 = r5
            goto L7a
        L23:
            java.lang.Object[] r9 = r8.keys     // Catch: java.lang.Throwable -> L90
            int[] r10 = r8.values     // Catch: java.lang.Throwable -> L90
            long[] r8 = r8.metadata     // Catch: java.lang.Throwable -> L90
            int r11 = r8.length     // Catch: java.lang.Throwable -> L90
            int r11 = r11 + (-2)
            if (r11 < 0) goto L21
            r12 = 0
        L2f:
            r13 = r8[r12]     // Catch: java.lang.Throwable -> L90
            r15 = r5
            long r4 = ~r13     // Catch: java.lang.Throwable -> L90
            r16 = 7
            long r4 = r4 << r16
            long r4 = r4 & r13
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r4 = r4 & r16
            int r4 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r4 == 0) goto L74
            int r4 = r12 - r11
            int r4 = ~r4     // Catch: java.lang.Throwable -> L90
            int r4 = r4 >>> 31
            r5 = 8
            int r4 = 8 - r4
            r16 = r5
            r5 = 0
        L4f:
            if (r5 >= r4) goto L70
            r17 = 255(0xff, double:1.26E-321)
            long r17 = r13 & r17
            r19 = 128(0x80, double:6.3E-322)
            int r17 = (r17 > r19 ? 1 : (r17 == r19 ? 0 : -1))
            if (r17 >= 0) goto L69
            int r17 = r12 << 3
            int r17 = r17 + r5
            r18 = r5
            r5 = r9[r17]     // Catch: java.lang.Throwable -> L90
            r17 = r10[r17]     // Catch: java.lang.Throwable -> L90
            r7.removeObservation(r1, r5)     // Catch: java.lang.Throwable -> L90
            goto L6b
        L69:
            r18 = r5
        L6b:
            long r13 = r13 >> r16
            int r5 = r18 + 1
            goto L4f
        L70:
            r5 = r16
            if (r4 != r5) goto L7a
        L74:
            if (r12 == r11) goto L7a
            int r12 = r12 + 1
            r5 = r15
            goto L2f
        L7a:
            androidx.collection.MutableScatterMap r4 = r7.scopeToValues     // Catch: java.lang.Throwable -> L90
            boolean r4 = r4.isNotEmpty()     // Catch: java.lang.Throwable -> L90
            if (r4 != 0) goto L85
            int r6 = r6 + 1
            goto L92
        L85:
            if (r6 <= 0) goto L92
            java.lang.Object[] r4 = r0.content     // Catch: java.lang.Throwable -> L90
            int r5 = r15 - r6
            r7 = r4[r15]     // Catch: java.lang.Throwable -> L90
            r4[r5] = r7     // Catch: java.lang.Throwable -> L90
            goto L92
        L90:
            r0 = move-exception
            goto La0
        L92:
            int r5 = r15 + 1
            goto Lf
        L96:
            int r1 = r3 - r6
            r4 = 0
            java.util.Arrays.fill(r7, r1, r3, r4)     // Catch: java.lang.Throwable -> L90
            r0.size = r1     // Catch: java.lang.Throwable -> L90
            monitor-exit(r2)
            return
        La0:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.PreferenceManager.clear(java.lang.Object):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean drainChanges() {
        boolean z;
        Set set;
        Set set2;
        synchronized (this.mOnPreferenceTreeClickListener) {
            z = this.mNoCommit;
        }
        if (z) {
            return false;
        }
        boolean z2 = false;
        while (true) {
            AtomicReference atomicReference = (AtomicReference) this.mSharedPreferences;
            while (true) {
                Object obj = atomicReference.get();
                set = null;
                List list = null;
                List list2 = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof Set) {
                    set2 = (Set) obj;
                } else {
                    if (!(obj instanceof List)) {
                        ComposerKt.composeRuntimeError("Unexpected notification");
                        Gson$$ExternalSyntheticBUOutline0.m$1();
                        return false;
                    }
                    List list3 = (List) obj;
                    Set set3 = (Set) list3.get(0);
                    if (list3.size() == 2) {
                        list2 = list3.get(1);
                    } else if (list3.size() > 2) {
                        list2 = list3.subList(1, list3.size());
                    }
                    set2 = set3;
                    list = list2;
                }
                while (!atomicReference.compareAndSet(obj, list)) {
                    if (atomicReference.get() != obj) {
                        break;
                    }
                }
                set = set2;
                break;
            }
            if (set == null) {
                return z2;
            }
            synchronized (this.mOnPreferenceTreeClickListener) {
                MutableVector mutableVector = (MutableVector) this.mPreferenceScreen;
                Object[] objArr = mutableVector.content;
                int i = mutableVector.size;
                for (int i2 = 0; i2 < i; i2++) {
                    z2 = ((SnapshotStateObserver$ObservedScopeMap) objArr[i2]).recordInvalidation(set) || z2;
                }
            }
        }
    }

    public SharedPreferences.Editor getEditor() {
        if (!this.mNoCommit) {
            return getSharedPreferences().edit();
        }
        SharedPreferences.Editor editor = (SharedPreferences.Editor) this.mEditor;
        if (editor != null) {
            return editor;
        }
        SharedPreferences.Editor edit = getSharedPreferences().edit();
        this.mEditor = edit;
        return edit;
    }

    public long getNextId() {
        long j;
        synchronized (this) {
            j = this.mNextId;
            this.mNextId = 1 + j;
        }
        return j;
    }

    public SharedPreferences getSharedPreferences() {
        SharedPreferences sharedPreferences = (SharedPreferences) this.mSharedPreferences;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = ((Context) this.mContext).getSharedPreferences((String) this.mSharedPreferencesName, 0);
        this.mSharedPreferences = sharedPreferences2;
        return sharedPreferences2;
    }

    public PreferenceScreen inflateFromResource(Context context, int i, PreferenceScreen preferenceScreen) {
        this.mNoCommit = true;
        PreferenceInflater preferenceInflater = new PreferenceInflater(context, this);
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            PreferenceGroup inflate = preferenceInflater.inflate(xml, preferenceScreen);
            xml.close();
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) inflate;
            preferenceScreen2.onAttachedToHierarchy(this);
            SharedPreferences.Editor editor = (SharedPreferences.Editor) this.mEditor;
            if (editor != null) {
                editor.apply();
            }
            this.mNoCommit = false;
            return preferenceScreen2;
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void observeReads(java.lang.Object r22, kotlin.jvm.functions.Function1 r23, kotlin.jvm.functions.Function0 r24) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.PreferenceManager.observeReads(java.lang.Object, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0):void");
    }

    public void start() {
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = (HintHandler$$ExternalSyntheticLambda0) this.mEditor;
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus((Collection) SnapshotKt.applyObservers, (Object) hintHandler$$ExternalSyntheticLambda0);
        }
        this.mOnDisplayPreferenceDialogListener = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(hintHandler$$ExternalSyntheticLambda0);
    }

    public PreferenceManager(Context context) {
        this.mNextId = 0L;
        this.mContext = context;
        this.mSharedPreferencesName = getDefaultSharedPreferencesName(context);
        this.mSharedPreferences = null;
    }

    public void clear() {
        synchronized (this.mOnPreferenceTreeClickListener) {
            MutableVector mutableVector = (MutableVector) this.mPreferenceScreen;
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) objArr[i2];
                snapshotStateObserver$ObservedScopeMap.valueToScopes.clear();
                snapshotStateObserver$ObservedScopeMap.scopeToValues.clear();
                snapshotStateObserver$ObservedScopeMap.dependencyToDerivedStates.clear();
                snapshotStateObserver$ObservedScopeMap.recordedDerivedStateValues.clear();
            }
        }
    }
}
