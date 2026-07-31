package coil3.disk;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.pager.PagerWrapperFlingBehavior;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.preference.PreferenceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DiskLruCache$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(PagerWrapperFlingBehavior pagerWrapperFlingBehavior, ScrollScope scrollScope) {
        this.$r8$classId = 9;
        this.f$0 = pagerWrapperFlingBehavior;
    }

    private final Object invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda2(Object obj) {
        PreferenceManager preferenceManager = (PreferenceManager) this.f$0;
        synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
            SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) preferenceManager.mOnNavigateToScreenListener;
            snapshotStateObserver$ObservedScopeMap.getClass();
            Object obj2 = snapshotStateObserver$ObservedScopeMap.currentScope;
            obj2.getClass();
            int i = snapshotStateObserver$ObservedScopeMap.currentToken;
            MutableObjectIntMap mutableObjectIntMap = snapshotStateObserver$ObservedScopeMap.currentScopeReads;
            if (mutableObjectIntMap == null) {
                mutableObjectIntMap = new MutableObjectIntMap();
                snapshotStateObserver$ObservedScopeMap.currentScopeReads = mutableObjectIntMap;
                snapshotStateObserver$ObservedScopeMap.scopeToValues.set(obj2, mutableObjectIntMap);
            }
            snapshotStateObserver$ObservedScopeMap.recordRead(obj, i, obj2, mutableObjectIntMap);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0341  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.disk.DiskLruCache$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
